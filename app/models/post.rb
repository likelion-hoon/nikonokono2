 class Post < ApplicationRecord
  # 모델간의 관계 설정
  belongs_to :user
  has_many :replies

  # 입력값 (유효성 검사)
  validates :title, presence: { message: "제목을 입력하지 않았습니다." }
  validates :content, presence: { message: "내용을 입력하지 않았습니다." }
  validates :singer, presence: { message: "가수를 입력하지 않았습니다." }
  validates :song, presence: { message: "노래를 입력하지 않았습니다." }
end
