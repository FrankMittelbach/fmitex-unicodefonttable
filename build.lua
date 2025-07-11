#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "unicodefonttable"

sourcefiles = {"*.dtx", "*.ins", "*-????-??-??.sty", "*-doc.tex", "*-code.tex", "l3doc-TUB2024.cls"}

installfiles = {"*.sty", ".cls", "unicodefont.tex"}

typesetfiles  = {"*-doc.tex", "*-code.tex", "*-samples.tex"}

typesetexe    = "lualatex"

stdengine     = "luatex"

checkengines  = { "luatex" }   -- for now
checkruns     = 2

-- Upload meta data

uploadconfig = {
 pkg = "unicodefonttable",
 version = "v1.0k 2025-07-11",
 author = "Frank Mittelbach",
 license = "lppl1.3c",
 summary = "A Unicode font table generator",
 ctanPath = "/macros/latex/contrib/unicodefonttable",
 repository = "https://github.com/frankmittelbach/fmitex-unicodefonttable",
 bugtracker = "https://github.com/FrankMittelbach/fmitex-unicodefonttable/issues",
 uploader = "Frank Mittelbach",
 email = "frank.mittelbach@latex-project.org",
 update = true ,
}



if not release_date then
   dofile(kpse.lookup("l3build.lua"))
end
