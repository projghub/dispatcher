class Customer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :address, :city, :region, :postal_code, :country, :phone, :email, :order_id, :pull_id, :feed_id, :customer_type, :address2, :ip_address, :browser_agent, :url, :offer_id, :pub_id, :sub_id, :custom1, :custom2, :custom3, :custom4, :custom5, :acquired_at
end
