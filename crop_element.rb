require 'capybara'
require 'selenium-webdriver'
require 'chunky_png'

URL = ARGV[0]
SELECTOR = ARGV[1]

# chromedriver
Capybara.register_driver :selenium do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => {
      "args" => [ "--window-size=1600,1300"]
    }
    )
  Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
end

# new browser instance
session = Capybara::Session.new(:selenium)

# navigate to url
session.visit URL

# find element by css_selector and scroll
element= session.driver.browser.find_element(:css, SELECTOR)
element.location_once_scrolled_into_view

# get location and size
location = element.location
size = element.size

# save screenshot
session.save_screenshot('original_image.png')

# read original screenshot
image = ChunkyPNG::Image.from_file('original_image.png')

# get positions X, Y, width and height
left = location['x'] * 2
top = location['y'] * 2
right = size['width'] * 2
bottom = size['height'] * 2

# crop original image
image.crop!(left , top, right, bottom)
image.save('croped.png')
