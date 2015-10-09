require 'test_helper'

class TemplateControllerTest < ActionController::TestCase
  test "should get templates" do
    get :templates
    assert_response :success
  end

end
