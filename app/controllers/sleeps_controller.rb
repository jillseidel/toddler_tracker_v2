class SleepsController < ApplicationController
  def index
    @sleeps = Sleep.where(:child_id=>cookies[:child_id])
    @naps = @sleeps.map{|x| x[:naps]}
    @day_sleep = @sleeps.map{|x| x[:day_sleep]}
    @night_sleep = @sleeps.map{|x| x[:night_sleep]}
    @wake_ups = @sleeps.map{|x| x[:wake_ups]}
  end

  def show
    @sleep = Sleep.find(params[:id])
  end


  def new
    @sleep = Sleep.new
  end

  def create
    @sleep = Sleep.new
    @sleep.child_id = params[:child_id]
    @sleep.date = Chronic.parse(params[:date])
    @sleep.naps = params[:naps]
    @sleep.wake_ups = params[:wake_ups]
    @sleep.day_sleep = params[:day_sleep]
    @sleep.night_sleep = params[:night_sleep]

    if @sleep.save
      redirect_to "/sleeps", :notice => "Sleep created successfully."
    else
      render 'new'
    end
  end

  def edit
    @sleep = Sleep.find(params[:id])
  end

  def update
    @sleep = Sleep.find(params[:id])

    @sleep.child_id = params[:child_id]
    @sleep.date = Chronic.parse(params[:date])
    @sleep.naps = params[:naps]
    @sleep.wake_ups = params[:wake_ups]
    @sleep.day_sleep = params[:day_sleep]
    @sleep.night_sleep = params[:night_sleep]

    if @sleep.save
      redirect_to "/sleeps", :notice => "Sleep updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @sleep = Sleep.find(params[:id])

    @sleep.destroy

    redirect_to "/sleeps", :notice => "Sleep deleted."
  end
end
