module Abstracts
  class MonkeysController < AbstractsController
    before_action :set_monkey, only: [:show, :edit, :update, :destroy]

    # Look mom, no actions!

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_monkey
      @monkey = Monkey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monkey_params
      params.require(:monkey).permit(:name)
    end
  end
end
