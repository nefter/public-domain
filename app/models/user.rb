# frozen_string_literal: true

class User < ApplicationRecord
  # before_validation :set_user_id, on: :create
  validates :email, :username, :password, :password_confirmation, presence: true

  devise :database_authenticatable, :registerable,
         :trackable, :recoverable, :rememberable, :validatable

  has_one_attached :avatar
end
