class LessonVocasController < ApplicationController
  before_action :set_lesson_voca, only: [:show, :edit, :update, :destroy]

  # GET /lesson_vocas
  # GET /lesson_vocas.json
  def index
    @lesson_vocas = LessonVoca.all
  end

  # GET /lesson_vocas/1
  # GET /lesson_vocas/1.json
  def show
  end

  # GET /lesson_vocas/new
  def new
    @lesson_voca = LessonVoca.new
  end

  # GET /lesson_vocas/1/edit
  def edit
  end

  # POST /lesson_vocas
  # POST /lesson_vocas.json
  def create
    @lesson_voca = LessonVoca.new(lesson_voca_params)

    respond_to do |format|
      if @lesson_voca.save
        format.html { redirect_to @lesson_voca, notice: 'Lesson voca was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_voca }
      else
        format.html { render :new }
        format.json { render json: @lesson_voca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_vocas/1
  # PATCH/PUT /lesson_vocas/1.json
  def update
    respond_to do |format|
      if @lesson_voca.update(lesson_voca_params)
        format.html { redirect_to @lesson_voca, notice: 'Lesson voca was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_voca }
      else
        format.html { render :edit }
        format.json { render json: @lesson_voca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_vocas/1
  # DELETE /lesson_vocas/1.json
  def destroy
    @lesson_voca.destroy
    respond_to do |format|
      format.html { redirect_to lesson_vocas_url, notice: 'Lesson voca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_voca
      @lesson_voca = LessonVoca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_voca_params
      params.require(:lesson_voca).permit(:lesson_id, :vocabulary_id)
    end
end
