# == Schema Information
#
# Table name: tracks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  ord        :integer          not null
#  album_id   :integer          not null
#  lyrics     :text
#  type       :string(1)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ApplicationRecord
  validates :title, :ord, :type, presence: true
  validates :album_id, presence: true

  belongs_to :album,
  foreign_key: :album_id,
  class_name: :Album
end
