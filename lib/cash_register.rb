require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :price

  def initialize(discount = 0)
    @total - 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
      @items << item
      counter += 1
    end
  end
  
end