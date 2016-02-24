class HappyCallsController < ApplicationController
  before_action :set_happy_call, only: [:show, :edit, :update, :destroy]

  # GET /happy_calls
  # GET /happy_calls.json
  def index
    @happy_calls = HappyCall.all
  end

  # GET /happy_calls/1
  # GET /happy_calls/1.json
  def show
  end

  # GET /happy_calls/new
  def new
    @happy_call = HappyCall.new
  end

  # GET /happy_calls/1/edit
  def edit
  end

  # POST /happy_calls
  # POST /happy_calls.json
  def create
    @happy_call = HappyCall.new(happy_call_params)

    respond_to do |format|
      if @happy_call.save
        format.html { redirect_to @happy_call, notice: 'Happy call was successfully created.' }
        format.json { render :show, status: :created, location: @happy_call }
      else
        format.html { render :new }
        format.json { render json: @happy_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /happy_calls/1
  # PATCH/PUT /happy_calls/1.json
  def update
    respond_to do |format|
      if @happy_call.update(happy_call_params)
        format.html { redirect_to @happy_call, notice: 'Happy call was successfully updated.' }
        format.json { render :show, status: :ok, location: @happy_call }
      else
        format.html { render :edit }
        format.json { render json: @happy_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /happy_calls/1
  # DELETE /happy_calls/1.json
  def destroy
    @happy_call.destroy
    respond_to do |format|
      format.html { redirect_to happy_calls_url, notice: 'Happy call was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happy_call
      @happy_call = HappyCall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def happy_call_params
      params.require(:happy_call).permit(:calldate, :brnm, :level, :empnm, :scrno, :content, :team, :callee, :happycalldate, :happycallcontent, :memo, :calltype)
    end
end
