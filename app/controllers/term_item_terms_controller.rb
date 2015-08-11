class TermItemTermsController < ApplicationController
  before_action :set_term_item_term, only: [:show, :edit, :update, :destroy]

  # GET /term_item_terms
  # GET /term_item_terms.json
  def index
    @term_item_terms = TermItemTerm.all
  end

  # GET /term_item_terms/1
  # GET /term_item_terms/1.json
  def show
  end

  # GET /term_item_terms/new
  def new
    @term_item_term = TermItemTerm.new
  end

  # GET /term_item_terms/1/edit
  def edit
  end

  # POST /term_item_terms
  # POST /term_item_terms.json
  def create
    @term_item_term = TermItemTerm.new(term_item_term_params)

    respond_to do |format|
      if @term_item_term.save
        format.html { redirect_to @term_item_term, notice: 'Term item term was successfully created.' }
        format.json { render :show, status: :created, location: @term_item_term }
      else
        format.html { render :new }
        format.json { render json: @term_item_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_item_terms/1
  # PATCH/PUT /term_item_terms/1.json
  def update
    respond_to do |format|
      if @term_item_term.update(term_item_term_params)
        format.html { redirect_to @term_item_term, notice: 'Term item term was successfully updated.' }
        format.json { render :show, status: :ok, location: @term_item_term }
      else
        format.html { render :edit }
        format.json { render json: @term_item_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_item_terms/1
  # DELETE /term_item_terms/1.json
  def destroy
    @term_item_term.destroy
    respond_to do |format|
      format.html { redirect_to term_item_terms_url, notice: 'Term item term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_item_term
      @term_item_term = TermItemTerm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_item_term_params
      params.require(:term_item_term).permit(:term_id, :term_item_id)
    end
end
