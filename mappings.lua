-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<C-s>"] = {":w!<cr>", desc = "Save File"},
            ["x"] = {'"_x'},
            ["X"] = {'"_X'},
            ["d"] = {'"_d'},
            ["D"] = {'"_D'},
            ["c"] = {'"_c'},
            ["C"] = {'"_C'},
            ["<C-d>"] = {'"+d'},
            ["cw"] = {"caw"},
            ["dw"] = {"daw"},
            -- ["<C-D>"] = {"\"+D"},
            ["<C-q>"] = {":bd\n"},
            ["<C-k>"] = {":m-2\n"},
            ["<C-j>"] = {":m+1\n"},
            ["<C-f>"] = {
                ":lua require('telescope.builtin').live_grep({grep_open_files=true})\n"
            }
  },
v = {["d"] = {'"_d'}, ["<C-d>"] = {'"+d'}},
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
