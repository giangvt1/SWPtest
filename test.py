from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager

# Set up the WebDriver
driver = webdriver.Chrome()

# Navigate to the Amazon website
driver.get("https://www.amazon.com")

