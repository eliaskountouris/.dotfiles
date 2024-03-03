local wilder = require('wilder')
wilder.setup({modes = {':'}})

wilder.set_option('renderer', wilder.wildmenu_renderer({
  highlighter = wilder.basic_highlighter(),
  separator = '   ',
  left = {' ', wilder.wildmenu_spinner(), ' '},
  right = {' ', wilder.wildmenu_index()},
}))

wilder.set_option('pipeline', {
    wilder.branch(
      wilder.python_file_finder_pipeline({
        -- to use ripgrep : {'rg', '--files'}
        -- to use fd      : {'fd', '-tf'}
        file_command = {'find', '.', '-type', 'f', '-printf', '%P\n'}, 
        -- to use fd      : {'fd', '-td'}
        dir_command = {'find', '.', '-type', 'd', '-printf', '%P\n'},
        -- use {'cpsm_filter'} for performance, requires cpsm vim plugin
        -- found at https://github.com/nixprime/cpsm
        filters = {'fuzzy_filter', 'difflib_sorter'},
      }),
      wilder.cmdline_pipeline()
      --wilder.python_search_pipeline()
    ),
})


