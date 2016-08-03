class User < ActiveRecord::Base

  mount_uploader :imagen, AvatarUploader
end
