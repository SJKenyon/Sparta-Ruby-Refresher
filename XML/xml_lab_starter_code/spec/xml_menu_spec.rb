require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = GuiseppesMenu.new
  end

  it "no price should be more than £10" do
    expect(@xml_menu.get_prices).to all(be < 10)
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    @xml_menu.get_food.each do |item|
      if @xml_menu.food_name(item) != "Full Breakfast"
        expect(@xml_menu.get_calories(item)).to be <= 1000
      else
        expect(@xml_menu.get_calories(item)).to be > 1000
      end
    end
  end

  it "should have all waffle dishes stating you get two waffles" do
    @xml_menu.get_waffle.each do |waffle|
      expect(waffle.include?("Two")).to be TRUE
      expect(waffle.include?('waffles') || waffle.include?('Waffle')).to be TRUE
    end
  end

end
