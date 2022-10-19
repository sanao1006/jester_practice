# Package

version       = "0.1.0"
author        = "Anonymous"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin = @["jestert"]
backend = "c"
# Dependencies
var a = "ddd"
requires "nim >= 1.6.8"
task dev, "run":
  exec("nim c -r -d:release src/app.nim ")
task db, "front":
  exec("nim c -r -d:release src/crtdb.nim")
