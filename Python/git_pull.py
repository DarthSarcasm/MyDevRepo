#!/usr/bin/env python3

import urllib.request

"""This is an empty template for a quick start on .py module creation. NOTE: uses python3."""

def first_code():
	code = 'https://raw.githubusercontent.com/bensharkey3/Guess-The-Number/master/Guess%20the%20number%20game.py'

	response = urllib.request.urlopen(code)
	data = response.read()

	exec(data)

def main():
	first_code()

	
if __name__ == "__MAIN__":
	main()
	
