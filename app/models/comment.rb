# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  message    :text
#  user_id    :integer
#  link_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base

  attr_accessible :message, :link_id, :user_id 

  # Associations --------------------------
  belongs_to :user
  belongs_to :link

end
