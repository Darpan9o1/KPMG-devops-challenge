import unittest
import nested_dict

class TestDict(unittest.TestCase):
    def test_nested_dict(self):
        object = {'x': {'y': {'z': {'a': {'b': 'c'} }} } }
        key = 'x/y/z/a/b'
        result = nested_dict.n_dict(object,key)
        self.assertEqual(result,'c')

if __name__ == '__main__':
    unittest.main()
