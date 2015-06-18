require 'test_helper'

class MovieQuotesControllerTest < ActionController::TestCase
  setup do
    @movie_quote = movie_quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_quote" do
    assert_difference('MovieQuote.count') do
      post :create, movie_quote: { last_touch: @movie_quote.last_touch, movie: @movie_quote.movie, quote: @movie_quote.quote }
    end

    assert_redirected_to movie_quote_path(assigns(:movie_quote))
  end

  test "should show movie_quote" do
    get :show, id: @movie_quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_quote
    assert_response :success
  end

  test "should update movie_quote" do
    patch :update, id: @movie_quote, movie_quote: { last_touch: @movie_quote.last_touch, movie: @movie_quote.movie, quote: @movie_quote.quote }
    assert_redirected_to movie_quote_path(assigns(:movie_quote))
  end

  test "should destroy movie_quote" do
    assert_difference('MovieQuote.count', -1) do
      delete :destroy, id: @movie_quote
    end

    assert_redirected_to movie_quotes_path
  end
end
