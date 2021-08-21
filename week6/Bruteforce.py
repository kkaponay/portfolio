#!/usr/bin/python3

# Week 6, Bruteforce.py

import random
import hashlib

# Hidden password hash (Password is blah)

passwordHash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"

# Define variables - characters, numbers, length

your_list = '0123456789abcdefghijklmnopqrstuvwxyz'
character_list = list(your_list)

guess_password=random.choices(character_list,k=4)

wordlistHash=''

def listToString(s):
	str1 = ""
	for ele in s:
		str1 += ele
	return str1

# While loop to generate password match until match

while passwordHash != wordlistHash:
	guess_password=random.choices(character_list,k=4)
	print(">>>>>"+str(guess_password)+"<<<<<")
	print(listToString(guess_password))
	word=listToString(guess_password)
	word = word.rstrip()
	wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

# Print matched word (Blah is the answer)

	if passwordHash == wordlistHash:
		print(f"your password is: {word}")
		break

# End Script	