class Product < ApplicationRecord
  # For the images, we use has_many_attached to allow multiple images for each product. We also define a variant called :thumb to create thumbnail versions of the images, which can be used in the admin interface or elsewhere in the application.
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [ 50, 50 ]
  end
  # Each product belongs to a category, which allows us to organize products into different categories. This association is defined using the belongs_to method, which indicates that each product is associated with one category.
  belongs_to :category
end
