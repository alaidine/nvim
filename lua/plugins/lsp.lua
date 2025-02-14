return {
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
  },
  { "onsails/lspkind.nvim" },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      return {
        formatting = {
          fields = { "abbr", "kind", "menu" },
          format = require("lspkind").cmp_format({
            mode = "symbol", -- show only symbol annotations
            maxwidth = 50, -- prevent the popup from showing more than provided characters
            ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
          }),
        },
        preselect = "item",
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "luasnip" },
        },
        mapping = cmp.mapping.preset.insert({
          -- Navigate between completion items
          ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = "select" }),

          -- `Enter` key to confirm completion
          ["<CR>"] = cmp.mapping.confirm({ select = true }),

          -- Ctrl+Space to trigger completion menu
          ["<C-Space>"] = cmp.mapping.complete(),

          -- Scroll up and down in the completion documentation
          ["<C-u>"] = cmp.mapping.scroll_docs(-4),
          ["<C-d>"] = cmp.mapping.scroll_docs(4),

          ["<C-f>"] = cmp.mapping(function(fallback)
            local luasnip = require("luasnip")
            if luasnip.locally_jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Jump to the previous snippet placeholder
          ["<C-b>"] = cmp.mapping(function(fallback)
            local luasnip = require("luasnip")
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Super tab
          ["<Tab>"] = cmp.mapping(function(fallback)
            local luasnip = require("luasnip")
            local col = vim.fn.col(".") - 1

            if cmp.visible() then
              cmp.select_next_item({ behavior = "select" })
            elseif luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            elseif col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
              fallback()
            else
              cmp.complete()
            end
          end, { "i", "s" }),

          -- Super shift tab
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            local luasnip = require("luasnip")

            if cmp.visible() then
              cmp.select_prev_item({ behavior = "select" })
            elseif luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
      }
    end,
  },
  { "williamboman/mason.nvim", opts = {} },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Reserve a space in the gutter
      -- This will avoid an annoying layout shift in the screen
      vim.opt.signcolumn = "yes"

      -- Add cmp_nvim_lsp capabilities settings to lspconfig
      -- This should be executed before you configure any language server
      local lspconfig_defaults = require("lspconfig").util.default_config
      lspconfig_defaults.capabilities =
        vim.tbl_deep_extend("force", lspconfig_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

      local buffer_autoformat = function(bufnr)
        local group = "lsp_autoformat"
        vim.api.nvim_create_augroup(group, { clear = false })
        vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })

        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          group = group,
          desc = "LSP format on save",
          callback = function()
            -- note: do not enable async formatting
            vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
          end,
        })
      end

      local allow_format = function(servers)
        return function(client)
          return vim.tbl_contains(servers, client.name)
        end
      end

      -- Save without formatting
      -- vim.api.nvim_create_user_autocmd('Write', 'noautocmd write', {})

      -- This is where you enable features that only work
      -- if there is a language server active in the file
      vim.api.nvim_create_autocmd("LspAttach", {
        desc = "LSP actions",
        callback = function(event)
          local opts = { buffer = event.buf }

          vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
          vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
          vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
          vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
          vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
          vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
          vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
          vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
          vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
          vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
          vim.keymap.set({ "n", "x" }, "gq", function()
            vim.lsp.buf.format({
              async = false,
              timeout_ms = 10000,
              filter = allow_format({ "lua_ls", "rust_analyzer" }),
            })
          end, opts)

          local id = vim.tbl_get(event, "data", "client_id")
          local client = id and vim.lsp.get_client_by_id(id)
          if client == nil then
            return
          end

          -- Disable semantic highlights
          client.server_capabilities.semanticTokensProvider = nil

          if client.supports_method("textDocument/formatting") then
            buffer_autoformat(event.buf)
          end
        end,
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      return {
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup({})
          end,
        },
      }
    end,
  },
}
