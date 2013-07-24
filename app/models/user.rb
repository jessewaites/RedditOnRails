# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  email      :string(255)
#  username   :string(255)
#

class User < ActiveRecord::Base
   attr_accessible :email, :username
end
