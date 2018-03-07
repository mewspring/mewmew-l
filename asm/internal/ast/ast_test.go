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
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/value"
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

// Ensure that each constant implements the ir.Constant interface.
var (
	_ ir.Constant = (*ast.IntConst)(nil)
	_ ir.Constant = (*ast.FloatConst)(nil)

	_ ir.Constant = (*constant.BoolConst)(nil)
	_ ir.Constant = (*constant.IntConst)(nil)
	_ ir.Constant = (*constant.FloatConst)(nil)
	_ ir.Constant = (*constant.NullConst)(nil)
	_ ir.Constant = (*constant.NoneConst)(nil)
	_ ir.Constant = (*constant.StructConst)(nil)
	_ ir.Constant = (*constant.ArrayConst)(nil)
	_ ir.Constant = (*constant.CharArrayConst)(nil)
	_ ir.Constant = (*constant.VectorConst)(nil)
	_ ir.Constant = (*constant.ZeroInitializerConst)(nil)
	_ ir.Constant = (*ast.GlobalIdent)(nil)
	_ ir.Constant = (*constant.UndefConst)(nil)
	_ ir.Constant = (*constant.BlockAddressConst)(nil)

	// ConstantExpr
	_ ir.Constant = (*constant.AddExpr)(nil)
	_ ir.Constant = (*constant.FAddExpr)(nil)
	_ ir.Constant = (*constant.SubExpr)(nil)
	_ ir.Constant = (*constant.FSubExpr)(nil)
	_ ir.Constant = (*constant.MulExpr)(nil)
	_ ir.Constant = (*constant.FMulExpr)(nil)
	_ ir.Constant = (*constant.UDivExpr)(nil)
	_ ir.Constant = (*constant.SDivExpr)(nil)
	_ ir.Constant = (*constant.FDivExpr)(nil)
	_ ir.Constant = (*constant.URemExpr)(nil)
	_ ir.Constant = (*constant.SRemExpr)(nil)
	_ ir.Constant = (*constant.FRemExpr)(nil)
	_ ir.Constant = (*constant.ShlExpr)(nil)
	_ ir.Constant = (*constant.LShrExpr)(nil)
	_ ir.Constant = (*constant.AShrExpr)(nil)
	_ ir.Constant = (*constant.AndExpr)(nil)
	_ ir.Constant = (*constant.OrExpr)(nil)
	_ ir.Constant = (*constant.XorExpr)(nil)
	_ ir.Constant = (*constant.ExtractElementExpr)(nil)
	_ ir.Constant = (*constant.InsertElementExpr)(nil)
	_ ir.Constant = (*constant.ShuffleVectorExpr)(nil)
	_ ir.Constant = (*constant.ExtractValueExpr)(nil)
	_ ir.Constant = (*constant.InsertValueExpr)(nil)
	_ ir.Constant = (*constant.GetElementPtrExpr)(nil)
	_ ir.Constant = (*constant.TruncExpr)(nil)
	_ ir.Constant = (*constant.ZExtExpr)(nil)
	_ ir.Constant = (*constant.SExtExpr)(nil)
	_ ir.Constant = (*constant.FPTruncExpr)(nil)
	_ ir.Constant = (*constant.FPExtExpr)(nil)
	_ ir.Constant = (*constant.FPToUIExpr)(nil)
	_ ir.Constant = (*constant.FPToSIExpr)(nil)
	_ ir.Constant = (*constant.UIToFPExpr)(nil)
	_ ir.Constant = (*constant.SIToFPExpr)(nil)
	_ ir.Constant = (*constant.PtrToIntExpr)(nil)
	_ ir.Constant = (*constant.IntToPtrExpr)(nil)
	_ ir.Constant = (*constant.BitCastExpr)(nil)
	_ ir.Constant = (*constant.AddrSpaceCastExpr)(nil)
	_ ir.Constant = (*constant.ICmpExpr)(nil)
	_ ir.Constant = (*constant.FCmpExpr)(nil)
	_ ir.Constant = (*constant.SelectExpr)(nil)
)

// Ensure that each metadata field implements the ast.MDField interface.
var (
	_ metadata.MDField = (*metadata.MDNull)(nil)
	_ metadata.MDField = (*ast.TypeValue)(nil)
	_ metadata.MDField = (*metadata.MDString)(nil)
	_ metadata.MDField = (*metadata.MDTuple)(nil)
	_ metadata.MDField = (*ast.MetadataID)(nil)
	_ metadata.MDField = (*metadata.DICompileUnit)(nil)
	_ metadata.MDField = (*metadata.DIFile)(nil)
	_ metadata.MDField = (*metadata.DIBasicType)(nil)
	_ metadata.MDField = (*metadata.DISubroutineType)(nil)
	_ metadata.MDField = (*metadata.DIDerivedType)(nil)
	_ metadata.MDField = (*metadata.DICompositeType)(nil)
	_ metadata.MDField = (*metadata.DISubrange)(nil)
	_ metadata.MDField = (*metadata.DIEnumerator)(nil)
	_ metadata.MDField = (*metadata.DITemplateTypeParameter)(nil)
	_ metadata.MDField = (*metadata.DITemplateValueParameter)(nil)
	_ metadata.MDField = (*metadata.DIModule)(nil)
	_ metadata.MDField = (*metadata.DINamespace)(nil)
	_ metadata.MDField = (*metadata.DIGlobalVariable)(nil)
	_ metadata.MDField = (*metadata.DISubprogram)(nil)
	_ metadata.MDField = (*metadata.DILexicalBlock)(nil)
	_ metadata.MDField = (*metadata.DILexicalBlockFile)(nil)
	_ metadata.MDField = (*metadata.DILocation)(nil)
	_ metadata.MDField = (*metadata.DILocalVariable)(nil)
	_ metadata.MDField = (*metadata.DIExpression)(nil)
	_ metadata.MDField = (*metadata.DIGlobalVariableExpression)(nil)
	_ metadata.MDField = (*metadata.DIObjCProperty)(nil)
	_ metadata.MDField = (*metadata.DIImportedEntity)(nil)
	_ metadata.MDField = (*metadata.DIMacro)(nil)
	_ metadata.MDField = (*metadata.DIMacroFile)(nil)
	_ metadata.MDField = (*metadata.GenericDINode)(nil)
)

// Ensure that each metadata implements the ast.Metadata interface.
var (
	_ metadata.Metadata = (*ast.TypeValue)(nil)
	_ metadata.Metadata = (*metadata.MDString)(nil)
	_ metadata.Metadata = (*metadata.MDTuple)(nil)
	_ metadata.Metadata = (*ast.MetadataID)(nil)
	_ metadata.Metadata = (*metadata.DICompileUnit)(nil)
	_ metadata.Metadata = (*metadata.DIFile)(nil)
	_ metadata.Metadata = (*metadata.DIBasicType)(nil)
	_ metadata.Metadata = (*metadata.DISubroutineType)(nil)
	_ metadata.Metadata = (*metadata.DIDerivedType)(nil)
	_ metadata.Metadata = (*metadata.DICompositeType)(nil)
	_ metadata.Metadata = (*metadata.DISubrange)(nil)
	_ metadata.Metadata = (*metadata.DIEnumerator)(nil)
	_ metadata.Metadata = (*metadata.DITemplateTypeParameter)(nil)
	_ metadata.Metadata = (*metadata.DITemplateValueParameter)(nil)
	_ metadata.Metadata = (*metadata.DIModule)(nil)
	_ metadata.Metadata = (*metadata.DINamespace)(nil)
	_ metadata.Metadata = (*metadata.DIGlobalVariable)(nil)
	_ metadata.Metadata = (*metadata.DISubprogram)(nil)
	_ metadata.Metadata = (*metadata.DILexicalBlock)(nil)
	_ metadata.Metadata = (*metadata.DILexicalBlockFile)(nil)
	_ metadata.Metadata = (*metadata.DILocation)(nil)
	_ metadata.Metadata = (*metadata.DILocalVariable)(nil)
	_ metadata.Metadata = (*metadata.DIExpression)(nil)
	_ metadata.Metadata = (*metadata.DIGlobalVariableExpression)(nil)
	_ metadata.Metadata = (*metadata.DIObjCProperty)(nil)
	_ metadata.Metadata = (*metadata.DIImportedEntity)(nil)
	_ metadata.Metadata = (*metadata.DIMacro)(nil)
	_ metadata.Metadata = (*metadata.DIMacroFile)(nil)
	_ metadata.Metadata = (*metadata.GenericDINode)(nil)
)

// Ensure that each metadata node implements the ast.MDNode interface.
var (
	_ metadata.MDNode = (*metadata.MDTuple)(nil)
	_ metadata.MDNode = (*ast.MetadataID)(nil)
	_ metadata.MDNode = (*metadata.DICompileUnit)(nil)
	_ metadata.MDNode = (*metadata.DIFile)(nil)
	_ metadata.MDNode = (*metadata.DIBasicType)(nil)
	_ metadata.MDNode = (*metadata.DISubroutineType)(nil)
	_ metadata.MDNode = (*metadata.DIDerivedType)(nil)
	_ metadata.MDNode = (*metadata.DICompositeType)(nil)
	_ metadata.MDNode = (*metadata.DISubrange)(nil)
	_ metadata.MDNode = (*metadata.DIEnumerator)(nil)
	_ metadata.MDNode = (*metadata.DITemplateTypeParameter)(nil)
	_ metadata.MDNode = (*metadata.DITemplateValueParameter)(nil)
	_ metadata.MDNode = (*metadata.DIModule)(nil)
	_ metadata.MDNode = (*metadata.DINamespace)(nil)
	_ metadata.MDNode = (*metadata.DIGlobalVariable)(nil)
	_ metadata.MDNode = (*metadata.DISubprogram)(nil)
	_ metadata.MDNode = (*metadata.DILexicalBlock)(nil)
	_ metadata.MDNode = (*metadata.DILexicalBlockFile)(nil)
	_ metadata.MDNode = (*metadata.DILocation)(nil)
	_ metadata.MDNode = (*metadata.DILocalVariable)(nil)
	_ metadata.MDNode = (*metadata.DIExpression)(nil)
	_ metadata.MDNode = (*metadata.DIGlobalVariableExpression)(nil)
	_ metadata.MDNode = (*metadata.DIObjCProperty)(nil)
	_ metadata.MDNode = (*metadata.DIImportedEntity)(nil)
	_ metadata.MDNode = (*metadata.DIMacro)(nil)
	_ metadata.MDNode = (*metadata.DIMacroFile)(nil)
	_ metadata.MDNode = (*metadata.GenericDINode)(nil)
)

// Ensure that each DIExpression field implements the ast.DIExpressionField
// interface.
var (
	_ metadata.DIExpressionField = (*metadata.MDInt)(nil)
	_ metadata.DIExpressionField = ll.DwarfOp(0)
)

// Ensure that each specialized metadata node implements the
// ast.SpecializedMDNode interface.
var (
	_ metadata.SpecializedMDNode = (*metadata.DICompileUnit)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIFile)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIBasicType)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DISubroutineType)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIDerivedType)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DICompositeType)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DISubrange)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIEnumerator)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DITemplateTypeParameter)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DITemplateValueParameter)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIModule)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DINamespace)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIGlobalVariable)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DISubprogram)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DILexicalBlock)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DILexicalBlockFile)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DILocation)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DILocalVariable)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIExpression)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIGlobalVariableExpression)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIObjCProperty)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIImportedEntity)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIMacro)(nil)
	_ metadata.SpecializedMDNode = (*metadata.DIMacroFile)(nil)
	_ metadata.SpecializedMDNode = (*metadata.GenericDINode)(nil)
)

// Ensure that each integer and metadata field implements the ast.IntOrMDField
// interface.
var (
	_ metadata.IntOrMDField = (*metadata.MDInt)(nil)
	_ metadata.IntOrMDField = (*metadata.MDNull)(nil)
	_ metadata.IntOrMDField = (*ast.TypeValue)(nil)
	_ metadata.IntOrMDField = (*metadata.MDString)(nil)
	_ metadata.IntOrMDField = (*metadata.MDTuple)(nil)
	_ metadata.IntOrMDField = (*ast.MetadataID)(nil)
	_ metadata.IntOrMDField = (*metadata.DICompileUnit)(nil)
	_ metadata.IntOrMDField = (*metadata.DIFile)(nil)
	_ metadata.IntOrMDField = (*metadata.DIBasicType)(nil)
	_ metadata.IntOrMDField = (*metadata.DISubroutineType)(nil)
	_ metadata.IntOrMDField = (*metadata.DIDerivedType)(nil)
	_ metadata.IntOrMDField = (*metadata.DICompositeType)(nil)
	_ metadata.IntOrMDField = (*metadata.DISubrange)(nil)
	_ metadata.IntOrMDField = (*metadata.DIEnumerator)(nil)
	_ metadata.IntOrMDField = (*metadata.DITemplateTypeParameter)(nil)
	_ metadata.IntOrMDField = (*metadata.DITemplateValueParameter)(nil)
	_ metadata.IntOrMDField = (*metadata.DIModule)(nil)
	_ metadata.IntOrMDField = (*metadata.DINamespace)(nil)
	_ metadata.IntOrMDField = (*metadata.DIGlobalVariable)(nil)
	_ metadata.IntOrMDField = (*metadata.DISubprogram)(nil)
	_ metadata.IntOrMDField = (*metadata.DILexicalBlock)(nil)
	_ metadata.IntOrMDField = (*metadata.DILexicalBlockFile)(nil)
	_ metadata.IntOrMDField = (*metadata.DILocation)(nil)
	_ metadata.IntOrMDField = (*metadata.DILocalVariable)(nil)
	_ metadata.IntOrMDField = (*metadata.DIExpression)(nil)
	_ metadata.IntOrMDField = (*metadata.DIGlobalVariableExpression)(nil)
	_ metadata.IntOrMDField = (*metadata.DIObjCProperty)(nil)
	_ metadata.IntOrMDField = (*metadata.DIImportedEntity)(nil)
	_ metadata.IntOrMDField = (*metadata.DIMacro)(nil)
	_ metadata.IntOrMDField = (*metadata.DIMacroFile)(nil)
	_ metadata.IntOrMDField = (*metadata.GenericDINode)(nil)
)

// Ensure that each unwind target implements the ast.UnwindTarget interface.
var (
	_ ll.UnwindTarget = (*ll.UnwindToCaller)(nil)
	_ ll.UnwindTarget = (*ir.BasicBlock)(nil)
)

// Ensure that each terminator implements the ast.Terminator interface.
var (
	_ ir.Terminator = (*ir.RetTerm)(nil)
	_ ir.Terminator = (*ir.BrTerm)(nil)
	_ ir.Terminator = (*ir.CondBrTerm)(nil)
	_ ir.Terminator = (*ir.SwitchTerm)(nil)
	_ ir.Terminator = (*ir.IndirectBrTerm)(nil)
	_ ir.Terminator = (*ir.InvokeTerm)(nil)
	_ ir.Terminator = (*ir.ResumeTerm)(nil)
	_ ir.Terminator = (*ir.CatchSwitchTerm)(nil)
	_ ir.Terminator = (*ir.CatchRetTerm)(nil)
	_ ir.Terminator = (*ir.CleanupRetTerm)(nil)
	_ ir.Terminator = (*ir.UnreachableTerm)(nil)
)

// Ensure that each value implements the ast.Value interface.
var (
	_ ast.Value = (*ast.LocalIdent)(nil)
	_ ast.Value = (*ll.InlineAsm)(nil)
	_ ast.Value = (*constant.BoolConst)(nil)
	_ ast.Value = (*ast.IntConst)(nil)
	_ ast.Value = (*ast.FloatConst)(nil)
	_ ast.Value = (*constant.NullConst)(nil)
	_ ast.Value = (*constant.NoneConst)(nil)
	_ ast.Value = (*constant.StructConst)(nil)
	_ ast.Value = (*constant.ArrayConst)(nil)
	_ ast.Value = (*constant.CharArrayConst)(nil)
	_ ast.Value = (*constant.VectorConst)(nil)
	_ ast.Value = (*constant.ZeroInitializerConst)(nil)
	_ ast.Value = (*ast.GlobalIdent)(nil)
	_ ast.Value = (*constant.UndefConst)(nil)
	_ ast.Value = (*constant.BlockAddressConst)(nil)
	_ ast.Value = (*constant.AddExpr)(nil)
	_ ast.Value = (*constant.FAddExpr)(nil)
	_ ast.Value = (*constant.SubExpr)(nil)
	_ ast.Value = (*constant.FSubExpr)(nil)
	_ ast.Value = (*constant.MulExpr)(nil)
	_ ast.Value = (*constant.FMulExpr)(nil)
	_ ast.Value = (*constant.UDivExpr)(nil)
	_ ast.Value = (*constant.SDivExpr)(nil)
	_ ast.Value = (*constant.FDivExpr)(nil)
	_ ast.Value = (*constant.URemExpr)(nil)
	_ ast.Value = (*constant.SRemExpr)(nil)
	_ ast.Value = (*constant.FRemExpr)(nil)
	_ ast.Value = (*constant.ShlExpr)(nil)
	_ ast.Value = (*constant.LShrExpr)(nil)
	_ ast.Value = (*constant.AShrExpr)(nil)
	_ ast.Value = (*constant.AndExpr)(nil)
	_ ast.Value = (*constant.OrExpr)(nil)
	_ ast.Value = (*constant.XorExpr)(nil)
	_ ast.Value = (*constant.ExtractElementExpr)(nil)
	_ ast.Value = (*constant.InsertElementExpr)(nil)
	_ ast.Value = (*constant.ShuffleVectorExpr)(nil)
	_ ast.Value = (*constant.ExtractValueExpr)(nil)
	_ ast.Value = (*constant.InsertValueExpr)(nil)
	_ ast.Value = (*constant.GetElementPtrExpr)(nil)
	_ ast.Value = (*constant.TruncExpr)(nil)
	_ ast.Value = (*constant.ZExtExpr)(nil)
	_ ast.Value = (*constant.SExtExpr)(nil)
	_ ast.Value = (*constant.FPTruncExpr)(nil)
	_ ast.Value = (*constant.FPExtExpr)(nil)
	_ ast.Value = (*constant.FPToUIExpr)(nil)
	_ ast.Value = (*constant.FPToSIExpr)(nil)
	_ ast.Value = (*constant.UIToFPExpr)(nil)
	_ ast.Value = (*constant.SIToFPExpr)(nil)
	_ ast.Value = (*constant.PtrToIntExpr)(nil)
	_ ast.Value = (*constant.IntToPtrExpr)(nil)
	_ ast.Value = (*constant.BitCastExpr)(nil)
	_ ast.Value = (*constant.AddrSpaceCastExpr)(nil)
	_ ast.Value = (*constant.ICmpExpr)(nil)
	_ ast.Value = (*constant.FCmpExpr)(nil)
	_ ast.Value = (*constant.SelectExpr)(nil)
)

// Ensure that each value implements the value.Value interface.
var (
	_ value.Value = (*ast.TypeValue)(nil)
	_ value.Value = (*ast.TypeConst)(nil)
)
