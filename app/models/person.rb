class Person < ApplicationRecord
  acts_as_taggable
  validates :name, presence: true
end
