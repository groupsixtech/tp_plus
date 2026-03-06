# Preprocessor (ppr)

TP+ integrates the [ppr](https://github.com/kobbled/ppr) preprocessor for meta-programming before TP+ compilation.

## Assign Variables

```ruby
.assign RADIUS :< 80
.assign INCREMENTS :< 20
```

Access with `@VARNAME`.

## Text Output (Code Generation)

```ruby
:< "some tp+ code string"
:< "p#{@INCREMENTS}.group(1).pose -> [0,0,0,0,0,0]"
```

## Ruby Code Execution

```ruby
.do
  inc = @INCREMENTS.to_i
  for i in 1..inc do
    :< "p#{i}.group(1).pose.polar.z -> [#{(-1*(i-1)*360/(inc-1)).to_s}, #{@RADIUS}, 0, 90, 180, 0]\n"
    :< "arc_move.to(p#{i}).at(50, 'mm/s').term(#{(i==1||i==inc) ? '-1' : '100'})\n"
  end
.end
```

## Define Macros

```ruby
.def MY_MACRO :< some_value
```

## Conditional Inclusion

```ruby
.if @CONDITION
  :< "some code"
.else
  :< "other code"
.end
```

## File Inclusion

```ruby
.include "other_file.tpp"
```

## Typical Use Case

Generate repetitive motion paths (e.g., circles, grids) without manually writing every point:

```ruby
.assign POINTS :< 20
.assign RADIUS :< 80

.do
  :< "p := P[1..#{@POINTS}]\n"
  :< "joint_move.to(p1).at(15, '%').term(-1)\n"

  n = @POINTS.to_i
  for i in 1..n do
    deg = 360 * (i - 1) / (n - 1)
    :< "p#{i}.group(1).pose.polar.z -> [#{-deg}, #{@RADIUS}, 100, 90, 180, 0]\n"
    :< "arc_move.to(p#{i}).at(50, 'mm/s').term(#{(i==1||i==n) ? '-1' : '100'})\n"
  end
.end
```
