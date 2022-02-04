# frozen_string_literal: true

FactoryBot.define do
  factory :collection do
    name { "MyString" }
    status { 1 }
    user { nil }
  end
end
