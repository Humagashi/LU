#date picker steps
When(/^User selects date "(.*)"$/) do |date|
  @date = date
  page.execute_script("$('#datePickerMonthYearInput').val('#{@date}')")
end

Then(/^User checks if the date is correct$/) do
  @actual_date = @pages.date_picker_page.value_of_date
  expect(@actual_date).to eq(@date)
end

When(/^User selects date and time "(.*)"$/) do |datentime|
  @date_and_time = datentime
  page.execute_script("$('#dateAndTimePickerInput').val('#{@date_and_time}')")
end

Then(/^User checks if the date and time is correct$/) do
  @actual_date = @pages.date_picker_page.value_of_date_and_time
  expect(@actual_date).to eq(@date_and_time)
end

# tool tip steps
When(/^User hovers on tool tip button$/) do
  @pages.tool_tips_page.hover_button
end

Then(/^User hovers on tool tip input box$/) do
  @pages.tool_tips_page.hover_input
end

Then(/^User hovers on tool tip text$/) do
  @pages.tool_tips_page.hover_text
end

# select menu
Then(/^User select "(.*)" from "(.*)"$/) do |value, menu|
  case menu
  when 'Select Value'
    @pages.select_menu_page.select_value(value, menu)
  when 'Select One'
    @pages.select_menu_page.select_one(value, menu)
  when 'Old Style Select Menu'
    @pages.select_menu_page.select_old(value)
  when 'Multiselect drop down'
    @pages.select_menu_page.select_multi(value, menu)
  when 'Standart multi select'
    @pages.select_menu_page.select_cars(value, menu)
  end
end

# progress bar
When(/^User starts progress$/) do
  @pages.progress_bar_page.complete_progress
end


Then(/^User slides the value to "(.*)"$/) do |value|
  @pages.slider_page.drag
end