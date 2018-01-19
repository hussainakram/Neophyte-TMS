class QuizAttemptsController < ApplicationController
  before_action :set_quiz_attempt, only: [:show, :edit, :update, :destroy]

  # GET /quiz_attempts
  # GET /quiz_attempts.json
  def index
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_attempts = @quiz.quiz_attempts.all
  end

  # GET /quiz_attempts/1
  # GET /quiz_attempts/1.json
  def show
    @quiz_attempt = QuizAttempt.find(params[:id])
    @quiz = Quiz.find(@quiz_attempt.quiz_id)
  end

  # GET /quiz_attempts/new
  def new
    @quiz = Quiz.find(params[:quiz_id])
    @quiz_attempt = @quiz.quiz_attempts.where(user_id: current_user.id).first_or_create!
    redirect_to edit_quiz_attempt_path(@quiz_attempt)
  end

  # GET /quiz_attempts/1/edit
  def edit
    @quiz_attempt = QuizAttempt.find(params[:id])
    @quiz = Quiz.find(@quiz_attempt.quiz_id)
  end

  # POST /quiz_attempts
  # POST /quiz_attempts.json
  def create
  end

  # PATCH/PUT /quiz_attempts/1
  # PATCH/PUT /quiz_attempts/1.json
  def update
    respond_to do |format|
      if @quiz_attempt.update(quiz_attempt_params)
        format.html { redirect_to @quiz_attempt, notice: 'Quiz has been successfully attempted.' }
        format.json { render :show, status: :ok, location: @quiz_attempt }
        @quiz_attempt.set_correct_answers
        @quiz_attempt.set_attempted_answers
        @quiz_attempt.set_earned_marks
        @quiz_attempt.update_column(:status, "completed")
      else
        format.html { render :edit }
        format.json { render json: @quiz_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz_attempts/1
  # DELETE /quiz_attempts/1.json
  def destroy
    @quiz_attempt.destroy
    respond_to do |format|
      format.html { redirect_to quiz_quiz_attempts_url, notice: 'Quiz attempt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_attempt
      @quiz_attempt = QuizAttempt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_attempt_params
      params.require(:quiz_attempt).permit(:correct_answers, :time_taken, :attempted_questions, :status, :quiz_id, :user_id, question_attempts_attributes: [:id, :quiz_attempt_id, :correct, :answer_id, :question_id])
    end
end
