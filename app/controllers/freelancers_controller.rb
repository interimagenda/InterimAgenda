class FreelancersController < ApplicationController

  def index
    @freelancers = Freelancer.all
  end

  def show
    @freelancer = Freelancer.find(params[:id])
  end

  def edit
    @freelancer = Freelancer.find(params[:id])
  end

  def update
    @freelancer = Freelancer.find(params[:id])
    if @freelancer.update_attributes(freelancer_params)
      redirect_to @freelancer
    else
      render 'edit'
    end
  end

    # Freelancers should be created via User-creation
  # def new
  #   @freelancer = Freelancer.new
  # end
  #
  # def create
  #   @freelancer = Freelancer.new(freelancer_params)
  #   if @freelancer.save
  #     redirect_to @freelancer
  #   else
  #     render 'new'
  #   end
  # end

  def destroy
    @freelancer = Freelancer.find(params[:id])
    @freelancer.destroy
    redirect_to freelancers_path
  end

  private

  def freelancer_params
    params.require( :freelancer ).permit(:first_name, :last_name, :birth_date, :gender )
  end

end
