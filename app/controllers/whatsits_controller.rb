class WhatsitsController < ApplicationController
  def show

  end

  def create

    beggar = Whosey.find_or_create_by_name(whosey_params[:name])
    whatsit = Whatsit.create(whatsit_params)

    redirect_to whatsit_path(whatsit)
  end

  def whatsit_params
    params.require(:whatsit).
      permit(:severity, :attitude, :description, :whosey_id)
  end

  def whosey_params
    params.require(:whosey).
      permit(:name)
  end
end
