return { 
    "ellisonleao/gruvbox.nvim", 
    priority = 1000, 
    config = function()
	vim.cmd([[colorscheme gruvbox]])
	return true
    end,
    opts = function()
	vim.o.background = "dark"
    	return {
	    terminal_colors = true
	}
    end
}
