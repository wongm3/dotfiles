return {
  'folke/snacks.nvim',
  lazy = false,
  name = 'snacks.nvim',
  ---@type snacks.Config
  opts = {
    explorer = {},
    indent = {},
    input = {},
    lazygit = {},
    notifier = {},
    scope = {},
    scroll = {},
    statuscolumn = {},
    toggle = {},
    words = {},
  },
  keys = {
    -- Explorer
    {
      "<leader>fe",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer",
    },
    { "<leader>e", "<leader>fe", desc = "Explorer", remap = true },
    -- Lazy Git
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    -- Notifications
    { "<leader>n", function()
      if Snacks.config.picker and Snacks.config.picker.enabled then
        Snacks.picker.notifications()
      else
        Snacks.notifier.show_history()
      end
    end, desc = "Notification History" },
    { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
  }
}
