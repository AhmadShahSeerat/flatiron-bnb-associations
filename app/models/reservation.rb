class Reservation < ApplicationRecord
    belongs_to :guest, :class_name => :user
    belongs_to :listing 
    has_many :reviews
end
