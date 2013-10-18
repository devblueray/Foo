class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :galleries

	rails_admin do
		field :email
		field :password
		field :firstName
		field :lastName
		field :birthday
		field :physAddress
		field :phone
		field :phone2
	end
end
