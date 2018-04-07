# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(
  :email => 'nikofan@naver.com',
  :nickname => '공릉동꿀주먹',
  :description => '안녕하세요~ 반갑습니다.',
  :password => '123456',
  :password_confirmation => '123456',
  :confirmed_at => '2018-03-26 08:23:38 UTC'
)
user1.save!

user2 = User.new(
  :email => 'chanjo@gmail.com',
  :nickname => '폴리텍',
  :description => '안녕~ 하이.',
  :password => '123456',
  :password_confirmation => '123456',
  :confirmed_at => '2018-03-26 08:23:38 UTC'
)
user2.save!

user3 = User.new(
  :email => '1004dkstjfls@naver.com',
  :nickname => '수내꿀주먹이얌',
  :description => '반가워요~ 디자인과입니다.',
  :password => '123456',
  :password_confirmation => '123456',
  :confirmed_at => '2018-03-26 08:23:38 UTC'
)
user3.save!

user4 = User.new(
  :email => 'wjsrlaos91@naver.com',
  :nickname => '한전맨',
  :description => '내가 게임 1짱이다',
  :password => '123456',
  :password_confirmation => '123456',
  :confirmed_at => '2018-03-26 08:23:38 UTC'
)
user4.save!

Post.create(title:'윤종신의 좋니 한번 불러봤습니다.', content:'잘하지는 못해요ㅠㅠ', singer:'윤종신', song:'좋니', recom:0, user_id:1)
Post.create(title:'린의 사랑했자나.. 음질이 안좋아요..', content:'더 많이 연습해야됩니다.', singer:'린', song:'사랑했자나', recom:0, user_id:1)
Post.create(title:'저는 유투브로 올립니다. 음악만 들어주세요', content:'댓글 많이 달아주세요~~', singer:'나얼', song:'바람기억', recom:0, user_id:4)
Post.create(title:'박효신 따라잡기 #3', content:'눈의 꽃을 불러봤습니다. 한번씩 들어주세요', singer:'박효신', song:'눈의꽃', recom:0, user_id:2)
Post.create(title:'댓글 많이 달아주세요~~ ㅎㅎㅎㅎ', content:'헤헤헤헤헤헿', singer:'임창정', song:'소주한잔', recom:0, user_id:2)
Post.create(title:'우우우우', content:'후후후후', singer:'멜로망스', song:'선물', recom:0, user_id:2)
Post.create(title:'이이이이', content:'이이이이', singer:'거미', song:'기억상실', recom:0, user_id:4)
Post.create(title:'유유유유', content:'휴휴휴휴', singer:'환희', song:'가슴아파도', recom:0, user_id:3)
Post.create(title:'오오오오', content:'호호호호', singer:'쌈디', song:'짠해', recom:0, user_id:3)

# 긴 제목 가려지는거 테스트 seed
Post.create(title:'adf;laksjdf;lkajsd;lfkjsa;dlkjf;aslkdjf;alskdfj;alksdfj', content:'호호호호', singer:'쌈디', song:'짠해', recom:0, user_id:4)

# 게시판 관리 seed
Bulletin.create(title: '자유 게시판', description: '자유롭게 글을 쓸수 있는 게시판 입니다.')
Bulletin.create(title: 'QnA 게시판', description: 'QnA 게시판')
Bulletin.create(title: '노래추천 게시판', description: '노래추천 게시판')
Bulletin.create(title: '노래방 추천', description: '노래방 추천')

# bulletin_id : 1, 자유 게시판 seed 작업
Board.create(title: '안녕하세요, 운영자 입니다.', content: '2018년 5월 니코노코노의 서비스를 정식 개시합니다!', bulletin_id:1)
Board.create(title: '괜찮은 홈페이지 같네요', content: '노래를 업로드 하기 위해 열심히 연습하겠습니다.', bulletin_id:1)
Board.create(title: '아직 베타버전인거 같네요', content: '더 나은 서비스 기대합니다.', bulletin_id:1)
Board.create(title: '안되는게 많네요 -,-', content: '유투브로도 업로드 할 수 있게 해주세요ㅠ', bulletin_id:1)
Board.create(title: '안녕하세요, 오늘 처음 가입했네요', content: '다른 사람들의 노래를 들을 수 있다니 좋네요 ㅎㅎㅎ', bulletin_id:1)

# bullentin_id : 2, QnA 게시판 seed 작업
Board.create(title: 'wmv 파일은 업로드가 안되나요?', content: '궁금해서 질문 올립니다!', bulletin_id:2)
Board.create(title: '3위 안에 들면 상품이 따로 있나요?', content: '명예의 전당이라는 것이 있길래..', bulletin_id:2)
Board.create(title: 'kakao 로그인도 만들어 주시면 안될까요', content: '대부분 카카오 아이디로 로그인 하고 있어서..', bulletin_id:2)
Board.create(title: '마이 프로필 기능을 추가 질문입니다.', content: '좀 더 항목이 늘어났으면 좋겠네요', bulletin_id:2)
Board.create(title: '정식 버전은 언제 나오나요??', content: '궁금합니다!', bulletin_id:2)

# bullentin_id : 3, 노래추천 게시판 seed 작업
Board.create(title: '노래추천합니다.', content: '나얼 - 바람기억', bulletin_id:3)
Board.create(title: '임창정 노래 추천합니다.', content: ' 13집에 있는 노래는 다 좋아요 ', bulletin_id:3)
Board.create(title: '노래추천!', content: '레드벨벳 - 빨간맛', bulletin_id:3)
Board.create(title: '이 게시판 딱히 필요할까요..', content: '게시판 종류가 너무 많네요', bulletin_id:3)
Board.create(title: '여기서 많은 노래 추천 받고 갑니다!', content: '저도 추천할게요. 거미 - 기억상실', bulletin_id:3)

# bullentin_id : 4, 노래방추천 게시판 seed 작업
Board.create(title: '공릉동 노래방 추천', content: '오키도키 노래방 추천합니다.', bulletin_id:4)
Board.create(title: '공릉동 노래방 추천2', content: '엣지 노래방 추천 합니다.', bulletin_id:4)
