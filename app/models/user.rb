class User < ApplicationRecord
    has_many :visits
    has_many :sites, through: :visits
end
