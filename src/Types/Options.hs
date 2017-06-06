{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Types.Options where

import ClassyPrelude
import Types.API.Base

data Verbosity = Normal | Verbose
  deriving (Eq, Show)

data APIOptions = APIOptions
  { apiKey       :: APIKey
  , apiVerbosity :: Verbosity
  } deriving (Eq, Show)