class Post < ApplicationRecord
  belongs_to :created_by, class_name: "User"
  has_one_attached :photo

  validates :description, presence: true
  validates :photo, attached: true, content_type: %i[png jpg jpeg],
            size: { less_than: 5.megabytes }

end
