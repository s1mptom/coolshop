class Order < ActiveRecord::Base

  belongs_to :product

  attr_accessible :comment, :email, :name, :phonenumber

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,  :presence => true,
            :length   => { :maximum => 50 }

  validates :email, :presence => true,
            :format   => { :with => email_regex }

  validates :phonenumber, :presence => true
end
