# name age
# alice 21
# ryan 30
# ------
# name alice ryan
# age 21 30 

# Read from the file file.txt and print its transposed content to stdout.

awk '
{ 
    for (i = 1; i <= NF; i++)  {
        a[NR, i] = $i
    }
}

END {    
    for (j = 1; j <= NF; j++) {
        str = a[1, j]      # avoid the blank before str in case of str = '' 
        for (i = 2; i <= NR; i++){
            str = str " " a[i, j]     
        }
        print str
    }
}' file.txt




