class Track < ApplicationRecord
  NESTED_ALLOWED_PARAMS = [:id, :_destroy, :number, :song_id, :description]

  belongs_to :album
  belongs_to :song
end
