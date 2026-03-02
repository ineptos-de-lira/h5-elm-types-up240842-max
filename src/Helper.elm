module Helper exposing (..)

import Html exposing (main_)



-- EJERCICIO 1


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map gradeToStatus grades


gradeToStatus : Float -> GradeStatus
gradeToStatus grade =
    if grade < 0 then
        Pending

    else if grade >= 7 then
        Approved

    else
        Failed



-- EJERCICIO 2.1


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled



-- EJERCICIO 2.2


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction domain =
    case domain of
        Cancelled ->
            "Pedir reembolso"

        Boarding ->
            "Buscar boleto"

        _ ->
            "Esperar"



-- EJERCICIO 2.3


airportAction : List AirplaneStatus -> List String
airportAction lista =
    List.map airplaneScheduleAction lista
