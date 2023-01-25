# Graph Controller
class GraphsController < ApplicationController
  # fetching data here to cache request instead of fetching data in show
  def data
    @graph = Graph.find(params[:id])
    render json: @graph if stale?(@graph)
  end
end
