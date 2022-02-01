# frozen_string_literal: true

class LandingController < ApplicationController
  # GET /items
  def index
    @items = Item.all
  end
end
