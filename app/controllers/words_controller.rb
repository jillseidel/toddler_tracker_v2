class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new
    @word.child_id = params[:child_id]
    @word.proficiency = params[:proficiency]
    @word.method = params[:method]
    @word.word_name = params[:word_name]
    @word.date = Chronic.parse(params[:date])
    @word.total = Word.where(:child_id => params[:child_id]).count


    if @word.save
      redirect_to "/words", :notice => "Word created successfully."
    else
      render 'new'
    end
  end

  def edit
    @word = Word.find(params[:id])
  end


  def update
    @word = Word.find(params[:id])

    @word.child_id = params[:child_id]
    @word.date = Chronic.parse(params[:date])
    @word.proficiency = params[:proficiency]
    @word.method = params[:method]
    @word.word_name = params[:word_name]




    if @word.save
      redirect_to "/words", :notice => "Word updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @word = Word.find(params[:id])

    @word.destroy

    redirect_to "/words", :notice => "Word deleted."
  end
end
