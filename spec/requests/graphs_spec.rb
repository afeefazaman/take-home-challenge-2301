require 'rails_helper'

RSpec.describe "Graphs", type: :request do
  let(:graph) { FactoryBot.create(:graph) }
  describe "GET /show" do
    it 'returns show page' do
      get graph_path(graph)
      expect(response).to render_template(:show)
    end

    it 'returns fetched data in json' do
      get data_graph_path(graph)
      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to be_successful
    end
  end
end
