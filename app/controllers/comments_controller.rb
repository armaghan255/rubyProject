
class CommentsController < ApplicationController
  http_basic_authenticate_with name: "Armaghan",password: "123", only: :create
  def create
    @article = Article.find(params[:article_id])

  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
