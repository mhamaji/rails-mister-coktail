class ApplicationRecord < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  self.abstract_class = true
end
