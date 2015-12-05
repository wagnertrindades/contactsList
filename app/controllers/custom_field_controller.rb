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

  def edit
    @custom_field = current_user.custom_field.find(params[:id])
  end

  def update
    @custom_field = current_user.custom_field.find(params[:id])
    if @custom_field.update_attributes(custom_field_params)
      flash[:success] = "Campo personalizado atualizado com sucesso."
      redirect_to custom_field_index_path
    else
      flash[:error] = "Ocorreu um problema em atualizar campo."
      render action: :edit
    end
  end

  def destroy
    @custom_field = current_user.custom_field.find(params[:id])
    if @custom_field.destroy
      flash[:success] = "Campo personalizado apagado com sucesso."
    else 
      flash[:error] = "Ocorreu um problema em apagar campo."
    end
    redirect_to custom_field_index_path
  end

  
  private
    def custom_field_params
      params[:custom_field].permit(:title , :status, :user_id)
    end
end
