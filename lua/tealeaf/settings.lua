-- Make line numbers default
vim.wo.number = true

-- Set tab width
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false

-- Set manual folding
vim.o.foldenable = true
vim.o.foldmethod = "manual"

-- Set column indicator
vim.opt.colorcolumn = "100"

--# Set python alias
vim.g.python3_host_prog = vim.fn.exepath("python")
