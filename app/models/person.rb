class Person < ApplicationRecord
  belongs_to :sacrament
  has_many :addresses, :phone_numbers, :emails, :couples, :mountings
end
