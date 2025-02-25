return {
  {
    'nvim-neotest/neotest',
    dependencies = { 'nvim-neotest/neotest-jest' },
    opts = function() return { adapters = { require 'neotest-jest' } } end,
  },
}
