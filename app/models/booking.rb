class Booking < ApplicationRecord
   belongs_to :room
   belongs_to :user
    
    validates :user_id, presence: true
    validates :room_id, presence: true
    validates :checkin, presence: true
    validates :checkout, presence: true
    
end
