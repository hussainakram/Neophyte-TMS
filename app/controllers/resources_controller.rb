class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # GET /resources
  # GET /resources.json
  def index
    @challenge = Challenge.find(params[:challenge_id])
    @resources = @challenge.resources
    if params[:index]
    render :all
  else
    render :index
  end
  end

  # GET /resources/1
  # GET /resources/1.json
  def show
  end

  # GET /resources/new
  def new
    @challenge = Challenge.find(params[:challenge_id])
    @resource = @challenge.resources.new
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  # POST /resources.json
  def create
    @challenge = Challenge.find(params[:challenge_id])
    @resource = @challenge.resources.build(resource_params)
    respond_to do |format|
      if @resource.save
        format.html { redirect_to challenge_resources_path(@challenge.id), notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resources/1
  # PATCH/PUT /resources/1.json
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :index, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to challenge_resources_url(@resource.challenge_id), notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params

      params.require(:resource).permit(:challenge_id ,:name , images_attributes: [:id, :image, :_destroy], documents_attributes: [:id, :document, :_destroy], links_attributes: [:id, :link, :_destroy])
    end



end
