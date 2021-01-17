# web elements and functions for page
class ModalDialogsPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @small_modal = Element.new(:css, '#showSmallModal')
    @large_modal = Element.new(:css, '#showLargeModal')
    @close_small_modal = Element.new(:css, '#closeSmallModal')
    @close_large_modal = Element.new(:css, '#closeLargeModal')
    @modal_title = Element.new(:css, '.modal-title.h4')
  end

  def visit
    Capybara.visit('modal-dialogs')
  end

  def open_small_modal
    @small_modal.click
    expect(@modal_title.text).to have_text 'Small Modal'
  end

  def close_small_modal
    @close_small_modal.click
    expect(page).not_to have_css(@modal_title.path)
  end

  def open_large_modal
    @large_modal.click
    expect(@modal_title.text).to have_text 'Large Modal'
  end

  def close_large_modal
    @close_large_modal.click
    expect(page).not_to have_css(@modal_title.path)
  end
end
