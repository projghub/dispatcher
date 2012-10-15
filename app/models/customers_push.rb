class CustomersPush < ActiveRecord::Base
  attr_accessible :customer_id, :push_id, :response
end
