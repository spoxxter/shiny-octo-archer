class JobResultsController < ApplicationController
  before_action :set_job_result, only: [:show, :edit, :update, :destroy]

  # GET /job_results
  # GET /job_results.json
  def index
    @job_results = JobResult.all
  end

  # GET /job_results/1
  # GET /job_results/1.json
  def show
  end

  # GET /job_results/new
  def new
    @job_result = JobResult.new
  end

  # GET /job_results/1/edit
  def edit
  end

  # POST /job_results
  # POST /job_results.json
  def create
    @job_result = JobResult.new(job_result_params)

    respond_to do |format|
      if @job_result.save
        format.html { redirect_to @job_result, notice: 'Job result was successfully created.' }
        format.json { render :show, status: :created, location: @job_result }
      else
        format.html { render :new }
        format.json { render json: @job_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_results/1
  # PATCH/PUT /job_results/1.json
  def update
    respond_to do |format|
      if @job_result.update(job_result_params)
        format.html { redirect_to @job_result, notice: 'Job result was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_result }
      else
        format.html { render :edit }
        format.json { render json: @job_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_results/1
  # DELETE /job_results/1.json
  def destroy
    @job_result.destroy
    respond_to do |format|
      format.html { redirect_to job_results_url, notice: 'Job result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_result
      @job_result = JobResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_result_params
      params.require(:job_result).permit(:jobtitle, :company, :snippet, :url, :latitude, :longitude)
    end
end
