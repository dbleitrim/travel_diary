class City < ApplicationRecord
has_attached_file :picture, styles: {medium: "300x300#", thumb: "100X100#" }, default_url: "images/ :style/missing.png"
validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
has_many :reviews
end
