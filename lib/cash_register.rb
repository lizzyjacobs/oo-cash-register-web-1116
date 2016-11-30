class CashRegister

  attr_accessor :total, :discount, :quantity, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_array = []
  end

  def add_item(title, price, quantity=1)
    @price = price
    @total += price*quantity
    quantity.times do
      @items_array << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items_array
  end

  def void_last_transaction
    @total -= @price
  end



end
