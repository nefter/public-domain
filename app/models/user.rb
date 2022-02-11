# frozen_string_literal: true

class User < ApplicationRecord
  # before_validation :set_user_id, on: :create
  validates :email, :password, :password_confirmation, presence: true

  devise :database_authenticatable, :registerable,
         :trackable, :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  # has_one_attached :avatar do |attachable|
  #   attachable.variant :thumb, resize_to_limit: [100, 100]
  # end

  def username
    # email = john@example.com -> john
    email.split("@")[0].capitalize[0..8]
  end
end
