class ChangeNullValueForApartmentRef < ActiveRecord::Migration[6.0]
  def change
    change_column_null :tenants, :apartment_id, true
  end
end
