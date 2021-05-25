control 'resources' do
  resource_group = 'kpmgnetworking'

  describe azurerm_network_security_group(resource_group: resource_group, name: 'nsg_names') do
    it                            { should exist }
    its('type')                   { should eq 'Microsoft.Network/networkSecurityGroups' }
    its('security_rules')         { should_not be_empty }
    its('default_security_rules') { should_not be_empty }
  end

  describe azurerm_virtual_network(resource_group: resource_group, name: 'vnet_name') do
    it               { should exist }
    its('location')  { should eq 'uksouth' }
  end
end
