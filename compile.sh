name=slides

# set pandoc="D:\Softwares\pandoc-2.14.0.1-windows-x86_64\pandoc-2.14.0.1\pandoc.exe"
# set xelatex="D:\texlive\2020\bin\win32\xelatex.exe"
# set sumatrapdf="D:\Softwares\SumatraPDF-3.2-64\SumatraPDF-3.2-64.exe"

pandoc=pandoc.exe
xelatex=xelatex.exe
sumatrapdf=SumatraPDF.exe

$pandoc -t beamer --template template.tex --toc -s -o ${name}.tex ${name}.md
# tmp
mkdir -p tmp
$xelatex -output-directory tmp ${name}.tex
cp tmp/${name}.pdf .
