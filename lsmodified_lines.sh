# USAGE:
# Go in a folder and run this script.

COUNT_TOTAL=0

COUNT_NEW=`svn diff | grep -v -e '^---' -e '^+++' | grep '^+' | wc -l`
COUNT_MINUS=`svn diff | grep -v -e '^---' -e '^+++' | grep '^-' | wc -l`

COUNT_DIFF=$(($COUNT_NEW - $COUNT_MINUS))
echo "Diff: "$COUNT_DIFF" lines."

exit;
