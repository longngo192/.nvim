
lua <<EOF
local wk = require("which-key")
wk.register({c = {name = "coc"}, g = {name="git"}}, { prefix = "<leader>" })
EOF
