class SnippetsController < ApplicationController

  def new
    @snippet = Snippet.new
  end

  def create
    #render json: params
    snippet_params = params.require(:snippet).permit(:kind_id, :title, :work)
    @snippet       = Snippet.new snippet_params
    @snippet.save
    redirect_to snippet_path(@snippet)
  end

  def show
    @snippet = Snippet.find params[:id]
  end
end
