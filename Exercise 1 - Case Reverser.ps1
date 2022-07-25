function Toggle-Case  {
 Param (
   [String]$InputText
  )
  [string]$NewString = ''
  foreach ($character in $InputText.tochararray()) {
  if ($character -cmatch '[a-z]'){
      $NewCharacter = $character.ToString().ToUpper()
      }
  elseif ($character -cmatch '[A-Z]'){
      $NewCharacter = $character.ToString().ToLower()
      }
  else {$NewCharacter = $character
      }
      $NewString = $NewString + $NewCharacter
      }
      return $NewString
      }

      Toggle-Case -InputText "This is the Text###"