" ====================================================================
" МІНІМАЛЬНИЙ КОНФІГ: ТІЛЬКИ БАЗА ТА TELESCOPE
" ====================================================================

" --- БЛОК ПЛАГІНІВ ---
call plug#begin('C:/Users/Asus/AppData/Local/nvim-data/plugged')

Plug 'preservim/nerdtree'                               " Провідник файлів
Plug 'nvim-lua/plenary.nvim'                            " Обов'язкова бібліотека для Telescope
Plug 'nvim-telescope/telescope.nvim'                   " Сам Telescope (актуальна гілка master)

call plug#end()
" ---------------------

" --- ГАРЯЧІ КЛАВІШІ ---

" Тогл дерева файлів
nnoremap <silent> <F1> <cmd>NERDTreeToggle<CR>

" Пошук файлів
nnoremap <silent> <F2> <cmd>Telescope find_files<CR>

" Пошук у поточному файлі
nnoremap <silent> <F4> <cmd>Telescope current_buffer_fuzzy_find<CR>

" Пошук тексту в проєкті
nnoremap <silent> <F5> <cmd>Telescope live_grep<CR>

" --- АКТИВАЦІЯ TELESCOPE ---
lua << EOF
require('telescope').setup{
  defaults = {
    layout_strategy = 'vertical', -- Результати знизу, прев'ю зверху
    layout_config = {
      vertical = { 
        width = 0.9,              -- Ширина 90%
        height = 0.9,            -- Оптимальна висота, щоб блоки не зліплювалися
		preview_height = 0.5,
        preview_cutoff = 0,       -- Прев'ю ніколи не зникає
      }
    }
  }
}
EOF

" --- СИСТЕМНІ НАЛАШТУВАННЯ ---
set title
set number
set relativenumber
set mouse=a
set clipboard=unnamedplus
set list
set listchars=trail:·
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ї],фa,іs,вd,аf,пg,рh,оj,лk,дl,ж\\;,є',ґ\\,яz,чx,сc,мv,иb,тn,ьm,ю.,./,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ї},ФA,ІS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\\:,Є\\",Ґ<bar>,ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б\\<,Ю>,№#

" --- НАЛАШТУВАННЯ NEOVIDE ---
let g:neovide_cursor_vfx_mode = ""
let g:neovide_opacity = 0.85
