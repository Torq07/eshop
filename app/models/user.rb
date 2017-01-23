class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login

  has_many :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def email_required?
    false
  end

  def email_changed?
    false
  end  
  
  def self.find_for_database_authentication warden_conditions
	  conditions = warden_conditions.dup
	  login = conditions.delete(:login)
	  login = if login.to_i == 0
      where(conditions).where(["lower(email) = :value", {value: login.strip.downcase }]).first
    else
      where(conditions).where(["num_id = :value OR alt_num_id = :value", {value: login.to_i}]).first
    end   
	end

end
