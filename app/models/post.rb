class Post < ApplicationRecord
  acts_as_paranoid

  belongs_to :user
  has_many :replies

  has_many :impressions, as: :impressionable

  def impression_count
      impressions.size
  end

  def unique_impression_count
      impressions.group(:ip_address).size.keys.length
  end

  def self.search(search)
      where("title LIKE ? OR content LIKE ? OR singer LIKE ? OR song LIKE ?",
        "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
