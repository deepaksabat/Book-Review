class User < ActiveRecord::Base
	has_many :books
	has_many :reviews
	has_one :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         before_create :default_profile

         def default_profile
         	build_profile
          true
         end

    
end
