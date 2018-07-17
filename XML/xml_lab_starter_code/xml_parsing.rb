require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def get_prices
    price_array = []
    @menu.xpath("//price").each do |price|
      price_array << price.text.gsub("£", "").to_f
    end
    price_array
  end

  def get_food
    @menu.xpath("/food")
  end

  def get_calories(food_item)
    food_item.search("name").text.to_i
  end

  def food_name(food_item)
    food_item.search("name").text
  end

  def get_waffle
   answer = []
   get_food.each do |item|
     if item.children[1].text.include?('Waffle')
       answer << item.children[5].text
     end
   end
   answer
 end

end

# help = GuiseppesMenu.new
# puts help.get_prices
# puts help.get_food
# puts help.get_calories
