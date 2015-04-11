require "test_helper"

class GocodeServiceTest < ActiveSupport::TestCase

  test "#markets" do
    markets = GocodeService.markets
    binding.pry
    first_market = markets.first

    assert_equal "80211", first_market.zip_code
  end
end
