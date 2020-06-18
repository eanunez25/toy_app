require 'test_helper'

class MircoPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mirco_post = mirco_posts(:one)
  end

  test "should get index" do
    get mirco_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_mirco_post_url
    assert_response :success
  end

  test "should create mirco_post" do
    assert_difference('MircoPost.count') do
      post mirco_posts_url, params: { mirco_post: { content: @mirco_post.content, user_id: @mirco_post.user_id } }
    end

    assert_redirected_to mirco_post_url(MircoPost.last)
  end

  test "should show mirco_post" do
    get mirco_post_url(@mirco_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_mirco_post_url(@mirco_post)
    assert_response :success
  end

  test "should update mirco_post" do
    patch mirco_post_url(@mirco_post), params: { mirco_post: { content: @mirco_post.content, user_id: @mirco_post.user_id } }
    assert_redirected_to mirco_post_url(@mirco_post)
  end

  test "should destroy mirco_post" do
    assert_difference('MircoPost.count', -1) do
      delete mirco_post_url(@mirco_post)
    end

    assert_redirected_to mirco_posts_url
  end
end
