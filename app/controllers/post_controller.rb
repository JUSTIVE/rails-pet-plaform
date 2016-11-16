class PostController < ApplicationController
    
    before_action :set_bulletin
    before_action :set_post, only: [:show, :edit, :edit_complete, :delete_complete]
    
    def new
     @p = @bulletin.posts.all
    end
    
    def create
        p = @bulletin.posts.new
        p.title = params[:title]
        p.content = params[:content]
        
        if p.save
          flash[:alert] = "저장되었습니다."
          redirect_to "/bulletin/#{@bulletin.id}/posts/show/#{p.id}"
        else
          flash[:alert] = p.errors.values.flatten.join(' ')
          redirect_to :back
        end
    end
    
    def edit
        @post = @bulletin.posts.find(params[:id])
    end
    
    def edit_complete
        p = @bulletin.posts.find(params[:id])
        p.title = params[:title]
        p.content = params[:content]
        
        if p.save
          flash[:alert] = "수정되었습니다."
          redirect_to "/bulletin/#{@bulletin.id}/posts/show/#{p.id}"
        else
          flash[:alert] = p.errors.values.flatten.join(' ')
          redirect_to :back
        end  
    end
    
    def show
        @post = @bulletin.posts.find(params[:id])
    end
    
    def list
        @p = @bulletin.posts.all
    end
    
    def delete_complete
        post = @bulletin.posts.find(params[:id])
        post.destroy
        flash[:alert] = "삭제되었습니다."
        redirect_to "/bulletin/#{@bulletin.id}/posts/list"
    end
    
  private
    def set_bulletin
      @bulletin = Bulletin.find(params[:bulletin_id])
    end

    def set_post
      @post = @bulletin.posts.find(params[:id])
    end
end