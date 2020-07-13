require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  test 'returns a 200' do
    get '/_healthcheck'
    assert_equal 200, status
  end
end

