local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local config = {
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', '/Library/Java/Jdt/jdt/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/Library/Java/Jdt/jdt/config_mac',
    '-data', vim.fn.expand('~/.cache/jdtls-workspace') .. workspace_dir
  },

  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
}
require('jdtls').start_or_attach(config)
-- suppress error messages from lang servers
vim.notify = function(msg, log_level, _opts)
    if msg:match("exit code") then
        return
    end
    if log_level == vim.log.levels.ERROR then
        vim.api.nvim_err_writeln(msg)
    else
        vim.api.nvim_echo({{msg}}, true, {})
    end
end
