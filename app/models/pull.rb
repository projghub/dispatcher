class Pull < ActiveRecord::Base
  attr_accessible :date_from, :date_to, :feed_id, :include_downloaded, :record_count, :request, :sort_by
end
