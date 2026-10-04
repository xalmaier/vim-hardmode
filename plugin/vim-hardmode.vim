" ============================================================================
" Plugin:       hardmode
" Description:  A training environment to eliminate bad habits.
" ============================================================================

" Active flag (0 = Off, 1 = On)
let g:hardmode_active = 1

" Toggle mode with ',t'
nnoremap <silent> ,t :ToggleHardMode<CR>

" Or with a function
command! ToggleHardMode call s:ToggleHardMode()

" Toggle function
function! s:ToggleHardMode()
   if g:hardmode_active == 0
      let g:hardmode_active = 1
      "echohl WarningMsg | echo "Hardmode ACTIVE! Arrow keys locked." | echohl None
      echohl ModeMsg
      echo "Hardmode ACTIVE! Arrow keys locked."
      echohl None
   else
      let g:hardmode_active = 0
      echohl ModeMsg
      echo "Hardmode OFF!"
      echohl None
    endif
endfunction

" Block function with warnings
function! s:BlockArrows(arrow_key)
   if g:hardmode_active == 1
      echohl ErrorMsg
      echo "Use hjkl!"
      echohl None
      return ""
   else
      return a:arrow_key
   endif
endfunction

" 1. Lock Basic Arrow Keys
for t in ['<Up>', '<Down>', '<Left>', '<Right>']
   execute 'nnoremap <silent> <expr> ' . t . ' <SID>BlockArrows("' . t . '")'
   execute 'vnoremap <silent> <expr> ' . t . ' <SID>BlockArrows("' . t . '")'
   execute 'inoremap <silent> <expr> ' . t . ' <SID>BlockArrows("' . t . '")'
endfor
