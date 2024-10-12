vim.api.nvim_create_user_command("NatspecComment", function()
	require("natspec").insert_comment()
end, {})

vim.api.nvim_create_user_command("NatspecNotice", function()
	require("natspec").insert_notice()
end, {})

vim.api.nvim_create_user_command("Natspec", function()
	require("natspec").insert_natspec()
end, {})
