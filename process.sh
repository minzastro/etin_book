#sed -ibak 's/subsubsection/paragraph/g' 1*.tex
#sed -ibak 's/subsection/subsubsection/g' 1*.tex
#sed -ibak 's/\\section/\\subsection/g' 1*.tex
perl -p0e 's/\{\\selectlanguage\{russian\}\n//sg' $1 > $1.new
sed -i 's/\.\}/\./g' $1.new
sed -i 's/\. \}/\./g' $1.new
sed -i 's/:\}/:/g' $1.new
sed -i 's/;\}/;/g' $1.new
echo 1
sed -i 's/ {\\textquotedbl}/ \\flqq /g' $1.new
echo 1
sed -i 's/{\\textquotedbl} /\\frqq /g' $1.new
echo 1
sed -i 's/({\\textquotedbl}/\(\\flqq /g' $1.new
echo 1
sed -i 's/{\\textquotedbl})/\\flqq)/g' $1.new
#perl -i -p0e 's/\\footnote\{\\ \\textcyrillic\{//sg' $1.new
