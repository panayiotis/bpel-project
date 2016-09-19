class FinancialEventsController < ApplicationController
  before_action :set_financial_event, only: [:show, :edit, :update, :destroy]

  # GET /financial_events
  # GET /financial_events.json
  def index
    @financial_events = FinancialEvent.all
  end

  # GET /financial_events/1
  # GET /financial_events/1.json
  def show
  end

  # GET /financial_events/new
  def new
    @financial_event = FinancialEvent.new
  end

  # GET /financial_events/1/edit
  def edit
  end

  # POST /financial_events
  # POST /financial_events.json
  def create
    @financial_event = FinancialEvent.new(financial_event_params)

    respond_to do |format|
      if @financial_event.save
        format.html { redirect_to @financial_event, notice: 'Financial event was successfully created.' }
        format.json { render :show, status: :created, location: @financial_event }
      else
        format.html { render :new }
        format.json { render json: @financial_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_events/1
  # PATCH/PUT /financial_events/1.json
  def update
    respond_to do |format|
      if @financial_event.update(financial_event_params)
        format.html { redirect_to @financial_event, notice: 'Financial event was successfully updated.' }
        format.json { render :show, status: :ok, location: @financial_event }
      else
        format.html { render :edit }
        format.json { render json: @financial_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_events/1
  # DELETE /financial_events/1.json
  def destroy
    @financial_event.destroy
    respond_to do |format|
      format.html { redirect_to financial_events_url, notice: 'Financial event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_event
      @financial_event = FinancialEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financial_event_params
      params.require(:financial_event).permit(:branch_id, :customer_id, :type, :amount)
    end
end
