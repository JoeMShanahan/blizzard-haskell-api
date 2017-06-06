{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import ClassyPrelude
import Lib
import Options
import Types.General
import Types.API.Base

main :: IO ()
main = do
  options <- getOptions
  startAPI options $ do
    verboseLog . (\k -> "Your key is: '" <> k <> "'") =<< getKey
    return ()