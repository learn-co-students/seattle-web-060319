class Purchase < ApplicationRecord
  belongs_to :brew

  validates :size, inclusion: {in: %w(Small Medium Large)}

  validates :creamer_strength, inclusion: {in: %w(Light Regular None)}

  validates :special_instructions, length: {maximum: 140}


end
