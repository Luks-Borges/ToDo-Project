require 'rails_helper'

RSpec.describe PagesController, type: :controller do

    context '#home' do
        it 'retorna status 200' do
            expect(response).to have_http_status(:ok)
        end

        it 'testa a renderização do layout' do
            get :home
            expect(response).to render_template('home')
        end
    end
end