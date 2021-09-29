class Product < ApplicationRecord
    before_destroy :not_referenced_by_any_item   
     mount_uploader :image, ImageUploader
     belongs_to :user, optional: true
     has_many :items
     
     validates :name, :brand, :price, :model, presence: true
     validates :description, length: {maximum: 1000, too_long: '%{count} characters is the maximum aloud. '}
     validates :name, length: {maximum: 30, too_long: '%{count} characters is the maximum aloud. '}
     validates :price, presence: true

     BRAND = %w{ Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS  Ibanez Charvel Washburn }
     CONDITION = %w{ New Excellent Mint Used Fair Poor }

     private

     def not_referenced_by_any_item
        unless items.empty?
            errors.add(:base, "line items present")
            throw :abort
        end
     end
end
