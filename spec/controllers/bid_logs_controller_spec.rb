RSpec.describe BidLogsController, type: :controller do

  before(:each) do
    role = FactoryBot.create(:role, name: 'admin')
    @user = FactoryBot.create(:admin_user, role: role)
    sign_in @user
  end

  describe 'Index Action' do
    let(:bidlog) { FactoryBot.create :bid_log }

    it 'Response 200' do
      get :index
      expect(response.status).to eq(200)
    end

    it 'Render Index Page' do
      get :index
      expect(response.status).to render_template('index')
    end

    it 'Check amount BidLog' do
      get :index
      expect(bidlog.amount).to eq(1)
    end
  end

  describe 'Create Action' do

    # it 'Redirection' do
    #   post :create , params: { bid_log: }
    # end
  end
end
