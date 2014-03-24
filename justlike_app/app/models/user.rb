# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address_1  :string(255)
#  address_2  :string(255)
#  city       :string(255)
#  postcode   :string(255)
#  country    :string(255)
#  email      :string(255)
#  image      :text
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
	attr_accessible :name, :address_1, :address_2, :city, :postcode, :country, :email, :image
	has_and_belongs_to_many :recipes
end	
