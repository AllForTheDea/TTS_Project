class VoicelinesController < ApplicationController
  before_action :set_voiceline, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /voicelines
  # GET /voicelines.json
  def index
    @voicelines = Voiceline.all
  end

  # GET /voicelines/1
  # GET /voicelines/1.json
  def show
  end

  # GET /voicelines/new
  def new
    @voiceline = Voiceline.new
  end

  # GET /voicelines/1/edit
  def edit
  end

  # POST /voicelines
  # POST /voicelines.json
  def create
    @voiceline = Voiceline.new(voiceline_params)

    respond_to do |format|
      if @voiceline.save
        format.html { redirect_to @voiceline, notice: 'Voiceline was successfully created.' }
        format.json { render :show, status: :created, location: @voiceline }
      else
        format.html { render :new }
        format.json { render json: @voiceline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voicelines/1
  # PATCH/PUT /voicelines/1.json
  def update
    respond_to do |format|
      if @voiceline.update(voiceline_params)
        format.html { redirect_to @voiceline, notice: 'Voiceline was successfully updated.' }
        format.json { render :show, status: :ok, location: @voiceline }
      else
        format.html { render :edit }
        format.json { render json: @voiceline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voicelines/1
  # DELETE /voicelines/1.json
  def destroy
    @voiceline.destroy
    respond_to do |format|
      format.html { redirect_to voicelines_url, notice: 'Voiceline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voiceline
      @voiceline = Voiceline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voiceline_params
      params.require(:voiceline).permit(:user_id, :character, :line_id, :project_id)
    end
end
