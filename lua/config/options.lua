local opt = vim.opt

-- APPEARANCE --
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
--opt.colorcolumn = "100"
-- a dedicated column reserved for displaying signs
opt.signcolumn = "yes"
-- number of lines reserved for the command-line area at the bottom of the editor
opt.cmdheight = 1
-- scrolloff you know :)
opt.scrolloff = 999
--  customize the behavior of the completion menu
--[[
1. noinsert: Disables automatic insertion of the selected completion.
2. noselect: Prevents automatically selecting the first match in the completion menu.
3. menu: Enables a popup menu that shows the available completions.
4. menuone: Displays the menu even if there is only one match.
5. menu-longest: Automatically selects the longest common match in the menu.
6. preview: Shows a preview of the selected completion.
7. popup: Displays the completion menu as a popup.
8. samesame: If the completion matches the current text, it's not highlighted.
--]]
opt.completeopt = "menuone,noinsert,noselect"

-- highlight the current line
opt.cursorline = true
-- disable intro message
opt.shortmess:append "sI"




------------------------------------------------------------------------------------------
-- TABS AND INDENTATION --

-- line wrap feature
opt.wrap = false
-- convert tabs to spaces
opt.expandtab = true
-- tab stop is basically when neovim saves a files, this setting is for how much spaces it will convert tabs to
opt.tabstop = 4
-- for indentation, we use shiftwidth. See `:h shiftwidth()`
opt.shiftwidth = 4
-- number of spaces inserted on pressing tab in insert mode
opt.softtabstop = 4
-- convert tab to spaces on opening a file
opt.expandtab = true
-- auto indentation
opt.smartindent = true

---------------------------------------------------------------------------------------------

-- Search
-- To show both uppercase and lowercase command completions when finding completions for a letter
opt.ignorecase = true
-- if you include mixed case in your search, assumes you want case-sensitive
opt.smartcase = true
-- incsearch dynamically updates and highlights search matches in real-time as you type, providing immediate feedback on the search results.
opt.incsearch = true
-- highlighting searches
opt.hlsearch = false

----------------------------------------------------------------------------------------------

-- BEHAVIOUR
opt.hidden = true                           -- Keep buffers hidden when abandoned
opt.errorbells = false                      -- Disable error bells
opt.swapfile = false                        -- Disable swap file creation
opt.backup = false                           -- Disable backup file creation
opt.undodir = vim.fn.expand("~/.nvim/undodir") -- Set the directory for persistent undo files
opt.undofile = true                         -- Enable persistent undo
opt.backspace = "indent,eol,start"         -- Allow backspacing over autoindent, line breaks, and at the start of insert mode
opt.splitright = true                       -- Open new splits to the right
opt.splitbelow = true                       -- Open new splits below
opt.autochdir = false                       -- Do not change the current working directory to that of the file being edited
opt.iskeyword:append("-")                   -- Include hyphen as a keyword character
opt.mouse:append("a")                       -- Enable mouse support in all modes
opt.clipboard = "unnamedplus"               -- Use system clipboard for copy-pasting
opt.modifiable = true                       -- Allow modification of the buffer
-- Set the GUI cursor shapes and blinking behavior
opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
opt.encoding = "UTF-8"                      -- Set the character encoding to UTF-8
opt.fileencoding = "UTF-8"                   -- Set the file encoding to UTF-8
-- go to previous/next line with h,l,left arrow and right arrow when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"
-- specify the character used to fill end of buffer (default is ~)
opt.fillchars = { eob = " " }
-- time to wait for a mapped sequence to complete (in milliseconds, default=1000)
-- opt.timeoutlen = 1000

----------------------------------------------------------------------------------------------
-- interval for writing swap file to disk, also used by gitsigns
-- opt.updatetime = 250

-----------------------------------------------------------------------------------------------

-- VISUAL BLOCK MODE (`:h 'virtualedit')
-- below "block" mode only sets it up for visual block mode.
-- see help as mentioned above to set it up for other modes also
opt.virtualedit = "block"




-- `:h 'inccommand'` helpful for :%s/word/newWordtobereplacedwith
opt.inccommand = "split"

