# require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << item
    end
    self.last_transaction = amount * quantity
  end
  
  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    
  end
  
end