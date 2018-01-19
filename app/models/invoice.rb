class Invoice < ApplicationRecord
  belongs_to :user
    validates :user_id, presence: true
    validates :cost, presence: true, numericality: true
    validates :comment, presence: true, length: { minimum: 4 }
end
