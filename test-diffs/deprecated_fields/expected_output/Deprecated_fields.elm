module Deprecated_fields exposing (..)

-- DO NOT EDIT
-- AUTOGENERATED BY THE ELM PROTOCOL BUFFER COMPILER
-- https://github.com/tiziano88/elm-protobuf
-- source file: deprecated_fields.proto

import Protobuf exposing (..)

import Json.Decode as JD
import Json.Encode as JE


uselessDeclarationToPreventErrorDueToEmptyOutputFile = 42


type EnumBar
    = EnumbarValueDefault -- 0
    | EnumbarValue1 -- 1


enumBarDecoder : JD.Decoder EnumBar
enumBarDecoder =
    let
        lookup s =
            case s of
                "ENUMBAR_VALUE_DEFAULT" ->
                    EnumbarValueDefault

                "ENUMBAR_VALUE_1" ->
                    EnumbarValue1

                _ ->
                    EnumbarValueDefault
    in
        JD.map lookup JD.string


enumBarDefault : EnumBar
enumBarDefault = EnumbarValueDefault


enumBarEncoder : EnumBar -> JE.Value
enumBarEncoder v =
    let
        lookup s =
            case s of
                EnumbarValueDefault ->
                    "ENUMBAR_VALUE_DEFAULT"

                EnumbarValue1 ->
                    "ENUMBAR_VALUE_1"

    in
        JE.string <| lookup v


type alias Bar =
    { field : Bool -- 1
    }


barDecoder : JD.Decoder Bar
barDecoder =
    JD.lazy <| \_ -> decode Bar
        |> required "field" JD.bool False


barEncoder : Bar -> JE.Value
barEncoder v =
    JE.object <| List.filterMap identity <|
        [ (requiredFieldEncoder "field" JE.bool False v.field)
        ]
