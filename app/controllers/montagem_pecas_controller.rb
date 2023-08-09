class MontagemPecasController < ApplicationController
  before_action :set_montagem_peca, only: %i[ show edit update destroy ]

  # GET /montagem_pecas or /montagem_pecas.json
  def index
    @montagem_pecas = MontagemPeca.all
  end

  # GET /montagem_pecas/1 or /montagem_pecas/1.json
  def show
  end

  # GET /montagem_pecas/new
  def new
    @montagem_peca = MontagemPeca.new
  end

  # GET /montagem_pecas/1/edit
  def edit
  end

  # POST /montagem_pecas or /montagem_pecas.json
  def create
    @montagem_peca = MontagemPeca.new(montagem_peca_params)

    respond_to do |format|
      if @montagem_peca.save
        format.html { redirect_to montagem_peca_url(@montagem_peca), notice: "Montagem peca was successfully created." }
        format.json { render :show, status: :created, location: @montagem_peca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @montagem_peca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /montagem_pecas/1 or /montagem_pecas/1.json
  def update
    respond_to do |format|
      if @montagem_peca.update(montagem_peca_params)
        format.html { redirect_to montagem_peca_url(@montagem_peca), notice: "Montagem peca was successfully updated." }
        format.json { render :show, status: :ok, location: @montagem_peca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @montagem_peca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /montagem_pecas/1 or /montagem_pecas/1.json
  def destroy
    @montagem_peca.destroy

    respond_to do |format|
      format.html { redirect_to montagem_pecas_url, notice: "Montagem peca was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_montagem_peca
      @montagem_peca = MontagemPeca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def montagem_peca_params
      params.require(:montagem_peca).permit(:montagem_id, :peca_id)
    end
end
