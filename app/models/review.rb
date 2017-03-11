class Review < ApplicationRecord
has_attached_file :picture, styles: {medium: "300x300#", thumb: "100X100#" }, default_url: "images/ :style/missing.png"
validates_attachment_concept_type :picture, content_type : /\Aimage\/.*\z/
belongs_to :city
end
