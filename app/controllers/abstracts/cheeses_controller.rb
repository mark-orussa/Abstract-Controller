module Abstracts
  class CheesesController < AbstractsController
    before_action :set_cheese, only: [:show, :edit, :update, :destroy]

    # Look mom, no actions!

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_cheese
      @cheese = Cheese.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cheese_params
      params.require(:cheese).permit(:name)
    end
  end
end
