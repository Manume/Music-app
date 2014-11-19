class Audio < ActiveRecord::Base
  belongs_to :album
  mount_uploader :audio,AudioUploader
end
