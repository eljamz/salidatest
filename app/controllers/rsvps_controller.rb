class RsvpsController < ApplicationController
  before_action :set_rsvp, only: %i[ show edit update destroy ]

  # GET /rsvps or /rsvps.json
  def index
    @rsvps = Rsvp.all
  end

  # GET /rsvps/1 or /rsvps/1.json
  def show
  end

  # GET /rsvps/new
  def new
    @rsvp = Rsvp.new
    @event = Event.find(params[:event_id])
  end

  # GET /rsvps/1/edit
  def edit
    @event = @rsvp.event
  end

  # POST /rsvps or /rsvps.json
  def create
    @event = Event.find(params[:rsvp][:event_id])
    @rsvp = @event.rsvps.build(rsvp_params)
    respond_to do |format|
      if @rsvp.save
        @last_rsvp = @rsvp.event.rsvps.order(created_at: :desc).limit(6).last
        format.turbo_stream { render :create }
        format.html { redirect_to @rsvp.event, notice: "Rsvp was successfully created.", flash: { new_rsvp_id: @rsvp.id } }
        format.json { render :show, status: :created, location: @rsvp }
      else
        flash.now[:alert] = @rsvp.errors.full_messages.to_sentence
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.replace("rsvp_form", partial: "rsvps/form", locals: { rsvp: @rsvp, event: @event }),
            turbo_stream.replace("flash_messages", partial: "rsvps/flash_messages")
          ], status: :unprocessable_entity
        end
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rsvps/1 or /rsvps/1.json
  def update
    respond_to do |format|
      if @rsvp.update(rsvp_params)
        format.html { redirect_to rsvp_url(@rsvp), notice: "Rsvp was successfully updated." }
        format.json { render :show, status: :ok, location: @rsvp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rsvps/1 or /rsvps/1.json
  def destroy
    @rsvp.destroy!

    respond_to do |format|
      format.html { redirect_to rsvps_url, notice: "Rsvp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rsvp
      @rsvp = Rsvp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rsvp_params
      params.require(:rsvp).permit(:event_id, :name, :email)
    end
end
