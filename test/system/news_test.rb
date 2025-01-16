require "application_system_test_case"

class NewsTest < ApplicationSystemTestCase
  setup do
    @news = news(:one)
  end

  test "visiting the index" do
    visit news_url
    assert_selector "h1", text: "News"
  end

  test "should create news" do
    visit news_url
    click_on "New news"

    fill_in "Description", with: @news.description
    fill_in "Display date", with: @news.display_date
    fill_in "Iso date", with: @news.iso_date
    fill_in "Picture", with: @news.picture
    fill_in "Title", with: @news.title
    click_on "Create News"

    assert_text "News was successfully created"
    click_on "Back"
  end

  test "should update News" do
    visit news_url(@news)
    click_on "Edit this news", match: :first

    fill_in "Description", with: @news.description
    fill_in "Display date", with: @news.display_date
    fill_in "Iso date", with: @news.iso_date
    fill_in "Picture", with: @news.picture
    fill_in "Title", with: @news.title
    click_on "Update News"

    assert_text "News was successfully updated"
    click_on "Back"
  end

  test "should destroy News" do
    visit news_url(@news)
    click_on "Destroy this news", match: :first

    assert_text "News was successfully destroyed"
  end
end
