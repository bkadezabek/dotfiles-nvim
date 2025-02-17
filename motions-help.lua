-- NOTE: Movements [N]
-- S-E, w, W - Forward Word
-- b, B - Back word
-- % - Jump to method start or end from {}, [], ()
-- $ - Jump to EOL
-- 0 - Jump to Start of line
-- g; - Last edited place in a file
-- gg - Line 0
-- G - Last Line of file
-- [num]G - Move to line number
-- [numb]g/h/j/k - Move relative to line number
-- <C-d> - Move down 15 steps - keymap_config.lua
-- <C-u> - Move up 15 steps - keymap_config.lua
--
--
-- NOTE: Text edit [N]
-- u - Undo
-- <C-R> - Redo
-- y - Copy
-- yy - Copy entire line
-- s - Delete under cursor and enter insert mode [I]
-- p - Paste bellow current line
-- o - Insert line bellow current and enter [I]
-- v - Visual Mode select screen [V]
--    % - {}, [], ()
--    On method name -> Select everything
--    $ - EOL select
--    0 - Start of Line select
--    iw - Word select -> viw
--    i - Inner select
--    G - Last line
--    a - Visual select of (/{/[/"... - va
-- V - Visual Mode entire line select [V]
-- :m +/-/[num] - Move current line up/down
-- dw - Delete word
-- dd - delete line
-- d0 - Delete to start of line
-- d$ - Delete to EOL
-- r[char] - Replace character
-- x - Delete character under cursor
-- X - Delete character before cursor
--
--
-- NOTE: LSP [I]
-- <Tab>, "Down" - Go down selection
-- <S-Tab>, "Up" - Go up selction
-- <enter> - Confirm selection
-- :LspInfo - LSP info screen
-- gd - Go to references of variable
-- gr - List out references of variable
-- gn - LSP rename reference
-- K - get current definition under cursor
--
-- NOTE: Search & Replace [N]
-- / - Searches a term
--    <enter> -> n - forward, N -back.
-- :s/old/new/ - Search term and replace it in current line
-- :%s/old/new/ - Search term and replace it in current file
--    g - global, c - confirm -> :s/old/new/gc
--
--
-- NOTE: Telescope & FZF [N]
-- <leader> sf - Find Files
-- <leader> sw - Find word under cursor
-- <leader> ss - Telescope builtin commands
-- <leader> sg - Live grep accross all files
-- <leader> sb - Search current buffer
-- <leader> / - Search current buffer (Different screen menu)
-- Inside of Telescope:
--    <C-q> - Add result to quickfix list
-- REGEX:
--    ^ - Line starts with - ^var
-- <leader><leader> - Move across currently open buffers
--
--
-- NOTE: Window movement
-- <C-W>
-- q - Quit current window
-- h/j/k/l - Movement
-- w - Next Window
-- = - Equalize windows
-- <C-W> s - Horizontal Split
-- <C-W> v - Vertical split
--
--
-- NOTE: Quickfix list
-- :copen
-- :cclose or :ccl
-- :cdo - Quickfix list command
--    :cdo s/foo/bar | update - Search foo replace with bar inside of Quickfix list
-- <leader>qr - Quickfix list Search & Replace - bkadezabek_custom_commands.lua
--    -- Arg1 - Search term, Arg2 - Replace searched term
-- <leader>qq - Open Quickfix list / Move to Quickfix window
-- <leader>qc - Quit Quickfix list
-- <leader>qk - Prev Quickfix list item
-- <leader>qj - Next Quickfix list item
-- [q - Prev Quickfix list item
-- ]q - Next Quickfix list item
--
--
-- NOTE: Harpoon
-- <leader> H - Add mark
-- <leader> h - Toggle Harpoon qucik menu
-- dd - Delete Entry in Harpoon
-- <leader> [num] - Jump to mark
--
--
-- NOTE: Comments - Comment.nvim
-- gcc - Comment singleline [N]
-- gc - Comment multiline [V]
--
--
-- NOTE: Errors menu - Trouble.nvim
-- <leader>xx - Toggle diagnostics menu
--    [x - Prev item in diagnostics menu
--    ]x - Next item in diagnostics menu
--
--
-- NOTE: nvim-tree:
-- <leader>e - Toggle project window
-- a - Add file
-- r - Rename file
-- f - Filter files
-- NOTE: mini.files:
-- <leader>E - Toggle directory tree
--    left/s-Enter - Move Left in the tree
--    right/Enter - Move right/open file or directory
--    q - Quit
--
-- NOTE: neoclip:
-- <leader>sc - Open Telescope neoclip
--    select = '<cr>',
--    paste = 'p',
--    paste_behind = '<c-k>',
--    replay = '<c-q>', -- replay a macro
--    delete = '<c-d>', -- delete an entry
--
-- NOTE: flash-nvim:
-- <c-/> - Search wih jumps in current buffer
-- <leader>sv - Search what block to highlight from treesitter
-- <leader>sV - What block to jump to and highlight it. Can highlight rows (also jump points). Expects characters as inputs
-- <c-s> - Only in Command mode. Toggle to use flash with /. If you <CR> then it is a normal local buffer search [C]
