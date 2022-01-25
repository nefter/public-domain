# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :trackable, :recoverable, :rememberable, :validatable
  validates %i[username email], uniqueness: true
end
