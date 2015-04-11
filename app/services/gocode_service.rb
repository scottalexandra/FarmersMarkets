require 'net/http'

class GocodeService

  def self.markets
    uri = URI('https://data.colorado.gov/resource/cv6r-wbp2.json')
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    request = Net::HTTP::Get.new(uri.request_uri)
    request.add_field('61aUiOjaK4B1EPbQe5sOhBn9j', ARGV[0])

    response  = http.request(request)
    response.code
    JSON.parse(response.body)
  end
end
