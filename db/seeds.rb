# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Posttype.create(name: '게시판', en: 'bulletin')
Posttype.create(name: '블로그', en: 'blog')
Posttype.create(name: '사진첩', en: 'gallery')
Bulletin.create(title: '공지사항', description: '공지사항입니다.', posttype_id: 1)
Bulletin.create(title: '자유게시판', description: '자유게시판입니다.', posttype_id: 1)
Bulletin.create(title: '질문과답변', description: '질문과답변입니다.', posttype_id: 2)
Bulletin.create(title: '갤러리', description: '갤러리입니다.', posttype_id: 3)

