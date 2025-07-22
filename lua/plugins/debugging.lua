return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"leoluz/nvim-dap-go",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
        
		dapui.setup()
		require("dap-go").setup()
        
        for _, adapter in pairs({ "pwa-node" }) do
            dap.adapters[adapter] = {
                type = "server",
                host = "localhost",
                port = "${port}",
                executable = {
                    command = "node",
                    args = { vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js", "${port}" },
                },
            }
        end
        
        dap.configurations.javascript = {
          {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            cwd = "${workspaceFolder}",
          },
        }

        
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<F5>", dap.continue, { desc = "DAP continue" })
		vim.keymap.set("n", "<F10>", dap.step_over, { desc = "DAP step over" })
		vim.keymap.set("n", "<F11>", dap.step_into, { desc = "DAP step into" })
		vim.keymap.set("n", "<F12>", dap.step_out, { desc = "DAP step out" })
		vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "DAP toggle breakpoint" })
		vim.keymap.set("n", "<leader>B", function()
			dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end, { desc = "DAP set breakpoint condition" })
	end,
}
