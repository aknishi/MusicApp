# == Schema Information
#
# Table name: albums
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  year       :integer          not null
#  band_id    :integer          not null
#  type       :string(1)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ApplicationRecord
  validates :band_id, presence: true
  validates :title, :year, :type, presence: true

  belongs_to :band,
  foreign_key: :band_id,
  class_name: :Band

  has_many :tracks,
  foreign_key: :album_id,
  class_name: :Track
end
