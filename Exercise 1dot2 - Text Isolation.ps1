function Get-MiddleWord {
    Param (
      [String]$ThreeWordSentence = "I like pie."
      )
      $FirstSpace = $ThreeWordSentence.IndexOf(" ")
      
      $LastSpace = $ThreeWordSentence.LastIndexOf(" ")
      
     $MiddleWord = $Threewordsentence.Substring(($FirstSpace + 1),($LastSpace - $FirstSpace))
return $MiddleWord
}

Get-MiddleWord 

#$threewordsentence = "Three Big Idiots"