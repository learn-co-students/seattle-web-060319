class Book < ActiveRecord::Base
  belongs_to :author
  validates :author_id, presence: :true
end
