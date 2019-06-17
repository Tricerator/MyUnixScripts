#!/bin/sh

#   Skript na vypocet dostatecneho mnozstvi
#   kreditu ke statnicim
#

ch=0
povin=0
nepovin=0
volitel=0
celkem=0
t=

 
end(){
echo "Mas $povin povinnych, $nepovin nepovinnych a $volitel volitelnych kreditu, celkem $celkem kreditu."
 if [ $celkem -gt 179 ] ; then 
      echo "Gratuluji, mas alespon 180, muzes ke statnicim."
 else :
 fi
      exit 
}





echo 'Zadej pocet kreditu a typ [p - povinne, n - nepovinne, v - volitelne], ukonci: KONEC  '
while [ $ch -ge 0 ]; do
    echo -n "---->  "
    read ch t
    echo $ch
    echo $t
    [ "$ch" = "KONEC" ]  && end
    
    case $t in 
        p ) povin=$(($povin + $ch));;
        n ) nepovin=$(($nepovin + $ch));;
        v ) volitel=$((volitel + $ch));;
        * ) echo nezapocteno, opakujte volbu; ch=0;;
    esac
    celkem=$(($celkem + $ch))
    echo "p = $povin | n = $nepovin | v = $volitel | celkem = $celkem"
  
done




