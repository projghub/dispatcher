class Feed < ActiveRecord::Base
  attr_accessible :url, :name, :customer_type, :status, :seconds_old, :include_downloaded, :api_username, :api_password, :sort_by
end
