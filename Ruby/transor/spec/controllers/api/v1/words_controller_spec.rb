require 'rails_helper'

RSpec.describe Api::V1::WordsController, type: :controller do
  context 'GET index' do
    it 'returns all words' do
      get :index
    end
  end
end
