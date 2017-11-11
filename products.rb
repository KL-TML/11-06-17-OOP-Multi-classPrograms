class Products
  @@tax_rate = 15

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
  end

  # READER VARIABLES

  def name
    @name
  end

  def base_price
    @base_price
  end

  end

  # WRITER VARIABLES
  def total_price(base_price, tax_rate)
    total_price = base_price + (base_price*(tax_rate/100)).round(2)
    return total_price
  end

  def move_to_cart(name)
    name << shopping_cart
  end


  # Class Variables

  def self.tax_rate
    @@tax_rate
  end

end
