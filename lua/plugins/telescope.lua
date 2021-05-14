require('telescope').setup {
    extensions = {
        media_files = {
            filetypes = {"png", "jpg", "pdf", "jpeg"},
            find_cmd = "rg"
        },
	 fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}
require('telescope').load_extension('media_files')
require('telescope').load_extension('fzy_native')

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "UltiVim Config",
        cwd = "$HOME/.config/nvim",
    })
end

function set_background(content)
    vim.fn.system("feh --bg-fill "..content)
end

local function select_background(prompt_bufnr, map)
    local function set_the_background(close)
        local content =
        require('telescope.actions.state').get_selected_entry(prompt_bufnr)
        set_background(content.cwd .. "/" .. content.value)
        if close then
            require('telescope.actions').close(prompt_bufnr)
        end
    end

    map('i', '<C-p>', function()
        set_the_background()
    end)

    map('i', '<CR>', function()
        set_the_background(true)
    end)
end

local function image_selector(prompt, cwd)
    return function()
        require("telescope").extensions.media_files.media_files({
            prompt_title = prompt,
            cwd = cwd,

            attach_mappings = function(prompt_bufnr, map)
                select_background(prompt_bufnr, map)

                return true
            end
        })
    end
end

M.anime_selector = image_selector("< Wallpaper Changer > ", "~/Disk/Sabare/Wallpapers")

return M
