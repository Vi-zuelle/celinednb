class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :celineversions
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def full_name
    name = first_name + " " + last_name 
    return name
  end
end
