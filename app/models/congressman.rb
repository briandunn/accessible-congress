class Congressman
  SUNLIGHT_KEY='0a1cd7988fbc433f8cbf08d20c2e7bf5'

  def self.find(zip:)
    JSON.parse(Net::HTTP.get(URI("https://congress.api.sunlightfoundation.com/legislators/locate?zip=#{zip}&apikey=#{SUNLIGHT_KEY}&chamber=house")))["results"].map(&method(:new))
  end

  def initialize(attributes={})
    @attributes = attributes
  end

  def name
    @attributes.values_at('first_name', 'last_name').join ' '
  end
end
