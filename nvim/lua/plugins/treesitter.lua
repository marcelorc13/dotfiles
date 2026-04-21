return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    main = "nvim-treesitter.config",
    opts = {
      ensure_installed = {
        "javascript", "typescript", "tsx", "html", "css", "json",
        "go", "gomod", "gowork", "gosum",
        "lua", "vim", "vimdoc", "templ", "python", "sql", "markdown", "markdown_inline",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
