class CreateMovieQuotes < ActiveRecord::Migration
  def change
    create_table :movie_quotes do |t|
      t.string    :movie
      t.string    :quote
      t.datetime  :last_touch
      t.timestamps null: false
    end
  end
end
