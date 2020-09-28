class Game02sController < ApplicationController
  before_action :set_game02, only: [:show, :edit, :update, :destroy]

  # GET /game02s
  # GET /game02s.json
  def index
    @game02s = Game02.all
  end

  # GET /game02s/1
  # GET /game02s/1.json
  def show
  end

  # GET /game02s/new
  def new
    @game02 = Game02.new
  end

  # GET /game02s/1/edit
  def edit
  end

  # POST /game02s
  # POST /game02s.json
  def create
    @game02 = Game02.new(game02_params)

    respond_to do |format|
      if @game02.save
        format.html { redirect_to @game02, notice: 'Game02 was successfully created.' }
        format.json { render :show, status: :created, location: @game02 }
      else
        format.html { render :new }
        format.json { render json: @game02.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game02s/1
  # PATCH/PUT /game02s/1.json
  def update
    respond_to do |format|
      if @game02.update(game02_params)
        format.html { redirect_to @game02, notice: 'Game02 was successfully updated.' }
        format.json { render :show, status: :ok, location: @game02 }
      else
        format.html { render :edit }
        format.json { render json: @game02.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game02s/1
  # DELETE /game02s/1.json
  def destroy
    @game02.destroy
    respond_to do |format|
      format.html { redirect_to game02s_url, notice: 'Game02 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game02
      @game02 = Game02.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game02_params
      params.require(:game02).permit(:rule_text)
    end
end
