class User < ApplicationRecord
    has_many :listings, :foriegn_key => 'host_id'
    has_Many :reservations, through: :listings, :foriegn_key => 'host_id'

    has_many :reviews, :foriegn_key => 'guest_id'
    has_many :trips, :class_name => :Reservation, :foriegn_key => 'guest_id'
end
