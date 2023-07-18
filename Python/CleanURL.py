import re
import string
import console
import urllib
import sys
import clipboard
import webbrowser

console.clear()

# Count arguments passed to script, if less than 2 run regex against clipboard

numArgs = len(sys.argv)
if numArgs == 2:
        redirect = sys.argv[1]
elif numArgs < 2:
        redirect = clipboard.get()
# Provided by Peter Hansen on StackOverflow:# http://stackoverflow.com/questions/1986059/grubers-url-regular-expression-in-python/1986151#1986151
pat = "r'\b(([\w-]+://?|www[.])[^\s()"

def url_code():
    console.clear()

    # Count arguments passed to script, if less than 2 run regex against clipboard

    numArgs = len(sys.argv)
    if numArgs == 2:
        redirect = sys.argv[1]
    elif numArgs < 2:
        redirect = clipboard.get()
    # Provided by Peter Hansen on StackOverflow:# http://stackoverflow.com/questions/1986059/grubers-url-regular-expression-in-python/1986151#1986151
    pat = "r'\b(([\w-]+://?|www[.])[^\s()"

def main():
    url_code()
        
if __name__ == "__MAIN__":
    main()
