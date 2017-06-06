{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Types.General where

import ClassyPrelude
import Types.Options
import Types.API.Base

type BlizzardAPIRequest a = APIKey -> a

type APICaller = ReaderT APIOptions IO