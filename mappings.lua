-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- Quick fixes
    ["n"] = { "nzz", desc = "Center next search" },
    ["N"] = { "Nzz", desc = "Center next search" },
    ["<C-d>"] = { "<C-d>zz", desc = "Center go down 1/2 page" },
    ["<C-u>"] = { "<C-u>zz", desc = "Center go up 1/2 page" },
    ["<CR>"] = { "<Cmd>b#<CR>", desc = "Switch buffer" },
    ["<C-j>"] = { "i<CR><Esc>", desc = "Move text after cursor down 1 line" },
    ["<C-l>"] = { "<Cmd>bn<CR>", desc = "Go to next buffer" },
    ["<C-h>"] = { "<Cmd>bp<CR>", desc = "Go to previous buffer" },
    ["<C-k>"] = { "<Cmd>bn<bar>bd#<CR>", desc = "Quit current buffer's file" },

    -- Fugitive
    ["<leader>G"] = { "<Cmd>Git<CR>", desc = "Use fugitive" },

    -- LazyGit
    -- ["<leader>gg"] = { "<Cmd>lazygit<CR>", desc = "Use lazygit" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
