module UnitTests where

import Test.Framework.Providers.API
import Test.Framework.Providers.HUnit
import Test.HUnit

-- TODO: add some unit tests.
tests = testGroup "HUnit tests" [
  testCase "a passing test!"       $ 5 @?= 5
 ,testCase "another passing test!" $ 6 @?= 6 ]
