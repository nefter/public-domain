# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :trackable, :recoverable, :rememberable, :validatable
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
