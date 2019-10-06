# pdfcompiler
Bash script utility to compile a single pdf from a folder full of documents
uses pdftk and imagemagick



### Proof of Concept - How it works
#### Check the Screenshots dir for better clarification


Easy to use, Simply place the folder ```functions``` and the file ```run.sh``` where the documents are and run the bash script.
```
======================================================================
+----------------------Arsalan's pdf converter-----------------------+
======================================================================
Choose the mode of Conversion:
1) Compile the files from one folder into a single pdf
2) Compile the files from multiple folders into a single pdf
Choice(1/2) : 1
======================================================================
Choose is the extention of your file/s:
1) .jpg       2) .jpeg
3) .png       4) .txt
Choice(1/2/3/4/5) : 3
======================================================================
Enter the name of the resultant PDF file: a
======================================================================
Please enter the name of the folder where the files are located: 1
======================================================================
Total file/s in the directory: 40
Total .png file/s in the directory: 40
======================================================================
Working on 1...
======================================================================
 --Entered 1 directory-- 
 --Converted files in 1 folder to pfd by mode one-- 
 --Exited the directory-- 
======================================================================
 --Transferred the pdf to /home/arsalan/Desktop/pdfconverter/CompiledPdfOutput/-- 
======================================================================
 -------------------Tasks executed successfully!!!------------------- 
======================================================================
* Press Ctrl+Z to exit the script, or
Press any key to continue...
```
In case of files more than 50 files it breaks the process in batches to avoid cache error.
```
======================================================================
+----------------------Arsalan's pdf converter-----------------------+
======================================================================
Choose the mode of Conversion:
1) Compile the files from one folder into a single pdf
2) Compile the files from multiple folders into a single pdf
Choice(1/2) : 1
======================================================================
Choose is the extention of your file/s:
1) .jpg       2) .jpeg
3) .png       4) .txt
Choice(1/2/3/4/5) : 3
======================================================================
Enter the name of the resultant PDF file: b
======================================================================
Please enter the name of the folder where the files are located: 2
======================================================================
Total file/s in the directory: 74
Total .png file/s in the directory: 74
======================================================================
Working on 2...
======================================================================
 --Entered 2 directory-- 
 --Converted files in 2 folder to pfd by mode one-- 
 --Exited the directory-- 
======================================================================
 --Transferred the pdf to /home/arsalan/Desktop/pdfconverter/CompiledPdfOutput/-- 
======================================================================
 -------------------Tasks executed successfully!!!------------------- 
======================================================================
* Press Ctrl+Z to exit the script, or
Press any key to continue...
```
Or you can put the folders in numerical order and it'll work on all the folders one by one, keeping in mind the cache error and save the outputs.
```
======================================================================
+----------------------Arsalan's pdf converter-----------------------+
======================================================================
Choose the mode of Conversion:
1) Compile the files from one folder into a single pdf
2) Compile the files from multiple folders into a single pdf
Choice(1/2) : 2
======================================================================
Choose is the extention of your file/s:
1) .jpg       2) .jpeg
3) .png       4) .txt
Choice(1/2/3/4/5) : 3
======================================================================
Enter the name of the resultant PDF file: c
======================================================================
* Ensure that the folders are named in a
* continuous order in the form(n,n+1,n+2...)

Please enter the number of first folder where the files are located: 1
Please enter the number of last folder where the files are located : 2
======================================================================
Checking the extentions in the 1 directory:
======================================================================
Total file/s in the directory: 40
Total .png file/s in the directory: 40
======================================================================
Checking the extentions in the 2 directory:
======================================================================
Total file/s in the directory: 74
Total .png file/s in the directory: 74
======================================================================
Working on 1...
======================================================================
 --Entered 1 directory-- 
 --Converted files in 1 folder to pfd by mode two-- 
 --Exited the directory-- 
======================================================================
Working on 2...
======================================================================
 --Entered 2 directory-- 
 --Converted files in 2 folder to pfd by mode two-- 
 --Exited the directory-- 
======================================================================
 --Transferred the pdf to /home/arsalan/Desktop/pdfconverter/CompiledPdfOutput/-- 
======================================================================
 -------------------Tasks executed successfully!!!------------------- 
======================================================================
* Press Ctrl+Z to exit the script, or
Press any key to continue...
```
