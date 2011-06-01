class Eventtime < ActiveRecord::Base
  belongs_to :event
  has_many :choices
end
