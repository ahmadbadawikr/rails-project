class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # aadvark@example.com ~> self.email.split('@') ~> ["aardvark", "example.com"] ~> [0] ~> "aardvark".capitalize ~> "Aardvark"
  def username
    return email.split('@')[0].capitalize
  end
end

  
