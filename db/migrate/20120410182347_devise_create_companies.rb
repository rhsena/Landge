class DeviseCreateCompanies < ActiveRecord::Migration
  def change
    create_table(:companies) do |t|
      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""
      t.string :company_Name,	:null => false, :default => ""
      t.string :state ,              :null => false, :default => ""
      t.string :city,               :null => false, :default => ""
      t.string :country  ,           :null => false, :default => ""
      t.string :account_Owner_Name , :null => false, :default => ""
      t.string :account_Owner_Role , :null => false, :default => ""
  
 
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Encryptable
      # t.string :password_salt

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## Token authenticatable
      # t.string :authentication_token


      t.timestamps
    end

    add_index :companies, :email,                :unique => true
    add_index :companies, :reset_password_token, :unique => true
    add_index :companies, :company_Name,   	 :unique => true
    # add_index :companies, :confirmation_token,   :unique => true
    # add_index :companies, :unlock_token,         :unique => true
    # add_index :companies, :authentication_token, :unique => true
  end
end
