# web elements and functions for page
class ProgressBarPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @start_and_reset_button = Element.new(:css, '#startStopButton')
    @progress_bar = Element.new(:css, '#progressBar')
    @reset_button = Element.new(:css, '#resetButton')
  end

  def visit
    Capybara.visit('progress-bar')
  end

  def complete_progress
    @start_and_reset_button.click
    expect(@start_and_reset_button.text).to eq 'Stop'
    expect(page).to have_css(@reset_button.path)
  end

end
