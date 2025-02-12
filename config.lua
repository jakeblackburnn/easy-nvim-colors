--
--
-- Created by J. Blackburn - Feb 7 2025
--
--
-- color codes reference - https://talyian.github.io/ansicolors/

vim.opt.relativenumber = true -- line numbers relative to cursor
vim.opt.number = true         -- show line number
vim.opt.cursorline = true     -- show cursor line


	-- DEFINE LIGHT THEME

local function set_light_theme() 

	vim.cmd("highlight Normal  	 ctermbg=none      ctermfg=black"            ) 
	vim.cmd("highlight Comment 	 ctermfg=208       cterm=italic"             )

	vim.cmd("highlight Keyword       ctermfg=0         cterm=bold"               ) 
	vim.cmd("highlight Type          ctermfg=0         cterm=italic"             )

	vim.cmd("highlight Identifier    ctermfg=197"                                )
	vim.cmd("highlight Function      ctermfg=197       cterm=italic"             )
	vim.cmd("highlight Statement     ctermfg=90        cterm=bold"               )

	vim.cmd("highlight Constant      ctermfg=90        cterm=bold"               ) 
	vim.cmd("highlight String        ctermfg=90"                                 )

	vim.cmd("highlight LineNr        ctermfg=black"                              ) 
	vim.cmd("highlight CursorLineNr  ctermfg=red       cterm=bold"               )

	vim.cmd("highlight CursorLine    ctermbg=189"                                ) 
	vim.cmd("highlight StatusLine    ctermbg=black     ctermfg=189"              ) 
	vim.cmd("highlight Search        ctermbg=lightred  ctermfg=black"            )
	vim.cmd("highlight MatchParen    ctermbg=189       ctermfg=white cterm=bold" )
	vim.cmd("highlight Error         ctermbg=blue      ctermfg=white cterm=bold" )


end

	-- DEFINE DARK THEME

local function set_dark_theme() 

	vim.cmd("highlight Normal  	 ctermbg=none   ctermfg=255"               ) 
	vim.cmd("highlight Comment 	 ctermfg=151    cterm=italic"              )

	vim.cmd("highlight Keyword       ctermfg=255    cterm=bold"                ) 
	vim.cmd("highlight Type          ctermfg=255    cterm=italic"              ) 

	vim.cmd("highlight Function      ctermfg=197    cterm=italic"              )
	vim.cmd("highlight Identifier    ctermfg=197"                              ) 
	vim.cmd("highlight Statement     ctermfg=197    cterm=bold"                )

	vim.cmd("highlight Constant      ctermfg=208    cterm=bold"                )
	vim.cmd("highlight String        ctermfg=208"                              ) 

	vim.cmd("highlight LineNr        ctermfg=white"                            )
	vim.cmd("highlight CursorLineNr  ctermfg=red    cterm=bold"                ) 

	vim.cmd("highlight CursorLine    ctermbg=235"                              )
	vim.cmd("highlight StatusLine    ctermbg=white  ctermfg=235"               ) 
	vim.cmd("highlight Search        ctermbg=yellow ctermfg=black"             )
	vim.cmd("highlight MatchParen    ctermbg=197    ctermfg=white  cterm=bold" ) 
	vim.cmd("highlight Error         ctermbg=blue   ctermfg=white  cterm=bold" )

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
