# frozen_string_literal: true

require "test_helper"

class LandingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get :index
    assert_response :success
  end
end
