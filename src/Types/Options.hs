{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Types.Options where

import ClassyPrelude

data Verbosity = Normal | Verbose

data APIOptions = APIOptions
  { apiKey       :: Text
  , apiVerbosity :: Verbosity
  }