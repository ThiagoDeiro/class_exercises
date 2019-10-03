@latest_oscar_winners = [
    'Green Book (2018)',
    'The Shape of Water (2017)',
    '12 Years a Slave (2013)',
    'Moonlight (2016)',
    'Birdman or (The Unexpected Virtue of Ignorance) (2014)',
    'Spotlight (2015)',
    'Argo (2012)',
    'The Artist (2011)'
]

@movie_directors = [
    'Moonlight, Barry Jenkins',
    'Green Book, Peter Farrelly',
    'The Artist, Michel Hazanavicius',
    'Spotlight, Tom McCarthy',
    'Birdman or (The Unexpected Virtue of Ignorance), Alejandro G. Iñárritu',
    'The Shape of Water, Guillermo del Toro',
    '12 Years a Slave, Steve McQueen',
    'Argo, Ben Affleck',
]


@movie_directors *= ','
@movie_directors = @movie_directors.split(",")
@movie_directors = @movie_directors.values_at(*@movie_directors.each_index.select { |i| i.odd?})
@new_array = []
def winners
@latest_oscar_winners.zip(@movie_directors).each do |movies, director|
oscar_split = movies.split(/[^[[:word:]]]+/)
oscar_join = [movies.scan(/\d/).join]
oscar_3 = oscar_split - oscar_join


hash = { :movie => oscar_3 * " ", :year => (oscar_join * " ").to_i, :movie_directors => director}
@new_array.push(hash)
end
end

winners