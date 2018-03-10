package ir_test

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
	"github.com/mewmew/l/asm"
	"github.com/mewmew/l/ir"
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
		// Type definitions.
		{path: "testdata/a.ll"},
		// Metadata definitions.
		{path: "testdata/b.ll"},
		// Global definitions.
		{path: "testdata/c.ll"},
		{path: "testdata/d.ll"},
		{path: "testdata/e.ll"},
		// Coreutils (metadata defs).
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
		// SQLite (metadata defs).
		{path: "testdata/sqlite/shell.ll"},
	}
	for _, g := range golden {
		fmt.Println("path:", g.path)
		buf, err := ioutil.ReadFile(g.path)
		if err != nil {
			t.Errorf("%q: unable to read file %q; %+v", g.path, g.path, err)
			continue
		}
		want := string(buf)
		if wantPath := g.path + ".golden"; osutil.Exists(wantPath) {
			buf, err := ioutil.ReadFile(wantPath)
			if err != nil {
				t.Errorf("%q: unable to read file %q; %+v", g.path, wantPath, err)
				continue
			}
			want = string(buf)
		}
		m, err := asm.ParseBytes(buf)
		got := m.String()
		if want != got {
			if err := diff(want, got, words); err != nil {
				log.Fatalf("%q: unable to diff `%v` and `%v`; %+v", g.path, want, got, err)
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

// Ensure that each instruction implements the ir.Instruction interface.
var (
	_ ir.Instruction = (*ir.InstStore)(nil)
	_ ir.Instruction = (*ir.InstFence)(nil)
	_ ir.Instruction = (*ir.InstCmpXchg)(nil)
	_ ir.Instruction = (*ir.InstAtomicRMW)(nil)
	_ ir.Instruction = (*ir.LocalDef)(nil)
)

// Ensure that each value instruction implements the ir.ValueInstruction
// interface.
var (
	_ ir.ValueInstruction = (*ir.InstAdd)(nil)
	_ ir.ValueInstruction = (*ir.InstFAdd)(nil)
	_ ir.ValueInstruction = (*ir.InstSub)(nil)
	_ ir.ValueInstruction = (*ir.InstFSub)(nil)
	_ ir.ValueInstruction = (*ir.InstMul)(nil)
	_ ir.ValueInstruction = (*ir.InstFMul)(nil)
	_ ir.ValueInstruction = (*ir.InstUDiv)(nil)
	_ ir.ValueInstruction = (*ir.InstSDiv)(nil)
	_ ir.ValueInstruction = (*ir.InstFDiv)(nil)
	_ ir.ValueInstruction = (*ir.InstURem)(nil)
	_ ir.ValueInstruction = (*ir.InstSRem)(nil)
	_ ir.ValueInstruction = (*ir.InstFRem)(nil)
	_ ir.ValueInstruction = (*ir.InstShl)(nil)
	_ ir.ValueInstruction = (*ir.InstLShr)(nil)
	_ ir.ValueInstruction = (*ir.InstAShr)(nil)
	_ ir.ValueInstruction = (*ir.InstAnd)(nil)
	_ ir.ValueInstruction = (*ir.InstOr)(nil)
	_ ir.ValueInstruction = (*ir.InstXor)(nil)
	_ ir.ValueInstruction = (*ir.InstExtractElement)(nil)
	_ ir.ValueInstruction = (*ir.InstInsertElement)(nil)
	_ ir.ValueInstruction = (*ir.InstShuffleVector)(nil)
	_ ir.ValueInstruction = (*ir.InstExtractValue)(nil)
	_ ir.ValueInstruction = (*ir.InstInsertValue)(nil)
	_ ir.ValueInstruction = (*ir.InstAlloca)(nil)
	_ ir.ValueInstruction = (*ir.InstLoad)(nil)
	_ ir.ValueInstruction = (*ir.InstGetElementPtr)(nil)
	_ ir.ValueInstruction = (*ir.InstTrunc)(nil)
	_ ir.ValueInstruction = (*ir.InstZExt)(nil)
	_ ir.ValueInstruction = (*ir.InstSExt)(nil)
	_ ir.ValueInstruction = (*ir.InstFPTrunc)(nil)
	_ ir.ValueInstruction = (*ir.InstFPExt)(nil)
	_ ir.ValueInstruction = (*ir.InstFPToUI)(nil)
	_ ir.ValueInstruction = (*ir.InstFPToSI)(nil)
	_ ir.ValueInstruction = (*ir.InstUIToFP)(nil)
	_ ir.ValueInstruction = (*ir.InstSIToFP)(nil)
	_ ir.ValueInstruction = (*ir.InstPtrToInt)(nil)
	_ ir.ValueInstruction = (*ir.InstIntToPtr)(nil)
	_ ir.ValueInstruction = (*ir.InstBitCast)(nil)
	_ ir.ValueInstruction = (*ir.InstAddrSpaceCast)(nil)
	_ ir.ValueInstruction = (*ir.InstICmp)(nil)
	_ ir.ValueInstruction = (*ir.InstFCmp)(nil)
	_ ir.ValueInstruction = (*ir.InstPhi)(nil)
	_ ir.ValueInstruction = (*ir.InstSelect)(nil)
	_ ir.ValueInstruction = (*ir.InstCall)(nil)
	_ ir.ValueInstruction = (*ir.InstVAArg)(nil)
	_ ir.ValueInstruction = (*ir.InstLandingPad)(nil)
	_ ir.ValueInstruction = (*ir.InstCatchPad)(nil)
	_ ir.ValueInstruction = (*ir.InstCleanupPad)(nil)
)
