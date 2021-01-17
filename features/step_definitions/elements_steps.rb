# frozen_string_literal: true
# textbox section steps
When(/^User completes the text box$/) do
  @pages.text_box_page.fill_text
  @pages.text_box_page.submit_text
end

Then(/^User checks if text box output is correct$/) do
  @pages.text_box_page.check_output
end
# radio buttons steps
When(/^User clicks on "(.*)" radio button$/) do |feedback|
  case feedback
  when 'Yes'
    @pages.radio_button_page.click_yes
  when 'Impressive'
    @pages.radio_button_page.click_impressive
  when 'No'
    @pages.radio_button_page.click_no
  end
end

# buttons page steps
When(/^User clicks "(.*)" button$/) do |button_type|
  @type = button_type
  case @type
  when 'double click'
    @pages.buttons_page.double_click_me
  when 'right click'
    @pages.buttons_page.right_click_me
  when 'click me'
    @pages.buttons_page.dynamic_click
  end
end

Then(/^User checks if button message is correct$/) do
  case @type
  when 'double click'
    @actual_text = @pages.buttons_page.text_of_double_click
    expect(@actual_text).to eq('You have done a double click')
  when 'right click'
    @actual_text = @pages.buttons_page.text_of_right_click
    expect(@actual_text).to eq('You have done a right click')
  when 'click me'
    @actual_text = @pages.buttons_page.text_of_click
    expect(@actual_text).to eq('You have done a dynamic click')
  end
end

#check box
When(/^User user selects "(.*)"$/) do |file|
  case file
  when 'workspace', 'office', 'downloads', 'desktop'
    @pages.check_box_page.select_folder(file)
    expect(@pages.check_box_page.check_box_actual_results).to have_text file
  when 'documents'
    @pages.check_box_page.select_folder(file)
    expect(@pages.check_box_page.check_box_actual_results).to have_text file
    expect(@pages.check_box_page.check_box_actual_results).to have_text 'workspace'
    expect(@pages.check_box_page.check_box_actual_results).to have_text 'office'
  when 'home'
    @pages.check_box_page.select_folder(file)
    expect(@pages.check_box_page.check_box_actual_results).to have_text file
    expect(@pages.check_box_page.check_box_actual_results).to have_text 'workspace'
    expect(@pages.check_box_page.check_box_actual_results).to have_text 'office'
    expect(@pages.check_box_page.check_box_actual_results).to have_text 'desktop'
    expect(@pages.check_box_page.check_box_actual_results).to have_text 'documents'
    expect(@pages.check_box_page.check_box_actual_results).to have_text 'downloads'
  end
end

# web tables
Then(/^User checks selected results$/) do

end

When(/^User adds new client$/) do
  @pages.web_tables_page.add_user
end

Then(/^User deletes client "(.*)"$/) do |name|
  @pages.web_tables_page.delete_user(name)
end

Then(/^User edits the client$/) do
  @pages.web_tables_page.edit_user
end

Then(/^User checks if client "(.*)" is "(.*)"$/) do |name, status|
  @pages.web_tables_page.user_in_table(name, status)
end

# broken images
When(/^User inspects images$/) do
  @pages.broken_links_page.test_image
end

When(/^User uploads a file$/) do
  @pages.upload_and_download_page.upload_image
end
