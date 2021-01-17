# Initializes all page objects]
# when called initialize for a test case only the needed pages objects are called
module Pagemodule
  attr_accessor :navigation_side, :landing_page, :form_page,
                :login_book_page, :register_book_page, :text_box_page,
                :radio_button_page, :buttons_page, :check_box_page,
                :upload_and_download_page, :browser_windows_page,
                :alerts_page, :links_page, :dynamic_properties_page,
                :web_tables_page, :modal_dialogs_page, :book_profile_page,
                :date_picker_page, :tool_tips_page, :book_store_page,
                :select_menu_page, :progress_bar_page, :slider_page,
                :broken_links_page

  def initialize_forms
    @form_page = FormPage.new
  end

  def initialize_book_store
    @login_book_page = BookLoginPage.new
    @register_book_page = BookRegisterPage.new
    @book_profile_page = BookProfilePage.new
    @book_store_page = BookStorePage.new
  end

  def initialize_elements
    @text_box_page = TextBoxPage.new
    @check_box_page = CheckBoxPage.new
    @radio_button_page = RadioButtonPage.new
    @web_tables_page = WebTablesPage.new
    @buttons_page = ButtonsPage.new
    @links_page = LinksPage.new
    @broken_links_page = BrokenLinksPage.new
    @upload_and_download_page = UploadAndDownloadPage.new
    @dynamic_properties_page = DynamicPropertiesPage.new
  end

  def initialize_alerts
    @browser_windows_page = BrowserWindowsPage.new
    @alerts_page = AlertsPage.new
    @modal_dialogs_page = ModalDialogsPage.new
  end

  def initialize_widgets
    @date_picker_page = DatePickerPage.new
    @tool_tips_page = ToolTipsPage.new
    @select_menu_page = SelectMenuPage.new
    @progress_bar_page = ProgressBarPage.new
    @slider_page = SliderPage.new
  end

  def initialize_interactions

  end
end
