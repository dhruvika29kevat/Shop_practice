class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
     belongs_to :user, optional: true

     validates :name, :brand, :price, :model, presence: true
     validates :description, length: {maximum: 1000, too_long: '%{count} characters is the maximum aloud. '}
     validates :name, length: {maximum: 30, too_long: '%{count} characters is the maximum aloud. '}
     validates :price, presence: true

     BRAND = %w{ Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS  Ibanez Charvel Washburn }
     CONDITION = %w{ New Excellent Mint Used Fair Poor }
end
