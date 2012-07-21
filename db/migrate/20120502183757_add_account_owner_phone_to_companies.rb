class AddAccountOwnerPhoneToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :account_Owner_Phone, :string

  end
end
