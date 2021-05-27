echo "Processing commences"

for filename in *.m4v
do
	basename=${filename%%.m4v}
	newfile=$basename.mp4

	echo "Processing $filename to $newfile"
	mv $filename $newfile
done

echo "Processing complete"
