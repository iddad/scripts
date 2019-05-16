# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#    Go through the camera files
#    and remove RW2 files (Panasonic RAW) when the JPG does not exist (has already been removed).
#
#

# FIND RW2 files
# Look for related JPG file
i=0
for file in *RW2
do
    ORF_FILE=$file
    ORF_BASE=`basename $file .RW2`
    JPG_FILE=${ORF_BASE}.JPG
    echo "check $ORF_BASE / $JPG_FILE..."
    if [ ! -f $JPG_FILE ]; then
        echo "Removing $ORF_BASE..."
        rm $ORF_FILE
        let i=i+1
    fi
done

echo "Done. $i files removed."
