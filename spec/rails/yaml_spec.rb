describe Rails do
  describe '#yaml' do
    describe 'colors' do
      let(:settings) { Rails.yaml(:colors) }
      subject { settings['halloween'] }
      it { should eq('primary' => 'orange', 'secondary' => 'black') }
    end
    
    describe 'emails' do
      let(:settings) { Rails.yaml(:emails) }
      subject { settings }
      
      context 'production' do
        before { Rails.env = 'production' }
        it { should eq('support' => 'help', 'domain' => 'example.com') }
        after { Rails.env = 'test' }
      end
      
      context 'test' do
        it { should eq('support' => 'help', 'domain' => 'localhost') }
      end
    end
  end
end