class ListsController < ApplicationController
  before_action :set_list, only: %i[ show edit update destroy ]

  # GET /lists or /lists.json
  def index
    @lists = List.all
    render json: @lists
  end

  # GET /lists/1 or /lists/1.json
  def show
    @currlist = List.all
    render json: @currlist
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
  end

  # POST /lists or /lists.json
  def create
    @list = List.new(list_params)
    @list.save
  end

  # PATCH/PUT /lists/1 or /lists/1.json
  def update
    @thislist = List.find_by_id(params[:id])
    @thislist.update(status:true)
  end

  # DELETE /lists/1 or /lists/1.json
  def destroy
    @currList = List.find_by_id(params[:id])
    @currList.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:description, :status, :users_id)
    end
end
