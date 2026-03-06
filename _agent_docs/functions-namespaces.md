# Functions & Namespaces

## Functions

Functions compile to separate TP programs. Return types: `numreg`, `posreg`, or omit for void.

```ruby
def my_func(arg1, arg2) : numreg
  return(arg1 + arg2)
end

def void_func()
  DO[1] = on
end
```

- Arguments become `AR[n]` inside the function
- Return value register is passed as last argument
- Multiple `return()` statements are supported

## Inline Functions

Inline functions are expanded at the call site (no separate TP program):

```ruby
inline def arclength(ang, rad) : numreg
  return(ang * rad * M_PI / 180)
end
```

> Inline argument names must not collide with register names in the calling scope.

## Calling Functions

```ruby
result := R[1]
result = my_func(5, 10)     # CALL MY_FUNC(5,10,1)
void_func()                  # CALL VOID_FUNC
```

## Namespaces

Group constants, variables, and functions:

```ruby
namespace Math
  M_PI := 3.14159

  def arclength(ang, rad) : numreg
    return(ang * rad * M_PI / 180)
  end

  inline def scale(val) : numreg
    return(val * M_PI)
  end
end
```

Access with `::`:
```ruby
result = Math::arclength(90, 85)
val = Math::M_PI
```

## Scoping with `using`

Namespaces must be brought into scope with `using` inside functions/namespaces:

```ruby
def test()
  using ns1, ns2

  foo = ns1::VAL1
end
```

## Self-Referencing

Inside a namespace, call sibling functions **without** the namespace prefix:

```ruby
namespace ns1
  inline def func2() : numreg
    return(VAL1 + VAL2)
  end

  inline def func1(num) : numreg
    add := LR[]
    add = func2()        # NOT ns1::func2()
    return(add + num)
  end
end
```

## Namespace as Structs

Namespaces can group registers/IO as a struct-like pattern:

```ruby
namespace Tool1
  frame         := UTOOL[1]
  read_pin      := AI[1]
  SEARCH_DIST   := 10
end

use_utool Tool1::frame
dist = Tool1::SEARCH_DIST
```

## Expressions in Arguments

Expressions in function arguments are automatically handled using local registers:

```ruby
local := R[70..80]

foo = Math::test(5 + 3, bar * biz / 2, -1 * biz * Math::PI)
# compiles to: store each expr in a local, then CALL MATH_TEST(...)
```

## Function Return Types - posreg

```ruby
def set_pose(x, y, z, w, p, r) : posreg
  dummy := PR[50]
  clpr(&dummy, 0)
  dummy.x = x
  dummy.y = y
  dummy.z = z
  return(dummy)
end

pose = set_pose(100, 0, 50, 90, 0, -90)
```

## Group-Specific posreg Returns

```ruby
pr1.group(1) = Pos::setxyz(500, 500, 0, 90, 0, 180)
pr1.group(2) = Pos::setjnt2(90, 0)
pr1 = Pos::move()
```

## Running Programs in Background

```ruby
run Sense::read()    # RUN SENSE_READ
```
