require_relative 'products.rb'
class Cart

  def intialize
    @shopping_cart = []
  end

  # Reader Methods

  def shopping_cart
    @shopping_cart
  end

  # Writer Methods

  # Method to add the product to the cart
  def add_product_to_cart(name, base_price)
    product = Products.new_product(name, base_price)
    shopping_cart << product
  end

  def remove_product(product)
    shopping_cart.delete_if do |product_name|
      product == product_name.name
    end
  end

  def total_without_tax
    total_cart_taxless = 0
    shopping_cart.each do |product|
      total_cart_taxless += product.base_price
    end
  end

  def taxed_total
    total = 0
    shopping_cart.each do |product|
      taxed_total = product.total_price
    end
    puts "Your After tax price is #{taxed_price}"
  end

end


my_cart = Cart.new

my_cart.add_product_to_cart("frosted_flakes", 5.20)
my_cart.add_product("cheese pizza", 6.29)
my_cart.add_product("lettuce", 0.62)
my_cart.add_product("lemonade", 2.02)

puts my_cart.shopping_cart.inspect
my_cart.total_without_tax
my_cart.taxed_total
