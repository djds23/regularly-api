require 'test_helper'

class AlbumEmbedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_embed = album_embeds(:one)
  end

  test "should get index" do
    get album_embeds_url, as: :json
    assert_response :success
  end

  test "should create album_embed" do
    assert_difference('AlbumEmbed.count') do
      post album_embeds_url, params: { album_embed: { album_id: @album_embed.album_id, embed: @album_embed.embed } }, as: :json
    end

    assert_response 201
  end

  test "should show album_embed" do
    get album_embed_url(@album_embed), as: :json
    assert_response :success
  end

  test "should update album_embed" do
    patch album_embed_url(@album_embed), params: { album_embed: { album_id: @album_embed.album_id, embed: @album_embed.embed } }, as: :json
    assert_response 200
  end

  test "should destroy album_embed" do
    assert_difference('AlbumEmbed.count', -1) do
      delete album_embed_url(@album_embed), as: :json
    end

    assert_response 204
  end
end
