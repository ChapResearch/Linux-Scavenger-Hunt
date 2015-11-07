
for c in 192 134 095 125 199 201 234
 do
 for b in 54 12 89 127 201 125 87 178
 do
 for a in 003 56 98 146 89 34 199 204 78 156
 do
 for d in 22 96 89 145 62 31 79 242
 do
     num=`date +%s`
     
     case `expr $num % 8` in
	 0)echo "wrong" > IPAddresses/$a.$b.$c.$d;;

	 1)echo "no duh" > IPAddresses/$a.$b.$c.$d;;

	 2)echo "you got it wrong" > IPAddresses/$a.$b.$c.$d;;

	 3)echo "no - that's not it" > IPAddresses/$a.$b.$c.$d;;

	 4)echo "really?  you're serious? that's what you thought?" > IPAddresses/$a.$b.$c.$d;;

	 5)echo "nope, nope, nope nope, NOPE" > IPAddresses/$a.$b.$c.$d;;

	 6)echo "how embarrassing" > IPAddresses/$a.$b.$c.$d;;

	 7)echo "wow" > IPAddresses/$a.$b.$c.$d;;
esac
done
done
done
done
