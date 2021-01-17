# web elements and functions for page
class CheckBoxPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @expand_all = Element.new(:css, "[title='Expand all']")
    @collapse_all = Element.new(:css, "[title='Collapse all']")
    @result = Element.new(:css, '#result')
    # files
    @notes = Element.new(:css, "[for='tree-node-notes']")
    @commands = Element.new(:css, "[for='tree-node-commands']")
    @react = Element.new(:css, "[for='tree-node-react']")
    @angular = Element.new(:css, "[for='tree-node-angular']")
    @veu = Element.new(:css, "[for='tree-node-veu']")
    @public = Element.new(:css, "[for='tree-node-public']")
    @private = Element.new(:css, "[for='tree-node-notes']")
    @classified = Element.new(:css, "[for='tree-node-classified']")
    @general = Element.new(:css, "[for='tree-node-general']")
    @word_file = Element.new(:css, "[for='tree-node-wordFile']")
    @excel_file = Element.new(:css, "[for='tree-node-excelFile']")
    # folders
    @home = Element.new(:css, "[for='tree-node-home']")
    @desktop = Element.new(:css, "[for='tree-node-desktop']")
    @documents = Element.new(:css, "[for='tree-node-documents']")
    @workspace = Element.new(:css, "[for='tree-node-workspace']")
    @office = Element.new(:css, "[for='tree-node-office']")
    @downloads = Element.new(:css, "[for='tree-node-downloads']")

  end

  def visit
    Capybara.visit('checkbox')
  end

  def select_folder(file)
    @expand_all.click
    case file
    when 'office'
      @office.click
    when 'downloads'
      @downloads.click
    when 'workspace'
      @workspace.click
    when 'documents'
      @documents.click
    when 'desktop'
      @desktop.click
    when 'home'
      @home.click
    end
  end

  def check_box_actual_results
    @result.text
  end
end
