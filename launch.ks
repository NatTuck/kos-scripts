
declare APO is 100000.

function bear {
    local frac is MIN(ship:altitude / 50000, 1).
    local pitch is 90 - frac * 90. 

    return heading(90, pitch). 
}

// Initial launch.

lock steering to bear().
stage.

