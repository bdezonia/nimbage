type

  Equality* = concept a, type T
    a.isEqual(type T, type T) is bool
    a.isNotEqual(type T, type T) is bool
    a.zero(type var T)
    a.isZero(type T) -> bool

  Algebra* = concept a, type T
    a is Equality
    a.construct() is T
    a.construct(type T) is T
    a.assign(type T, type var T)

  AdditiveGroup* = concept a, type T
    a is Algebra
    a.add(type T, type T, type var T)
    a.subtract(type T, type T, type var T)
    a.negate(type T, type var T)
