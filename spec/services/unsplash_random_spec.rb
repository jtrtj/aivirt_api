require 'rails_helper'

describe UnsplashRandom do
  context 'class methods' do
    it '.image(category) - returns hash containg image info from Unsplash' do
      VCR.use_cassette('unsplash_random_query_dogs') do
        image_data = UnsplashRandom.image('dogs')
        
        expect(image_data[:urls]).to have_key(:full)
        expect(image_data[:user]).to have_key(:name)
        expect(image_data[:user]).to have_key(:portfolio_url)
      end
    end
  end
end