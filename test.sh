

#!/bin/bash 
# This is my first shell script

# Variable assignments
a=10
b=20
COURSE="Linux"
Action="Sleep"

# Printing variable values with echo
echo "Value of a and b are: $a and $b"   # Prints values of a and b
echo "$COURSE"                           # Prints the COURSE variable

# Demonstrating variable usage with text
echo  "{$Action}-ing"                    # Prints {Sleep}-ing (braces don’t expand var here)
echo  "$Actioning" "Doesnt echo nonavailable var Actioning, but can be declared"
# ↑ $Actioning is NOT defined, so prints empty (undefined var treated as blank)

# Displaying current date in different ways
echo  "Today date is `date +%D`"         # Backticks method for command substitution
echo "Today date is: $(date +%D)"        # Modern preferred syntax for command substitution

# Counting files in current working directory
echo  "#of file in wrkDir using pipeSym: $(ls | wc -l)"  
# ↑ Uses ls piped to wc -l → counts files
echo  "#of file in wrkDir using pipeSym: `$(ls | wc -l)`" 
# ↑ Incorrect: backticks around $(...) makes it fail / redundant

# Counting lines in this script file (test.sh)
echo "#of Lines in test.sh `cat test.sh | wc -l`"   # Using cat piped to wc
echo "#of Lines in test.sh $(wc -l test.sh)"        # Direct wc on file (better approach)

# Printing current working directory
echo "`pwd`"      # Using backticks
echo "$(pwd)"     # Using modern syntax


#############################################
#   Quick Nano Editor Shortcuts (Cheatsheet) #
#############################################
# Ctrl + O   → Write Out (save file)
# Ctrl + X   → Exit nano
# Ctrl + K   → Cut line (or selected text)
# Ctrl + U   → Uncut (paste) text
# Ctrl + ^   → Start marking text (for selection)
# Ctrl + W   → Search
# Ctrl + C   → Show cursor position (line/column)
# Ctrl + G   → Help
# M →  ALT, rest ctrl
#############################################
