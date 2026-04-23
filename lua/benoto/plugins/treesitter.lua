return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua", "vim", "javascript", "typescript", "rust", "python", "html", "css"
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    },
  }
}
