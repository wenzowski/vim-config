set background=dark
silent! colorscheme solarized

if exists("colors_name") && colors_name == 'solarized'
  if has('gui_macvim')
    set transparency=0
  endif

  if !has('gui_running') && $TERM_PROGRAM == 'Apple_Terminal'
    let g:solarized_termcolors = &t_Co
    let g:solarized_termtrans = 1
    colorscheme solarized
  endif
endif
