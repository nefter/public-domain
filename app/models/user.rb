# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :trackable, :recoverable, :rememberable, :validatable
  has_many :collections
end
