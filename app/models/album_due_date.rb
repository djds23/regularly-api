# == Schema Information
#
# Table name: album_due_dates
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  album_id   :integer
#  due_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AlbumDueDate < ApplicationRecord
  belongs_to :user
  belongs_to :album
end
