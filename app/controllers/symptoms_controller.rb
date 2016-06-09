class SymptomsController < ApplicationController


  def index
    @symptoms = Symptom.all
  end

  def show
    @symptom = Symptom.find(params[:id])
  end

  def new
    @symptom = Symptom.new
  end

  def create
    @symptom = Symptom.new
    @symptom.date = Chronic.parse(params[:date])
    @symptom.none = params[:none]
    @symptom.child_id = params[:child_id]
    @symptom.other = params[:other]
    @symptom.diahrrea = params[:diahrrea]
    @symptom.fever = params[:fever]
    @symptom.cough = params[:cough]

    if @symptom.save
      redirect_to "/symptoms", :notice => "Symptom created successfully."
    else
      render 'new'
    end
  end

  def edit
    @symptom = Symptom.find(params[:id])
  end

  def update
    @symptom = Symptom.find(params[:id])

    @symptom.date = Chronic.parse(params[:date])
    @symptom.none = params[:none]
    @symptom.child_id = params[:child_id]
    @symptom.other = params[:other]
    @symptom.diahrrea = params[:diahrrea]
    @symptom.fever = params[:fever]
    @symptom.cough = params[:cough]


    if @symptom.save
      redirect_to "/symptoms", :notice => "Symptom updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @symptom = Symptom.find(params[:id])

    @symptom.destroy

    redirect_to "/symptoms", :notice => "Symptom deleted."
  end


end
