class Album < ActiveRecord::Base
	has_many :audios, dependent: :destroy
	mount_uploader :cover,CoverUploader
	mount_uploader :banner,BannerUploader
end
