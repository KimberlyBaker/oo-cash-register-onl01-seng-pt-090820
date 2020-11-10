require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
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
    else
      @items << item
    end
  end
  
  def apply_discount
    if @discount > 0
      @reduce = (price * discount)/100
      @total -= @reduce
      return "After the discount, your total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  
end