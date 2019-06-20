#Football Equipment Store
module Sell
  def purchase(product,employee)
    total_price =
    "#{employee.name} has sold #{product.brand + product.model} for $#{price}"
  end

end

class Product
  include Sell
  attr_accessor :brand, :model, :type, :price
  def initialize(product = {})
    @brand  = product[:brand]
    @model = product[:model]
    @type = product[:type]
    @price = product[:price].to_f
  end
end

class Employee
  include Sell
  attr_reader :name,:surname
  def initialize(name,surname)
    @name = name
    @surname = surname
  end
end

class Customer < Employee
end
employee1 = Employee.new("Adrian","Tomaszewski")
product1 = Product.new(brand: "Nike",model: "Mercurial",type: "AG",price: "500")
employee2 = Employee.new("Marc","Poperty")
product2 = Product.new(brand: "Nike",model: "Mercurial",type: "AG",price: "600")
p product1.purchase(product1,employee1)
p product2.purchase(product2,employee2)







