class Badge < ActiveRecord::Base
  has_and_belongs_to_many :trainers
  # has_many :badges_trainers
  # has_many :trainers, :through => :badges_trainers
end
