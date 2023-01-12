# dataDirCleaner

### replaceChars.sh
is to walk through the directory and removes sepecial characters like ...

Spaces
|
Quotes
DoubleQuotes
<
>
?
{
}
[
]

... and replaces them with a dot like "the scene" does in filenames. If you like your spaces in filenames don't run that script.

#### Example:
Original: /home/marc/why shouldn't you name files very bad | ugly like "this" file?
Changed:  /home/marc/why.shouldn.t.you.name.files.very.bad...ugly.like."this".file.


### index.sh
is to index a harddisk, it will make a file that lists all files in the root where you exec the command and add a sha1sum to identify duplicated files


### copyMissing.py dirlistA.txt dirlistB targetDir (Python3)
is to copy the missing files from Directory or Disk A to Directory or Disk B.

#### Example:
python3 copyMissing.py /home/marc/diskA/dirMerger.txt /home/marc/diskB/dirMerger.txt /home/marc/diskA/newFiles/
(the Directory /home/marc/diskA/newFiles/ must exist)
