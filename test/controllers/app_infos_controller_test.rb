require 'test_helper'

class AppInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_info = app_infos(:one)
  end

  test "should get index" do
    get app_infos_url, as: :json
    assert_response :success
  end

  test "should create app_info" do
    assert_difference('AppInfo.count') do
      post app_infos_url, params: { app_info: { developer_type: @app_info.developer_type, email: @app_info.email, field: @app_info.field, first_name: @app_info.first_name, fun_facts: @app_info.fun_facts, gpa: @app_info.gpa, hometown: @app_info.hometown, last_name: @app_info.last_name, phone: @app_info.phone, phrase: @app_info.phrase, twitter_handle: @app_info.twitter_handle, university: @app_info.university, why_startup: @app_info.why_startup } }, as: :json
    end

    assert_response 201
  end

  test "should show app_info" do
    get app_info_url(@app_info), as: :json
    assert_response :success
  end

  test "should update app_info" do
    patch app_info_url(@app_info), params: { app_info: { developer_type: @app_info.developer_type, email: @app_info.email, field: @app_info.field, first_name: @app_info.first_name, fun_facts: @app_info.fun_facts, gpa: @app_info.gpa, hometown: @app_info.hometown, last_name: @app_info.last_name, phone: @app_info.phone, phrase: @app_info.phrase, twitter_handle: @app_info.twitter_handle, university: @app_info.university, why_startup: @app_info.why_startup } }, as: :json
    assert_response 200
  end

  test "should destroy app_info" do
    assert_difference('AppInfo.count', -1) do
      delete app_info_url(@app_info), as: :json
    end

    assert_response 204
  end
end
