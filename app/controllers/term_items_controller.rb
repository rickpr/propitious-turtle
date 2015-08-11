class TermItemsController < ApplicationController
  before_action :set_term_item, only: [:show, :edit, :update, :destroy]

  # GET /term_items
  # GET /term_items.json
  def index
    @term_items = TermItem.all
  end

  # GET /term_items/1
  # GET /term_items/1.json
  def show
  end

  # GET /term_items/new
  def new
    @term_item = TermItem.new
  end

  # GET /term_items/1/edit
  def edit
  end

  # POST /term_items
  # POST /term_items.json
  def create
    @term_item = TermItem.new(term_item_params)

    respond_to do |format|
      if @term_item.save
        format.html { redirect_to @term_item, notice: 'Term item was successfully created.' }
        format.json { render :show, status: :created, location: @term_item }
      else
        format.html { render :new }
        format.json { render json: @term_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_items/1
  # PATCH/PUT /term_items/1.json
  def update
    respond_to do |format|
      if @term_item.update(term_item_params)
        format.html { redirect_to @term_item, notice: 'Term item was successfully updated.' }
        format.json { render :show, status: :ok, location: @term_item }
      else
        format.html { render :edit }
        format.json { render json: @term_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_items/1
  # DELETE /term_items/1.json
  def destroy
    @term_item.destroy
    respond_to do |format|
      format.html { redirect_to term_items_url, notice: 'Term item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_item
      @term_item = TermItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_item_params
      params.require(:term_item).permit(:name, :term_id)
    end
end
