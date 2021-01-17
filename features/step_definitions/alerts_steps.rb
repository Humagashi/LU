# modal section steps
When(/^User opens small modal$/) do
  @pages.modal_dialogs_page.open_small_modal
end

Then(/^User closes small modal$/) do
  @pages.modal_dialogs_page.close_small_modal
end

When(/^User opens large modal$/) do
  @pages.modal_dialogs_page.open_large_modal
end

Then(/^User closes large modal$/) do
  @pages.modal_dialogs_page.close_large_modal
end

# alerts section steps

When(/^User clicks on "(.*)"$/) do |alert_type|
  case alert_type
  when 'basic alert'
    @pages.alerts_page.basic_alert
  when 'timer alert'
    @pages.alerts_page.alert_timer
    sleep 5
  when 'confirm alert'
    @pages.alerts_page.confirm_alert
  when 'prompt alert'
    @pages.alerts_page.prompt_alert
  end
end

Then(/^User click ok on alert$/) do
  page.driver.browser.switch_to.alert.accept
end

Then(/^User confirms alert$/) do
  page.driver.browser.switch_to.alert.accept
  @button_status = 'accept'
  @result_text = @pages.alerts_page.confirm_alert_results.text
end

Then(/^User cancels alert$/) do
  page.driver.browser.switch_to.alert.dismiss
  @button_status = 'cancel'
  @result_text = @pages.alerts_page.confirm_alert_results.text
end

And(/^User enters name in alert$/) do
  user = Users.main_user
  page.driver.browser.switch_to.alert.send_keys(user.firstname)
  @button_status = 'name'
  page.driver.browser.switch_to.alert.accept
  @result_text = @pages.alerts_page.prompt_alert_results.text
end

Then(/^User inspects given alert result message$/) do
  user = Users.main_user
  case @button_status
  when 'accept'
    expect(@result_text).to have_text 'Ok'
  when 'cancel'
    expect(@result_text).to have_text 'Cancel'
  when 'name'
    expect(@result_text).to have_text (user.firstname)
  end
end

# new windows steps

When(/^User opens new tab$/) do
  @pages.browser_windows_page.open_new_tab
end

When(/^User opens new window$/) do
  @pages.browser_windows_page.open_new_window
end

When(/^User opens new window message tab$/) do
  @pages.browser_windows_page.open_new_window_message
end

Then(/^User sees new tab$/) do
  windowhandles = page.driver.browser.window_handles
  page.driver.browser.switch_to.window windowhandles[1]
  @new_page_element = Element.new(:css, '#sampleHeading')
  expect(@new_page_element).to have_text 'This is a sample page'
end

Then(/^User sees new windows message tab$/) do
  ##todo bug fix
  #windowhandles = page.driver.browser.window_handles
  #page.driver.browser.switch_to.window windowhandles[1]
  #@new_page_element = Element.new(:css, 'body')
  #expect(@new_page_element.text).to have_text 'Knowledge increases by sharing'
end