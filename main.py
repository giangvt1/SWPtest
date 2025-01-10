from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager

# Set up Chrome options
options = Options()
options.add_experimental_option("detach", True)

# Initialize the WebDriver
driver = webdriver.Chrome()

# Navigate to the website
driver.get("https://www.neuraline.com/")
driver.maximize_window()

# Find all links on the page
links = driver.find_elements("xpath", "//a[@href]")

# Print the href attributes of the links
for link in links:
    print(link.get_attribute("href"))
