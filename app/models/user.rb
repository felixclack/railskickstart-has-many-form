class User < ActiveRecord::Base
  has_many :invites
  has_many :surveys, through: :invites
end
