
Before do
  page.current_window.resize_to(1280, 800)
end

After do |scenario|
  name = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, ' ')
  name = name.delete(' ')

  screenshot = "logs/screenshots/#{name.downcase!}.png"
  sleep 1
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'SCREENSHOT')
end
