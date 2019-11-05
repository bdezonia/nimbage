type

  DefaultConstructible* = concept a, type T
    a.construct() is T
    a.construct(type T) is T
    a.construct(string) is T
  
  Equality* = concept a, type T
    a.isEqual(type T, type T) is bool
    a.isNotEqual(type T, type T) is bool
    a.zero(type var T)
    a.isZero(type T) is bool

  Algebra* = concept a, type T
    a is DefaultConstructible and Equality
    a.assign(type T, type var T)

  AdditiveGroup* = concept a, type T
    a is Algebra
    a.add(type T, type T, type var T)
    a.subtract(type T, type T, type var T)
    a.negate(type T, type var T)

  Ring* = concept a, type T
    a is AdditiveGroup
    a.mul(type T, type T, type var T)
    a.pow(int, type T, type var T)

  Unity* = concept a, type T
    a.unity(type var T)
    
  RingWithUnity* = concept a, type T
    a is Ring and Unity
 
#  Ints = RingWithUnity[int]
    

#template add[T](a: T, b: T, c: var T) =
#  c = a + b
#  
#var
#  tmp
#  
#add(1, 3, tmp)
#stdout.writeLine($tmp)

  UNum1 = range[uint8(0) .. uint8(1)]
  UNum2 = range[uint8(0) .. uint8(3)]
  UNum3 = range[uint8(0) .. uint8(7)]
  UNum4 = range[uint8(0) .. uint8(15)]
  UNum12 = range[uint16(0) .. uint16(4095)]
  
  SNum1 = range[int8(-1) .. int8(0)]
  SNum2 = range[int8(-2) .. int8(1)]
  SNum3 = range[int8(-4) .. int8(3)]
  SNum4 = range[int8(-8) .. int8(7)]
  SNum12 = range[int16(-2048) .. int16(2047)]

var x: UNum2
var y: UNum12
var z: SNum12

echo $sizeof(x)
echo $sizeof(y)
echo $sizeof(z)
x = 0
x = 1
x = 2
x = 3
#x = 4
#x = 5
  
