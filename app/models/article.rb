class Article < ActiveRecord::Base
	belongs_to :category,dependent: :destroy
	has_many :comments, dependent: :destroy
end
