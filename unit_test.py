import unittest
import main

class TestMain(unittest.TestCase):
    def test_is_prime(self):
        self.assertEqual(main.is_prime(17), 'True')
        self.assertEqual(main.is_prime(36), 'False')
        self.assertEqual(main.is_prime(13219), 'True')

if __name__ == '__main__':
    unittest.main()
