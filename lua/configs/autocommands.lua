--[[             __                                                               __     
  ____ _ __  __ / /_ ____   _____ ____   ____ ___   ____ ___   ____ _ ____   ____/ /_____
 / __ `// / / // __// __ \ / ___// __ \ / __ `__ \ / __ `__ \ / __ `// __ \ / __  // ___/
/ /_/ // /_/ // /_ / /_/ // /__ / /_/ // / / / / // / / / / // /_/ // / / // /_/ /(__  ) 
\__,_/ \__,_/ \__/ \____/ \___/ \____//_/ /_/ /_//_/ /_/ /_/ \__,_//_/ /_/ \__,_//____/  

]]
--  See `:help lua-guide-autocommands`


-- [[ Basic Autocommands ]]

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
