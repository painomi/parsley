class Song < ApplicationRecord
  validates :name, presence: true

  belongs_to :lyricist, class_name: 'Person'
  belongs_to :composer, class_name: 'Person'
  belongs_to :arranger, class_name: 'Person'
  has_one :track
end
