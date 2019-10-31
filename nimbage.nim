type

  Algebra* = concept a, type T
    a.construct() is T
    a.construct(type T) is T
    a.assign(type T, type var T)
    a.isEqual(type T, type T) is bool
    a.isNotEqual(type T, type T) is bool
    a.zero(type T)
    a.isZero(type T) -> bool
    
  AdditiveGroup* = concept a, type T
    a is Algebra
    a.add(type T, type T, type T)
    a.subtract(type T, type T, type T)
    a.negate(type T, type T)
