class Rate < ApplicationRecord
  validates :rateable_id, presence: true
  validates :rateable_type, presence: true
  validates :value, presence: true
  validates :size, inclusion: { in: [0,1,2,3,4,5] }
end
