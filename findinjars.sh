#
# Find any type in a directory containing JAR libraries (basically a ZIP file)
#
if [ $# -ge 1 ]
then
  echo "Path: "`pwd`
  echo '';
  #for file in *jar; do unzip -l $file; done | grep -i -e '^Archive' -e "$1"
  for file in `find . -name "*.jar"`; do unzip -l $file; done | grep -i -e '^Archive' -e "$1"
else
  echo "usage: $0 [type]"
fi

