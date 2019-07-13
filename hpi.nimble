# Package

version       = "0.1.0"
author        = "Delio Brignoli"
description   = "HPI wrapper and utility demo for Nim"
license       = "Proprietary"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["asihpisetmode"]

skipFiles     = @["Makefile", "/src/asihpisetmode.nim", "/src/test_hpi.nim"]
skipExt       = @["h"]
skipDirs      = @["tests"]

# Dependencies

requires "nim >= 0.20.0", "cligen >= 0.9.34"
