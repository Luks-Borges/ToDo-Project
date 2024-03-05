require 'rails_helper'

RSpec.describe TasksController, type: :controller do

  context '#index' do
    it 'retorna status 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'executa a requisição de index' do
      get :index
      # Implementar mock para testar o @task
      expect(response).to render_template('all_tasks_layout')
    end 
  end

  context '#show' do
    it 'retorna status 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'executa a requisição de show' do
      # Preciso do mock para testar uma tarefa com id, passar o parametro dela e testar a requisição get da action show
    end 
  end

  context  '#new' do
    it 'retorna status 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'executa a requisição de new' do
      get :new
      expect(response).to render_template('create_layout')
    end 
  end

  context '#edit' do
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
