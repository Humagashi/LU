# web elements and functions for page
class AlertsPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  attr_accessor :prompt_alert_results, :confirm_alert_results

  def initialize
    @alert_btn = Element.new(:css, '#alertButton')
    @timer_alert_btn = Element.new(:css, '#timerAlertButton')
    @confirm_alert_btn = Element.new(:css, '#confirmButton')
    @confirm_alert_results = Element.new(:css, '#confirmResult')
    @prompt_alert_btn = Element.new(:css, '#promtButton')
    @prompt_alert_results = Element.new(:css, '#promptResult')
  end

  def visit
    Capybara.visit('alerts')
  end

  def basic_alert
    @alert_btn.click
  end

  def alert_timer
    @timer_alert_btn.click
  end

  def confirm_alert
    @confirm_alert_btn.click
  end

  def prompt_alert
    @prompt_alert_btn.click
  end
end
