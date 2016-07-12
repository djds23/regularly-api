# == Schema Information
#
# Table name: album_embeds
#
#  id         :integer          not null, primary key
#  embed      :text
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AlbumEmbed < ApplicationRecord
  belongs_to :album
end
