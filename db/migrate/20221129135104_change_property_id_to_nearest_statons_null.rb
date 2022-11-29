class ChangePropertyIdToNearestStatonsNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :nearest_stations, :property_id, false
  end
end
