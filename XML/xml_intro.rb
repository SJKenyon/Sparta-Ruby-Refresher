# http://www.nokogiri.org/ << gem website

require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open("xml_menu.xml"))
  end

  def get_names
    # @menu.search("name")
    @menu.xpath("//name")
  end

  def get_calories
    @menu.xpath("/breakfast_menu/food/calories")
  end

end

help = GuiseppesMenu.new
# p help.menu
# puts help.menu
# puts help.get_names
# puts help.get_calories
