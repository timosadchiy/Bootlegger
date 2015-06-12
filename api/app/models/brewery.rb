class Brewery < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :address, presence: true
end
