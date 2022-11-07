class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/movies' do
    movies = Movie.all
    movies.to_json
  end
  patch '/reviews/:id' do
    review =Review.find(params[:id])
    review.update(
      comment: params[:comment],

    )
    review.to_json
  end

  delete '/reviews/:id' do
    # find the review using the ID
    review = Review.find(params[:id])
    # delete the review
    review.destroy
    # send a response with the deleted review as JSON
    review.to_json
  end
  post '/reviews' do
    review= Review.create(
      comment: params[:comment],
      star_rating: params[:star_rating],
      movie_id: params[:movie_id],

    )
    review.to_json
  end
   get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end

end
