class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  def student_answer
    StudentAnswer.create(answer_id: params[:answer_id], question_id: params[:question_id])
    if params[:id].nil?
      redirect_to summary_path(id: @question.quiz.id)
    else
      redirect_to question_path
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @answers = @question.answers
    @quiz_questions = @question.quiz.questions
    # @quiz_questions.push(Question.new)
    @position = @quiz_questions.index { |q| q.id == @question.id }
    if @position == (@quiz_questions.length - 1)
      # @next_position = @position
      # @next_question = @quiz_questions[@next_position].id
      redirect_to summary_path(id: @question.quiz.id)
    else
      @next_position = @position + 1
      @next_question = @quiz_questions[@next_position].id
    end
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:question_asked, :quiz_id)
    end
end
