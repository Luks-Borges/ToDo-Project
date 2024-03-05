require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context '#index' do
    it 'retorna status 200' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  context '#show' do
    it 'retorna status 200' do
      #Precisa do id para mostrar alguma coisa
      expect(response).to have_http_status(:ok)
    end
  end

  context '#new' do
    it 'retorna status 200' do
      get :new
      expect(response).to have_http_status(:ok)
    end
  end

  context  '#edit' do
    it 'retorna status 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'executa a requisição de edit' do
      # Precisa do mock para mostrar o id
    end 
  end

  
  context '#create' do
    # Mock para testar a requisição de um post dentro do nosso projeto
  end

  context '#update' do
    # Mock para testar a atualização de algo
  end

  context '#set_task' do
    # Precisa do Mock para o id
  end

  context '#task_params' do
    # Precisa do Mock para o id
  end

end
