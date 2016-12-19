class Song < ApplicationRecord
  belongs_to :user
  has_many :adds
  has_many :addedusers,:through => :adds, :source => :user



  validates :title, :artist, presence: true, length:{in:2..30}

end
