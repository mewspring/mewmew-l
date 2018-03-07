package ast_test

import (
	"flag"
	"io/ioutil"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"testing"

	"github.com/mewkiz/pkg/osutil"
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/asm/internal/lexer"
	"github.com/mewmew/l/asm/internal/parser"
	"github.com/mewmew/l/ll"
	"github.com/pkg/errors"
)

// words specifies whether to colour words.
var words bool

func init() {
	flag.BoolVar(&words, "words", false, "Colour words.")
	flag.Parse()
}

func TestParse(t *testing.T) {
	golden := []struct {
		path string
	}{
		// Coreutils.
		{path: "testdata/coreutils/[.ll"},
		{path: "testdata/coreutils/b2sum.ll"},
		{path: "testdata/coreutils/base32.ll"},
		{path: "testdata/coreutils/base64.ll"},
		{path: "testdata/coreutils/basename.ll"},
		{path: "testdata/coreutils/cat.ll"},
		{path: "testdata/coreutils/chcon.ll"},
		{path: "testdata/coreutils/chgrp.ll"},
		{path: "testdata/coreutils/chmod.ll"},
		{path: "testdata/coreutils/chown.ll"},
		{path: "testdata/coreutils/chroot.ll"},
		{path: "testdata/coreutils/cksum.ll"},
		{path: "testdata/coreutils/comm.ll"},
		{path: "testdata/coreutils/cp.ll"},
		{path: "testdata/coreutils/csplit.ll"},
		{path: "testdata/coreutils/cut.ll"},
		{path: "testdata/coreutils/date.ll"},
		{path: "testdata/coreutils/dd.ll"},
		{path: "testdata/coreutils/df.ll"},
		{path: "testdata/coreutils/dir.ll"},
		{path: "testdata/coreutils/dircolors.ll"},
		{path: "testdata/coreutils/dirname.ll"},
		{path: "testdata/coreutils/du.ll"},
		{path: "testdata/coreutils/echo.ll"},
		{path: "testdata/coreutils/env.ll"},
		{path: "testdata/coreutils/expand.ll"},
		{path: "testdata/coreutils/expr.ll"},
		{path: "testdata/coreutils/factor.ll"},
		{path: "testdata/coreutils/false.ll"},
		{path: "testdata/coreutils/fmt.ll"},
		{path: "testdata/coreutils/fold.ll"},
		{path: "testdata/coreutils/getlimits.ll"},
		{path: "testdata/coreutils/ginstall.ll"},
		{path: "testdata/coreutils/groups.ll"},
		{path: "testdata/coreutils/head.ll"},
		{path: "testdata/coreutils/hostid.ll"},
		{path: "testdata/coreutils/id.ll"},
		{path: "testdata/coreutils/join.ll"},
		{path: "testdata/coreutils/kill.ll"},
		{path: "testdata/coreutils/link.ll"},
		{path: "testdata/coreutils/ln.ll"},
		{path: "testdata/coreutils/logname.ll"},
		{path: "testdata/coreutils/ls.ll"},
		{path: "testdata/coreutils/make-prime-list.ll"},
		{path: "testdata/coreutils/md5sum.ll"},
		{path: "testdata/coreutils/mkdir.ll"},
		{path: "testdata/coreutils/mkfifo.ll"},
		{path: "testdata/coreutils/mknod.ll"},
		{path: "testdata/coreutils/mktemp.ll"},
		{path: "testdata/coreutils/mv.ll"},
		{path: "testdata/coreutils/nice.ll"},
		{path: "testdata/coreutils/nl.ll"},
		{path: "testdata/coreutils/nohup.ll"},
		{path: "testdata/coreutils/nproc.ll"},
		{path: "testdata/coreutils/numfmt.ll"},
		{path: "testdata/coreutils/od.ll"},
		{path: "testdata/coreutils/paste.ll"},
		{path: "testdata/coreutils/pathchk.ll"},
		{path: "testdata/coreutils/pinky.ll"},
		{path: "testdata/coreutils/pr.ll"},
		{path: "testdata/coreutils/printenv.ll"},
		{path: "testdata/coreutils/printf.ll"},
		{path: "testdata/coreutils/ptx.ll"},
		{path: "testdata/coreutils/pwd.ll"},
		{path: "testdata/coreutils/readlink.ll"},
		{path: "testdata/coreutils/realpath.ll"},
		{path: "testdata/coreutils/rm.ll"},
		{path: "testdata/coreutils/rmdir.ll"},
		{path: "testdata/coreutils/runcon.ll"},
		{path: "testdata/coreutils/seq.ll"},
		{path: "testdata/coreutils/sha1sum.ll"},
		{path: "testdata/coreutils/sha224sum.ll"},
		{path: "testdata/coreutils/sha256sum.ll"},
		{path: "testdata/coreutils/sha384sum.ll"},
		{path: "testdata/coreutils/sha512sum.ll"},
		{path: "testdata/coreutils/shred.ll"},
		{path: "testdata/coreutils/shuf.ll"},
		{path: "testdata/coreutils/sleep.ll"},
		{path: "testdata/coreutils/sort.ll"},
		{path: "testdata/coreutils/split.ll"},
		{path: "testdata/coreutils/stat.ll"},
		{path: "testdata/coreutils/stdbuf.ll"},
		{path: "testdata/coreutils/stty.ll"},
		{path: "testdata/coreutils/sum.ll"},
		{path: "testdata/coreutils/sync.ll"},
		{path: "testdata/coreutils/tac.ll"},
		{path: "testdata/coreutils/tail.ll"},
		{path: "testdata/coreutils/tee.ll"},
		{path: "testdata/coreutils/test.ll"},
		{path: "testdata/coreutils/timeout.ll"},
		{path: "testdata/coreutils/touch.ll"},
		{path: "testdata/coreutils/tr.ll"},
		{path: "testdata/coreutils/true.ll"},
		{path: "testdata/coreutils/truncate.ll"},
		{path: "testdata/coreutils/tsort.ll"},
		{path: "testdata/coreutils/tty.ll"},
		{path: "testdata/coreutils/uname.ll"},
		{path: "testdata/coreutils/unexpand.ll"},
		{path: "testdata/coreutils/uniq.ll"},
		{path: "testdata/coreutils/unlink.ll"},
		{path: "testdata/coreutils/uptime.ll"},
		{path: "testdata/coreutils/users.ll"},
		{path: "testdata/coreutils/vdir.ll"},
		{path: "testdata/coreutils/wc.ll"},
		{path: "testdata/coreutils/who.ll"},
		{path: "testdata/coreutils/whoami.ll"},
		{path: "testdata/coreutils/yes.ll"},
		// SQLite.
		{path: "testdata/sqlite/shell.ll"},
	}
	for _, g := range golden {
		buf, err := ioutil.ReadFile(g.path)
		if err != nil {
			t.Errorf("%q: unable to read file %q; %v", g.path, g.path, err)
			continue
		}
		want := string(buf)
		if wantPath := g.path + ".golden"; osutil.Exists(wantPath) {
			buf, err := ioutil.ReadFile(wantPath)
			if err != nil {
				t.Errorf("%q: unable to read file %q; %v", g.path, wantPath, err)
				continue
			}
			want = string(buf)
		}
		l := lexer.NewLexer(buf)
		p := parser.NewParser()
		module, err := p.Parse(l)
		if err != nil {
			t.Errorf("%q: unable to parse file %q; %v", g.path, g.path, err)
			continue
		}
		m := module.(*ast.Module)
		got := m.String()
		if want != got {
			if err := diff(want, got, words); err != nil {
				log.Fatalf("%q: unable to diff `%v` and `%v`; %v", g.path, want, got, err)
			}
			t.Errorf("%q: module mismatch", g.path)
			//t.Errorf("%q: module mismatch; expected `%v`, got `%v`", g.path, want, got)
			continue
		}
	}
}

// diff displays the difference between a and b using Git.
func diff(a, b string, words bool) error {
	dir, err := ioutil.TempDir("/tmp", "diff_")
	if err != nil {
		return errors.WithStack(err)
	}
	path := filepath.Join(dir, "foo")
	if err := ioutil.WriteFile(path, []byte(a), 0644); err != nil {
		return errors.WithStack(err)
	}
	cmd := exec.Command("git", "init")
	cmd.Dir = dir
	if err := cmd.Run(); err != nil {
		return errors.WithStack(err)
	}
	cmd = exec.Command("git", "add", path)
	cmd.Dir = dir
	if err := cmd.Run(); err != nil {
		return errors.WithStack(err)
	}
	if err := ioutil.WriteFile(path, []byte(b), 0644); err != nil {
		return errors.WithStack(err)
	}
	if words {
		cmd = exec.Command("git", "diff", "--color-words")
	} else {
		cmd = exec.Command("git", "diff")
	}
	cmd.Stdin = os.Stdin
	cmd.Stdout = os.Stdout
	cmd.Dir = dir
	if err := cmd.Run(); err != nil {
		return errors.WithStack(err)
	}
	if err := os.RemoveAll(dir); err != nil {
		return errors.WithStack(err)
	}
	return nil
}

// Ensure that each constant implements the ast.Constant interface.
var (
	_ ast.Constant = (*ast.BoolConst)(nil)
	_ ast.Constant = (*ast.IntConst)(nil)
	_ ast.Constant = (*ast.FloatConst)(nil)
	_ ast.Constant = (*ast.NullConst)(nil)
	_ ast.Constant = (*ast.NoneConst)(nil)
	_ ast.Constant = (*ast.StructConst)(nil)
	_ ast.Constant = (*ast.ArrayConst)(nil)
	_ ast.Constant = (*ast.CharArrayConst)(nil)
	_ ast.Constant = (*ast.VectorConst)(nil)
	_ ast.Constant = (*ast.ZeroInitializerConst)(nil)
	_ ast.Constant = (*ast.GlobalIdent)(nil)
	_ ast.Constant = (*ast.UndefConst)(nil)
	_ ast.Constant = (*ast.BlockAddressConst)(nil)

	// ConstantExpr
	_ ast.Constant = (*ast.AddExpr)(nil)
	_ ast.Constant = (*ast.FAddExpr)(nil)
	_ ast.Constant = (*ast.SubExpr)(nil)
	_ ast.Constant = (*ast.FSubExpr)(nil)
	_ ast.Constant = (*ast.MulExpr)(nil)
	_ ast.Constant = (*ast.FMulExpr)(nil)
	_ ast.Constant = (*ast.UDivExpr)(nil)
	_ ast.Constant = (*ast.SDivExpr)(nil)
	_ ast.Constant = (*ast.FDivExpr)(nil)
	_ ast.Constant = (*ast.URemExpr)(nil)
	_ ast.Constant = (*ast.SRemExpr)(nil)
	_ ast.Constant = (*ast.FRemExpr)(nil)
	_ ast.Constant = (*ast.ShlExpr)(nil)
	_ ast.Constant = (*ast.LShrExpr)(nil)
	_ ast.Constant = (*ast.AShrExpr)(nil)
	_ ast.Constant = (*ast.AndExpr)(nil)
	_ ast.Constant = (*ast.OrExpr)(nil)
	_ ast.Constant = (*ast.XorExpr)(nil)
	_ ast.Constant = (*ast.ExtractElementExpr)(nil)
	_ ast.Constant = (*ast.InsertElementExpr)(nil)
	_ ast.Constant = (*ast.ShuffleVectorExpr)(nil)
	_ ast.Constant = (*ast.ExtractValueExpr)(nil)
	_ ast.Constant = (*ast.InsertValueExpr)(nil)
	_ ast.Constant = (*ast.GetElementPtrExpr)(nil)
	_ ast.Constant = (*ast.TruncExpr)(nil)
	_ ast.Constant = (*ast.ZExtExpr)(nil)
	_ ast.Constant = (*ast.SExtExpr)(nil)
	_ ast.Constant = (*ast.FPTruncExpr)(nil)
	_ ast.Constant = (*ast.FPExtExpr)(nil)
	_ ast.Constant = (*ast.FPToUIExpr)(nil)
	_ ast.Constant = (*ast.FPToSIExpr)(nil)
	_ ast.Constant = (*ast.UIToFPExpr)(nil)
	_ ast.Constant = (*ast.SIToFPExpr)(nil)
	_ ast.Constant = (*ast.PtrToIntExpr)(nil)
	_ ast.Constant = (*ast.IntToPtrExpr)(nil)
	_ ast.Constant = (*ast.BitCastExpr)(nil)
	_ ast.Constant = (*ast.AddrSpaceCastExpr)(nil)
	_ ast.Constant = (*ast.ICmpExpr)(nil)
	_ ast.Constant = (*ast.FCmpExpr)(nil)
	_ ast.Constant = (*ast.SelectExpr)(nil)
)

// Ensure that each instruction implements the ast.Instruction interface.
var (
	_ ast.Instruction = (*ast.AddInst)(nil)
	_ ast.Instruction = (*ast.FAddInst)(nil)
	_ ast.Instruction = (*ast.SubInst)(nil)
	_ ast.Instruction = (*ast.FSubInst)(nil)
	_ ast.Instruction = (*ast.MulInst)(nil)
	_ ast.Instruction = (*ast.FMulInst)(nil)
	_ ast.Instruction = (*ast.UDivInst)(nil)
	_ ast.Instruction = (*ast.SDivInst)(nil)
	_ ast.Instruction = (*ast.FDivInst)(nil)
	_ ast.Instruction = (*ast.URemInst)(nil)
	_ ast.Instruction = (*ast.SRemInst)(nil)
	_ ast.Instruction = (*ast.FRemInst)(nil)
	_ ast.Instruction = (*ast.ShlInst)(nil)
	_ ast.Instruction = (*ast.LShrInst)(nil)
	_ ast.Instruction = (*ast.AShrInst)(nil)
	_ ast.Instruction = (*ast.AndInst)(nil)
	_ ast.Instruction = (*ast.OrInst)(nil)
	_ ast.Instruction = (*ast.XorInst)(nil)
	_ ast.Instruction = (*ast.ExtractElementInst)(nil)
	_ ast.Instruction = (*ast.InsertElementInst)(nil)
	_ ast.Instruction = (*ast.ShuffleVectorInst)(nil)
	_ ast.Instruction = (*ast.ExtractValueInst)(nil)
	_ ast.Instruction = (*ast.InsertValueInst)(nil)
	_ ast.Instruction = (*ast.AllocaInst)(nil)
	_ ast.Instruction = (*ast.LoadInst)(nil)
	_ ast.Instruction = (*ast.StoreInst)(nil)
	_ ast.Instruction = (*ast.FenceInst)(nil)
	_ ast.Instruction = (*ast.CmpXchgInst)(nil)
	_ ast.Instruction = (*ast.AtomicRMWInst)(nil)
	_ ast.Instruction = (*ast.GetElementPtrInst)(nil)
	_ ast.Instruction = (*ast.TruncInst)(nil)
	_ ast.Instruction = (*ast.ZExtInst)(nil)
	_ ast.Instruction = (*ast.SExtInst)(nil)
	_ ast.Instruction = (*ast.FPTruncInst)(nil)
	_ ast.Instruction = (*ast.FPExtInst)(nil)
	_ ast.Instruction = (*ast.FPToUIInst)(nil)
	_ ast.Instruction = (*ast.FPToSIInst)(nil)
	_ ast.Instruction = (*ast.UIToFPInst)(nil)
	_ ast.Instruction = (*ast.SIToFPInst)(nil)
	_ ast.Instruction = (*ast.PtrToIntInst)(nil)
	_ ast.Instruction = (*ast.IntToPtrInst)(nil)
	_ ast.Instruction = (*ast.BitCastInst)(nil)
	_ ast.Instruction = (*ast.AddrSpaceCastInst)(nil)
	_ ast.Instruction = (*ast.ICmpInst)(nil)
	_ ast.Instruction = (*ast.FCmpInst)(nil)
	_ ast.Instruction = (*ast.PhiInst)(nil)
	_ ast.Instruction = (*ast.SelectInst)(nil)
	_ ast.Instruction = (*ast.CallInst)(nil)
	_ ast.Instruction = (*ast.VAArgInst)(nil)
	_ ast.Instruction = (*ast.LandingPadInst)(nil)
	_ ast.Instruction = (*ast.CatchPadInst)(nil)
	_ ast.Instruction = (*ast.CleanupPadInst)(nil)
)

// Ensure that each metadata field implements the ast.MDField interface.
var (
	_ ast.MDField = (*ast.NullConst)(nil)
	_ ast.MDField = (*ast.TypeValue)(nil)
	_ ast.MDField = (*ast.MDString)(nil)
	_ ast.MDField = (*ast.MDTuple)(nil)
	_ ast.MDField = (*ast.MetadataID)(nil)
	_ ast.MDField = (*ast.DICompileUnit)(nil)
	_ ast.MDField = (*ast.DIFile)(nil)
	_ ast.MDField = (*ast.DIBasicType)(nil)
	_ ast.MDField = (*ast.DISubroutineType)(nil)
	_ ast.MDField = (*ast.DIDerivedType)(nil)
	_ ast.MDField = (*ast.DICompositeType)(nil)
	_ ast.MDField = (*ast.DISubrange)(nil)
	_ ast.MDField = (*ast.DIEnumerator)(nil)
	_ ast.MDField = (*ast.DITemplateTypeParameter)(nil)
	_ ast.MDField = (*ast.DITemplateValueParameter)(nil)
	_ ast.MDField = (*ast.DIModule)(nil)
	_ ast.MDField = (*ast.DINamespace)(nil)
	_ ast.MDField = (*ast.DIGlobalVariable)(nil)
	_ ast.MDField = (*ast.DISubprogram)(nil)
	_ ast.MDField = (*ast.DILexicalBlock)(nil)
	_ ast.MDField = (*ast.DILexicalBlockFile)(nil)
	_ ast.MDField = (*ast.DILocation)(nil)
	_ ast.MDField = (*ast.DILocalVariable)(nil)
	_ ast.MDField = (*ast.DIExpression)(nil)
	_ ast.MDField = (*ast.DIGlobalVariableExpression)(nil)
	_ ast.MDField = (*ast.DIObjCProperty)(nil)
	_ ast.MDField = (*ast.DIImportedEntity)(nil)
	_ ast.MDField = (*ast.DIMacro)(nil)
	_ ast.MDField = (*ast.DIMacroFile)(nil)
	_ ast.MDField = (*ast.GenericDINode)(nil)
)

// Ensure that each metadata implements the ast.Metadata interface.
var (
	_ ast.Metadata = (*ast.TypeValue)(nil)
	_ ast.Metadata = (*ast.MDString)(nil)
	_ ast.Metadata = (*ast.MDTuple)(nil)
	_ ast.Metadata = (*ast.MetadataID)(nil)
	_ ast.Metadata = (*ast.DICompileUnit)(nil)
	_ ast.Metadata = (*ast.DIFile)(nil)
	_ ast.Metadata = (*ast.DIBasicType)(nil)
	_ ast.Metadata = (*ast.DISubroutineType)(nil)
	_ ast.Metadata = (*ast.DIDerivedType)(nil)
	_ ast.Metadata = (*ast.DICompositeType)(nil)
	_ ast.Metadata = (*ast.DISubrange)(nil)
	_ ast.Metadata = (*ast.DIEnumerator)(nil)
	_ ast.Metadata = (*ast.DITemplateTypeParameter)(nil)
	_ ast.Metadata = (*ast.DITemplateValueParameter)(nil)
	_ ast.Metadata = (*ast.DIModule)(nil)
	_ ast.Metadata = (*ast.DINamespace)(nil)
	_ ast.Metadata = (*ast.DIGlobalVariable)(nil)
	_ ast.Metadata = (*ast.DISubprogram)(nil)
	_ ast.Metadata = (*ast.DILexicalBlock)(nil)
	_ ast.Metadata = (*ast.DILexicalBlockFile)(nil)
	_ ast.Metadata = (*ast.DILocation)(nil)
	_ ast.Metadata = (*ast.DILocalVariable)(nil)
	_ ast.Metadata = (*ast.DIExpression)(nil)
	_ ast.Metadata = (*ast.DIGlobalVariableExpression)(nil)
	_ ast.Metadata = (*ast.DIObjCProperty)(nil)
	_ ast.Metadata = (*ast.DIImportedEntity)(nil)
	_ ast.Metadata = (*ast.DIMacro)(nil)
	_ ast.Metadata = (*ast.DIMacroFile)(nil)
	_ ast.Metadata = (*ast.GenericDINode)(nil)
)

// Ensure that each metadata node implements the ast.MDNode interface.
var (
	_ ast.MDNode = (*ast.MDTuple)(nil)
	_ ast.MDNode = (*ast.MetadataID)(nil)
	_ ast.MDNode = (*ast.DICompileUnit)(nil)
	_ ast.MDNode = (*ast.DIFile)(nil)
	_ ast.MDNode = (*ast.DIBasicType)(nil)
	_ ast.MDNode = (*ast.DISubroutineType)(nil)
	_ ast.MDNode = (*ast.DIDerivedType)(nil)
	_ ast.MDNode = (*ast.DICompositeType)(nil)
	_ ast.MDNode = (*ast.DISubrange)(nil)
	_ ast.MDNode = (*ast.DIEnumerator)(nil)
	_ ast.MDNode = (*ast.DITemplateTypeParameter)(nil)
	_ ast.MDNode = (*ast.DITemplateValueParameter)(nil)
	_ ast.MDNode = (*ast.DIModule)(nil)
	_ ast.MDNode = (*ast.DINamespace)(nil)
	_ ast.MDNode = (*ast.DIGlobalVariable)(nil)
	_ ast.MDNode = (*ast.DISubprogram)(nil)
	_ ast.MDNode = (*ast.DILexicalBlock)(nil)
	_ ast.MDNode = (*ast.DILexicalBlockFile)(nil)
	_ ast.MDNode = (*ast.DILocation)(nil)
	_ ast.MDNode = (*ast.DILocalVariable)(nil)
	_ ast.MDNode = (*ast.DIExpression)(nil)
	_ ast.MDNode = (*ast.DIGlobalVariableExpression)(nil)
	_ ast.MDNode = (*ast.DIObjCProperty)(nil)
	_ ast.MDNode = (*ast.DIImportedEntity)(nil)
	_ ast.MDNode = (*ast.DIMacro)(nil)
	_ ast.MDNode = (*ast.DIMacroFile)(nil)
	_ ast.MDNode = (*ast.GenericDINode)(nil)
)

// Ensure that each DIExpression field implements the ast.DIExpressionField
// interface.
var (
	_ ast.DIExpressionField = (*ast.IntConst)(nil)
	_ ast.DIExpressionField = ll.DwarfOp(0)
)

// Ensure that each specialized metadata node implements the
// ast.SpecializedMDNode interface.
var (
	_ ast.SpecializedMDNode = (*ast.DICompileUnit)(nil)
	_ ast.SpecializedMDNode = (*ast.DIFile)(nil)
	_ ast.SpecializedMDNode = (*ast.DIBasicType)(nil)
	_ ast.SpecializedMDNode = (*ast.DISubroutineType)(nil)
	_ ast.SpecializedMDNode = (*ast.DIDerivedType)(nil)
	_ ast.SpecializedMDNode = (*ast.DICompositeType)(nil)
	_ ast.SpecializedMDNode = (*ast.DISubrange)(nil)
	_ ast.SpecializedMDNode = (*ast.DIEnumerator)(nil)
	_ ast.SpecializedMDNode = (*ast.DITemplateTypeParameter)(nil)
	_ ast.SpecializedMDNode = (*ast.DITemplateValueParameter)(nil)
	_ ast.SpecializedMDNode = (*ast.DIModule)(nil)
	_ ast.SpecializedMDNode = (*ast.DINamespace)(nil)
	_ ast.SpecializedMDNode = (*ast.DIGlobalVariable)(nil)
	_ ast.SpecializedMDNode = (*ast.DISubprogram)(nil)
	_ ast.SpecializedMDNode = (*ast.DILexicalBlock)(nil)
	_ ast.SpecializedMDNode = (*ast.DILexicalBlockFile)(nil)
	_ ast.SpecializedMDNode = (*ast.DILocation)(nil)
	_ ast.SpecializedMDNode = (*ast.DILocalVariable)(nil)
	_ ast.SpecializedMDNode = (*ast.DIExpression)(nil)
	_ ast.SpecializedMDNode = (*ast.DIGlobalVariableExpression)(nil)
	_ ast.SpecializedMDNode = (*ast.DIObjCProperty)(nil)
	_ ast.SpecializedMDNode = (*ast.DIImportedEntity)(nil)
	_ ast.SpecializedMDNode = (*ast.DIMacro)(nil)
	_ ast.SpecializedMDNode = (*ast.DIMacroFile)(nil)
	_ ast.SpecializedMDNode = (*ast.GenericDINode)(nil)
)

// Ensure that each integer and metadata field implements the ast.IntOrMDField
// interface.
var (
	_ ast.IntOrMDField = (*ast.IntConst)(nil)
	_ ast.IntOrMDField = (*ast.NullConst)(nil)
	_ ast.IntOrMDField = (*ast.TypeValue)(nil)
	_ ast.IntOrMDField = (*ast.MDString)(nil)
	_ ast.IntOrMDField = (*ast.MDTuple)(nil)
	_ ast.IntOrMDField = (*ast.MetadataID)(nil)
	_ ast.IntOrMDField = (*ast.DICompileUnit)(nil)
	_ ast.IntOrMDField = (*ast.DIFile)(nil)
	_ ast.IntOrMDField = (*ast.DIBasicType)(nil)
	_ ast.IntOrMDField = (*ast.DISubroutineType)(nil)
	_ ast.IntOrMDField = (*ast.DIDerivedType)(nil)
	_ ast.IntOrMDField = (*ast.DICompositeType)(nil)
	_ ast.IntOrMDField = (*ast.DISubrange)(nil)
	_ ast.IntOrMDField = (*ast.DIEnumerator)(nil)
	_ ast.IntOrMDField = (*ast.DITemplateTypeParameter)(nil)
	_ ast.IntOrMDField = (*ast.DITemplateValueParameter)(nil)
	_ ast.IntOrMDField = (*ast.DIModule)(nil)
	_ ast.IntOrMDField = (*ast.DINamespace)(nil)
	_ ast.IntOrMDField = (*ast.DIGlobalVariable)(nil)
	_ ast.IntOrMDField = (*ast.DISubprogram)(nil)
	_ ast.IntOrMDField = (*ast.DILexicalBlock)(nil)
	_ ast.IntOrMDField = (*ast.DILexicalBlockFile)(nil)
	_ ast.IntOrMDField = (*ast.DILocation)(nil)
	_ ast.IntOrMDField = (*ast.DILocalVariable)(nil)
	_ ast.IntOrMDField = (*ast.DIExpression)(nil)
	_ ast.IntOrMDField = (*ast.DIGlobalVariableExpression)(nil)
	_ ast.IntOrMDField = (*ast.DIObjCProperty)(nil)
	_ ast.IntOrMDField = (*ast.DIImportedEntity)(nil)
	_ ast.IntOrMDField = (*ast.DIMacro)(nil)
	_ ast.IntOrMDField = (*ast.DIMacroFile)(nil)
	_ ast.IntOrMDField = (*ast.GenericDINode)(nil)
)

// Ensure that each unwind target implements the ast.UnwindTarget interface.
var (
	_ ast.UnwindTarget = (*ast.UnwindToCaller)(nil)
	_ ast.UnwindTarget = (*ast.Label)(nil)
)

// Ensure that each terminator implements the ast.Terminator interface.
var (
	_ ast.Terminator = (*ast.RetTerm)(nil)
	_ ast.Terminator = (*ast.BrTerm)(nil)
	_ ast.Terminator = (*ast.CondBrTerm)(nil)
	_ ast.Terminator = (*ast.SwitchTerm)(nil)
	_ ast.Terminator = (*ast.IndirectBrTerm)(nil)
	_ ast.Terminator = (*ast.InvokeTerm)(nil)
	_ ast.Terminator = (*ast.ResumeTerm)(nil)
	_ ast.Terminator = (*ast.CatchSwitchTerm)(nil)
	_ ast.Terminator = (*ast.CatchRetTerm)(nil)
	_ ast.Terminator = (*ast.CleanupRetTerm)(nil)
	_ ast.Terminator = (*ast.UnreachableTerm)(nil)
)

// Ensure that each value implements the ast.Value interface.
var (
	_ ast.Value = (*ast.LocalIdent)(nil)
	_ ast.Value = (*ll.InlineAsm)(nil)
	_ ast.Value = (*ast.BoolConst)(nil)
	_ ast.Value = (*ast.IntConst)(nil)
	_ ast.Value = (*ast.FloatConst)(nil)
	_ ast.Value = (*ast.NullConst)(nil)
	_ ast.Value = (*ast.NoneConst)(nil)
	_ ast.Value = (*ast.StructConst)(nil)
	_ ast.Value = (*ast.ArrayConst)(nil)
	_ ast.Value = (*ast.CharArrayConst)(nil)
	_ ast.Value = (*ast.VectorConst)(nil)
	_ ast.Value = (*ast.ZeroInitializerConst)(nil)
	_ ast.Value = (*ast.GlobalIdent)(nil)
	_ ast.Value = (*ast.UndefConst)(nil)
	_ ast.Value = (*ast.BlockAddressConst)(nil)
	_ ast.Value = (*ast.AddExpr)(nil)
	_ ast.Value = (*ast.FAddExpr)(nil)
	_ ast.Value = (*ast.SubExpr)(nil)
	_ ast.Value = (*ast.FSubExpr)(nil)
	_ ast.Value = (*ast.MulExpr)(nil)
	_ ast.Value = (*ast.FMulExpr)(nil)
	_ ast.Value = (*ast.UDivExpr)(nil)
	_ ast.Value = (*ast.SDivExpr)(nil)
	_ ast.Value = (*ast.FDivExpr)(nil)
	_ ast.Value = (*ast.URemExpr)(nil)
	_ ast.Value = (*ast.SRemExpr)(nil)
	_ ast.Value = (*ast.FRemExpr)(nil)
	_ ast.Value = (*ast.ShlExpr)(nil)
	_ ast.Value = (*ast.LShrExpr)(nil)
	_ ast.Value = (*ast.AShrExpr)(nil)
	_ ast.Value = (*ast.AndExpr)(nil)
	_ ast.Value = (*ast.OrExpr)(nil)
	_ ast.Value = (*ast.XorExpr)(nil)
	_ ast.Value = (*ast.ExtractElementExpr)(nil)
	_ ast.Value = (*ast.InsertElementExpr)(nil)
	_ ast.Value = (*ast.ShuffleVectorExpr)(nil)
	_ ast.Value = (*ast.ExtractValueExpr)(nil)
	_ ast.Value = (*ast.InsertValueExpr)(nil)
	_ ast.Value = (*ast.GetElementPtrExpr)(nil)
	_ ast.Value = (*ast.TruncExpr)(nil)
	_ ast.Value = (*ast.ZExtExpr)(nil)
	_ ast.Value = (*ast.SExtExpr)(nil)
	_ ast.Value = (*ast.FPTruncExpr)(nil)
	_ ast.Value = (*ast.FPExtExpr)(nil)
	_ ast.Value = (*ast.FPToUIExpr)(nil)
	_ ast.Value = (*ast.FPToSIExpr)(nil)
	_ ast.Value = (*ast.UIToFPExpr)(nil)
	_ ast.Value = (*ast.SIToFPExpr)(nil)
	_ ast.Value = (*ast.PtrToIntExpr)(nil)
	_ ast.Value = (*ast.IntToPtrExpr)(nil)
	_ ast.Value = (*ast.BitCastExpr)(nil)
	_ ast.Value = (*ast.AddrSpaceCastExpr)(nil)
	_ ast.Value = (*ast.ICmpExpr)(nil)
	_ ast.Value = (*ast.FCmpExpr)(nil)
	_ ast.Value = (*ast.SelectExpr)(nil)
)
