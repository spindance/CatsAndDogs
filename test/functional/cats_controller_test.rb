require 'test_helper'

class CatsControllerTest < ActionController::TestCase
  def test_show_works
    get :show, :id => 1, :format => :json
    assert_equal "{\"name\":\"Garfield\"}", response.body
  end
end
