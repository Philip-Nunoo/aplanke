class PrelaunchUser < ActiveRecord::Base
  attr_accessible :email, :telephone_number
  validates :email, 
  			:presence=>{ message: 'Email cannot be blank!' },
  			:format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ }
  validates :telephone_number, 
  			:presence=>{ message: 'Telephone number cannot be blank!' }

end
