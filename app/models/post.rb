class Post < ApplicationRecord
  belongs_to :user
  has_many :replies

  has_many :impressions, as: :impressionable

  def impression_count
      impressions.size
  end

  def unique_impression_count
      impressions.group(:ip_address).size.keys.length
  end
end
