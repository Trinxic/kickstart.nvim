--[[
   ____          __   _
  / __ \ ____   / /_ (_)____   ____   _____
 / / / // __ \ / __// // __ \ / __ \ / ___/
/ /_/ // /_/ // /_ / // /_/ // / / /(__  )
\____// .___/ \__//_/ \____//_/ /_//____/
     /_/
]] --

-- Home to most/all of the vim.opt settings
-- use vim.opt to globally set options (as opposed to using ':set <option>')

-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

vim.opt.guifont = "GeistMono Nerd Font Mono:h12" -- set nvim font

vim.opt.number = true                            -- show line numbers
vim.opt.relativenumber = true                    -- numbers relative to current line
vim.opt.cursorline = true                        -- Show which line your cursor is on

vim.opt.mouse = 'a'                              -- Enable mouse mode, can be useful for resizing splits for example!

vim.opt.showmode = false                         -- already in the status line

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true -- Enable break indent

vim.opt.undofile = true    -- Save undo history

-- Case-insensitive searching UNLESS `\C` or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes' -- Keep signcolumn on by default

vim.opt.updatetime = 250 -- Decrease update time
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time

vim.opt.splitright = true -- Configure how new splits should be opened above
vim.opt.splitbelow = true -- ..below

vim.opt.list = true -- set how neovim will display certain whitespace characters
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- see `:help 'list(chars)'`

vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!

vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
