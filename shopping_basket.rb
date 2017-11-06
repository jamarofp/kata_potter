UNIT_PRICE = 8

def calculate_price(quantity_of_books, discount = false)

  base_price = UNIT_PRICE * quantity_of_books
  discounts_hash = Hash[2,0.95,3,0.90,4,0.80,5,0.75]

  return base_price * discounts_hash[quantity_of_books] if discount == true

  base_price
end
