module Api
  module V1
    class IngredientsController < ApplicationController
      def index
        render json: Ingredient.all
      end

      def show
        cocktail = Ingredient.find(params[:id])

      end

      # def new
      #   @cocktail = Cocktail.new
      # end

      def create
        # byebug
        @ingredient = Ingredient.create(strong_params)
        # byebug
        render json: @ingredient
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
        params.require(:ingredient).permit(:name)
      end
    end
  end
end
