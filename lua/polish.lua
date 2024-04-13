-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.cmd [[command! W :w]]
vim.cmd [[command! Q :q]]
vim.cmd [[set cc=80]]

vim.api.nvim_create_autocmd("FileType", {
  desc = "Enable wrap and spell for text like documents",
  group = vim.api.nvim_create_augroup("auto_spell", { clear = true }),
  pattern = { "gitcommit", "markdown", "text", "plaintex" },
  callback = function()
    vim.opt_local.textwidth = 80
    vim.opt_local.wrap = true
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})
vim.cmd [[autocmd BufRead,BufNewFile *.hcl set filetype=tf]]

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }
