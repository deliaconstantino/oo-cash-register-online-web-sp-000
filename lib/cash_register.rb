require 'pry'

class CashRegister
<<<<<<< HEAD
  attr_accessor :total, :discount, :items, :last_item_price
=======
  attr_accessor :total, :discount, :item
>>>>>>> 5c2ad1ffc10d42dc3dfed27c2b93ab909eb879a6

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
<<<<<<< HEAD
    @items = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times { @items << item }
    @last_item_price = price * quantity
    self.total += @last_item_price
=======
  end

  def add_item(item, price, quantity = 1)
    @item = item
    self.items
    binding.pry
    self.total += price * quantity
>>>>>>> 5c2ad1ffc10d42dc3dfed27c2b93ab909eb879a6
  end

  def apply_discount
    if @discount == 0.0
      return "There is no discount to apply."
    else
      "After the discount, the total comes to $#{(self.total -= @discount * 10).to_i}."
    end
  end

<<<<<<< HEAD
  def void_last_transaction
    self.total -= @last_item_price
=======
  def items
    items << @item
    items
>>>>>>> 5c2ad1ffc10d42dc3dfed27c2b93ab909eb879a6
  end

end
