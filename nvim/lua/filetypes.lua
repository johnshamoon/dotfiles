vim.filetype.add({
  extension = {
    aidl = "java",
    cml = "json5",
    fidl = "fidl",
    gn = "gn",
    gni = "gn",
    cc = "cpp",
    h = "cpp",
    rs = "rust",
  },
})

local function set_ft_option(ft, group, option, value)
  vim.api.nvim_create_autocmd("FileType", {
    pattern = ft,
    group = vim.api.nvim_create_augroup(group, { clear = false }),
    desc = ('set option "%s" to "%s" for this filetype'):format(option, value),
    callback = function()
      vim.opt_local[option] = value
    end,
  })
end

set_ft_option({ "c", "cc", "cpp", "json5", "fidl" }, "CommentaryOptions", "commentstring", "// %s")
set_ft_option({ "gn", "gni" }, "CommentaryOptions", "commentstring", "# %s")

local is_android = string.find(vim.loop.cwd() or "", "/ssd3/android")
if not is_android then
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.c", "*.cc", "*.cpp", "*.h" },
    -- group = vim.api.nvim_create_augroup("AutoFormat", {clear = false}),
    callback = function()
      vim.lsp.buf.format()
    end,
  })
end
