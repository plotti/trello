class NextStepsController < ApplicationController
  before_action :set_next_step, only: [:show, :edit, :update, :destroy]

  # GET /next_steps
  # GET /next_steps.json
  def index
    @next_steps = NextStep.get_next_steps
  end

end
