

if [ $2 = "+" ]	; then
 resultat=$(( $1 + $3 ))
echo " $resultat"
elif [ $2 = "-" ] ; then
resultat=$(( $1 - $3 ))
echo "$resultat"
elif [ $2 = "x" ] ; then
resultat=$(( $1 * $3 ))
echo "$resultat"
elif [ $2 = "/" ] ; then
resultat=$(( $1 / $3 ))
echo  "$resultat" 
else 
  echo "stop"
fi 
