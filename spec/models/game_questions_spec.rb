require 'rails_helper'

describe GameQuestion do
  context 'relationships' do
    it { should belong_to(:game) }
    it { should belong_to(:question) }
  end
end