require 'json'

class ParseJson

  # Accessor gives you the ability to read and write
  # attr_accessor :json_file
  # Reader gives you the ability to only read
  attr_reader :json_file

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_hash
    @json_file
  end

  def get_EUR
    @json_file['base']
  end

  def get_date
    @json_file['date']
  end

  def count_rates
    @json_file['rates'].length
  end

  def find_floats
    @json_file['rates'].values
  end

end

example = ParseJson.new('json_exchange_rates.json')
# p example.json_file
# p example.get_hash
# p example.get_EUR
# p example.get_date
# p example.count_rates
# p example.find_floats
