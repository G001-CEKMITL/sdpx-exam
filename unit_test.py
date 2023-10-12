import unittest
import main

class TestMain(unittest.TestCase):
    def test_be_7_when_x_is_5(self):
        self.assertEqual(main.next2(5), "7")
    def test_be_neg3_when_x_is_neg5(self):
        self.assertEqual(main.next2(-5), "-3")
    def test_be_5dot5_when_x_is_3dot5(self):
        self.assertEqual(main.next2(3.5), "5.5")

if __name__ == '__main__':
    unittest.main()

