{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Types.General where

import ClassyPrelude

type BlizzardAPIRequest a = APIToken -> a
type APIToken = Text