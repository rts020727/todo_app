class Category < ApplicationRecord
  has_many :lists, dependent: :destroy
  accepts_nested_attributes_for :lists, allow_destroy: true, reject_if: lambda {|attributes| attributes['content'].blank?}
  
  validates :name, presence: true
end
