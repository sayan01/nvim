local g = vim.g

g.ale_linters = {
  lua = {'lua_language_server'},
  sh = {'shellcheck'},
  bash = {'shellcheck'},
}
