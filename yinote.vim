function Yinote()
    %s/<!-- # \[\([^\]]\+\)\](\([^)]\+\)) -->/* [[\2][\1]]
    %s/<!-- ## \[\([^\]]\+\)\](\([^)]\+\)) -->/** [[\2][\1]]
    %s/<!--.*-->//
    %g/^$/d
    normal ggyG
endfunction

nmap <silent>  <C-]>  :call Yinote()<CR>
