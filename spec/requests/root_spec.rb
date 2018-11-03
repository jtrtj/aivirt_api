require 'rails_helper'

describe 'A user' do
  context 'visiting the root' do
    it "will see a welcome message with a link to the app's repo" do
      get '/' 
      result = JSON.parse(response.body)

      expect(status).to eq(200)
      expect(result["message"]).to eq("Welcome to the Aivirt API, Documentation can be found at https://github.com/jtrtj/aivirt_api")
    end
  end
end