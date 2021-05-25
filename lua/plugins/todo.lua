require('todo-comments').setup {
    signs = true,
    keywords = {
        FIX = {
            icon = " ",
            color = "error",
            alt = {"FIXME", "BUG", "FIXIT", "FIX", "ISSUE"}
        },
        TODO = {icon = " ", color = "info"},
        HACK = {icon = " ", color = "warning"},
        WARN = {icon = " ", color = "warning", alt = {"WARNING", "XXX"}},
        PERF = {icon = " ", alt = {"OPTIM", "PERFORMANCE", "OPTIMIZE"}},
        NOTE = {icon = " ", color = "hint", alt = {"INFO"}}
    },
    highlight = {
        before = "",
        keyword = "wide",
        after = "fg",
        pattern = [[.*<(KEYWORDS)\s*:]],
        comments_only = true
    },
    colors = {
        error = {"LspDiagnosticsDefaultError", "ErrorMsg", "#DC2626"},
        warning = {"LspDiagnosticsDefaultWarning", "WarningMsg", "#FBBF24"},
        info = {"LspDiagnosticsDefaultInformation", "#2563EB"},
        hint = {"LspDiagnosticsDefaultHint", "#10B981"},
        default = {"Identifier", "#7C3AED"}
    },
    search = {
        command = "rg",
        args = {
            "--color=never", "--no-heading", "--with-filename", "--line-number",
            "--column"
        },
        pattern = [[\b(KEYWORDS):]]
    }
}
