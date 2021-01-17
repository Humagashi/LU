# given locations
Then(/^User is in book login page/) do
  @pages.login_book_page.visit
end

Then(/^User is in forms page/) do
  @pages.form_page.visit
end

When(/^User is in elements radio button page$/) do
  @pages.radio_button_page.visit
end

Given(/^User is in elements button page$/) do
  @pages.buttons_page.visit
end

Given(/^User is in elements text box page$/) do
  @pages.text_box_page.visit
end

Given(/^User is in modal dialogs$/) do
  @pages.modal_dialogs_page.visit
end

Given(/^User is in alerts$/) do
  @pages.alerts_page.visit
end

Given(/^User is in browser windows$/) do
  @pages.browser_windows_page.visit
end
# elements navigation
Then(/^User navigates to elements "(.*)" section/) do |page|
  case page
  when 'text box'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Text Box')
  when 'check box'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Check Box')
  when 'radio button'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Radio Button')
  when 'web tables'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Web Tables')
  when 'buttons'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Buttons')
  when 'links'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Links')
  when 'broken links'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Broken Links - Images')
  when 'upload'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Upload and Download')
  when 'dynamic'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Dynamic Properties')
  end
end

#forms navigation
Then(/^User navigates to forms section/) do
  @pages.navigation_side.go_to('practice form')
  expect(@pages.navigation_side.title_text).to eq('Practice Form')
end

#alerts navigation
Then(/^User navigates to alerts "(.*)" section/) do |page|
  case page
  when 'browser windows'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Browser Windows')
  when 'alerts'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Alerts')
  when 'frames'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Frames')
  when 'nested frames'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Nested Frames')
  when 'modal dialogs'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Modal Dialogs')
  end
end

#book navigation
Then(/^User navigates to books "(.*)" section/) do |page|
  case page
  when 'login'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Login')
  when 'book store'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Book Store')
  when 'profile'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Profile')
  when 'book store api'
    @pages.navigation_side.go_to(page)
    @api_book_title =  Element.new(:css, '.information-container .title')
    expect(@api_book_title.text).to have_text('Book Store API')
  end
end

#widget navigation
Then(/^User navigates to widget "(.*)" section$/) do |page|
  case page
  when 'accordian'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Accordian')
  when 'auto complete'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Auto Complete')
  when 'date picker'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Date Picker')
  when 'slider'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Slider')
  when 'progress bar'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Progress Bar')
  when 'tabs'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Tabs')
  when 'tool tips'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Tool Tips')
  when 'menu'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Menu')
  when 'select menu'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Select Menu')
  end
end

# interactions page
Then(/^User navigates to interactions "(.*)" section$/) do |page|
  case page
  when 'sortable'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Sortable')
  when 'selectable'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Selectable')
  when 'resizable'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Resizable')
  when 'droppable'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Droppable')
  when 'dragabble'
    @pages.navigation_side.go_to(page)
    expect(@pages.navigation_side.title_text).to eq('Dragabble')
  end
end