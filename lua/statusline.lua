local function rgb_highlight(group, mode)
	return vim.api.nvim_exec([[echo synIDattr(synIDtrans(hlID("]]..group..[[")), "]]..mode..[[")]], true)
end

local function rgb_fg(group)
	return rgb_highlight(group, "fg#")
end

local function rgb_bg(group)
	return rgb_highlight(group, "bg#")
end

local gl = require('galaxyline')
local colors = require('galaxyline.theme').default
local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'startify', 'vim-plug', 'nerdtree','NvimTree','vista','dbui','packer', 'vista_kind'}

-- local diagnostic = require('galaxyline.provider_diagnostic')
local vcs = require('galaxyline.provider_vcs')
local fileinfo = require('galaxyline.provider_fileinfo')
local extension = require('galaxyline.provider_extensions')
-- local colors = require('galaxyline.colors')
local buffer = require('galaxyline.provider_buffer')
-- local whitespace = require('galaxyline.provider_whitespace')
-- local lspclient = require('galaxyline.provider_lsp')

gls.left[1] = {
  FillLeft = {
    provider = function() return '▎' end,
    -- separator = '▎ ',
    -- highlight = {colors.fg,colors.bg,'bold'}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
                          [''] = colors.blue,V=colors.blue,
                          c = colors.magenta,no = colors.red,s = colors.orange,
                          S=colors.orange,[''] = colors.orange,
                          ic = colors.yellow,R = colors.violet,Rv = colors.violet,
                          cv = colors.red,ce=colors.red, r = colors.cyan,
                          rm = colors.cyan, ['r?'] = colors.cyan,
                          ['!']  = colors.red,t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '⫼ '
    end,
    -- highlight = {colors.red,colors.bg,'bold'},
  },
}
-- gls.left[3] = {
--   FileSize = {
--     provider = 'FileSize',
--     condition = condition.buffer_not_empty,
--     highlight = {colors.fg,colors.bg}
--   }
-- }
gls.mid[1] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color},
    separator = '▎ ',
    -- separator_highlight = {'NONE',colors.bg},
  },
}

gls.mid[2] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    -- highlight = {colors.fg,colors.bg,'bold'},
  }
}

gls.mid[3] = {
  FillMid = {
    provider = function() return ' ' end,
    condition = condition.buffer_not_empty,
    -- highlight = {colors.fg,colors.bg,'bold'}
  },
}

-- gls.left[6] = {
--   LineInfo = {
--     provider = 'LineColumn',
--     separator = ' ',
--     separator_highlight = {'NONE',colors.bg},
--     highlight = {colors.fg,colors.bg},
--   },
-- }

-- gls.left[7] = {
--   PerCent = {
--     provider = 'LinePercent',
--     separator = ' ',
--     separator_highlight = {'NONE',colors.bg},
--     highlight = {colors.fg,colors.bg,'bold'},
--   }
-- }

-- gls.left[8] = {
--   DiagnosticError = {
--     provider = 'DiagnosticError',
--     icon = '  ',
--     highlight = {colors.red,colors.bg}
--   }
-- }
-- gls.left[9] = {
--   DiagnosticWarn = {
--     provider = 'DiagnosticWarn',
--     icon = '  ',
--     highlight = {colors.yellow,colors.bg},
--   }
-- }

-- gls.left[10] = {
--   DiagnosticHint = {
--     provider = 'DiagnosticHint',
--     icon = '  ',
--     highlight = {colors.cyan,colors.bg},
--   }
-- }

-- gls.left[11] = {
--   DiagnosticInfo = {
--     provider = 'DiagnosticInfo',
--     icon = '  ',
--     highlight = {colors.blue,colors.bg},
--   }
-- }

-- gls.mid[1] = {
--   ShowLspClient = {
--     provider = 'GetLspClient',
--     condition = function ()
--       local tbl = {['dashboard'] = true,['']=true}
--       if tbl[vim.bo.filetype] then
--         return false
--       end
--       return true
--     end,
--     icon = ' LSP:',
--     highlight = {colors.cyan,colors.bg,'bold'}
--   }
-- }

-- gls.right[1] = {
--   FileEncode = {
--     provider = 'FileEncode',
--     condition = condition.hide_in_width,
--     separator = ' ',
--     separator_highlight = {'NONE',colors.bg},
--     highlight = {colors.green,colors.bg,'bold'}
--   }
-- }

-- gls.right[2] = {
--   FileFormat = {
--     provider = 'FileFormat',
--     condition = condition.hide_in_width,
--     separator = ' ',
--     separator_highlight = {'NONE',colors.bg},
--     highlight = {colors.green,colors.bg,'bold'}
--   }
-- }

-- gls.right[1] = {
--   GitIcon = {
--     provider = function() return '  ' end,
--     condition = condition.check_git_workspace,
--     separator = ' ',
--     separator_highlight = {'NONE',colors.bg},
--     highlight = {colors.violet,colors.bg,'bold'},
--   }
-- }

-- gls.right[3] = {
--   FillDiff = {
--     provider = function() return '▎' end,
--     condition = condition.check_git_workspace,
--     -- separator = '▎ ',
--     -- highlight = {colors.fg,colors.bg,'bold'}
--   },
-- }


-- gls.right[4] = {
--   DiffAdd = {
--     provider = 'DiffAdd',
--     condition = condition.hide_in_width,
--     icon = '  ',
--     highlight = {colors.green,colors.bg},
--   }
-- }
-- gls.right[5] = {
--   DiffModified = {
--     provider = 'DiffModified',
--     condition = condition.hide_in_width,
--     icon = ' 柳',
--     highlight = {colors.orange,colors.bg},
--   }
-- }
-- gls.right[6] = {
--   DiffRemove = {
--     provider = 'DiffRemove',
--     condition = condition.hide_in_width,
--     icon = '  ',
--     highlight = {colors.red,colors.bg},
--   }
-- }

-- gls.right[7] = {
--   FillDiff2 = {
--     provider = function() return ' ' end,
--     condition = condition.check_git_workspace,
--     -- separator = '▎ ',
--     -- highlight = {colors.fg,colors.bg,'bold'}
--   },
-- }

gls.right[8] = {
    Time = {
        provider = function()
            return ' ' .. os.date('%H:%M') .. ' '
        end,
        separator = '▎ ',
        -- highlight = {colors.fg, colors.bg, 'bold'},
        -- separator_highlight = {colors.lightBackground, colors.lightBackground}
    }
}
-- gls.right[8] = {
--   RainbowBlue = {
--     provider = function() return ' ▊' end,
--     highlight = {colors.blue,colors.bg}
--   },
-- }

-- gls.short_line_left[1] = {
--   BufferType = {
--     provider = 'FileTypeName',
--     separator = ' ',
--     separator_highlight = {'NONE',colors.bg},
--     highlight = {colors.blue,colors.bg,'bold'}
--   }
-- }

gls.short_line_left[1] = {
  FillLeftShort = {
    provider = function() return '▎' end,
    -- separator = '▎ ',
    -- highlight = {colors.fg,colors.bg,'bold'}
  },
}
gls.short_line_left[2] = {
  ViModeShort = {
    provider = function() return '⫼ ' end,
    -- highlight = {colors.red,colors.bg,'bold'},
  },
}
gls.short_line_left[3] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    -- highlight = {colors.fg,colors.bg,'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    -- highlight = {colors.fg,colors.bg}
  }
}
-- local gl = require('galaxyline')
-- local gls = gl.section
-- local condition = require('galaxyline.condition')
-- local provider_fileinfo = require('galaxyline.provider_fileinfo')
-- local vcs = require('galaxyline.provider_vcs')
-- local settings = {bold = 1, italic = 1, bold_italic = 1}
-- local colors = require('galaxyline.theme').default

-- gls.mid = {
--     {
--         FileIcon = {
--             provider = "FileIcon",
--             condition = condition.buffer_not_empty,
--             highlight = {provider_fileinfo.get_file_icon_color, colors.lightbg}
--         }
--     },
--     {
--         FileName = {
--             provider = 'FileName',
--             highlight = {colors.bg, colors.magenta},
--         },
--     }
-- }

-- local dark = {
--     bg = '#1e1e1e',
--     fg = '#aab2bf',
--     error = '#FC5C94',

--     red = '#e06c75',
--     green = '#98c379',
--     yellow = '#e5c07b',
--     blue = '#61afef',
--     purple = '#c678dd',
--     gray = '#4c4f55',

--     -- mode colors
--     normal = '#98c379', -- green
--     insert = '#61afef', -- blue
--     command = '#e5c07b', -- yellow
--     visual = '#c678dd', -- purple
--     replace = '#e06c75' -- red
-- }
-- local light = {
--     bg = '#fafafa',
--     fg = '#6a6a6a',
--     error = '#FC5C94',

--     red = '#e05661',
--     green = '#1da912',
--     yellow = '#eea825',
--     blue = '#118dc3',
--     purple = '#9a77cf',
--     gray = '#bebebe',

--     -- mode colors
--     normal = '#1da912', -- green
--     insert = '#118dc3', -- blue
--     command = '#eea825', -- yellow
--     visual = '#9a77cf', -- purple
--     replace = '#e05661' -- red
-- }
-- function color(val)
--     return function()
--         if vim.o.background ~= nil and vim.o.background == "light" then
--             return light[val]
--         else
--             return dark[val]
--         end
--     end
-- end
-- -- Used to get a hex color
-- function get_color(val)
--     if vim.o.background ~= nil and vim.o.background == "light" then
--         return light[val]
--     else
--         return dark[val]
--     end
-- end
-- require('galaxyline').section.left[0] = {
-- ViMode = {
--     provider = function()
--         -- local alias = {n = 'NORMAL',i = 'INSERT',c = 'COMMAND',V = 'VISUAL', [''] = 'VISUAL'}
--         local mode_color = {
--             n = get_color('normal'),
--             i = get_color('insert'),
--             c = get_color('command'),
--             V = get_color('visual'),
--             [' '] = get_color('visual')
--         }
--         mode = vim.fn.mode()
--         if mode_color[mode] ~= nil then
--             vim.api.nvim_command('hi GalaxyViMode guibg=' ..mode_color[mode])
--             vim.api.nvim_command('hi GalaxyViModeInv guifg=' ..mode_color[mode])
--         end
--         return ' '
--     end,
--     highlight = {
--         color('bg'), color('bg'),
--         function()
--             if settings.bold == 1 then return 'BOLD' end
--         end
--     }
-- }
-- }
-- require('galaxyline').section.mid[0] = {
-- }
-- require('galaxyline').section.right[0] = {
--     Time = {
--         provider = function()
--             return ' ' .. '  ' .. os.date('%H:%M') .. ' '
--         end,
--         separator = " ",
--         -- highlight = {colors.background, colors.green},
--         -- separator_highlight = {colors.lightBackground, colors.lightBackground}
--     }
-- }
-- -- require('galaxyline').section.left[1]= {
-- --   FileSize = {
-- --     provider = 'FileSize',
-- --     condition = function()
-- --       if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
-- --         return true
-- --       end
-- --       return false
-- --       end,
-- --     icon = '   ',
-- --     highlight = {colors.green,colors.purple},
-- --     separator = '',
-- --     separator_highlight = {colors.purple,colors.darkblue},
-- --   }
-- -- }


gls.right[7] = {
  ShowGitBranch = {
    provider = 'GitBranch',
    -- condition = condition.check_git_workspace,
    -- highlight = {colors.violet,colors.bg,'bold'},
  }
}
