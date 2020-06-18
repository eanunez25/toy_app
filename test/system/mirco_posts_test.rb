require "application_system_test_case"

class MircoPostsTest < ApplicationSystemTestCase
  setup do
    @mirco_post = mirco_posts(:one)
  end

  test "visiting the index" do
    visit mirco_posts_url
    assert_selector "h1", text: "Mirco Posts"
  end

  test "creating a Mirco post" do
    visit mirco_posts_url
    click_on "New Mirco Post"

    fill_in "Content", with: @mirco_post.content
    fill_in "User", with: @mirco_post.user_id
    click_on "Create Mirco post"

    assert_text "Mirco post was successfully created"
    click_on "Back"
  end

  test "updating a Mirco post" do
    visit mirco_posts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @mirco_post.content
    fill_in "User", with: @mirco_post.user_id
    click_on "Update Mirco post"

    assert_text "Mirco post was successfully updated"
    click_on "Back"
  end

  test "destroying a Mirco post" do
    visit mirco_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mirco post was successfully destroyed"
  end
end
