class BulletinController < ApplicationController
    def index
        @b = Bulletin.all
    end

    def create
        b = Bulletin.new
        b.title = params[:title]
        b.description = params[:description]
        b.posttype_id = params[:posttype]
        
        if b.save
          flash[:alert] = "생성되었습니다."
          redirect_to "/bulletin/show/#{b.id}"
        else
          flash[:alert] = b.errors.values.flatten.join(' ')
          redirect_to :back
        end
    end
    
    def edit
        @b = Bulletin.find(params[:id])
    end
    
    def edit_complete
        b = Bulletin.find(params[:id])
        b.title = params[:title]
        b.description = params[:description]
        b.posttype_id = params[:posttype]
        
        if b.save
          flash[:alert] = "수정되었습니다."
          redirect_to "/bulletin/show/#{b.id}"
        else
          flash[:alert] = b.errors.values.flatten.join(' ')
          redirect_to :back
        end  
    end
    
    def show
        @b = Bulletin.find(params[:id])
    end
    
    def delete_complete
        b = Bulletin.find(params[:id])
        b.destroy
        flash[:alert] = "삭제되었습니다."
        redirect_to "/bulletin/index"
    end
    
    def new
        @t = Posttype.all
    end
end
