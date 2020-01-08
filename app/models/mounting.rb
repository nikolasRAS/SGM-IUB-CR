class Mounting < ApplicationRecord
  belongs_to :team
  belongs_to :meeting
  belongs_to :person
end
