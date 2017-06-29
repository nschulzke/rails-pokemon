class BasePokemonsController < ApplicationController
  before_action :set_base_pokemon, only: [:show, :edit, :update, :destroy]

  # GET /base_pokemons
  # GET /base_pokemons.json
  def index
    @base_pokemons = BasePokemon.all
  end

  # GET /base_pokemons/1
  # GET /base_pokemons/1.json
  def show
  end

  # GET /base_pokemons/new
  def new
    @base_pokemon = BasePokemon.new
  end

  # GET /base_pokemons/1/edit
  def edit
  end

  # POST /base_pokemons
  # POST /base_pokemons.json
  def create
    @base_pokemon = BasePokemon.new(base_pokemon_params)

    respond_to do |format|
      if @base_pokemon.save
        format.html { redirect_to @base_pokemon, notice: 'Base pokemon was successfully created.' }
        format.json { render :show, status: :created, location: @base_pokemon }
      else
        format.html { render :new }
        format.json { render json: @base_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_pokemons/1
  # PATCH/PUT /base_pokemons/1.json
  def update
    respond_to do |format|
      if @base_pokemon.update(base_pokemon_params)
        format.html { redirect_to @base_pokemon, notice: 'Base pokemon was successfully updated.' }
        format.json { render :show, status: :ok, location: @base_pokemon }
      else
        format.html { render :edit }
        format.json { render json: @base_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_pokemons/1
  # DELETE /base_pokemons/1.json
  def destroy
    @base_pokemon.destroy
    respond_to do |format|
      format.html { redirect_to base_pokemons_url, notice: 'Base pokemon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_pokemon
      @base_pokemon = BasePokemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_pokemon_params
      params.require(:base_pokemon).permit(:name, :health, :power, :element, :background)
    end
end
