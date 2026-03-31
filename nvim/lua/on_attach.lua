local opts = { noremap = true, silent = true }
-- local telescope_builtin = require("telescope.builtin")

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)

  opts.callback = function()
    -- telescope_builtin.lsp_definitions()
  end
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "", opts)

  opts["callback"] = nil
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>h", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

  opts.callback = function()
    -- telescope_builtin.lsp_implementations()
  end
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "", opts)

  opts["callback"] = nil
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<leader>k",
    "<cmd>lua vim.lsp.buf.signature_help()<CR>",
    opts
  )
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<leader>wa",
    "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>",
    opts
  )
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<leader>wr",
    "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>",
    opts
  )
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<leader>wl",
    "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
    opts
  )
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<leader>D",
    "<cmd>lua vim.lsp.buf.type_definition()<CR>",
    opts
  )
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  -- vim.api.nvim_buf_set_keymap(
  --   bufnr,
  --   "n",
  --   "<leader>ca",
  --   "<cmd>lua vim.lsp.buf.code_action()<CR>",
  --   opts
  -- )
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<leader>i",
    "<cmd>lua vim.lsp.buf.incoming_calls()<CR>",
    opts
  )
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<leader>d",
    "<cmd>lua vim.lsp.buf.definition()<CR>",
    opts
  )

  opts.callback = function()
    -- telescope_builtin.lsp_references()
  end
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>r", "", opts)

  opts["callback"] = nil
  vim.api.nvim_buf_set_keymap(
    bufnr,
    "n",
    "<leader>f",
    "<cmd>lua vim.lsp.buf.formatting()<CR>",
    opts
  )
end

return on_attach
