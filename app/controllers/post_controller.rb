class PostController < ApplicationController
    def new
     @p = Post.all
    end
    
    def create
        p = Post.new
        p.title = params[:title]
        p.content = params[:content]
        
        if p.save
          flash[:alert] = "저장되었습니다."
          redirect_to "/post/show/#{p.id}"
        else
          flash[:alert] = p.errors.values.flatten.join(' ')
          redirect_to :back
        end
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def edit_complete
        p = Post.find(params[:id])
        p.title = params[:title]
        p.content = params[:content]
        
        if p.save
          flash[:alert] = "수정되었습니다."
          redirect_to "/post/show/#{p.id}"
        else
          flash[:alert] = p.errors.values.flatten.join(' ')
          redirect_to :back
        end  
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def list
        @p = Post.all
    end
    
    def delete_complete
        post = Post.find(params[:id])
        post.destroy
        flash[:alert] = "삭제되었습니다."
        redirect_to "/post/list"
    end
end
