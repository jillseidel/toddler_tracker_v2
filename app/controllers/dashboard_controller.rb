class DashboardController < ApplicationController

  def index
  @foods = Food.where(:child_id=>cookies[:child_id])
  @sleeps = Sleep.where(:child_id=>cookies[:child_id])
  @symptoms = Symptom.where(:child_id=>cookies[:child_id])
  @words = Word.where(:child_id=>cookies[:child_id])
  end


end
