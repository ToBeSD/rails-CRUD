class PostsController < ApplicationController
    before_action :set_post, only: [:edit, :update]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to posts_path, notice: '投稿を作成しました。'
        end
    end

    def edit
        # before_actionでset_posメソットを実行するようにしたので@postが設定された
    end

    def update
        if @post.update(post_params)
            redirect_to posts_path, notice: '投稿を編集しました。'
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :body)
    end

    def set_post
        @post = Post.find(params[:id])
    end
end
