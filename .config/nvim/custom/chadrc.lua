-- Just an example, supposed to be placed in /lua/custom/
local userPlugins = require "custom.plugins"
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.options = {
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4
}

M.plugins = {
    status = {
        colorizer = true
    },

    options = {
        lspconfig = {
           setup_lspconf = "custom.plugins.lspconfig",
        },
    },

    install = userPlugins
}

M.ui = {
   theme = "gruvbox",
}

return M
