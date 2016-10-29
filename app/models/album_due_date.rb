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
  belongs_to :album, optional: true

  scope :current, -> {
    where(
      arel_table[:due_date].lteq(Time.now)
    ).order(
      due_date: :desc
    ).first
  }

  def next
    AlbumDueDate.where('due_date > ?', due_date).order(:due_date).first
  end


  def prev
    AlbumDueDate.where('due_date < ?', due_date).order(:due_date).last
  end

  class << self
    def assign_due_date(user_id, due_date)
      create!(user_id: user_id, due_date: due_date)
    end
  end
end
