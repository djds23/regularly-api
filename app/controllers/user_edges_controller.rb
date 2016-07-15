class UserEdgesController < ApplicationController
  before_action :set_user_edge, only: [:show, :update, :destroy]

  # GET /user_edges
  def index
    @user_edges = UserEdge.all

    render json: @user_edges
  end

  # GET /user_edges/1
  def show
    render json: @user_edge
  end

  # POST /user_edges
  def create
    @user_edge = UserEdge.new(user_edge_params)

    if @user_edge.save
      render json: @user_edge, status: :created, location: @user_edge
    else
      render json: @user_edge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_edges/1
  def update
    if @user_edge.update(user_edge_params)
      render json: @user_edge
    else
      render json: @user_edge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_edges/1
  def destroy
    @user_edge.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_edge
      @user_edge = UserEdge.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_edge_params
      params.require(:user_edge).permit(:user_id, :edge)
    end
end
