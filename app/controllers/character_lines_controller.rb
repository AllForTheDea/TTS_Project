class CharacterLinesController < ApplicationController
  before_action :set_character_line, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /character_lines
  # GET /character_lines.json
  def index
    @character_lines = CharacterLine.all
  end

  # GET /character_lines/1
  # GET /character_lines/1.json
  def show
  end

  # GET /character_lines/new
  def new
    @character_line = CharacterLine.new
  end

  # GET /character_lines/1/edit
  def edit
  end

  # POST /character_lines
  # POST /character_lines.json
  def create
    @character_line = CharacterLine.new(character_line_params)

    respond_to do |format|
      if @character_line.save
        format.html { redirect_to @character_line, notice: 'Character line was successfully created.' }
        format.json { render :show, status: :created, location: @character_line }
      else
        format.html { render :new }
        format.json { render json: @character_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_lines/1
  # PATCH/PUT /character_lines/1.json
  def update
    respond_to do |format|
      if @character_line.update(character_line_params)
        format.html { redirect_to @character_line, notice: 'Character line was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_line }
      else
        format.html { render :edit }
        format.json { render json: @character_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_lines/1
  # DELETE /character_lines/1.json
  def destroy
    @character_line.destroy
    respond_to do |format|
      format.html { redirect_to character_lines_url, notice: 'Character line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_line
      @character_line = CharacterLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_line_params
      params.require(:character_line).permit(:line, :voiceline_id, :user_id, :project_id, :character)
    end
end
