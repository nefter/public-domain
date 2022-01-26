# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         authentication_keys: [:login]
  validates :email, uniqueness: true
  validates :username, uniqueness: true

  attr_writer :login

  def login
    @login || username || email
  end
end
