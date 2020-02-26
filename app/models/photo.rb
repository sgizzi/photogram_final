class Photo < ApplicationRecord
  # Direct associations

  belongs_to :poster,
             :class_name => "User",
             :foreign_key => "owner_id"

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
