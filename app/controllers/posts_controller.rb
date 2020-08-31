class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_url
    else
      render 'new'
    end
  end
  def upload
  uploaded_file = params[:picture]
  File.open(Rails.root.join('public', uploaded_file.original_filename), 'wb') do |file|
    file.write(uploaded_file.read)
  redirect_to root_url
  end
  end

  private
    def post_params
      params.require(:post).permit(:title,:description,:has_attachment)
    end

end
