{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Types.General where

import ClassyPrelude
import Types.Options
import Types.APIBase

type BlizzardAPIRequest a = APIKey -> a

type APICaller = ReaderT APIOptions IO