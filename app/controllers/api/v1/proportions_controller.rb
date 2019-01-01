module Api
  module V1
    class ProportionsController < ApplicationController
      def index
        render json: Proportion.all
      end

      def show
        proportion = Proportion.find(params[:id])

      end

      # def new
      #   @cocktail = Cocktail.new
      # end

      def create
        # byebug
        @proportion = Proportion.create(strong_params)
        # byebug
        render json: @proportion
      end

      def edit

      end

      def update

      end

      def destroy

      end

      private

      def strong_params
        # byebug
        params.require(:proportion).permit(:amount, :cocktail_id, :ingredient_id)
      end
    end
  end
end
