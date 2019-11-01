type

  Equality* = concept a, type T
    a.isEqual(type T, type T) is bool
    a.isNotEqual(type T, type T) is bool
    a.zero(type var T)
    a.isZero(type T) is bool

  Algebra* = concept a, type T
    a is Equality
    a.construct() is T
    a.construct(type T) is T
    a.construct(string) is T
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
    
