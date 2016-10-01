// Circularize in orbit.

wait until ship:altitude > 80000.

SET antenna TO SHIP:PARTSDUBBED("Communotron 16").
FOR ant IN antenna {
    ant:GETMODULE("ModuleRTAntenna"):DOEVENT("ACTIVATE").
}

lock throttle to 1.0.
LOCK STEERING TO North + R(0,90,0).

stage.

wait until ship:maxthrust < 1.

unlock throttle.
unlock steering.

