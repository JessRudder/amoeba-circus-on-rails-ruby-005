class AmoebasController < ApplicationController
  before_action :set_amoeba, only: [:show, :edit, :update, :destroy]

  # GET /amoebas
  # GET /amoebas.json
  def index
    @amoebas = Amoeba.all
  end

  # GET /amoebas/1
  # GET /amoebas/1.json
  def show
  end

  # GET /amoebas/new
  def new
    @amoeba = Amoeba.new
  end

  # GET /amoebas/1/edit
  def edit
  end

  # POST /amoebas
  # POST /amoebas.json
  def create
    @amoeba = Amoeba.new(amoeba_params)

    respond_to do |format|
      if @amoeba.save
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully created.' }
        format.json { render :show, status: :created, location: @amoeba }
      else
        format.html { render :new }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amoebas/1
  # PATCH/PUT /amoebas/1.json
  def update
    respond_to do |format|
      if @amoeba.update(amoeba_params)
        format.html { redirect_to @amoeba, notice: 'Amoeba was successfully updated.' }
        format.json { render :show, status: :ok, location: @amoeba }
      else
        format.html { render :edit }
        format.json { render json: @amoeba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amoebas/1
  # DELETE /amoebas/1.json
  def destroy
    @amoeba.destroy
    respond_to do |format|
      format.html { redirect_to amoebas_url, notice: 'Amoeba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amoeba
      @amoeba = Amoeba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amoeba_params
      params.require(:amoeba).permit(:name, :generation, :act_id, :talent_id)
    end
end
