class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new
    @food.date = Chronic.parse(params[:date])
    @food.child_id = params[:child_id]
    @food.fat = params[:fat]
    @food.dairy = params[:dairy]
    @food.protein = params[:protein]
    @food.vegetable = params[:vegetable]
    @food.fruit = params[:fruit]
    @food.grain = params[:grain]

    if @food.save
      redirect_to "/foods", :notice => "Food created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])

    @food.date = Chronic.parse(params[:date])
    @food.child_id = params[:child_id]
    @food.fat = params[:fat]
    @food.dairy = params[:dairy]
    @food.protein = params[:protein]
    @food.vegetable = params[:vegetable]
    @food.fruit = params[:fruit]
    @food.grain = params[:grain]

    if @food.save
      redirect_to "/foods", :notice => "Food updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food = Food.find(params[:id])

    @food.destroy

    redirect_to "/foods", :notice => "Food deleted."
  end




end
