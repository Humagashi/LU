# frozen_string_literal: true
When(/^User creates a new user$/) do
  @pages.login_book_page.create_new_user
  @pages.register_book_page.register_user('first_name', 'last_name', 'user_name', 'password')
end

And(/^User logs in$/) do
  user = Users.book_user
  @pages.login_book_page.login(user.username, user.password)
  @pages.book_profile_page.check_logged_in_user(user.username)
end


And(/^User adds book "(.*)" to profile$/) do |book|
  @pages.book_store_page.add_book(book)
  @pages.book_store_page.go_back_to_store
end

And(/^User checks if "(.*)" is "(.*)"$/) do |name, status|
  @pages.book_profile_page.check_book(name, status)
end

And(/^User inspects "(.*)" image$/) do |name|
  @pages.book_profile_page.check_book_image(name)
end

And(/^User searches for book "(.*)"$/) do |name|
  @pages.book_store_page.search_for_book(name)
end
