" Vim completion script
" Language:   styled-components (js/ts)
" Maintainer: Karl Fleischmann <fleischmann.karl@gmail.com>
" URL:        https://github.com/styled-components/vim-styled-components

fun! styledcomplete#CompleteSC(findstart, base)
  if IsStyledDefinition(line('.'))
    return csscomplete#CompleteCSS(a:findstart, a:base)
  endif

  " create a funcref to call with the previous omnicomplete function
  let s:funcref = function(b:prevofu)
  return s:funcref(a:findstart, a:base)
endfun
