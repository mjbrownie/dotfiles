" Borrowed from html.vim Thanks to Johannes Zellner and Benji Fisher.
if exists("loaded_matchit")
    let b:match_ignorecase = 1
    let b:match_skip = 's:Comment'
    let b:match_words = '<:>,' .
    \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
    \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
    \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>,'  . 
    \ '{% *if .*%}:{% *else *%}:{% *endif *%},' . 
    \ '{% *ifequal .*%}:{% *else *%}:{% *endifequal *%},' . 
    \ '{% *ifnotequal .*%}:{% *else *%}:{% *endifnotequal *%},' . 
    \ '{% *ifchanged .*%}:{% *else *%}:{% *endifchanged *%},' . 
    \ '{% *for .*%}:{% *endfor *%},' . 
    \ '{% *with .*%}:{% *endwith *%},' .
    \ '{% *comment .*%}:{% *endcomment *%},' .
    \ '{% *block .*%}:{% *endblock *%},' .
    \ '{% *filter .*%}:{% *endfilter *%},' .
    \ '{% *spaceless .*%}:{% *endspaceless *%}' 
endif

"try
"python try: from settings import TEMPLATE_DIRS;except:print "Cant load Template Dirs"
"setlocal path=
"python for p in TEMPLATE_DIRS: vim.command('setlocal path+=%s' % (p,))
"endtry
