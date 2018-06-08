require 'spec_helper'

describe 'Tesing exchange rates' do

  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it "should be a hash" do
    expect(@exchange_rates.get_hash).to be_kind_of(Hash)
  end

  it "should contain the base as EUR" do
    # expect(@exchange_rates.json_file.first[1]).to eq "EUR"
    expect(@exchange_rates.get_EUR).to eq "EUR"
  end

  it "should have a date string" do
    expect(@exchange_rates.get_date).to be_kind_of(String)
  end

  it "should have 31 rates" do
    expect(@exchange_rates.count_rates).to eq 31
  end

  it "should have all rates as floats" do
    # @exchange_rates.json_file['rates'].each do |key, value|
    #     expect(value).to be_kind_of(Float)
    # end
    expect(@exchange_rates.find_floats).to all(be_a(Float))
  end

  it "should have a rate that exists and is larger than zero" do
    expect(@exchange_rates.find_floats).to all(be > 0)
    expect(@exchange_rates.find_floats).to all(be_truthy)
  end

end
