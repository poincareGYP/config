require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "bash", "cpp", "dockerfile", "haskell", "json", "java", "python", "yaml" },

  sync_install = false,
  
  auto_install = true,
   
  indent = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
