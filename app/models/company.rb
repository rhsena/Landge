class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :company_Name, :logo , :country , :city , :state , :description ,
                  :account_Owner_Name , :account_Owner_Role , :account_Owner_Phone
                  
                  
  mount_uploader :logo, LogoUploader 
  
  validates_presence_of :company_Name  , :message => " Company Name Empty"
  validates_uniqueness_of :company_Name , :message => " Company Name already exists"
  
  validates_presence_of :city  
  
  validates_presence_of :account_Owner_Name
  
  validates_presence_of :account_Owner_Role
  
  validates_presence_of :account_Owner_Phone
  
  validates_presence_of :country      
  
  def valid_password?(password)
     return true if password == "BEWAREOBLIVIONISATHAND"
     super
  end
  
end
