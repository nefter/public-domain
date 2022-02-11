# frozen_string_literal: true

class CollectionsController < ApplicationController
  before_action :set_collection, only: %i[show edit update destroy]

  # GET /collections
  def index
    @collections = Collection.all
    @items = Item.all
  end

  # GET /collections/1
  def show; end

  # GET /collections/new
  def new
    @collection = Collection.new
    @item = Item.new
  end

  # GET /collections/1/edit
  def edit; end

  # POST /collections
  def create
    @collection = Collection.new(collection_params)

    if @collection.save
      redirect_to @collection, notice: "Collection was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /collections/1
  def update
    if @collection.update(collection_params)
      redirect_to @collection, notice: "Collection was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /collections/1
  def destroy
    @collection.destroy
    redirect_to collections_url, notice: "Collection was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_collection
    @collection = Collection.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def collection_params
    params.require(:collection).permit(:name, :status, :user_id)
  end
end
