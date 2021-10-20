#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "unicodefonttable"

sourcefiles = {"*.dtx", "*.ins", "*-????-??-??.sty", "*-doc.tex", "*-code.tex", "l3doc-TUB.cls"}

installfiles = {"*.sty", ".cls", "unicodefont.tex"}

typesetfiles  = {"*-doc.tex", "*-code.tex", "*-samples.tex"}

typesetexe    = "lualatex"

stdengine     = "luatex"

checkengines  = { "luatex" }   -- for now
checkruns     = 2

-- Upload meta data

uploadconfig = {
 pkg = "unicodetable",
 version = "v1.0e 2021-10-19",
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
