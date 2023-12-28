require 'rails_helper'

RSpec.describe PagesController, type: :controller do
    describe '#index' do
    context 'quando a requisição de index é bem sucedida' do
        it 'realiza a requisição' do
            get :index
            expect(response).to render_template(:home_page)
            expect(response).redirect_to (tasks_path)
            end
        end
    end
end