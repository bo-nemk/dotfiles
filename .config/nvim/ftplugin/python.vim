set tw=120
set fo?
set fo+=t

nnoremap <leader>b <cmd>:w<CR><cmd>:term python %<CR>

function! ToNumpyColumnVectorFunction() range
    silent execute a:firstline . "," . a:lastline . "normal gq"
    silent execute a:firstline . "," . a:lastline . "s/$/,/"
    silent execute a:firstline "normal! Inp.array([["
    silent execute a:lastline "normal! $xa]]).T"
endfunction

command! -range ToNumpyColumnVector <line1>,<line2> call ToNumpyColumnVectorFunction()

function! ToThreeWideFunction() range
    silent execute a:firstline . "," . a:lastline . "normal JJ"
endfunction

command! -range ToThreeWide <line1>,<line2> call ToThreeWideFunction()

function! FormatNumbersFunction() range
    silent execute "Tab/,\zs"
endfunction

command! -range FormatNumbers <line1>,<line2> call FormatNumbersFunction()

