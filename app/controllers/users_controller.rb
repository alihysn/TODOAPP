class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
    render json: @users 
  end

  # GET /users/1 or /users/1.json
  def show
    @curruser = Users.all
    render json: @curruser
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    @user.save
    
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
   
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @currUser = User.find_by_id(params[:id])
    @currUser.destroy
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name)
    end

