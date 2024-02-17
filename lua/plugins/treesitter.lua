-- programming parser to allow highlighting and indentations for the listed languages
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {"lua", "javascript", "c", "html", "python", "java"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
