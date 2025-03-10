

set name=slides

rem set pandoc="D:\Softwares\pandoc-2.14.0.1-windows-x86_64\pandoc-2.14.0.1\pandoc.exe"
rem set xelatex="D:\texlive\2020\bin\win32\xelatex.exe"
rem set sumatrapdf="D:\Softwares\SumatraPDF-3.2-64\SumatraPDF-3.2-64.exe"

set pandoc=pandoc.exe
set xelatex=xelatex.exe
set sumatrapdf=SumatraPDF.exe

%pandoc% -t beamer --template template.tex --toc -s -o %name%.tex %name%.md
mkdir tmp
%xelatex% -output-directory tmp %name%.tex
copy tmp\%name%.pdf .
rem %sumatrapdf% %name%.pdf
