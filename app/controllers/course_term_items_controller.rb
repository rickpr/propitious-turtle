class CourseTermItemsController < ApplicationController
  before_action :set_course_term_item, only: [:show, :edit, :update, :destroy]

  # GET /course_term_items
  # GET /course_term_items.json
  def index
    @course_term_items = CourseTermItem.all
  end

  # GET /course_term_items/1
  # GET /course_term_items/1.json
  def show
  end

  # GET /course_term_items/new
  def new
    @course_term_item = CourseTermItem.new
  end

  # GET /course_term_items/1/edit
  def edit
  end

  # POST /course_term_items
  # POST /course_term_items.json
  def create
    @course_term_item = CourseTermItem.new(course_term_item_params)

    respond_to do |format|
      if @course_term_item.save
        format.html { redirect_to @course_term_item, notice: 'Course term item was successfully created.' }
        format.json { render :show, status: :created, location: @course_term_item }
      else
        format.html { render :new }
        format.json { render json: @course_term_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_term_items/1
  # PATCH/PUT /course_term_items/1.json
  def update
    respond_to do |format|
      if @course_term_item.update(course_term_item_params)
        format.html { redirect_to @course_term_item, notice: 'Course term item was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_term_item }
      else
        format.html { render :edit }
        format.json { render json: @course_term_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_term_items/1
  # DELETE /course_term_items/1.json
  def destroy
    @course_term_item.destroy
    respond_to do |format|
      format.html { redirect_to course_term_items_url, notice: 'Course term item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_term_item
      @course_term_item = CourseTermItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_term_item_params
      params.require(:course_term_item).permit(:course_id, :term_item_id)
    end
end
