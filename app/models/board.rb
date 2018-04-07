class Board < ApplicationRecord
  belongs_to :bulletin
  belongs_to :user
end
