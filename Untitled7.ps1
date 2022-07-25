Function count-VowelsandConsenants {
  [CmdletBinding()]
  param ([string] $InputString
  )
  $VowelCount = ($InputString | Select-String -SimpleMatch [a,e,i,o,u]).Matches.Count
  $ConsenantCount = ($InputString | Select-String -SimpleMatch [b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z]).matches.count
return "Vowels = $VowelCount  Consenants = $ConsenantCount" 
}
count-VowelsandConsenants -InputString 245fjfjjfee

#.matches.count