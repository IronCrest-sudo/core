"""Offline regression tests for repository-level invariants.

Run with:  python3 -m pytest scripts/tests   (or: python3 -m unittest discover scripts/tests)

Nothing here starts, contacts or needs a Minecraft server.
"""
import os
import re
import shutil
import subprocess
import sys
import tempfile
import unittest

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
SCRIPT = os.path.join(ROOT, "scripts", "origin_watermarks.py")


def run_watermarks(script, *args):
    return subprocess.run(
        [sys.executable, script, *args], capture_output=True, text=True, check=False
    )


class RealTreeWatermarks(unittest.TestCase):
    def test_every_datapack_has_a_valid_watermark(self):
        # Regression: commit 5f2a74b deleted the macroEngine watermark, which
        # made the first CI step (--check) fail on main.
        result = run_watermarks(SCRIPT, "--check")
        self.assertEqual(result.returncode, 0, result.stdout + result.stderr)


class WatermarkCheckerBehaviour(unittest.TestCase):
    """Negative controls on a throw-away copy of the layout the tool expects."""

    def setUp(self):
        self.tmp = tempfile.mkdtemp(prefix="wm-test-")
        self.addCleanup(shutil.rmtree, self.tmp, ignore_errors=True)
        os.makedirs(os.path.join(self.tmp, "scripts"))
        shutil.copy(SCRIPT, os.path.join(self.tmp, "scripts", "origin_watermarks.py"))
        open(os.path.join(self.tmp, "build.gradle"), "w").close()
        fn = os.path.join(self.tmp, "packs", "demo", "data", "demo", "function")
        os.makedirs(fn)
        with open(os.path.join(self.tmp, "packs", "demo", "pack.mcmeta"), "w") as fh:
            fh.write('{"pack": {"description": "x", "min_format": 1, "max_format": 1}}')
        with open(os.path.join(fn, "a.mcfunction"), "w") as fh:
            fh.write("say hi\n")
        self.script = os.path.join(self.tmp, "scripts", "origin_watermarks.py")
        self.mark = os.path.join(fn, "_vc_origin.mcfunction")

    def test_missing_watermark_fails_then_write_fixes_it(self):
        self.assertEqual(run_watermarks(self.script, "--check").returncode, 1)
        self.assertEqual(run_watermarks(self.script, "--write").returncode, 0)
        self.assertTrue(os.path.isfile(self.mark))
        self.assertEqual(run_watermarks(self.script, "--check").returncode, 0)

    def test_executable_line_in_watermark_is_rejected(self):
        run_watermarks(self.script, "--write")
        with open(self.mark, "a", encoding="utf-8") as fh:
            fh.write("say injected\n")
        result = run_watermarks(self.script, "--check")
        self.assertEqual(result.returncode, 1)
        self.assertIn("executable line", result.stdout + result.stderr)


class WorkflowPinning(unittest.TestCase):
    USES = re.compile(r"^\s*-?\s*uses:\s*(\S+)")
    SHA = re.compile(r"@[0-9a-f]{40}$")

    def test_all_actions_are_pinned_by_commit_sha(self):
        # CLAUDE.md: "Actions are pinned by commit SHA; keep it that way."
        wf_dir = os.path.join(ROOT, ".github", "workflows")
        unpinned = []
        for name in sorted(os.listdir(wf_dir)):
            if not name.endswith((".yml", ".yaml")):
                continue
            with open(os.path.join(wf_dir, name), encoding="utf-8") as fh:
                for no, line in enumerate(fh, 1):
                    m = self.USES.match(line)  # comment lines never match
                    if m and not m.group(1).startswith("./") and not self.SHA.search(m.group(1)):
                        unpinned.append(f"{name}:{no}: {m.group(1)}")
        self.assertEqual(unpinned, [], "actions not pinned by SHA")


if __name__ == "__main__":
    unittest.main()
