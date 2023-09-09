workflow workflow1{
    Param($NumberofIterations)
    "======================================================="
    $array = 1..$NumberofIterations
    $Uri = "http://www.bbc.com."
    
    function DoRequest($i,$Uri){
        "$i starting";$response = Invoke-WebRequest -Uri $Uri;"$i ending"
    }

    "Serial"
    "======"
    $startTime = get-date
    foreach ($i in $array) {DoRequest $i $Uri}
    $serialElapsedTime = "elapsed time (serial foreach loop): " + ((get-date) - $startTime).TotalSeconds
    #versus
    "======================================================="
    "Parallel"
    "========"
    $startTime = get-date
    foreach -parallel ($i in $array) {DoRequest $i $Uri}
    $parallelElapsedTime = "elapsed time (parallel foreach loop): " + ((get-date) - $startTime).TotalSeconds
    $serialElapsedTime
    $parallelElapsedTime
    "======================================================="
}
cls
workflow1 50