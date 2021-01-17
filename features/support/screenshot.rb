#create a screenshot if a test case failed
def add_screenshot(name)
  file_path = "screenshots/#{name}.png"
  Capybara.page.driver.browser.save_screenshot(file_path)
  image = open(file_path, 'rb', &:read)
  attach(image, 'image/png;base64')
end