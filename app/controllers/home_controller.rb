class HomeController < ApplicationController
  def index
    @items = []
    @brand_items = []

    @items = Item.select { |item| item.status == 1 }.last(3)
    @brand_items = Item.select { |item| item.status == 1 && item.brand == "ユニクロ" }.last(3)
  end
end