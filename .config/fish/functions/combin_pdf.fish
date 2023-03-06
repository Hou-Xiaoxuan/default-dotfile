function combin_pdf --description "合并pdf文件"
    argparse 't/target=' 's/source' -- $argv
    set target 'target.pdf'
    if set -q _flag_target
        set target $_flag_target
    end
    if set -q _flag_source
        set source $argv
    else
	set source *.pdf
    end
    command gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$target $source
end
