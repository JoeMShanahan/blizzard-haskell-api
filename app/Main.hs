{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import ClassyPrelude
import Lib
import Options
import Types.General
import Types.APIBase

main :: IO ()
main = do
  options <- getOptions
  flip runReaderT options $ do
    verboseLog . (\k -> "Your key is: '" <> k <> "'") =<< getKey
    return ()