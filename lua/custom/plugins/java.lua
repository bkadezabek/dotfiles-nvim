return {
  {
    'mfussenegger/nvim-jdtls',
    ft = { 'java' },
    config = function()
      local jdtls = require 'jdtls'
      local home = os.getenv 'HOME'
      local workspace = home .. '/.cache/jdtls/workspace/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

      local bundles = {
        vim.fn.glob(home .. '/.local/share/nvim/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar', 1),
      }
      vim.list_extend(bundles, vim.split(vim.fn.glob(home .. '/.local/share/nvim/vscode-java-test/server/*.jar', 1), '\n'))

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
          '--add-opens',
          'java.base/java.util=ALL-UNNAMED',
          '--add-opens',
          'java.base/java.lang=ALL-UNNAMED',
          '-jar',
          vim.fn.glob(home .. '/.local/share/nvim/jdtls/plugins/org.eclipse.equinox.launcher_*.jar'),
          '-configuration',
          home .. '/.local/share/nvim/jdtls/config_mac', -- Change for Linux: config_linux
          '-data',
          workspace,
        },
        root_dir = require('jdtls.setup').find_root { '.git', 'mvnw', 'gradlew', 'pom.xml' },
        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        settings = {
          java = {
            format = { enabled = true },
            signatureHelp = { enabled = true },
            contentProvider = { preferred = 'fernflower' },
            saveActions = { organizeImports = true },
          },
        },
        init_options = { bundles = bundles },
      }

      jdtls.start_or_attach(config)
    end,
  },
}
