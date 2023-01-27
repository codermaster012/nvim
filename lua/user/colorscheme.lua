vim.g.tokyonight_style = "night"
vim.g.spacegray_low_contrast = 0

-- vim.cmd [[colorscheme tokyonight]]

-- vim.cmd [[colorscheme dracula]]

-- vim.cmd [[colorscheme edge]]

-- vim.cmd [[colorscheme onedark]]

-- vim.cmd [[colorscheme onedarker]]

--[[ vim.cmd [[
try
    colorscheme spacegray
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme default
        set background=dark
    endtry
]]  

--[[ vim.cmd [[
try
    colorscheme onedark
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme default
        set background=dark
    endtry
]]  --]]

--[[ vim.cmd [[
try
    colorscheme onedarker 
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme default
        set background=dark
    endtry
]] 

--[[ vim.cmd [[
try
    colorscheme gruvbox
    catch /^Vim\%((\a\+)\)\=:E185/
        colorscheme default
        set background=dark

        lua << EOF 
            -- setup must be called before loading the colorscheme
            -- Default options:
            require("gruvbox").setup({
              undercurl = true,
              underline = true,
              bold = true,
              italic = true,
              strikethrough = true,
              invert_selection = false,
              invert_signs = false,
              invert_tabline = false,
              invert_intend_guides = false,
              inverse = true, -- invert background for search, diffs, statuslines and errors
              contrast = "", -- can be "hard", "soft" or empty string
              palette_overrides = {},
              overrides = {},
              dim_inactive = false,
              transparent_mode = false,
            }) 
    
        EOF

]]  

vim.cmd [[
try
  colorscheme darkplus
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
