# frozen_string_literal: true

require "test_helper"

class UserTest < ActiveSupport::TestCase
  def resource
    @resource ||= build(:user)
  end

  test "must be a vaild resource" do
    assert resource.valid?
  end
end
