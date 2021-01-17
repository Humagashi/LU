
When(/^User completes the form with "(.*)" data$/) do |user|
  case user
  when 'form user'
    @pages.form_page.complete_form(Users.form_user)
    @pages.form_page.open_date(Users.form_user)
    @used_user = Users.form_user
  when 'main user'
    @pages.form_page.complete_form(Users.main_user)
    @pages.form_page.open_date(Users.main_user)
    @used_user = Users.main_user
  end
  @pages.form_page.submit_form

end


Then(/^User inspects form results$/) do
  @pages.form_page.inspect_results(@used_user)
end
