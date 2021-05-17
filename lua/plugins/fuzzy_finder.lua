-- Setup Telescope
require('telescope').setup {
    extensions = {
	-- Preview media files
        media_files = {
            filetypes = {"png", "jpg", "pdf", "jpeg"},
            find_cmd = "rg"
        },
	-- Fast, fast, really fast sorter
	 fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

-- Load Telescope extensions
require('telescope').load_extension('media_files')
require('telescope').load_extension('fzy_native')

-- Quickly change something on your settings
local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "UltiVim Config",
        cwd = "$HOME/.config/nvim",
    })
end

return M
