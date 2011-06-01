class Choice < ActiveRecord::Base
  belongs_to :eventtime
  belongs_to :user
end
