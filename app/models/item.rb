# frozen_string_literal: true

class Item < ApplicationRecord
  validates :title, :description, :collection_id, presence: true
  belongs_to :user
  has_one_attached :image
end
