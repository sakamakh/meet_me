class Team < ApplicationRecord
  mount_uploader :logo, ImageUploader
end
