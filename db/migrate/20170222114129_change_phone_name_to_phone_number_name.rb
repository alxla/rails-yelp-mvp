class ChangePhoneNameToPhoneNumberName < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :phone, :phone_number
  end
end
