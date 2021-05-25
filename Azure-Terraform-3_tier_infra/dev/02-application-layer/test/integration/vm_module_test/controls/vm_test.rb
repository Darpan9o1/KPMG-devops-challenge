control 'vm config' do
  describe user('admin') do
    its('home') { should eq '/home/admin' }
  end

  describe directory('/home/admin') do
    it { should exist }
    its('owner') { should eq 'admin' }
  end
end