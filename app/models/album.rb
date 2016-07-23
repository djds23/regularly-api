# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  artist_id  :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ApplicationRecord
  belongs_to :artist
  has_many :album_embeds
end
