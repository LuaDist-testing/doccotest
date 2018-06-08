-- This file was automatically generated for the LuaDist project.

package = "doccotest"
version = "0.1-2"

-- LuaDist source
source = {
  tag = "0.1-2",
  url = "git://github.com/LuaDist-testing/doccotest.git"
}
-- Original source
-- source = {
--   url = "git://github.com/saucisson/lua-doccotest",
--   tag = "version-0.1-2",
-- }

description = {
  summary     = "Doctest for Lua commented with Docco",
  detailed    = [[
The doccotest tool is a port of Python's doctest to the Lua programming
language. It runs tests defined within code comments and compares their
output with a reference one, given also within code comments.

doccotest is designed to work on source code written in Lua, and commented
in markdown. The documentation for the code can be generated using docco or
locco, and embeds the tests and their expected results.
]],
  license     = "MIT/X11",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "lua_cliargs ~> 2",
  "i18n ~> 0",
  "ansicolors ~> 1",
  "rings ~> 1",
  "lualogging ~> 1",
  "serpent ~> 0",
}

build = {
  type    = "builtin",
  modules = {
    ["doccotest"   ] = "src/doccotest.lua",
    ["doccotest.en"] = "src/doccotest/en.lua",
    ["doccotest.fr"] = "src/doccotest/fr.lua",
  },
  install = {
    bin = {
      ["doccotest"] = "bin/doccotest",
    },
  },
}