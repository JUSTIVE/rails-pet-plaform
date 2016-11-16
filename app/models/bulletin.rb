class Bulletin < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    belongs_to  :posttype
    validates :title, :presence => { :message => "제목을 반드시 입력하셔야 합니다." }
    validates :description, :presence => { :message => "설명을 반드시 입력하셔야 합니다." }
end
