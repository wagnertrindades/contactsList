class CustomFieldController < ApplicationController
  before_action :authenticate_user!

  def index
    @custom_fields = current_user.custom_field.all
  end

  def new
    @custom_field = current_user.custom_field.new
  end

  def create
    @custom_field = current_user.custom_field.new(custom_field_params)

    if @custom_field.save
      flash[:success] = "Campo personalizado adicionado com sucesso."
      redirect_to custom_field_index_path
    else
      flash[:error] = "Ocorreu um problema em adicionar o campo."
      render action: :new
    end
  end

  private
    def custom_field_params
      params[:custom_field].permit(:title , :status, :user_id)
    end
end
