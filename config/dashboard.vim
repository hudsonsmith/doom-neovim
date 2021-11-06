" Create custom shortcuts for the Neovim Dashboard.
let g:dashboard_default_executive ="fzf"

" Dashboard Shortcuts.
nmap <Leader>ss  :<C-u>SessionSave<CR>
nmap <Leader>ls :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>rf :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>bb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>nf :DashboardNewFile<CR>

let packages = len(globpath("~/.config/nvim/plugins/", "*", 0, 1))
let g:dashboard_custom_footer = ['  Doom Neovim loaded '..packages..' plugins']

let g:dashboard_custom_shortcut = {
	\ "last_session": "SPC l s",
	\ "find_history": "SPC r f",
	\ "find_file": "SPC f f",
	\ "new_file": "SPC n f",
	\ "change_colorscheme": 'SPC t c',
	\ "find_word": 'SPC f a',
	\ "book_marks": 'SPC b b'
\ }

" Open Dashboard.
nnoremap <silent><Leader>nn :Dashboard<CR>

" Dashboard Session Path.
let g:dashboard_session_directory = "~/.config/nvim/sessions"



autocmd! FileType dashboard set showtabline=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set showtabline=2 showmode ruler


" Dashboard header.
" Uncomment one of these in order to have it take effect.

" Legit Doom Logo.
let g:dashboard_custom_header = [
            \"=================     ===============     ===============   ========  ========",
            \"\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
            \"||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
            \"|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
            \"||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
            \"|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
            \"||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
            \"|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
            \"||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
            \"||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
            \"||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
            \"||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
            \"||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
            \"||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
            \"||   .=='    _-'          '-__\\._-'         '-_./__-'         `' |. /|  |   ||",
            \"||.=='    _-'                                                     `' |  /==.||",
            \"=='    _-'                        N E O V I M                         \\/   `==",
            \"\\   _-'                                                                `-_   /",
            \"`''                                                                      ``'",
            \ ]
hi DashboardHeader guifg=#474D53


" Cute Doom Logo.
" let g:dashboard_custom_header = [
" 	       \ "            :h-                                  Nhy`               ",
" 	       \ "           -mh.                           h.    `Ndho               ",
" 	       \ "           hmh+                          oNm.   oNdhh               ",
" 	       \ "          `Nmhd`                        /NNmd  /NNhhd               ",
" 	       \ "          -NNhhy                      `hMNmmm`+NNdhhh               ",
" 	       \ "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
" 	       \ "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
" 	       \ "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
" 	       \ "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
" 	       \ " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
" 	       \ " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
" 	       \ " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
" 	       \ " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
" 	       \ "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
" 	       \ "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
" 	       \ "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
" 	       \ "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
" 	       \ "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
" 	       \ "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
" 	       \ "       //+++//++++++////+++///::--                 .::::-------::   ",
" 	       \ "       :/++++///////////++++//////.                -:/:----::../-   ",
" 	       \ "       -/++++//++///+//////////////               .::::---:::-.+`   ",
" 	       \ "       `////////////////////////////:.            --::-----...-/    ",
" 	       \ "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
" 	       \ "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
" 	       \ "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
" 	       \ "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
" 	       \ "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
" 	       \ "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
" 	       \ "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
" 	       \ "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
" 	       \ "                        .-:mNdhh:.......--::::-`                    ",
" 	       \ "                           yNh/..------..`                          ",
" 	       \ "                                                                    ",
" 	       \ "                              N E O V I M                           ",
" 	       \ ]
" 
" hi DashboardHeader guifg=#C63B34

hi DashboardCenter guifg=#51AFEF
hi DashboardShortcut guifg=#A9A1E1
hi DashboardFooter guifg=#474D53
