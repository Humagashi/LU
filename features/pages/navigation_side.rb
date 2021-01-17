# web elements and functions for page
class NavigationSide
  include Capybara::DSL
  def initialize
    @item0 = Element.new(:css, '.menu-list #item-0')
    @item1 = Element.new(:css, '.menu-list #item-1')
    @item2 = Element.new(:css, '.menu-list #item-2')
    @item3 = Element.new(:css, '.menu-list #item-3')
    @item4 = Element.new(:css, '.menu-list #item-4')
    @item5 = Element.new(:css, '.menu-list #item-5')
    @item6 = Element.new(:css, '.menu-list #item-6')
    @item7 = Element.new(:css, '.menu-list #item-7')
    @item8 = Element.new(:css, '.menu-list #item-8')
    @item9 = Element.new(:css, '.menu-list #item-9')
    @title = Element.new(:css, '.main-header')
  end

  def go_to(section)
    case section
    when 'text box', 'practice form', 'browser windows', 'accordian', 'sortable', 'login'
      @item0.click
    when 'check box', 'alerts', 'auto complete', 'selectable'
      @item1.click
    when 'radio button', 'frames', 'date picker', 'resizable', 'book store'
      @item2.click
    when 'web tables', 'nested frames', 'slider', 'droppable', 'profile'
      @item3.click
    when 'buttons', 'modal dialogs', 'progress bar', 'dragabble', 'book store api'
      @item4.click
    when 'links', 'tabs'
      @item5.click
    when 'broken links', 'tool tips'
      @item6.click
    when 'upload', 'menu'
      @item7.click
    when 'dynamic', 'select menu'
      @item8.click
    end
  end

  def title_text
    @title.text
  end
end
