return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    ft = "norg", -- lazy load on filetype
    lazy = false,
    cmd = "Neorg", -- lazy load on command, allows you to autocomplete :Neorg regardless of whether it's loaded yet
    build = ":Neorg sync-parsers",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
              name = "[Norg]",
            },
          },
          ["core.concealer"] = {
            config = {
              icon_preset = "basic",
            },
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/Personal/Notes",
              },
              index = "index.norg", -- The name of the main (root) .norg file
            },
          },
        },
      })
    end,
  },
}
