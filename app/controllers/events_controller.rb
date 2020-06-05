class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.search(params[:search])
    @current_user = current_user
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @user_on_event = UserOnEvent.all
    @organization = Organization.all
    @current_user = current_user
    @comments = Comment.all
    @user = User.all
    @comment_replies = CommentReply
  end

  # GET /events/new
  def new
    @current_user = current_user
    @event = Event.new
  end

  def invite
    @current_user = current_user
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    @current_user = current_user
  end

  # POST /events
  # POST /events.json
  def create
    @current_user = current_user
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @current_user = current_user
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def current_user
    @current_user = User.first
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.fetch(:event, {}).permit(:name, :description, :location, :starting_event_date, :event_privacy, :organization_id, :flyer, :user_id, :files)
  end
end