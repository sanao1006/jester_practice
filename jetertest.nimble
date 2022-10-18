# Package

version       = "0.1.0"
author        = "Anonymous"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin = @["jestert"]
backend = "c"
# Dependencies

requires "nim >= 1.6.8"
task dev, "run":
  exec("nim c -r -d:release src/jestert.nim ")
task front, "front":
  exec("nim js -d:release --outdir:./public src/front/main.nim ")
task db, "front":
  exec("nim c -d:release db/crtdb.nim")