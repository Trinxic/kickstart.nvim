--[[
    __ __
   / //_/___   __  __ ____ ___   ____ _ ____   _____
  / ,<  / _ \ / / / // __ `__ \ / __ `// __ \ / ___/
 / /| |/  __// /_/ // / / / / // /_/ // /_/ /(__  )
/_/ |_|\___/ \__, //_/ /_/ /_/ \__,_// .___//____/
            /____/                  /_/
]]

--  See `:help vim.keymap.set()`
--  See `:help keycodes`


-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


-- [[ Added Commands ]]
-- I am using a custom keyboard where left/down/up/right on the home-row.
-- Thus I will use them in place of Qwerty-hjkl
vim.keymap.set('n', '<C-Down>', '<C-d>', { desc = 'move half a page up' })
vim.keymap.set('n', '<C-Up>', '<C-u>', { desc = 'move half a page down' })
vim.keymap.set('i', '<C-BS>', '<C-w>', { desc = 'backspace from cursor to start of word' })

vim.keymap.set({ 'i', 'n' }, '<C-s>', '<cmd>:w<CR>', { desc = '[S]ave the current file' })

-- i am going to test something



-- PROBABLY WON'T USE THESE.. (WILL BE USING TMUX OR HYPR INSTEAD OF MULTI-WINDOWED NVIM)

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
