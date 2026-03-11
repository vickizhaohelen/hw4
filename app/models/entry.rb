class Entry < ApplicationRecord
  belongs_to  :place
end
class Entry < ApplicationRecord
  belongs_to :place
  # This line links the entry to an uploaded file
  has_one_attached :uploaded_image 
end