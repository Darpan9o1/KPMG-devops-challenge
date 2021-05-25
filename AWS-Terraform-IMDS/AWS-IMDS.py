# Below code to be executable after logging into EC2 instance

import requests
import sys
from requests.packages.urllib3 import Retry

instance_identity_url = "http://169.254.169.254/latest/dynamic/instance-identity/document"
session = requests.Session()
retries = Retry(total=3, backoff_factor=0.3)
metadata_adapter = requests.adapters.HTTPAdapter(max_retries=retries)
session.mount("http://169.254.169.254/", metadata_adapter)

# Exception Handling
try:
    r = requests.get(instance_identity_url, timeout=(2, 5))
except (requests.exceptions.ConnectTimeout, requests.exceptions.ConnectionError) as err:
    print("Connection to AWS EC2 Metadata timed out: " + str(err.__class__.__name__))
    print("Is this an EC2 instance? Is the AWS metadata endpoint blocked? (http://169.254.169.254/)")
    sys.exit(1)
response_json = r.json()

def get_all():
    instance_metadata = response_json
    return(instance_metadata)

def get_region():
    region = response_json.get("region")
    return(region)

def get_accountid():
    accountid = response_json.get("accountId")
    return(accountid)

def get_imageid():
    imageid = response_json.get("imageId")
    return(imageid)

def get_instanceType():
    availabilityZone = response_json.get("instanceType")
    return(availabilityZone)

def get_privateIp():
    privateIp = response_json.get("privateIP")
    return(privateIp)

if __name__ == '__main__':

    metadata_mapping = {1:'get_all', 2: 'get_region', 3: 'get_accountid', 4: 'get_imageid', 5: 'get_instanceType', 6: 'get_privateIp'}

    # Print out the options
    print("Please select one of the below options to get metadata details of aws instance you have currently logged in :\n")
    for i in range(len(metadata_mapping)):
        print(str(i+1) + ". " + metadata_mapping[i+1])

    # Take user input and print metdata info as output
    inp = int(input("\nEnter a number: "))
    if inp in range(1, 7):
        output = eval(metadata_mapping[inp] + "()")
        print(output)
    else:
        print("Invalid input!")

