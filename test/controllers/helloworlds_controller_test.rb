require 'test_helper'

class HelloworldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helloworld = helloworlds(:one)
  end

  test 'should get index' do
    get helloworlds_url, as: :json
    assert_response :success
  end

  test 'should create helloworld' do
    assert_difference('Helloworld.count') do
      post helloworlds_url, params: { helloworld: { message: @helloworld.message } }, as: :json
    end

    assert_response :created
  end

  test 'should show helloworld' do
    get helloworld_url(@helloworld), as: :json
    assert_response :success
  end

  test 'should update helloworld' do
    patch helloworld_url(@helloworld), params: { helloworld: { message: @helloworld.message } }, as: :json
    assert_response :success
  end

  test 'should destroy helloworld' do
    assert_difference('Helloworld.count', -1) do
      delete helloworld_url(@helloworld), as: :json
    end

    assert_response :no_content
  end
end
