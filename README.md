# Uncommon Shell Script Bug: Handling Non-Numeric Input

This repository demonstrates a common yet subtle bug in shell scripting: improper handling of non-numeric input when performing arithmetic comparisons.

The script `bug.sh` attempts to find the largest number in a file named `numbers.txt`. However, it lacks error handling for non-numeric lines, leading to unexpected behavior or script failure.

The solution, `bugSolution.sh`, addresses this by adding input validation and error handling to gracefully manage lines that are not valid integers.

This example highlights the importance of robust error handling and input validation when working with external data in shell scripts.  Always anticipate unexpected inputs to prevent unexpected crashes or incorrect results.