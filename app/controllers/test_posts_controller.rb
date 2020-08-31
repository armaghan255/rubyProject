class TestPostsController < ApplicationController
  before_action :set_test_post, only: [:show, :edit, :update, :destroy]

  # GET /test_posts
  # GET /test_posts.json
  def index
    @test_posts = TestPost.all
  end

  # GET /test_posts/1
  # GET /test_posts/1.json
  def show
  end

  # GET /test_posts/new
  def new
    @test_post = TestPost.new
  end

  # GET /test_posts/1/edit
  def edit
  end

  # POST /test_posts
  # POST /test_posts.json
  def create
    @test_post = TestPost.new(test_post_params)

    respond_to do |format|
      if @test_post.save
        format.html { redirect_to @test_post, notice: 'Test post was successfully created.' }
        format.json { render :show, status: :created, location: @test_post }
      else
        format.html { render :new }
        format.json { render json: @test_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_posts/1
  # PATCH/PUT /test_posts/1.json
  def update
    respond_to do |format|
      if @test_post.update(test_post_params)
        format.html { redirect_to @test_post, notice: 'Test post was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_post }
      else
        format.html { render :edit }
        format.json { render json: @test_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_posts/1
  # DELETE /test_posts/1.json
  def destroy
    @test_post.destroy
    respond_to do |format|
      format.html { redirect_to test_posts_url, notice: 'Test post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_post
      @test_post = TestPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_post_params
      params.require(:test_post).permit(:title, :desc)
    end
end
