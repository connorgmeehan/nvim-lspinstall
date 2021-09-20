local config = require"lspinstall/util".extract_config("volar")

return vim.tbl_extend('error', config, {
  install_script = [[
  ! test -f package.json && npm init -y --scope=lspinstall || true
  npm install @volar/server
  ]]
})
