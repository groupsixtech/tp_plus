#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.10
# from Racc grammer file "".
#

require 'racc/parser.rb'
module TPPlus
  class Parser < Racc::Parser


  include TPPlus::Nodes

  attr_reader :interpreter
  def initialize(scanner, interpreter = TPPlus::Interpreter.new)
    @scanner       = scanner
    @interpreter   = interpreter
    super()
  end

  def next_token
    t = @scanner.next_token
    @interpreter.line_count += 1 if t == [:NEWLINE,"\n"]

    puts t.inspect
    t
  end

  def parse
    do_parse
    @interpreter
  rescue Racc::ParseError => e
    raise "Parse error on line #{@interpreter.line_count+1}: #{e}"
  end
##### State transition tables begin ###

racc_action_table = [
    16,     5,    10,    63,     9,    15,    32,    26,    16,     5,
    10,    19,     9,    15,    17,    16,     5,    10,    66,     9,
    15,    42,    17,    68,    37,    69,    19,    32,    26,    17,
    19,    13,    38,    39,    14,    71,    16,     5,    10,    13,
     9,    15,    14,    32,    26,    19,    13,    19,    40,    14,
    17,    16,     5,    10,    36,     9,    15,    53,    54,    32,
    26,    71,    19,    55,    76,    17,    77,    13,    32,    26,
    14,    35,    16,     5,    10,    34,     9,    15,    32,    26,
    90,    91,    13,    19,    80,    14,    17,    47,    48,    51,
    52,    49,    50,    53,    54,    57,    58,    59,    61,    55,
    60,    32,    26,    13,    32,    26,    14,    57,    58,    59,
    61,    24,    60,    23,    19,    82,    83,    84,    85,    86,
    88,    20,    88,    93,    94,    32,    32,    98,    99,   100 ]

racc_action_check = [
     0,     0,     0,    34,     0,     0,    56,    56,    21,    21,
    21,     0,    21,    21,     0,    33,    33,    33,    36,    33,
    33,    24,    21,    38,    18,    39,    33,    46,    46,    33,
    43,     0,    18,    18,     0,    44,     4,     4,     4,    21,
     4,     4,    21,    69,    69,    22,    33,     4,    20,    33,
     4,    25,    25,    25,    17,    25,    25,    72,    72,    14,
    14,    62,    25,    72,    63,    25,    66,     4,    37,    37,
     4,    16,    71,    71,    71,    15,    71,    71,    13,    13,
    88,    88,    25,    71,    70,    25,    71,    27,    27,    27,
    27,    27,    27,    27,    27,    73,    73,    73,    73,    27,
    73,    68,    68,    71,    45,    45,    71,    28,    28,    28,
    28,    10,    28,     9,     2,    75,    76,    77,    83,    84,
    85,     1,    89,    90,    91,    93,    94,    95,    96,    97 ]

racc_action_pointer = [
    -3,   121,   100,   nil,    33,   nil,   nil,   nil,   nil,    96,
   108,   nil,   nil,    62,    43,    66,    54,    52,     6,   nil,
    48,     5,    31,   nil,     4,    48,   nil,    67,    79,   nil,
   nil,   nil,   nil,    12,    -7,   nil,    12,    52,     5,     7,
   nil,   nil,   nil,    16,     0,    88,    11,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   -10,   nil,   nil,   nil,
   nil,   nil,    26,    26,   nil,   nil,    26,   nil,    85,    27,
    48,    69,    31,    67,   nil,    79,    99,   101,   nil,   nil,
   nil,   nil,   nil,    79,    78,   111,   nil,   nil,    69,   113,
    85,    86,   nil,   109,   110,    88,   109,    90,   nil,   nil,
   nil ]

racc_action_default = [
    -1,   -60,    -2,    -3,    -7,   -10,   -11,   -12,   -13,   -60,
   -60,   -16,   -17,   -60,   -60,   -60,   -60,   -33,   -60,   -59,
   -60,    -5,    -6,   -14,   -60,    -8,   -33,   -34,   -36,   -38,
   -54,   -55,   -56,    -8,   -60,   -28,   -60,   -60,   -60,   -60,
   101,    -4,   -15,    -9,   -21,   -60,   -60,   -40,   -41,   -42,
   -43,   -44,   -45,   -46,   -47,   -48,   -60,   -49,   -50,   -51,
   -52,   -53,   -21,   -60,   -29,   -57,   -60,   -30,   -60,   -60,
   -60,    -8,   -35,   -37,   -39,   -60,   -60,   -60,   -31,   -32,
   -18,   -20,   -19,   -60,   -60,   -60,   -58,   -22,   -60,   -24,
   -60,   -60,   -23,   -60,   -60,   -60,   -60,   -60,   -25,   -27,
   -26 ]

racc_goto_table = [
    18,    44,    25,    33,    18,    70,     2,    21,    87,    62,
    22,    95,    92,    96,    97,    89,    41,    64,     1,    72,
    45,    18,    73,    75,    74,    18,    67,    21,    65,   nil,
   nil,   nil,   nil,    18,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    81,    21,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    78,    79,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    18 ]

racc_goto_check = [
    18,     5,    11,    11,    18,    12,     2,     4,    13,     5,
     2,    15,    13,    16,    16,    14,     3,    17,     1,    19,
    20,    18,    21,    12,    23,    18,    11,     4,    25,   nil,
   nil,   nil,   nil,    18,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     5,     4,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    11,    11,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    18 ]

racc_goto_pointer = [
   nil,    18,     6,    -5,     5,   -24,   nil,   nil,   nil,   nil,
   nil,   -11,   -39,   -77,   -73,   -82,   -80,   -19,     0,   -26,
    -7,   -24,   nil,   -32,   nil,    -8 ]

racc_goto_default = [
   nil,   nil,    43,     3,     4,   nil,     6,     7,     8,    11,
    12,   nil,   nil,   nil,   nil,   nil,    30,   nil,    31,    27,
   nil,    28,    46,    29,    56,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 43, :_reduce_none,
  1, 43, :_reduce_2,
  1, 44, :_reduce_3,
  3, 44, :_reduce_4,
  2, 44, :_reduce_5,
  2, 44, :_reduce_none,
  1, 44, :_reduce_7,
  0, 47, :_reduce_none,
  1, 47, :_reduce_9,
  1, 45, :_reduce_10,
  1, 45, :_reduce_11,
  1, 45, :_reduce_12,
  1, 45, :_reduce_13,
  2, 45, :_reduce_14,
  3, 45, :_reduce_15,
  1, 45, :_reduce_none,
  1, 45, :_reduce_none,
  5, 52, :_reduce_18,
  5, 52, :_reduce_19,
  2, 54, :_reduce_20,
  0, 54, :_reduce_none,
  7, 50, :_reduce_22,
  3, 55, :_reduce_none,
  2, 55, :_reduce_none,
  4, 56, :_reduce_none,
  4, 56, :_reduce_none,
  2, 57, :_reduce_none,
  2, 51, :_reduce_28,
  3, 48, :_reduce_29,
  3, 49, :_reduce_30,
  4, 49, :_reduce_31,
  4, 49, :_reduce_32,
  1, 60, :_reduce_33,
  1, 53, :_reduce_34,
  3, 53, :_reduce_35,
  1, 61, :_reduce_36,
  3, 61, :_reduce_37,
  1, 63, :_reduce_none,
  3, 63, :_reduce_39,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 62, :_reduce_none,
  1, 64, :_reduce_none,
  1, 64, :_reduce_none,
  1, 64, :_reduce_none,
  1, 66, :_reduce_none,
  1, 66, :_reduce_none,
  1, 66, :_reduce_none,
  1, 66, :_reduce_none,
  1, 66, :_reduce_none,
  1, 65, :_reduce_none,
  1, 65, :_reduce_none,
  1, 58, :_reduce_56,
  1, 59, :_reduce_none,
  4, 67, :_reduce_58,
  1, 46, :_reduce_none ]

racc_reduce_n = 60

racc_shift_n = 101

racc_token_table = {
  false => 0,
  :error => 1,
  :ASSIGN => 2,
  :AT_SYM => 3,
  :COMMENT => 4,
  :JUMP => 5,
  :NUMREG => 6,
  :IO_METHOD => 7,
  :MOVE => 8,
  :DOT => 9,
  :TO => 10,
  :AT => 11,
  :TERM => 12,
  :SEMICOLON => 13,
  :NEWLINE => 14,
  :REAL => 15,
  :DIGIT => 16,
  :WORD => 17,
  :EQUAL => 18,
  :UNITS => 19,
  :EEQUAL => 20,
  :NOTEQUAL => 21,
  :GTE => 22,
  :LTE => 23,
  :LT => 24,
  :GT => 25,
  :PLUS => 26,
  :MINUS => 27,
  :STAR => 28,
  :SLASH => 29,
  :DIV => 30,
  :AND => 31,
  :OR => 32,
  :MOD => 33,
  :IF => 34,
  :ELSE => 35,
  :END => 36,
  :UNLESS => 37,
  "(" => 38,
  ")" => 39,
  "[" => 40,
  "]" => 41 }

racc_nt_base = 42

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "ASSIGN",
  "AT_SYM",
  "COMMENT",
  "JUMP",
  "NUMREG",
  "IO_METHOD",
  "MOVE",
  "DOT",
  "TO",
  "AT",
  "TERM",
  "SEMICOLON",
  "NEWLINE",
  "REAL",
  "DIGIT",
  "WORD",
  "EQUAL",
  "UNITS",
  "EEQUAL",
  "NOTEQUAL",
  "GTE",
  "LTE",
  "LT",
  "GT",
  "PLUS",
  "MINUS",
  "STAR",
  "SLASH",
  "DIV",
  "AND",
  "OR",
  "MOD",
  "IF",
  "ELSE",
  "END",
  "UNLESS",
  "\"(\"",
  "\")\"",
  "\"[\"",
  "\"]\"",
  "$start",
  "program",
  "statements",
  "statement",
  "terminator",
  "block",
  "definition",
  "assignment",
  "motion_statement",
  "label_definition",
  "conditional",
  "expression",
  "else_block",
  "motion_modifiers",
  "motion_modifier",
  "speed",
  "number",
  "definable",
  "var",
  "simple_expression",
  "relop",
  "term",
  "addop",
  "factor",
  "mulop",
  "numreg" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

def _reduce_2(val, _values, result)
 @interpreter.nodes = val[0] 
    result
end

def _reduce_3(val, _values, result)
 result = val 
    result
end

def _reduce_4(val, _values, result)
 result = val[0] << val[2] 
    result
end

def _reduce_5(val, _values, result)
 result = val[0] 
    result
end

# reduce 6 omitted

def _reduce_7(val, _values, result)
 result = [TerminatorNode.new] 
    result
end

# reduce 8 omitted

def _reduce_9(val, _values, result)
 result = val[0] 
    result
end

def _reduce_10(val, _values, result)
 result = CommentNode.new(val[0]) 
    result
end

def _reduce_11(val, _values, result)
 result = val[0] 
    result
end

def _reduce_12(val, _values, result)
 result = val[0] 
    result
end

def _reduce_13(val, _values, result)
 result = val[0] 
    result
end

def _reduce_14(val, _values, result)
 result = IOMethodNode.new(val[0],val[1]) 
    result
end

def _reduce_15(val, _values, result)
 result = JumpNode.new(val[2]) 
    result
end

# reduce 16 omitted

# reduce 17 omitted

def _reduce_18(val, _values, result)
 result = ConditionalNode.new(val[1],val[2],val[3]) 
    result
end

def _reduce_19(val, _values, result)
 result = ConditionalNode.new(val[1],val[3],val[2]) 
    result
end

def _reduce_20(val, _values, result)
 result = val[1] 
    result
end

# reduce 21 omitted

def _reduce_22(val, _values, result)
 result = MotionNode.new(val[0],val[4],val[6]) 
    result
end

# reduce 23 omitted

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

def _reduce_28(val, _values, result)
 @interpreter.add_label(val[1]) 
    result
end

def _reduce_29(val, _values, result)
 result = DefinitionNode.new(val[0],val[2]) 
    result
end

def _reduce_30(val, _values, result)
 result = AssignmentNode.new(val[0],val[2]) 
    result
end

def _reduce_31(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_32(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_33(val, _values, result)
 result = VarNode.new(val[0]) 
    result
end

def _reduce_34(val, _values, result)
 result = val[0] 
    result
end

def _reduce_35(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

def _reduce_36(val, _values, result)
 result = val[0] 
    result
end

def _reduce_37(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

# reduce 38 omitted

def _reduce_39(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

# reduce 40 omitted

# reduce 41 omitted

# reduce 42 omitted

# reduce 43 omitted

# reduce 44 omitted

# reduce 45 omitted

# reduce 46 omitted

# reduce 47 omitted

# reduce 48 omitted

# reduce 49 omitted

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

# reduce 53 omitted

# reduce 54 omitted

# reduce 55 omitted

def _reduce_56(val, _values, result)
 result = DigitNode.new(val[0]) 
    result
end

# reduce 57 omitted

def _reduce_58(val, _values, result)
 result = NumregNode.new(val[2].to_i) 
    result
end

# reduce 59 omitted

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module TPPlus
