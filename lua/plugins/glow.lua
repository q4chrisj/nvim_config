return {
  {
    "ellisonleao/glow.nvim",
    -- config = true,
    config = function()
      require('glow').setup({
        width = 140,
        height = 120,
      })
    end,
    cmd = "Glow"
  }
}
