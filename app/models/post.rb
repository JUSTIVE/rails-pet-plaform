class Post < ActiveRecord::Base
    belongs_to :bulletin
    
    
    
    validates :title, :presence => { :message => "제목을 반드시 입력하셔야 합니다." }
    validates :content, :presence => { :message => "본문을 반드시 입력하셔야 합니다." }
end
