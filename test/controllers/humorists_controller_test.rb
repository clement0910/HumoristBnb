require 'test_helper'

class HumoristsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get humorists_new_url
    assert_response :success
  end

  test "should get create" do
    get humorists_create_url
    assert_response :success
  end

  test "should get destroy" do
    get humorists_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get humorists_edit_url
    assert_response :success
  end

  test "should get index" do
    get humorists_index_url
    assert_response :success
  end

end
