local M = {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VimEnter",
}

function M.config()
   local dashboard = require("alpha.themes.dashboard")

   dashboard.section.header.val = {
     [[                                                                                                 ]],
     [[                                                                                                 ]],
     [[                                                                                                 ]],
     [[                                                                                                 ]],
     [[      ___           ___           ___           ___                                    ___       ]],
     [[     /__/\         /  /\         /__/\         /  /\          ___        ___          /__/\      ]],
     [[     \  \:\       /  /::\        \  \:\       /  /::\        /__/\      /  /\        |  |::\     ]],
     [[      \  \:\     /  /:/\:\        \  \:\     /  /:/\:\       \  \:\    /  /:/        |  |:|:\    ]],
     [[  _____\__\:\   /  /:/~/::\   _____\__\:\   /  /:/  \:\       \  \:\  /__/::\      __|__|:|\:\   ]],
     [[ /__/::::::::\ /__/:/ /:/\:\ /__/::::::::\ /__/:/ \__\:\  ___  \__\:\ \__\/\:\__  /__/::::| \:\  ]],
     [[ \  \:\~~\~~\/ \  \:\/:/__\/ \  \:\~~\~~\/ \  \:\ /  /:/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/  ]],
     [[  \  \:\  ~~~   \  \::/       \  \:\  ~~~   \  \:\  /:/  \  \:\|  |:|     \__\::/  \  \:\        ]],
     [[   \  \:\        \  \:\        \  \:\        \  \:\/:/    \  \:\__|:|     /__/:/    \  \:\       ]],
     [[    \  \:\        \  \:\        \  \:\        \  \::/      \__\::::/      \__\/      \  \:\      ]],
     [[     \__\/         \__\/         \__\/         \__\/           ~~~~                   \__\/      ]],
     [[                                                                                                 ]],
     [[                                                                                                 ]],
     [[                                                                                                 ]],
     [[                                                                                                 ]],
     [[                                                                                                 ]],
   }
   dashboard.section.buttons.val = {
     dashboard.button("n", " New file", ":ene <BAR> startinsert<CR>"),
     dashboard.button("r", " Recent files", ":Telescope oldfiles<CR>"),
     dashboard.button("f", " Find file", ":Telescope find_files<CR>"),
     dashboard.button("p", " Find project", ":Telescope projects<CR>"),
     dashboard.button("t", " Find text", ":Telescope live_grep<CR>"),
     dashboard.button("u", " Update plugins", ":Lazy sync<CR>"),
     dashboard.button("q", " Quit Neovim", ":qa<CR>"),
   }

   dashboard.section.footer.val = {
     [[                              ]],
     [[  As long as i open my terminal.]],
     [[  It must be writing low-level PL.]],
     [[                              ]],
     [[                              ]],
     [[                              ]],
     [[                              ]],
     [[                              ]],
     [[                              ]],
     [[                              ]],
     [[                              ]],
   }

   dashboard.section.footer.opts.hl = "Type"
   dashboard.section.header.opts.hl = "Include"
   dashboard.section.buttons.opts.hl = "Keyword"

   dashboard.opts.opts.noautocmd = true
   require("alpha").setup(dashboard.opts)
end

return M
