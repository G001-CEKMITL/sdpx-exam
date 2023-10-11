import unittest
import main

class TestMain(unittest.TestCase):
    def test_true_x_is_17(self):
        self.assertEqual(main.is_prime(17), "True")
    def test_false_x_is_36(self):
        self.assertEqual(main.is_prime(36), "False")
    def test_true_x_is_13219(self):
        self.assertEqual(main.is_prime(13219), "True")

if __name__ == '__main__':
    unittest.main()

