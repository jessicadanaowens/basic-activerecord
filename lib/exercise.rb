require "./lib/connection"
require "./lib/customer"
require "./lib/item"
require "./lib/orderitem"
require "./lib/order"
require "pp"

# p Customer.all
# p Customer.first
# p Customer.last
# p Customer.find(3)

# p Customer.where(
#   state: "Colorado"
#   )

# p Customer.limit(5)

# pp Customer.order(:name => :asc)

# pp Customer.order(:name => :desc)

# pp Item.where("name LIKE 'boot%'")

# pp Order.all

# pp Order.order(:id => :desc).limit(5)

# Customer.all.each {|cust| p cust.name + "," + cust.email}

# pp Customer.select(:id, :name, :email)

# pp Customer.all.length

# puts Order.sum(:amount)

# puts Order.where(
#   :customer_id=>1
# ).sum(:amount)

# puts Order.average(:amount)

# puts Order.average(:amount).round(2)

# puts Order.minimum(:amount)

# puts Order.maximum(:amount)

# Order.select(:amount, :customer_id).group(:customer_id).minimum(:amount).each do
# |key, val| puts key.to_s + ": " + val.to_s
# end

# Order.select(:amount, :customer_id).group(:customer_id).maximum(:amount).each do |k, v|
#   puts k.to_s + ": " + v.to_s
# end

# puts Customer.where(
#   :state=>"Colorado"
#   )

# puts Customer.where(
#   :state=>"Colorado",
#   :city=>"Rigobertoside"
#      )

# puts Customer.where("state ='Ohio' or state='Virginia'")

# puts Item.where(:description => "snow board")[0].update(:name => "board01")

# Item.create(
#   :name => "kayak01",
#   :description => "one person river kayak"
# )

# Item.last.destroy

# puts Order.select(:customer_id, :amount).group(:customer_id).sum(:amount)

# Order.joins('INNER JOIN customers ON customers.id = orders.customer_id').select(:id, :amount, :name).each do |user|
#   puts user.id.to_s + ", " + user.amount.to_s + ", " + user.name
# end

puts Customer.joins(:orders).select('customers.id as cust_id', :name).group(:name).group(:cust_id).order(:name => :asc).sum(:amount).to_sql