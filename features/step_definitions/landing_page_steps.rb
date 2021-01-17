# frozen_string_literal: true
Given(/^User is on the landing page$/) do
  @pages.landing_page.visit
end

When(/^User navigates to elements page$/) do
  @pages.landing_page.navigate_to_elements_section
end

When(/^User navigates to forms page$/) do
  @pages.landing_page.navigate_to_forms_section
end

When(/^User navigates to alerts page$/) do
  @pages.landing_page.navigate_to_alerts_section
end

When(/^User navigates to widgets page$/) do
  @pages.landing_page.navigate_to_widgets_section
end

When(/^User navigates to interactions page$/) do
  @pages.landing_page.navigate_to_interactions_section
end

When(/^User navigates to books page$/) do
  @pages.landing_page.navigate_to_books_section
end
