{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Lib
  ( someFunc
  ) where

import ClassyPrelude

someFunc :: IO ()
someFunc = putStrLn "someFunc"