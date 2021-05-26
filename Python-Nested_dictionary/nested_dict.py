
def n_dict(object,key):
    key_values = key.split("/")
    key_length = len(key_values)

    i = 0
    value = object

    while True:
        if i+1 <= key_length:
            tmp_dict = value.get(key_values[i])
            value = tmp_dict
            i += 1
        else:
            break

    return value

if __name__ == '__main__':
    inp = input("Please enter nested dictionary: ")
    key = input("Please enter dictionary key (e.g. x/y/z): ")

    while True:
        
    o = n_dict(inp,key)        
    print(o)