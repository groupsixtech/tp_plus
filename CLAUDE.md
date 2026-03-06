# TP+ Project

TP+ is a higher-level language that compiles to FANUC TP (`.ls`) files. Written in Ruby.

## Project Structure

```
bin/          - CLI entry point (tpp command)
lib/          - Ruby interpreter/compiler source
  tp_plus/
    nodes/    - AST node implementations
    motion/   - Pose/position handling
    localstack/ - Local variable stack management
examples/     - .tpp example files (test1.tpp ... test58.tpp)
_agent_docs/  - Detailed language reference docs
```

## CLI Usage

```bash
tpp filename.tpp                        # print to console
tpp filename.tpp -o filename.ls         # output to file
tpp filename.tpp -e env.tpp             # use environment file
tpp filename.tpp -i ../folder1          # add include folder
tpp filename.tpp -k 'karelFile',false   # build Karel hash table
```

## TP+ Language Quick Reference

File extension: `.tpp`. Syntax is Ruby-like.

- `#` line comments
- `:=` declare/bind a variable to a register/IO
- `=` assign a value
- `::` namespace separator
- `->` pose data assignment
- `@label` define a label; `jump_to @label` to jump

## Detailed Docs

- [Variables & Types](_agent_docs/variables.md)
- [Control Flow](_agent_docs/control-flow.md)
- [Functions & Namespaces](_agent_docs/functions-namespaces.md)
- [Motion Statements](_agent_docs/motion.md)
- [Positions & Poses](_agent_docs/positions.md)
- [Environment Files & Imports](_agent_docs/environment-imports.md)
- [Preprocessor](_agent_docs/preprocessor.md)

## Running Tests

```bash
bundle exec rake        # build parser + run all tests
bundle exec rake rdoc   # build docs
```
