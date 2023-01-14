vim.opt.guicursor = ""

vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.autowrite = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.opt.guifont = { "VictorMono NF", ":h12" }
