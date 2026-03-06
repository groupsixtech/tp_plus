# Control Flow

## If / Elsif / Else

```ruby
if foo == 1 then
  pin1 = on
end

if foo == 1 then
  pin1 = on
elsif foo == 2 then
  pin2 = off
else
  pin1 = off
  pin2 = off
end
```

## Inline Conditionals

```ruby
foo = 2 if foo == 1
dout = on if bar < 10
prog() if foo >= 5
prog() unless foo
jump_to @label if foo < 10
jump_to @label unless foo == 1
```

## While Loop

```ruby
while foo > 0
  foo -= 1
end

while true == true   # infinite loop
  wait_for(1, 's')
end
```

## For Loop

```ruby
for i in (1 to 10)
  # ...
end

for i in (COLUMNS downto 1)
  # ...
end

# upper bound can be a register
for i in (1 to total)
```

## Case / Select

```ruby
case foo
when 1
  message('foo is 1')
when 2
  prog()
else
  stop t
end
```

Compiles to FANUC `SELECT` with jump labels.

## Labels & Jumps

```ruby
@loop
  foo += 1
  jump_to @loop if foo < 10

@end
  jump_to @end   # jump to label
```

Label numbers start at 100 and auto-increment. Override:

```ruby
@layer1:1101       # explicit label number
set_label(200)     # set next auto label number
pop_label          # return to previous label sequence
```

## IO Conditions

```ruby
if (din == on) && (flag == off) then
if uout == true then
if uout == false then
```

## Wait Statements

```ruby
wait_for(1, 's')          # WAIT 1.00(sec)
wait_for(250, 'ms')       # WAIT 0.25(sec)
wait_until(din).after(300, 'ms')
```

## Misc

```ruby
pause                      # PAUSE
stop t                     # TIMER[1]=STOP
raise alarm                # UALM[n]
message('text')            # MESSAGE[text]
warning('text')            # WARNING
```
