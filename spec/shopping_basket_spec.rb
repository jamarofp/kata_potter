require './shopping_basket.rb'

describe 'Shopping baskert' do

  it 'one book costs eigth euros' do
    quantity_of_books = 1
    total_price = 8

    calculated_price = calculate_price(quantity_of_books)

    expect(calculated_price).to eq(total_price)
  end

  it 'more than one books costs the sum of them' do
    quantity_of_books = 4
    total_price = 8 * 4

    calculated_price = calculate_price(quantity_of_books)

    expect(calculated_price).to eq(total_price)
  end

  it 'two different books of a serie has a 5% discount' do
    quantity_of_books = 2
    total_price = 8 * 2 * 0.95
    discount = true

    calculated_price = calculate_price(quantity_of_books, discount)

    expect(calculated_price).to eq(total_price)
  end

  it 'three different books of a serie has a 10% discount' do
    quantity_of_books = 3
    total_price = 8 * 3 * 0.90
    discount = true

    calculated_price = calculate_price(quantity_of_books, discount)

    expect(calculated_price).to eq(total_price)
  end

  it 'four different books of a serie has a 20% discount' do
    quantity_of_books = 4
    total_price = 8 * 4 * 0.80
    discount = true

    calculated_price = calculate_price(quantity_of_books, discount)

    expect(calculated_price).to eq(total_price)
  end

  it 'five books of a serie has a 25% discount' do
    quantity_of_books = 5
    total_price = 8 * 5 * 0.75
    discount = true

    calculated_price = calculate_price(quantity_of_books, discount)

    expect(calculated_price).to eq(total_price)
  end

end
