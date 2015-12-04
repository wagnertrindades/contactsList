class TextFieldsController < ApplicationController
  before_action :set_contact_list

  def new
    @text_field = @contact_list.text_field.new
  end

  def create
    @text_field =  @contact_list.text_field.new(text_field_params)

    if @text_field.save
      flash[:success] = "Campo de texto adicionado com sucesso."
      redirect_to contact_lists_path
    else
      flash[:error] = "Problema ocorrido ao adicionar o campo de texto."
      render action: :new
    end
  end


  private

  def set_contact_list
      @contact_list = current_user.contact_list.find(params[:id])
  end

  def text_field_params
    params.require(:text_field).permit(:title)
  end

end