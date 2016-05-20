class EmployersController < ApplicationController

  def index
    @employers = Employer.all
    if params[:search]
      @employers = Employer.search(params[:search]).order("created_at DESC")
    else
      @employers = Employer.all.order('created_at DESC')
    end
  end

  def show
    @employer = Employer.find(params[:id])
  end

  def update
    @employer = Employer.find(params[:id])
    if @employer.update_attributes(employer_params)
      redirect_to @employer
    else
      render 'edit'
    end
  end

  def edit
    @employer = Employer.find(params[:id])
  end

    # Employers should be created via User-creation
  # def new
  #   @employer = Employer.new
  # end
  #
  #
  # def create
  #   @employer = Employer.new(employer_params)
  #   if @employer.save
  #     redirect_to @employer
  #   else
  #     render 'new'
  #   end
  # end

  def destroy
    @employer = Employer.find(params[:id])
    @employer.destroy
    redirect_to employers_path
  end

  private

  def employer_params
    params.require( :employer ).permit(:company_name, :head_office, :description)
  end

end
