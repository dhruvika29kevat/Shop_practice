class StoreController < ApplicationController
  def index
    @Cart = Cart.all
  end
end
