class Api::V1::ImagesController < ApplicationController
  def show
    render json: { data: {} }
  end
end