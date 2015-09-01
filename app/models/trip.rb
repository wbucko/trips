class Trip < ActiveRecord::Base
	belongs_to :user
	validates :destination, :image_url, :description, presence: :true
end
