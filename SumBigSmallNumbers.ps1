 function Find-SumBigSmall {
  [cmdletbinding()]
  Param ([int[]]$Numbers)
    $SortedNumbers = $Numbers | Sort-Object
    $ReverseSorted = $Numbers | sort-object -Descending
    Return $SortedNumbers[0] + $ReverseSorted[0]
    }

Find-SumBigSmall -Numbers 1,3,5,9