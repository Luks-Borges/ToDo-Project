require 'rails_helper'

RSpec.describe TasksController, type: :controller do
    describe '#index' do
        context 'quando a requisição de index é bem sucedida' do
            it 'realiza a requisição' do
                get :index
                expect(response).to render_template(:all_tasks_layout)
                expect(response).redirect_to (tasks_path)
            end
        end
    end

    describe '#new' do
        it 'realiza a requisição' do
            get :new
            expect(response).to render_template(:create_layout)
            expect(response).to have_http_status(200)
        end
    end

    # describe '#create' do
    #     context 'quando a requisição de create é bem sucedida' do
    #         it 'realiza a requisição' do
    #             expect do
    #                 post :create
    #             end.to change(Task, :count).by(1)
    #             expect(response).to have_http_status(200)
    #         end
    #     end
    # end

    describe '#show' do
        context 'quando a requisição de show é bem sucedida' do
            it 'realiza a requisição' do
                get :show, params: { id: task.id }
                expect(response).to render_template(:task_show_layout)
                expect(response).to have_http_status(200)
            end
        end
    end

    describe '#edit' do
        it 'quando a requisição de edit é bem sucedida' do
            get :edit, params: {id: task.id}
            expect(response).to render_template(:edit_layout)
            expect(response).to have_http_status(200)
        end
    end

    # describe '#destroy' do
    #     expect do
    #       delete :destroy, params: { id: task.id }
    #     end.to change(Task, :count).by(0)
    #     expect(response).to have_http_status(200)
    # end
end