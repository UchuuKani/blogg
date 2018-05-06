class Tag < ApplicationRecord
  has_many :taggings, :dependent => :destroy
  #Taken from here: https://stackoverflow.com/questions/44507749/no-route-matches-delete-tags
  has_many :articles, through: :taggings
end
