class Album < ApplicationRecord
  acts_as_taggable
  
  enum media_type: { cd: 0, lp: 1, cds: 2, ep: 3, cts: 4, ss: 5, c8t:6, bscd: 7 }
  enum release_type: { album: 0, single: 1 }
  enum production_type: { studio_album: 0, live_album: 2, omnibus: 3 }


  validates :name, presence: true
  belongs_to :artist, class_name: 'Person'
  has_many :tracks, dependent: :destroy
  accepts_nested_attributes_for :tracks, allow_destroy: true
end
