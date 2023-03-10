return function(use)
	-- WHICH-KEY
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end
	})
		-- TROUBLE
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
				vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
					{ silent = true, noremap = true }),
				vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
					{ silent = true, noremap = true }),
				vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
					{ silent = true, noremap = true }),
				vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
					{ silent = true, noremap = true }),
				vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
					{ silent = true, noremap = true }),
				vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
					{ silent = true, noremap = true })
			}
		end
	}
	-- NOICE
	use({
		"folke/noice.nvim",
		config = function()
			require("noice").setup({
				lsp = {
					-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},
				-- you can enable a preset for easier configuration
				presets = {
					bottom_search = true, -- use a classic bottom cmdline for search
					command_palette = true, -- position the cmdline and popupmenu together
					long_message_to_split = true, -- long messages will be sent to a split
					inc_rename = false, -- enables an input dialog for inc-rename.nvim
					lsp_doc_border = false, -- add a border to hover docs and signature help
				},
			})
		end,
		requires = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		}
	})
	-- TOKYONIGHT
	use 'folke/tokyonight.nvim'
	-- ZEN-MODE
	use {
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup {}
		end
	}
	-- TWILIGHT
	use {
		"folke/twilight.nvim",
		config = function()
			require("twilight").setup {}
		end
	}
	-- HARPOON
	use('theprimeagen/harpoon')
	-- UNDOTREE
	use('mbbill/undotree')
	-- Codi
	use 'metakirby5/codi.vim'
	-- Emmet
	use 'mattn/emmet-vim'
	-- Friendly snippets
	use {
		'rafamadriz/friendly-snippets',
		config = function()
			require 'luasnip'.filetype_extend("tsx", { "react-ts" })
		end
	}
	use {
		'nmac427/guess-indent.nvim',
		config = function() require('guess-indent').setup {} end,
	}
end
