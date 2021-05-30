local g = vim.g

g.nvim_tree_side = "left"
g.nvim_tree_width = 30
g.nvim_tree_auto_close = 0
g.nvim_tree_auto_open = 1
g.nvim_tree_quit_on_open = 0
g.nvim_tree_hide_dotfiles = 1
g.nvim_tree_width_allow_resize = true
g.nvim_tree_disable_netrw = 1
g.nvim_tree_follow = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_allow_resize = 1
g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1}
g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★"
  },
  folder = {default = "", open = ""}
}
