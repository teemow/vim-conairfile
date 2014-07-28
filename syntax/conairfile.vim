" conairfile.vim - Syntax highlighting for Conairfiles
" Maintainer:   Timo Derstappen <http://teemow.com>
" Version:      0.1


if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "conairfile"

syntax case ignore

syntax match conairfileKeyword /\v^\s*(ONBUILD\s+)?(ADD|CMD|ENTRYPOINT|ENV|ENABLE|EXPOSE|FROM|MAINTAINER|PKG|RUN|USER|VOLUME|WORKDIR|COPY)\s/
highlight link conairfileKeyword Keyword

syntax region conairfileString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link conairfileString String

syntax match conairfileComment "\v^\s*#.*$"
highlight link conairfileComment Comment

set commentstring=#\ %s
