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
	"github.com/mewmew/l/ast"
	"github.com/mewmew/l/lexer"
	"github.com/mewmew/l/parser"
	"github.com/pkg/errors"
)

var colorWords bool

func init() {
	flag.BoolVar(&colorWords, "words", false, "Color words.")
	flag.Parse()
}

func TestParse(t *testing.T) {
	golden := []struct {
		path string
	}{
		// Coreutils.
		/*
			{path: "testdata/coreutils/[.ll"},
			{path: "testdata/coreutils/b2sum.ll"},
			{path: "testdata/coreutils/base32.ll"},
			{path: "testdata/coreutils/base64.ll"},
			{path: "testdata/coreutils/basename.ll"},
		*/
		{path: "testdata/coreutils/cat.ll"},
		/*
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
		*/
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
		m, ok := module.(*ast.Module)
		if !ok {
			t.Errorf("%q: invalid module type, expected *ast.Module, got %T", g.path, module)
			continue
		}
		got := m.String()
		if want != got {
			if err := diff(want, got, colorWords); err != nil {
				log.Fatalf("%q: unable to diff `%v` and `%v`; %v", g.path, want, got, err)
			}
			t.Errorf("%q: module mismatch", g.path)
			//t.Errorf("%q: module mismatch; expected `%v`, got `%v`", g.path, want, got)
			continue
		}
	}
}

func diff(a, b string, colorWords bool) error {
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
	if colorWords {
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
