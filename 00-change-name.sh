
OLD=TEMPLATE

if test $# -eq 0 ; then
    NEW=`basename \`pwd\``
    echo No argument given $NEW assumed as new name
else
    if test $# -eq 1 ; then
	NEW=$1
    else
	OLD=$1
	NEW=$2  # assume 2 args
    fi
fi

echo Changing $OLD to $NEW


echo $OLD
echo $NEW


mv ./$OLD-doc.tex ./$NEW-doc.tex
mv ./$OLD.ins ./$NEW.ins

for i in 0 1 2 3 4 5 6 7 8 9 ; do
mv -n ./testfiles/$OLD-00$i.lvt ./testfiles/$NEW-00$i.lvt
mv -n ./testfiles/$OLD-00$i.tlg ./testfiles/$NEW-00$i.tlg
mv -n ./testfiles/$OLD-00$i.xetex.tlg ./testfiles/$NEW-00$i.xetex.tlg
mv -n ./testfiles/$OLD-00$i.luatex.tlg ./testfiles/$NEW-00$i.luatex.tlg
done

mv ./$OLD-code.tex ./$NEW-code.tex
mv ./$OLD.dtx ./$NEW.dtx


for f in `find . -type f -name "[^.]*" -print`; do

   echo "changing $f ..." 
   awk -v OLD=$OLD -v NEW=$NEW '{gsub(OLD,NEW); print}' $f > $$
   mv $$ $f

done

exit


