class List < ActiveRecord::Base
  attr_accessible :account_number, :name, :status, :customer_type, :vendor_id
end
