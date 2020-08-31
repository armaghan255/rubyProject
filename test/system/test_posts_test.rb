require "application_system_test_case"

class TestPostsTest < ApplicationSystemTestCase
  setup do
    @test_post = test_posts(:one)
  end

  test "visiting the index" do
    visit test_posts_url
    assert_selector "h1", text: "Test Posts"
  end

  test "creating a Test post" do
    visit test_posts_url
    click_on "New Test Post"

    fill_in "Desc", with: @test_post.desc
    fill_in "Title", with: @test_post.title
    click_on "Create Test post"

    assert_text "Test post was successfully created"
    click_on "Back"
  end

  test "updating a Test post" do
    visit test_posts_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @test_post.desc
    fill_in "Title", with: @test_post.title
    click_on "Update Test post"

    assert_text "Test post was successfully updated"
    click_on "Back"
  end

  test "destroying a Test post" do
    visit test_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test post was successfully destroyed"
  end
end
