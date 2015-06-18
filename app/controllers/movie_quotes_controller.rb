class MovieQuotesController < ApplicationController
  before_action :set_movie_quote, only: [:show, :insert, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    @movie_quotes = MovieQuote.all
  end

  def insert
    if @movie_quote.nil?
      @movie_quote = MovieQuote.new(movie_quote_params)
      @movie_quote.last_touch = DateTime.now
      @movie_quote.save
    else
      @movie_quote.last_touch = DateTime.now
      @movie_quote.update(movie_quote_params)
    end
    redirect_to '/'
  end

  def destroy
    @movie_quote.destroy
    redirect_to '/'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_quote
      if !params[:id].nil?
        @movie_quote = MovieQuote.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_quote_params
      params.permit(:movie, :quote)
    end
end
