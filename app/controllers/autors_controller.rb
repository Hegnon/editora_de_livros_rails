class AutorsController < ApplicationController
  before_action :set_autor, only: %i[ show edit update destroy ]

  # GET /autors or /autors.json
  
  def search
    query = params[:query].to_s.downcase
    autores = Autor.where('lower(nome) LIKE ?', "%#{query}%")
    render json: { data: autores.map { |autor| { value: autor.id, text: autor.nome } } }
  end

  def index
    @autors = Autor.all
  end

  # GET /autors/1 or /autors/1.json
  def show
  end

  # GET /autors/new
  def new
    @autor = Autor.new
  end

  # GET /autors/1/edit
  def edit
  end

  # POST /autors or /autors.json
  def create
    @autor = Autor.new(autor_params)

    respond_to do |format|
      if @autor.save
        format.html { redirect_to autor_url(@autor), notice: "Autor was successfully created." }
        format.json { render :show, status: :created, location: @autor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autors/1 or /autors/1.json
  def update
    respond_to do |format|
      if @autor.update(autor_params)
        format.html { redirect_to autor_url(@autor), notice: "Autor was successfully updated." }
        format.json { render :show, status: :ok, location: @autor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autors/1 or /autors/1.json
  def destroy
    begin
      @autor.destroy
      respond_to do |format|
        format.html { redirect_to autors_url, notice: "Autor was successfully destroyed." }
        format.json { head :no_content }
      end
    rescue ActiveRecord::InvalidForeignKey => e
      respond_to do |format|
        format.html { redirect_to autors_url, notice: "Não foi possível excluir o autor pois existem livros viculados a ele." }
        format.json { render json: { error: "Não foi possível excluir o autor devido a dependências em outros registros." }, status: :unprocessable_entity }
      end
    end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autor
      @autor = Autor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autor_params
      params.require(:autor).permit(:nome, :cpf)
    end
end
