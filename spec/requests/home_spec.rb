# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  describe 'GET /index' do
    before do
      get '/'
    end

    it 'should return success' do
      expect(response).to have_http_status(:ok)
    end
  end
end
