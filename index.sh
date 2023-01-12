# Color Definitions
#==============================================================================
red="\e[91m"
cyan="\e[31m"
blue="\e[34m"
default="\e[39m"
#==============================================================================


# Test if user has given enough parameters
#==============================================================================
if  [ "$1" = "" ]
then
echo -e "
Usage:
------
${blue} ${0} ${red} direcotry${default} "
echo
echo " arguments ---------------->  ${@}     "
echo " \$1 ----------------------->  $1       "
echo " \$2 ----------------------->  $2       "
echo " path to script ----------->  ${0}     "
echo " parent path -------------->  ${0%/*}  "
echo " script name -------------->  ${0##*/} "
echo
exit 0
fi
#==============================================================================

cd $1

#find . -maxdepth 1 -type f -exec sha1sum '{}' -z \; -printf "🐧%p🐧%TY%Tm%Td🐧%TH%TM%TS \n"
find . -maxdepth 1 -type f -exec ./sha1.sh '{}' \; -printf "\t%p\t%TY%Tm%Td%TH%TM%TS\t%s \n"

