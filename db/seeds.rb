puts "🌱 Seeding spices..."

# Seed your database here

  # create a movie with random data
  m1=Movie.create(
    title: "Enola Holmes 2",
    genre: "horror",
    description: "Now a detective-for-hire like her infamous brother, Enola Holmes takes on her first official case to find a missing girl, as the sparks of a dangerous conspiracy ignite a mystery that requires the help of friends — and Sherlock himself — to unravel.",
    image: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fm.media-amazon.com%2Fimages%2FI%2F91CDLMuuW%2BL.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.co.uk%2FEnola-Holmes-Black-Barouche-Springer%2Fdp%2F1250822955&tbnid=yGugEOzyoQIkiM&vet=12ahUKEwiF14WXz5z7AhUHSRoKHQKDB2IQMygPegUIARCAAg..i&docid=AQ6r6nGUeQyjfM&w=1682&h=2560&q=enola%20holmes%20image&ved=2ahUKEwiF14WXz5z7AhUHSRoKHQKDB2IQMygPegUIARCAAg",
    date: "2022-11-04"

  )

   m2= Movie.create(
    title: "Causeway",
    genre: "Drama",
    description: "A US soldier suffers a traumatic brain injury while fighting in Afghanistan and struggles to adjust to life back home in New Orleans. When she meets local mechanic James, the pair begin to forge an unexpected bond.",
    image: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/Causeway_%28film%29.jpg/220px-Causeway_%28film%29.jpg",
    date: "2022-10-28"

  )
  Review.create(comment:"cool movie",star_rating:3,movie_id:m2.id)
  Review.create(comment:"Goog movie",star_rating:5,movie_id:m2.id)

puts "✅ Done seeding!"
