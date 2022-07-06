
lua <<EOF
local wk = require("which-key")
wk.setup {
  plugins = {
    marks = false,
    registers = false,
    spelling = { enabled = false, suggestions = 20 },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = false,
      nav = false,
      z = false,
      g = false
    }
  }
}

local toggle_lazygit = function()
  local lazygit = Terminal:new({ cmd = 'lazygit', direction = "float" })
  return lazygit:toggle()
end

local mappings = { g = {name="git"}, t ={
"<CMD>vim source $MYVIMRC<CR>","reload vim"
  }
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
EOF
