# backupMerger

### replaceChars.sh
is to walk through the directory and removes sepecial characters like ...

* Spaces
* |
* Quotes
* DoubleQuotes
* < >
* ?
* (
* )
* {
* }
* [
* ]
* :
* ;
 

... and replaces them with a dot like "the scene" does in filenames. If you like your spaces in filenames don't run that script.

#### Example:
* Original: /home/marc/why shouldn't you name files very bad | ugly like "this" file?
* Changed:  /home/marc/why.shouldn.t.you.name.files.very.bad...ugly.like..this..file.


### index.sh /home/marc/diskA
is to index a harddisk, it will make a file that lists all files in the root where you exec the command and add a sha1sum to identify duplicated files
creates the file backupMerger.<timestamp>

### copyMissing.py dirlistA.txt dirlistB targetDir (Python3)
is to copy the missing files from Directory or Disk A to Directory or Disk B.

#### Example:
python3 copyMissing.py /home/marc/diskA/dirMerger.txt /home/marc/diskB/dirMerger.txt /home/marc/diskA/newFiles/
(the Directory /home/marc/diskA/newFiles/ must exist)

if script sees that the file /home/marc/diskB/tagebuch/1999/Januar/19990123.txt only exists on DiskB it will copy the file to /home/marc/diskA/newFiles/diskB/tagebuch/1999/Januar/19990123.txt. Since we give the dirMerger.txt file as parameeter and defined that the file is in the root of the specific directory we now the the names, and we then can do that also for /home/marc/diskC and if we do a rdfind [1] to remove the duplicated files in /home/marc/diskA/newFiles we can circumvent new duplicated files.


# TODO
* [1] should take alwas the file with the oldest date since some timestamps were modified since data collection since about 1986
