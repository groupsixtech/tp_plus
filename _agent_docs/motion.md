# Motion Statements

## Frame Setup

```ruby
use_uframe 1          # UFRAME_NUM=1
use_utool 1           # UTOOL_NUM=1
use_uframe frame_var  # uses UFRAME variable
use_utool tool_var
```

## Motion Types

```ruby
joint_move.to(p1).at(20, '%').term(-1)         # J P[1] 20% FINE
linear_move.to(p1).at(100, 'mm/s').term(100)   # L P[1] 100mm/sec CNT100
arc_move.to(p1).at(50, 'mm/s').term(100)       # A P[1] 50mm/sec CNT100
circular_move.mid(arc1).to(arc2).at(100, 'mm/s').term(100)  # C P[mid] P[to] ...
```

## Termination

| TP+ | LS |
|-----|----|
| `.term(-1)` | `FINE` |
| `.term(0)` | `CNT0` |
| `.term(100)` | `CNT100` |

`FINE = -1` is a common constant to define in env files.

## Speed Units

- `'%'` — joint percentage
- `'mm/s'` — millimeters per second
- `'cm/min'` — centimeters per minute
- `'inch/min'` — inches per minute
- `'deg/s'` — degrees per second (joint)
- `'sec'` — time-based

## Motion Modifiers

All chained with `.` after `.term()`:

```ruby
# Offset / Tool offset
.offset(FrameOffset)
.tool_offset(ToolOffset)

# Coordinated motion
.coord

# Remote TCP
.rtcp

# Acceleration
.acc(100)

# Corner distance (CD)
.cd(20)

# Corner region (radius)
.corner_region(20)
.corner_region(5, 10)   # elliptical

# Extended velocity
.simultaneous_ev(50)
.independent_ev(50)

# Continuous rotation speed
.continuous_rotation_speed(0)

# Linear distance (approach/retract)
.approach_ld(100)
.retract_ld(100)

# Minimum rotation
.mrot
.minimal_rotation

# Wrist joint
.wrist_joint

# Process speed
.process_speed(110)

# Break (stop at CNT)
.break

# Path through short motions
.pth

# Skip condition
.skip_to(@label)
.skip_to(@label, save_pos_reg)
```

## Motion Program Calls

```ruby
linear_move.to(p1).at(100, 'mm/s').term(100).time_after(0.0, START_TOOL()).offset(Start_Offset)
linear_move.to(p2).at(100, 'mm/s').term(100).time_before(0.5, PREP_NOZZLE())
linear_move.to(p2).at(100, 'mm/s').term(100).distance_before(100, CHECK_STATE())
```

## Skip Condition

```ruby
set_skip_condition sensor::zerod
linear_move.to(p1).at(20, 'mm/s').term(-1).skip_to(@not_found)
```

## Indirect Position

```ruby
pr_num := AR[1]
linear_move.to(indirect('posreg', pr_num)).at(2000, 'mm/s').term(0)
```

## Get Current Position

```ruby
lpos := PR[2]
get_linear_position(lpos)   # PR[2]=LPOS
get_joint_position(jpos)    # PR[2]=JPOS
```

## Collision Guard

```ruby
col_guard_on(1)
col_guard_off(1)
```
