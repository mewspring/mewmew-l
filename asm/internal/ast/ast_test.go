package ast_test

import (
	"flag"
	"fmt"
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
		fmt.Println("path:", g.path)
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
	_ ir.Constant = (*constant.Bool)(nil)
	_ ir.Constant = (*constant.Int)(nil)
	_ ir.Constant = (*constant.Float)(nil)
	_ ir.Constant = (*constant.Null)(nil)
	_ ir.Constant = (*constant.None)(nil)
	_ ir.Constant = (*constant.Struct)(nil)
	_ ir.Constant = (*constant.Array)(nil)
	_ ir.Constant = (*constant.CharArray)(nil)
	_ ir.Constant = (*constant.Vector)(nil)
	_ ir.Constant = (*constant.ZeroInitializer)(nil)
	_ ir.Constant = (*ast.GlobalIdent)(nil)
	_ ir.Constant = (*constant.Undef)(nil)
	_ ir.Constant = (*constant.BlockAddress)(nil)

	// ConstantExpr
	_ ir.Constant = (*constant.ExprAdd)(nil)
	_ ir.Constant = (*constant.ExprFAdd)(nil)
	_ ir.Constant = (*constant.ExprSub)(nil)
	_ ir.Constant = (*constant.ExprFSub)(nil)
	_ ir.Constant = (*constant.ExprMul)(nil)
	_ ir.Constant = (*constant.ExprFMul)(nil)
	_ ir.Constant = (*constant.ExprUDiv)(nil)
	_ ir.Constant = (*constant.ExprSDiv)(nil)
	_ ir.Constant = (*constant.ExprFDiv)(nil)
	_ ir.Constant = (*constant.ExprURem)(nil)
	_ ir.Constant = (*constant.ExprSRem)(nil)
	_ ir.Constant = (*constant.ExprFRem)(nil)
	_ ir.Constant = (*constant.ExprShl)(nil)
	_ ir.Constant = (*constant.ExprLShr)(nil)
	_ ir.Constant = (*constant.ExprAShr)(nil)
	_ ir.Constant = (*constant.ExprAnd)(nil)
	_ ir.Constant = (*constant.ExprOr)(nil)
	_ ir.Constant = (*constant.ExprXor)(nil)
	_ ir.Constant = (*constant.ExprExtractElement)(nil)
	_ ir.Constant = (*constant.ExprInsertElement)(nil)
	_ ir.Constant = (*constant.ExprShuffleVector)(nil)
	_ ir.Constant = (*constant.ExprExtractValue)(nil)
	_ ir.Constant = (*constant.ExprInsertValue)(nil)
	_ ir.Constant = (*constant.ExprGetElementPtr)(nil)
	_ ir.Constant = (*constant.ExprTrunc)(nil)
	_ ir.Constant = (*constant.ExprZExt)(nil)
	_ ir.Constant = (*constant.ExprSExt)(nil)
	_ ir.Constant = (*constant.ExprFPTrunc)(nil)
	_ ir.Constant = (*constant.ExprFPExt)(nil)
	_ ir.Constant = (*constant.ExprFPToUI)(nil)
	_ ir.Constant = (*constant.ExprFPToSI)(nil)
	_ ir.Constant = (*constant.ExprUIToFP)(nil)
	_ ir.Constant = (*constant.ExprSIToFP)(nil)
	_ ir.Constant = (*constant.ExprPtrToInt)(nil)
	_ ir.Constant = (*constant.ExprIntToPtr)(nil)
	_ ir.Constant = (*constant.ExprBitCast)(nil)
	_ ir.Constant = (*constant.ExprAddrSpaceCast)(nil)
	_ ir.Constant = (*constant.ExprICmp)(nil)
	_ ir.Constant = (*constant.ExprFCmp)(nil)
	_ ir.Constant = (*constant.ExprSelect)(nil)
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
	_ metadata.DIExpressionField = metadata.DwarfOp(0)
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
	_ ir.UnwindTarget = (*ir.UnwindToCaller)(nil)
	_ ir.UnwindTarget = (*ir.BasicBlock)(nil)
)

// Ensure that each terminator implements the ast.Terminator interface.
var (
	_ ir.Terminator = (*ir.TermRet)(nil)
	_ ir.Terminator = (*ir.TermBr)(nil)
	_ ir.Terminator = (*ir.TermCondBr)(nil)
	_ ir.Terminator = (*ir.TermSwitch)(nil)
	_ ir.Terminator = (*ir.TermIndirectBr)(nil)
	_ ir.Terminator = (*ir.TermInvoke)(nil)
	_ ir.Terminator = (*ir.TermResume)(nil)
	_ ir.Terminator = (*ir.TermCatchSwitch)(nil)
	_ ir.Terminator = (*ir.TermCatchRet)(nil)
	_ ir.Terminator = (*ir.TermCleanupRet)(nil)
	_ ir.Terminator = (*ir.TermUnreachable)(nil)
)

// Ensure that each value implements the value.Value interface.
var (
	_ value.Value = (*ast.TypeValue)(nil)
	_ value.Value = (*ast.TypeConst)(nil)
	_ value.Value = (*ast.LocalIdent)(nil)
	_ value.Value = (*ir.InlineAsm)(nil)
	_ value.Value = (*constant.Bool)(nil)
	_ value.Value = (*constant.Null)(nil)
	_ value.Value = (*constant.None)(nil)
	_ value.Value = (*constant.Struct)(nil)
	_ value.Value = (*constant.Array)(nil)
	_ value.Value = (*constant.CharArray)(nil)
	_ value.Value = (*constant.Vector)(nil)
	_ value.Value = (*constant.ZeroInitializer)(nil)
	_ value.Value = (*ast.GlobalIdent)(nil)
	_ value.Value = (*constant.Undef)(nil)
	_ value.Value = (*constant.BlockAddress)(nil)
	_ value.Value = (*constant.ExprAdd)(nil)
	_ value.Value = (*constant.ExprFAdd)(nil)
	_ value.Value = (*constant.ExprSub)(nil)
	_ value.Value = (*constant.ExprFSub)(nil)
	_ value.Value = (*constant.ExprMul)(nil)
	_ value.Value = (*constant.ExprFMul)(nil)
	_ value.Value = (*constant.ExprUDiv)(nil)
	_ value.Value = (*constant.ExprSDiv)(nil)
	_ value.Value = (*constant.ExprFDiv)(nil)
	_ value.Value = (*constant.ExprURem)(nil)
	_ value.Value = (*constant.ExprSRem)(nil)
	_ value.Value = (*constant.ExprFRem)(nil)
	_ value.Value = (*constant.ExprShl)(nil)
	_ value.Value = (*constant.ExprLShr)(nil)
	_ value.Value = (*constant.ExprAShr)(nil)
	_ value.Value = (*constant.ExprAnd)(nil)
	_ value.Value = (*constant.ExprOr)(nil)
	_ value.Value = (*constant.ExprXor)(nil)
	_ value.Value = (*constant.ExprExtractElement)(nil)
	_ value.Value = (*constant.ExprInsertElement)(nil)
	_ value.Value = (*constant.ExprShuffleVector)(nil)
	_ value.Value = (*constant.ExprExtractValue)(nil)
	_ value.Value = (*constant.ExprInsertValue)(nil)
	_ value.Value = (*constant.ExprGetElementPtr)(nil)
	_ value.Value = (*constant.ExprTrunc)(nil)
	_ value.Value = (*constant.ExprZExt)(nil)
	_ value.Value = (*constant.ExprSExt)(nil)
	_ value.Value = (*constant.ExprFPTrunc)(nil)
	_ value.Value = (*constant.ExprFPExt)(nil)
	_ value.Value = (*constant.ExprFPToUI)(nil)
	_ value.Value = (*constant.ExprFPToSI)(nil)
	_ value.Value = (*constant.ExprUIToFP)(nil)
	_ value.Value = (*constant.ExprSIToFP)(nil)
	_ value.Value = (*constant.ExprPtrToInt)(nil)
	_ value.Value = (*constant.ExprIntToPtr)(nil)
	_ value.Value = (*constant.ExprBitCast)(nil)
	_ value.Value = (*constant.ExprAddrSpaceCast)(nil)
	_ value.Value = (*constant.ExprICmp)(nil)
	_ value.Value = (*constant.ExprFCmp)(nil)
	_ value.Value = (*constant.ExprSelect)(nil)
)

// Ensure that each argument implements the ir.Argument interface.
var (
	_ ir.Argument = (*ir.Arg)(nil)
	_ ir.Argument = (*ast.TypeValue)(nil)
	_ ir.Argument = (*ast.MetadataValue)(nil)
)
