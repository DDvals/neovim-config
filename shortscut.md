# Shortscut

ctrl-n open neotree

ctrl-w jk move between panels

ctrl-xo autocompleter

space-ca code actions (lsp)

space-gf format

space-gd go to definition

space-gr reference

:Mason per lsp, formatter, ecc

visual mode -> > or < indent


:wq fast -> ZZ

:q! fast -> ZQ

Vib select content between parentesis ()

ViB same but with {}

Cib delete content between parentesis

insertion on multiple lines -> ctrl-v, select rows, insert mode, write, esc

same things but at the end of the line -> gv$, A, write, esc

~ -> first word with capital letter

(~ = alt + 126)

G~w All word with capital letters

gg, =, g indent all file

% jump between parentesis

ctrl - z background

fg foreground

:mksession sessioname.vim create a file with the session saved

:source sessioname.vim open saved session


m, letter -> set a mark

', letter -> go to mark

if the letter is capital the mark is visible between buffers


:tabnew filename -> open filename in a new tab

:tabn -> next tab

:tabp previous tab


J -> join line with a space between

gJ -> join without space


:sp filename -> open filename with a horizonal split

:vsp filename -> open filename with a vertical split

# telescope

https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#default-mappings

ctrl + p find files

leader + fg live grep

leader + fs grep string under the cursor

leader + lb list buffers

leader + lr list references for string under the cursor

leader + ts treesitter show vars, function, etc
