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
        "lua", "vim", "vimdoc", "templ", "python", "sql", "markdown", "markdown_inline", "razor",
      },
      auto_install = true,
    },
    config = function(_, opts)
      require("nvim-treesitter.config").setup(opts)
      -- new main branch does not auto-enable features; must wire up manually
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(ev)
          local ok = pcall(vim.treesitter.start, ev.buf)
          if ok then
            vim.wo[0][0].foldmethod = "expr"
            vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
            vim.wo[0][0].foldlevel = 99
          end
        end,
      })
    end,
  },
}
