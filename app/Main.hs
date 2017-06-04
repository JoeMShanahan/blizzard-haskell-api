{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import ClassyPrelude
import Lib
import Options
import Types.General

main :: IO ()
main = do
  options <- getOptions
  let token = apiKey options :: APIToken
  putStrLn token
  someFunc