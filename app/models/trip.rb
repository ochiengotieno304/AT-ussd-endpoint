class Trip < ActiveRecord::Base
  establish_connection (:development)
  self.table_name = "trips"
end
