#!/bin/bash
# cat command to create a new file and parameters <<- EOM to add the following lines
# In this case we will create SeleniumScript.py file
# Line "from selenium import webdriver" to import required libraries in python 
# Line "driver=webdriver.Firefox()" to create a vaiable and initialize with a firefox webdriver with no parameters as required by Coderbyte
# Line "driver.get("https://coderbyte.com")" to navigate to the respective coderbyte url
# Line "driver.close()" to close the diver instance 
# EOM parameter to close the file SeleniumScript.py

cat > 'SeleniumScript.py' <<- EOM
from selenium import webdriver
driver=webdriver.Firefox()
driver.get("https://coderbyte.com")
driver.close()
EOM

# cat command to check the file content via terminal
cat SeleniumScript.py
# Finally command sha1sum to get the SHA-1 value requested
sha1sum SeleniumScript.py