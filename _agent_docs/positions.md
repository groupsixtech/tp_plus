# Positions & Poses

## Position Types

- `P[n]` — stored position (goes in `/POS` section of LS file)
- `PR[n]` — position register (runtime, not stored in /POS)

## Declaring Positions

```ruby
p1   := P[1]
p    := P[1..6]    # range: p1, p2, p3, p4, p5, p6
pr1  := PR[1]
```

## Setting a Default Pose

A default pose fills unspecified values for all positions:

```ruby
default.group(1).pose   -> [0, 0, 0, 0, 0, 0]     # X,Y,Z,W,P,R
default.group(1).config -> ['F', 'U', 'T', 0, 0, 0]
default.group(2).joints -> [90, 0]
default.group(3).joints -> [[500, 'mm']]            # linear axis in mm
```

Built-in default if not specified: `[0,0,0,0,0,0]` with config `'N','B','D',0,0,0`.

## Pose Modifiers

```ruby
p1.group(1).pose   -> [x, y, z, w, p, r]           # full Cartesian
p1.group(1).xyz    -> [x, y, z]                     # position only
p1.group(1).orient -> [w, p, r]                     # orientation only
p1.group(1).config -> ['F', 'U', 'T', 0, 0, 0]
p1.group(1).joints -> [j1, j2, j3, j4, j5, j6]     # joint angles
p1.group(1).joints -> [[500, 'mm']]                  # linear axis
```

## Batch / Range Assignment

```ruby
(p4..p6).group(1).xyz.offset -> [0, 0, 50]   # apply Z offset to p4,p5,p6
```

## Polar Coordinates

```ruby
p1.group(1).pose.polar.z -> [angle, radius, distance, w, p, r]
```

## Frames on Positions

The current `use_utool` and `use_uframe` values are embedded in each position at declaration time.

```ruby
use_utool tool    # affects positions declared after this
use_uframe frame

p1.group(1).xyz -> [0, 50, 100]    # stored with UF=frame, UT=tool
```

## Position Register Operations

```ruby
temp := PR[5]
offst := PR[6]

# Copy frame to posreg
temp = frame

# Set individual components
offst.x = 100
offst.y = 0
offst.z = 50
offst.w = 90
offst.p = 0
offst.r = 0

# Per-group component
PR[50, 1] = val    # group element access
```

## Position Register Pass-by-Reference

Use `&` to pass a posreg by its index number (for Ka-Boost / external KAREL functions):

```ruby
Pos::clrpr(&ofst)
ofst = Pos::mult(&lpos, &ofst)
get_linear_position(lpos)
```

## Multi-Group Positions

```ruby
TP_GROUPMASK = "1,1,1,*,*"

p3.group(1).xyz    -> [50, 0, 100]
p3.group(2).joints -> [90, 90]
p3.group(3).joints -> [[500, 'mm']]
```

## Config Values

| Value | Meaning |
|-------|---------|
| `'F'` or `'N'` | Flip / No-flip |
| `'U'` or `'B'` | Up / Down |
| `'T'` or `'D'` | T-joint / Not-T-joint |
| numbers | Turn counts (0, 0, 0) |
