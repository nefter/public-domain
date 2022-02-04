# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    title { "MyString" }
    description { "MyText" }
    published { false }
    views { 1 }
  end
end
