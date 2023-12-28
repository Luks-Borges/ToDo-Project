RSpec.describe UsersController, type: :controller do
    
    describe '#edit' do
    it 'quando a requisição de edit é bem sucedida' do
        get :edit, params: {id: task.id}
        expect(user.name).to eq(user.name)
        expect(response).to have_http_status(200)
        expect(response).to render_template(:user_edit_layout)
    end
end