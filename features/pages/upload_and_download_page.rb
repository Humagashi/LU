# web elements and functions for page
class UploadAndDownloadPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @download_btn = Element.new(:css, '#downloadButton')
    @upload_btn = Element.new(:css, '#uploadFile')
    @upload_path = Element.new(:css, '#uploadedFilePath')
  end

  def visit
    Capybara.visit('upload-download')
  end

  def upload_image
    page.attach_file('C:\Users\Markuss\Desktop\testing\FULL MAIN\screenshots\Slider.png') do
        find(@upload_btn.path).click
      end
  end
end
