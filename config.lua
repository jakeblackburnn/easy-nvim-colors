--
--
-- Created by J. Blackburn - Feb 7 2025
--
--
-- color codes reference - https://talyian.github.io/ansicolors/

	-- options
vim.opt.relativenumber = true -- line numbers relative to cursor
vim.opt.number = true         -- show line number
vim.opt.cursorline = true     -- show cursor line


	-- DEFINE LIGHT THEME

local function set_light_theme() 

	vim.cmd("highlight Normal  	 ctermbg=none      ctermfg=black"            ) -- black normal text
	vim.cmd("highlight Comment 	 ctermfg=208       cterm=italic"             ) -- orange comments

	vim.cmd("highlight Keyword       ctermfg=0         cterm=bold"               ) -- bold black keywords
	vim.cmd("highlight Type          ctermfg=0         cterm=italic"             ) -- italic black keywords

	vim.cmd("highlight Identifier    ctermfg=197"                                ) -- red identifiers
	vim.cmd("highlight Function      ctermfg=197       cterm=italic"             ) -- italic red functions
	vim.cmd("highlight Statement     ctermfg=90        cterm=bold"               ) -- bold purple statements

	vim.cmd("highlight Constant      ctermfg=90        cterm=bold"               ) -- bold purple constants
	vim.cmd("highlight String        ctermfg=90"                                 ) -- purple strings

	vim.cmd("highlight LineNr        ctermfg=black"                              ) -- black line numbers
	vim.cmd("highlight CursorLineNr  ctermfg=red       cterm=bold"               ) -- bold red current line number

	vim.cmd("highlight CursorLine    ctermbg=224"                                ) -- light pink cursor line
	vim.cmd("highlight StatusLine    ctermbg=lightred  ctermfg=black"            ) -- black status line
	vim.cmd("highlight ModeMsg       ctermbg=none      ctermfg=197"              ) -- red mode message
	vim.cmd("highlight Search        ctermbg=lightred  ctermfg=black"            ) -- light red search matches
	vim.cmd("highlight MatchParen    ctermbg=189       ctermfg=white cterm=bold" ) -- light blue matching parenthesis
	vim.cmd("highlight Error         ctermbg=blue      ctermfg=white cterm=bold" ) -- bold blue errors

end

	-- DEFINE DARK THEME

local function set_dark_theme() 

	vim.cmd("highlight Normal  	 ctermbg=none   ctermfg=255"               ) -- white normal text
	vim.cmd("highlight Comment 	 ctermfg=151    cterm=italic"              ) -- pastel olive green comments

	vim.cmd("highlight Keyword       ctermfg=255    cterm=bold"                ) -- bold white keywords
	vim.cmd("highlight Type          ctermfg=255    cterm=italic"              ) -- italic white types

	vim.cmd("highlight Function      ctermfg=197    cterm=italic"              ) -- italic red functions
	vim.cmd("highlight Identifier    ctermfg=197"                              ) -- red identifiers
	vim.cmd("highlight Statement     ctermfg=197    cterm=bold"                ) -- bold red statements

	vim.cmd("highlight Constant      ctermfg=208    cterm=bold"                ) -- bold orange contants
	vim.cmd("highlight String        ctermfg=208"                              ) -- orange strings

	vim.cmd("highlight LineNr        ctermfg=white"                            ) -- white line numbers
	vim.cmd("highlight CursorLineNr  ctermfg=red    cterm=bold"                ) -- bold red current line number

	vim.cmd("highlight CursorLine    ctermbg=235"                              ) -- dark grey cursor line
	vim.cmd("highlight StatusLine    ctermbg=white  ctermfg=235"               ) -- dark grey status line
	vim.cmd("highlight ModeMsg       ctermbg=none   ctermfg=197"               ) -- red mode message
	vim.cmd("highlight Search        ctermbg=yellow ctermfg=black"             ) -- yellow search matches
	vim.cmd("highlight MatchParen    ctermbg=197    ctermfg=white  cterm=bold" ) -- red matching parenthesis
	vim.cmd("highlight Error         ctermbg=blue   ctermfg=white  cterm=bold" ) -- bold blue errors

end


	-- apply theme based on bg setting

local function apply_theme()
    if vim.o.background == "dark" then
        set_dark_theme()
    else
        set_light_theme()
    end
end



	-- Automatically apply the theme when the background is set

vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    callback = apply_theme,
})



apply_theme() -- Apply the default theme
