local map = require("mappings.utils").map
local nmap = require("mappings.utils").nmap

-- EasyAlign
map("v", "<leader>e", ":EasyAlign<CR>")

-- nvim-tree
nmap(";t", ":NvimTreeToggle<CR>")

-- fterm
nmap("<C-\\>", [[:ToggleTerm direction=float<CR>]])
nmap("<M-`>", [[:ToggleTerm direction=horizontal<CR>]])
map("t", "<C-\\>", [[<C-\><C-n>:ToggleTerm<CR>]])
map("t", "<C-n>", [[<C-\><C-n>]])

-- telescope
nmap(";f", [[:lua require('telescope.builtin').find_files{}<CR>]])
nmap("<LEADER>tg", [[:lua require('telescope.builtin').live_grep{}<CR>]])

-- fugitive
nmap(";g", [[<CMD>Git<CR>]])

-- lazygit
nmap("<LEADER>l", [[<CMD>LazyGit<CR>]])

-- bufferline tab stuff
nmap("<C-c>", ":BufferLinePickClose<CR>") -- close tab

-- move between tabs
nmap(";n", [[<Cmd>BufferLineCycleNext<CR>]])
nmap(";p", [[<Cmd>BufferLineCyclePrev<CR>]])

-- move tabs
nmap("<A->>", [[<CMD>BufferLineMoveNext<CR>]])
nmap("<A-<>", [[<CMD>BufferLineMovePrev<CR>]])
nmap("<A-p>", [[<CMD>:BufferLinePick<CR>]])

-- dispatch
nmap(";d", ":Dispatch ", { noremap = true, silent = false })

-- rust-tools.nvim
nmap("<Leader>ra", ':lua require("rust-tools.hover_actions").hover_actions()<CR>')

-- fugitive
-- keep the same prefix as the git sign
-- See git-sign keymap in lua/plugins/config/gitsign_cfg.lua
nmap("gic", ":Git commit -sS<CR>")
nmap("giP", ":Git! push ", { silent = false })
