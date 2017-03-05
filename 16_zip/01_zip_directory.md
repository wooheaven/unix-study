# zip directory
```{bash}
$ tree parentDirectory/
parentDirectory/
├── subDirectory1
│   └── file1.txt
└── subDirectory2
    └── file2.txt

$ zip -r parent.zip parentDirectory/
  adding: parentDirectory/ (stored 0%)
  adding: parentDirectory/subDirectory1/ (stored 0%)
  adding: parentDirectory/subDirectory1/file1.txt (stored 0%)
  adding: parentDirectory/subDirectory2/ (stored 0%)
  adding: parentDirectory/subDirectory2/file2.txt (stored 0%)

$ rm -rf parentDirectory/

$ unzip parent.zip 
Archive:  parent.zip
  creating: parentDirectory/
  creating: parentDirectory/subDirectory1/
extracting: parentDirectory/subDirectory1/file1.txt  
  creating: parentDirectory/subDirectory2/
extracting: parentDirectory/subDirectory2/file2.txt  

$ tree parentDirectory/
parentDirectory/
├── subDirectory1
│   └── file1.txt
└── subDirectory2
└── file2.txt
```
