class ChildrenController < ApplicationController
  def index
    @children = Child.all
  end

  def show
    @child = Child.find(params[:id])
  end

  def new
    @child = Child.new
  end

  def create
    @child = Child.new
    @child.user_id = params[:user_id]
    @child.gender = params[:gender]
    @child.dob = Chronic.parse(params[:dob])
    @child.name = params[:name]

    if @child.save
      redirect_to "/children", :notice => "Child created successfully."
    else
      render 'new'
    end
  end

  def edit
    @child = Child.find(params[:id])
  end

  def update
    @child = Child.find(params[:id])

    @child.user_id = params[:user_id]
    @child.gender = params[:gender]
    @child.dob = Chronic.parse(params[:dob])
    @child.name = params[:name]

    if @child.save
      redirect_to "/children", :notice => "Child updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @child = Child.find(params[:id])

    @child.destroy

    redirect_to "/children", :notice => "Child deleted."
  end

  def switch_child
  cookies[:child_id]= params[:child_id]

  redirect_to root_url
  end
end
