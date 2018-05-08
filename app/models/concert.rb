class Concert < ApplicationRecord
  validates :artist, presence: true 
  validates :show_date, presence: true
  validates :show_time, presence: true
  validates :description, presence: true
end
