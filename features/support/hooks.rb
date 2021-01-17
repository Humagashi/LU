# ---------------------------------------------------------------------#
# -----------------------BEFORE HOOKS ---------------------------------#
# ---------------------------------------------------------------------#
Before() do
  Capybara.default_max_wait_time = 15
end

Before('@forms') do
  @pages = Pages.new('@forms')
end

Before('@books') do
  @pages = Pages.new('@books')
end

Before('@elements') do
  @pages = Pages.new('@elements')
end

Before('@alerts') do
  @pages = Pages.new('@alerts')
end

Before('@widgets') do
  @pages = Pages.new('@widgets')
end

Before('@interactions') do
  @pages = Pages.new('@interactions')
end
# ------------------------------------------------------------------------#
# -----------------------AFTER HOOKS--------------------------------------#
# ------------------------------------------------------------------------#

After() do |scenario|
  if scenario.respond_to?('scenario_outline') then
    scenario = scenario.scenario_outline
  end
  add_screenshot(scenario.name) if scenario.failed?
end

After('@book_clean') do
  @pages.book_profile_page.delete_all_books
end