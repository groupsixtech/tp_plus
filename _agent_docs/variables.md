# Variables & Types

## Declaration Syntax

Variables are declared with `:=` to bind a name to a register/IO address.

```ruby
foo    := R[1]       # numeric register
bar    := R[2]
name   := SR[1]      # string register
flag   := F[1]       # flag
pose   := PR[1]      # position register
pos    := P[1]       # position (stored in /POS section)
t      := TIMER[1]   # timer
frame  := UFRAME[1]  # user frame
tool   := UTOOL[1]   # user tool

# IO types
din    := DI[1]
dout   := DO[1]
ain    := AI[1]
aout   := AO[1]
gin    := GI[1]
gout   := GO[1]
uin    := UI[1]
uout   := UO[1]
alarm  := UALM[1]
```

## Constants

Constants are declared with `:=` using a plain value (no register type):

```ruby
FINE := -1
CNT  := 100
PI   := 3.14159
FLAG := true
```

Constants are inlined at compile time — no register is allocated.

## Register Ranges

Declare a block of registers at once:

```ruby
p := P[1..6]       # declares p1, p2, p3, p4, p5, p6
r := R[10..15]     # declares r10..r15 (accessed by index offset)
```

## Local Variables

Local variables are allocated at compile time from a declared pool:

```ruby
local := R[50..70]    # define the local register pool
local := PR[5..10]
local := F[50..100]
```

Declare locals inside functions with:
```ruby
myvar := LR[]    # local numeric register
mypr  := LPR[]   # local position register
myflg := LF[]    # local flag
```

The compiler assigns registers from the pool based on call depth.

## Shared Variables

Shared variables persist across the entire program and are accessible in any scope without `using`:

```ruby
shared := R[40..50]   # define shared pool
shr_r1 := SHR[]       # shared numeric register
shr_pr := SPR[]       # shared position register
shr_f  := SF[]        # shared flag
```

> Shared variables must be declared before any namespace/function/import.

## Program Attributes

Set at the top of a file:

```ruby
TP_GROUPMASK = "1,*,*,*,*"
TP_COMMENT   = "my program"
TP_STACK_SIZE = "600"
```

## Value Assignment

```ruby
foo = 5
foo = bar + 2
flag = on
flag = off
dout = on
dout = !dout    # toggle (also: toggle dout)
```

## Indirect Access

```ruby
indirect('r', reg_num)       # indirect register access -> R[reg_num]
indirect('posreg', pr_num)   # -> PR[pr_num]
indirect('ai', pin)          # -> AI[pin]
```

## System Variables

Access FANUC system variables with `$`:

```ruby
if $SCR.$NUM_GROUP > 1 then
```
