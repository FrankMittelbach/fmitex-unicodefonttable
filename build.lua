#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "unicodefonttable"

sourcefiles = {"*.dtx", "*.ins", "*-????-??-??.sty", "l3doc-TUB.cls"}

typesetfiles  = {"*.tex"}

typesetexe    = "lualatex"

stdengine     = "luatex"

checkengines  = { "luatex" }   -- for now
checkruns     = 2

-- Upload meta data

uploadconfig = {
 pkg = "unicodetable",
 version = "v1.0a 2021-10-04",
 author = "Frank Mittelbach",
 license = "lppl1.3c",
 summary = "Unicode font table generator",
 ctanPath = "/macros/latex/unicodefonttable",
 repository = "https://github.com/frankmittelbach/fmitex-unicodefonttable",
 uploader = "Frank Mittelbach",
 email = "frank.mittelbach@latex-project.org",
 update = false ,
}



if not release_date then
   dofile(kpse.lookup("l3build.lua"))
end
