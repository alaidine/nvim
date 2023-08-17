require("dashboard").setup {
  theme = 'doom',
  config = {
    header = {
      "",
      "",
      "",
      "",
      " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
      " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
      " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
      " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
      " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
      " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
      "",
      "",
      "",
      "",
    }, --your header
    center = {
      {
        icon = '',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'b',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'Telescope find_files'
      },
      {
        icon = '',
        desc = 'Old Files',
        key = 'f',
        keymap = 'SPC f d',
        action = 'Telescope oldfiles'
      },
      {
        icon = '',
        desc = 'Find Word',
        key = 'w',
        keymap = 'SPC f r',
        action = 'Telescope live_grep'
      },
      {
        icon = '',
        desc = 'File Explorer',
        key = 't',
        keymap = 'SPC n',
        action = 'NvimTreeToggle'
      },
    },
    footer = {
      "",
      "",
      "",
      " [ TIP: To exit Neovim, just power off your computer. ] ",
    }  --your footer
  }
}
