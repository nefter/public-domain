# frozen_string_literal: true

class Item < ApplicationRecord
  has_one_attached :image
  validates :title, :description, :collection_id, presence: true
  belongs_to :user
end
