class Bulletin < ApplicationRecord
  has_many :boards, dependent: :destroy
end
