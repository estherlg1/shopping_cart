class Cart < ActiveRecord::Base
  has_many :order_lines
  has_many :products, :through => :order_lines

end
