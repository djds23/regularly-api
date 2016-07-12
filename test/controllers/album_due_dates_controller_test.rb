require 'test_helper'

class AlbumDueDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_due_date = album_due_dates(:one)
  end

  test "should get index" do
    get album_due_dates_url, as: :json
    assert_response :success
  end

  test "should create album_due_date" do
    assert_difference('AlbumDueDate.count') do
      post album_due_dates_url, params: { album_due_date: { album_id: @album_due_date.album_id, due_date: @album_due_date.due_date, user_id: @album_due_date.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show album_due_date" do
    get album_due_date_url(@album_due_date), as: :json
    assert_response :success
  end

  test "should update album_due_date" do
    patch album_due_date_url(@album_due_date), params: { album_due_date: { album_id: @album_due_date.album_id, due_date: @album_due_date.due_date, user_id: @album_due_date.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy album_due_date" do
    assert_difference('AlbumDueDate.count', -1) do
      delete album_due_date_url(@album_due_date), as: :json
    end

    assert_response 204
  end
end
