" ====================================================================
" МІНІМАЛЬНИЙ КОНФІГ: ТІЛЬКИ БАЗА, TELESCOPE ТА ОПТИМІЗАЦІЯ NEOVIDE
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
    -- winblend задає прозорість плаваючого вікна Telescope (від 0 до 100).
    -- Значення 15 ідеально пасує до загальної прозорості Neovide 0.85
    winblend = 15, 
    layout_strategy = 'vertical', -- Результати знизу, прев'ю зверху
    layout_config = {
      vertical = { 
        width = 0.9,              
        height = 0.9,            
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

" Налаштування відображення прихованих символів (залишено тільки підсвітку пробілів у кінці рядка)
set list
set listchars=trail:·

" Мапінг клавіатури для збереження функціоналу команд у кириличній розкладці
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ї],фa,іs,вd,аf,пg,рh,оj,лk,дl,ж\\;,є',ґ\\,яz,чx,сc,мv,иb,тn,ьm,ю.,./,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ї},ФA,ІS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\\:,Є\\",Ґ<bar>,ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б\\<,Ю>,№#

" --- НАЛАШТУВАННЯ NEOVIDE ---
" Ці параметри застосовуються лише тоді, коли Neovim запущено через графічний інтерфейс Neovide
if exists('g:neovide')
    " 1. ШРИФТ ТА РОЗМІР (JetBrains Mono з лігатурами, розмір 12)
    " Пробіл у назві обов'язково екранується зворотним слешем (\ )
    set guifont=JetBrainsMono\ Nerd\ Font:h16

    " 2. МІЖРЯДКОВИЙ ІНТЕРВАЛ (у пікселях)
    " Додає трохи простору між рядками для кращої читабельності та усунення дефектів
    set linespace=8

    " 3. ПРОЗОРІСТЬ ТА ВІЗУАЛЬНІ ЕФЕКТИ
    let g:neovide_opacity = 0.85          " Загальна прозорість вікна (0.0 - 1.0)
    let g:neovide_normal_opacity = 1.0   " Текст залишається на 100% непрозорим і чітким
    let g:neovide_cursor_vfx_mode = ""    " Вимкнення зайвих частинок та ефектів курсору

endif
