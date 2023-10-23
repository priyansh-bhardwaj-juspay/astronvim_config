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
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>cpp"] = {
      "<cmd>!g++ -std=c++17 \"/Users/priyanshbhardwaj/Documents/cpp/app.cpp\" -o \"/Users/priyanshbhardwaj/Documents/cpp/app\" && cat \"/Users/priyanshbhardwaj/Documents/cpp/input.txt\" | \"/Users/priyanshbhardwaj/Documents/cpp/app\" > \"/Users/priyanshbhardwaj/Documents/cpp/output.txt\"<cr>",
      desc = "Run C++ file"
    },
    ["<leader>rust"] = {
      "<cmd>!rustc \"/Users/priyanshbhardwaj/Documents/rust/src/app.rs\" -o \"/Users/priyanshbhardwaj/Documents/rust/src/app\" && cat \"/Users/priyanshbhardwaj/Documents/rust/src/input.txt\" | \"/Users/priyanshbhardwaj/Documents/rust/src/app\" > \"/Users/priyanshbhardwaj/Documents/rust/src/output.txt\"<cr>",
      desc = "Run Rust file",
    }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
