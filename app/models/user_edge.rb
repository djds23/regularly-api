# == Schema Information
#
# Table name: user_edges
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  edge       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserEdge < ApplicationRecord
  belongs_to :user
end
