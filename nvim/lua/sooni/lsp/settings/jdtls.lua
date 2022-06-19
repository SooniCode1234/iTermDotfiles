local workspace_directory = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local java_install_location = '~/.local/share/nvim/lsp_servers/jdtls'

local enhance_server_opts = {
  ["tsserver"] = function(opts)
    opts.filetypes = {"typescript", "typescriptreact", "typescript.tsx"} -- Add filetypes
  end,
  ["jdtls"] = function(opts)
    opts.cmd = {
       -- 💀
    'java', -- or '/path/to/java11_or_newer/bin/java'
            -- depends on if `java` is in your $PATH env variable and if it points to the right version.

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

    -- 💀
    '-jar', java_install_location .. '/plugins/org.eclipse.equinox.launcher_1.5.200.v20180922-1751.jar',
         -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
         -- Must point to the                                                     Change this to
         -- eclipse.jdt.ls installation                                           the actual version


    -- 💀
    '-configuration', java_install_location .. '/config_mac',
                    -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
                    -- Must point to the                      Change to one of `linux`, `win` or `mac`
                    -- eclipse.jdt.ls installation            Depending on your system.


    -- 💀
    -- See `data directory configuration` section in the README
    '-data', vim.fn.expand('/Users/soonimohammed/.cache/jdtls-workspace') .. workspace_directory
  }
  opts.settings = {
    java = {
      single_file_support = true
    }
  }
  end,
}

return enhance_server_opts
