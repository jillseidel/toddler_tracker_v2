class DashboardController < ApplicationController

  def index
  @foods = Food.where(:child_id=>cookies[:child_id])
  @fats = @foods.map{|x| x[:fat]}
  @dairy = @foods.map{|x| x[:dairy]}
  @protein = @foods.map{|x| x[:protein]}
  @vegetable = @foods.map{|x| x[:vegetable]}
  @fruit = @foods.map{|x| x[:fruit]}
  @grain = @foods.map{|x| x[:grain]}

    @avg_fat = @fats.sum.to_f/@fats.count
    @avg_dairy = @dairy.sum.to_f/@dairy.count
    @avg_protein = @protein.sum.to_f/@protein.count
    @avg_vegetable = @vegetable.sum.to_f/@vegetable.count
    @avg_fruit = @fruit.sum.to_f/@fruit.count
    @avg_grain = @grain.sum.to_f/@grain.count


  @sleeps = Sleep.where(:child_id=>cookies[:child_id])
  @symptoms = Symptom.where(:child_id=>cookies[:child_id])
  @words = Word.where(:child_id=>cookies[:child_id])



  end


end
