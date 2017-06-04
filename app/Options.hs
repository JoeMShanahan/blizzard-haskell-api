{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Options 
  ( module Types.Options
  , getOptions
  ) where

import ClassyPrelude
import Options.Applicative
import Types.Options

getOptions :: IO APIOptions
getOptions = execParser parseArgs

parseArgs :: ParserInfo APIOptions
parseArgs =
  info (optionsParser <**> helper)
    (  fullDesc
    <> progDesc ""
    <> header ""
    )
  where
  optionsParser = APIOptions <$> getKey <*> getVerbosity
  getKey = pack <$> strOption
    (  long "key"
    <> short 'k'
    <> metavar "KEY"
    <> help "Your API key"
    )
  getVerbosity =
    flag Normal Verbose
    (  long "verbose"
    <> short 'v'
    <> help "Enably verbose mode"
    )