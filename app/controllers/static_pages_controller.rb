class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @post = current_user.posts.build
      @all_posts = current_user.feed.page(params[:page]).per(9)
      @user_posts = current_user.posts.page(params[:page]).per(9)
      @want_posts = current_user.posts.where(action: '実践したい').page(params[:page]).per(9)
      @doing_posts = current_user.posts.where(action: '実践中').page(params[:page]).per(9)
      @master_posts = current_user.posts.where(action: '身についた').page(params[:page]).per(9)
      # エラー出るので一時的に並び替えたもの↓
      # @like_posts = current_user.like_posts.page(params[:page]).per(9)

      # # いいねをつけた順に表示
      # @like_posts = current_user.likes.order(created_at: 'DESC').map { |like| like.post }

      @like_posts = current_user.like_posts.order('likes.created_at DESC').page(params[:page]).per(9)
    end
  end

  def about; end

  def contact; end
end
