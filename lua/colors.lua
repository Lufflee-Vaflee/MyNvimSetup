print("hello from colors")

function ColorMyPencils(color)

    require("transparent").setup({ -- Optional, you don't have to run setup.
        groups = { -- table: default groups
            "Normal", "NormalNC", "SignColumn"
        },
        extra_groups = {
            "NvimTreeNormal"
        }, -- table: additional groups that should be cleared
        exclude_groups = {}, -- table: groups you don't want to clear
    })

    color = color or "darkplus"

    vim.cmd.colorscheme(color)

    require('feline').setup()
end

ColorMyPencils()

