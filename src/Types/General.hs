{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Types.General 
  (
  ) where

import ClassyPrelude

data BlizzardApiRequest =
    APIOne Player Guild
  | APITwo Player Boss

data Player = Player
data Guild = Guild
data Boss = Boss

f :: IO ()
f = putStrLn $ "hello!"