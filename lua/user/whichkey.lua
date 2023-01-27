local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
    return
end

which_key.setup {
    
    layout = {
        spacing = 4
    },

}

which_key.register({

    t = {
        name = "Tab Mappings",
        h = { "Previous Tab" },
        l = { "Next Tab" },
        o = { "New Tab" },
        d = { "Delete Tab" }
    },
    
    ["<leader>f"] = { name = "+Telescope" },
    ["<leader>o"] = { name  = "+Terminal" },
    ["<leader>h"] = { name = "+Alpha" },

})
