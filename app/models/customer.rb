class Customer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :address, :city, :region, :postal_code, :country, :phone, :email
end
