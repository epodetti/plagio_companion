class CitationsController < ApplicationController
  before_action :set_citation, only: [:show, :edit, :update, :destroy]

  # GET /citations
  # GET /citations.json
  def index
    @citations = Citation.all
  end

  # GET /citations/1
  # GET /citations/1.json
  def show
  end

  # GET /citations/new
  def new
    @citation = Citation.new
    @current_game = Game.last
    @current_round = Round.where(game_id: @current_game).last
    @citation.user_id = current_user
    @citation.round_id = @current_round
  end

  # GET /citations/1/edit
  def edit
  end

  # POST /citations
  # POST /citations.json
  def create
    @citation = Citation.new(citation_params)

    respond_to do |format|
      if @citation.save
        format.html { redirect_to @citation, notice: 'Citation was successfully created.' }
        format.json { render :show, status: :created, location: @citation }
      else
        format.html { render :new }
        format.json { render json: @citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citations/1
  # PATCH/PUT /citations/1.json
  def update
    respond_to do |format|
      if @citation.update(citation_params)
        format.html { redirect_to @citation, notice: 'Citation was successfully updated.' }
        format.json { render :show, status: :ok, location: @citation }
      else
        format.html { render :edit }
        format.json { render json: @citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citations/1
  # DELETE /citations/1.json
  def destroy
    @citation.destroy
    respond_to do |format|
      format.html { redirect_to citations_url, notice: 'Citation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def per_round
    @current_game = Game.last
    @current_round = Round.where(game_id: @current_game).last
    @citations = Citation.where(round: @current_round)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citation
      @citation = Citation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def citation_params
      #params.fetch(:citation, {})
      params.require(:citation).permit(:body, :user_id, :round_id)
    end
end
