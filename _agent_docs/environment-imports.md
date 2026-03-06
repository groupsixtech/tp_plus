# Environment Files & Imports

## Environment Files

An environment file (`.tpp`) defines controller-specific register mappings, IO names, constants, and namespaces. It is passed in with `-e`:

```bash
tpp program.tpp -e env.tpp
```

Typical env file structure:

```ruby
# Constants
FINE := -1
CNT  := 100

# Frames
world := UFRAME[1]
tool  := UTOOL[1]

# IO
Laser_On  := DO[3]
Laser_Ready := DI[2]

# Registers
Alarm_Reg := R[1]
j         := R[50]

# Namespaces as config groups
namespace Tool1
  frame       := UTOOL[1]
  read_pin    := AI[1]
  SEARCH_DIST := 10
end

# Local variable pool
local := R[250..300]
local := PR[80..100]
```

The env file is processed first, making all its declarations available in the main program.

## Imports

Import another `.tpp` file to bring in its namespaces and definitions:

```ruby
import tool1                 # imports tool1.tpp, NOT compiled to separate LS
compile import tool1         # imports AND compiles tool1.tpp to its own LS
```

Import search path is the current directory plus any `-i` paths:

```bash
tpp program.tpp -i ../lib -i ../common
```

Import filenames reference the file **without** the `.tpp` extension.

## Example Pattern

`main.tpp`:
```ruby
import tool_config

foo := R[1]
foo = Tool1::SEARCH_DIST
use_utool Tool1::frame
```

`tool_config.tpp`:
```ruby
namespace Tool1
  frame       := UTOOL[1]
  SEARCH_DIST := 10
end
```

## Multiple Include Paths

```bash
tpp main.tpp -e robot_env.tpp -i ./lib -i ./common -o ./ls/main.ls
```
