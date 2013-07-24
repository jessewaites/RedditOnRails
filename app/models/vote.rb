# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  link_id    :integer
#  up         :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ActiveRecord::Base
  attr_accessible :link_id, :up, :user_id

  # Validations ------------------------
  # it cannot save any new votes unless the user_id and link_id combo haven't been taken created before.
  validates :user_id, :uniqueness => { :scope => :link_id } #

  # Associations -----------------------
  belongs_to :user
  belongs_to :link
end
