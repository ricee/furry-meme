" Extensions
if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect
    au! BufRead,BufNewFile *.blade.php	setfiletype html
    au! BufRead,BufNewFile *.vue		setfiletype html
    au! BufRead,BufNewFile *.ts			setfiletype javascript
augroup END
