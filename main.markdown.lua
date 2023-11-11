local ran_ok,err=pcall(function()local ran_ok,kpse=pcall(require, "kpse")if ran_ok then kpse.set_program_name("luatex")end assert(load("local lfs = require(\"lfs\") local cacheDir = \"./_markdown_main\" if not lfs.isdir(cacheDir) then assert(lfs.mkdir(cacheDir)) end local md = require(\"markdown\") local convert = md.new({cacheDir = \"./_markdown_main\", contentBlocksLanguageMap = \"markdown-languages.json\", debugExtensionsFileName = \"./main.debug-extensions.json\", frozenCacheFileName = \"./_markdown_main/frozenCache.tex\", blankBeforeBlockquote = false, blankBeforeCodeFence = false, blankBeforeDivFence = false, blankBeforeHeading = false, bracketedSpans = false, breakableBlockquotes = false, citationNbsps = true, citations = true, codeSpans = true, contentBlocks = false, debugExtensions = false, definitionLists = true, eagerCache = true, expectJekyllData = false, extensions = {}, fancyLists = false, fencedCode = false, fencedCodeAttributes = false, fencedDivs = false, finalizeCache = false, frozenCacheCounter = 0, hardLineBreaks = false, hashEnumerators = true, headerAttributes = false, html = false, hybrid = true, inlineCodeAttributes = false, inlineFootnotes = false, inlineNotes = false, jekyllData = false, linkAttributes = false, lineBlocks = false, footnotes = true, notes = false, pipeTables = true, preserveTabs = false, rawAttribute = false, relativeReferences = false, shiftHeadings = 0, slice = \"^ $\", smartEllipses = true, startNumber = true, strikeThrough = false, stripIndent = false, subscripts = false, superscripts = false, tableCaptions = true, taskLists = false, texComments = false, texMathDollars = false, texMathDoubleBackslash = false, texMathSingleBackslash = false, tightLists = false, underscores = true, }) local file = assert(io.open(\"./main.markdown.in\", \"r\"), [[Could not open file \"./main.markdown.in\" for reading]]) local input = assert(file:read(\"*a\")) assert(file:close()) print(convert(input))"))()end)if not ran_ok then local file=io.open("./main.markdown.err","w")if file then file:write(err.."\n")file:close()end print('\\begingroup\\ExplSyntaxOn\\csname msg_error:nnvv\\endcsname{luabridge}{failed-to-execute}{g_luabridge_output_dirname_str}{g_luabridge_error_output_filename_str}\\endgroup')end