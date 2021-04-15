class BalanceManagementsController < ApplicationController
    def index
        @balance_managements = BalanceManagement.all
    end

    def show
        @balance_management = BalanceManagement.find(params[:id])
    end

    def new
        @balance_management = BalanceManagement.new
    end

    def create
        @balance_management = BalanceManagement.new(balance_management_params)
        @balance_management.category_id = 1
        @balance_management.save
        redirect_to balance_managements_url
    end

    def edit
        binding.pry
        @balance_management = BalanceManagement.find(params[:id])
    end

    def update
        @balance_management = BalanceManagement.find(params[:id])
        @balance_management.update(balance_management_params)
        redirect_to balance_management_url @balance_management
    end

    def destroy
        @balance_management = BalanceManagement.find(params[:id])
        @balance_management.destroy
        redirect_to balance_managements_url
    end
    
 private
    def balance_management_params
      params.require(:balance_management).permit(:name, :description, :price)
    end
end