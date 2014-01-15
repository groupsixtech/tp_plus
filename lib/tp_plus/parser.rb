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
    @interpreter.line_count += 1 if t && t[0] == :NEWLINE

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
    48,    26,    28,    21,    20,    20,    38,    26,    28,    21,
    20,   165,   115,    25,    49,    26,    28,    21,    20,    25,
    29,    28,   165,    19,   172,   166,    29,    25,   116,    19,
    36,    35,    38,   117,    29,   113,   166,    19,    28,    29,
    22,   119,    28,    23,    16,    17,    22,    18,    47,    23,
    16,    17,   119,    18,    22,   156,    29,    23,    16,    17,
    29,    18,    26,    28,    21,    20,    72,    73,    26,   121,
    21,    20,    74,   107,    25,   106,    26,    28,    21,    20,
    25,    29,   -38,    58,    19,   -38,   -37,   104,    25,   -37,
    19,    59,    60,   -36,    54,    29,   -36,    55,    19,   111,
   112,    22,    36,    35,    23,    16,    17,    22,    18,    97,
    23,    16,    17,    96,    18,    22,   125,   126,    23,    16,
    17,   127,    18,    66,    67,    70,    71,    68,    69,    72,
    73,   128,   149,   129,   130,    74,   146,   147,   148,    76,
    77,    78,    80,    49,    79,    95,    93,    94,    91,   132,
    92,    76,    77,    78,    80,   133,    79,    36,    35,    38,
    36,    35,    38,    36,    35,    38,    36,    35,    38,    36,
    35,    38,    36,    35,    38,    36,    35,    38,    36,    35,
    38,    36,    35,    38,    36,    35,    38,    36,    35,    38,
    36,    35,    38,    36,    35,    38,    36,    35,    38,    36,
    35,    38,    36,    35,    38,   134,   135,   136,   137,   138,
   114,   140,   143,   143,   104,    63,   150,   151,   152,   153,
    61,    57,    38,    56,   163,    51,   167,   168,   169,   170,
    38,    31,    47,   176 ]

racc_action_check = [
    19,    52,    52,    52,    52,   170,   133,    53,    53,    53,
    53,   167,    93,    52,    19,     4,     4,     4,     4,    53,
    52,    33,   155,    52,   170,   167,    53,     4,    94,    53,
   150,   150,   150,    95,     4,    91,   155,     4,    98,    33,
    52,    99,     2,    52,    52,    52,    53,    52,    19,    53,
    53,    53,   100,    53,     4,   150,    98,     4,     4,     4,
     2,     4,     0,     0,     0,     0,   108,   108,    32,   103,
    32,    32,   108,    60,     0,    59,   119,   119,   119,   119,
    32,     0,     9,    27,     0,     9,     6,    56,   119,     6,
    32,    27,    27,     8,    24,   119,     8,    24,   119,    81,
    81,     0,    16,    16,     0,     0,     0,    32,     0,    51,
    32,    32,    32,    49,    32,   119,   113,   114,   119,   119,
   119,   115,   119,    39,    39,    39,    39,    39,    39,    39,
    39,   116,   145,   117,   118,    39,   145,   145,   145,   109,
   109,   109,   109,    38,   109,    48,    48,    48,    48,   120,
    48,    40,    40,    40,    40,   121,    40,    47,    47,    47,
    18,    18,    18,    17,    17,    17,   112,   112,   112,   151,
   151,   151,   153,   153,   153,    23,    23,    23,    54,    54,
    54,    55,    55,    55,    75,    75,    75,    58,    58,    58,
   107,   107,   107,   106,   106,   106,    64,    64,    64,    65,
    65,    65,    22,    22,    22,   125,   126,   127,   128,   129,
    92,   139,   140,   141,   143,    34,   146,   147,   148,   149,
    31,    26,   152,    25,   154,    21,   157,   158,   159,   160,
    20,     1,   172,   173 ]

racc_action_pointer = [
    59,   231,    38,   nil,    12,   nil,    44,   nil,    51,    40,
   nil,   nil,   nil,   nil,   nil,   nil,    79,   140,   137,    -2,
   205,   222,   179,   152,    52,   207,   196,    57,   nil,   nil,
   nil,   220,    65,    17,   190,   nil,   nil,   nil,   127,    95,
   115,   nil,   nil,   nil,   nil,   nil,   nil,   134,   137,    88,
   nil,    84,    -2,     4,   155,   158,    65,   nil,   164,    49,
    47,   nil,   nil,   nil,   173,   176,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   161,   nil,   nil,   nil,   nil,
   nil,    48,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   -18,   157,   -41,   -25,   -20,   nil,   nil,    34,    -2,
     9,   nil,   nil,    52,   nil,   nil,   170,   167,    32,   103,
   nil,   nil,   143,    92,    93,    97,   107,   109,    90,    73,
   105,   105,   nil,   nil,   nil,   151,   152,   153,   154,   155,
   nil,   nil,   nil,   -19,   nil,   nil,   nil,   nil,   nil,   160,
   196,   197,   nil,   192,   nil,   118,   166,   167,   168,   169,
     7,   146,   197,   149,   173,    -5,   nil,   174,   176,   177,
   177,   nil,   nil,   nil,   nil,   nil,   nil,   -16,   nil,   nil,
    -1,   nil,   182,   182,   nil,   nil,   nil ]

racc_action_default = [
    -1,  -105,    -2,    -3,    -7,   -10,   -11,   -12,   -13,   -14,
   -15,   -16,   -17,   -18,   -19,   -20,  -105,  -105,  -105,   -65,
  -105,  -105,  -105,  -105,  -105,  -105,  -105,  -105,  -100,  -101,
  -102,  -105,    -5,    -6,  -105,   -88,   -89,   -22,   -65,   -66,
   -68,   -70,   -86,   -87,   -23,   -48,   -49,   -27,  -105,  -105,
   -30,  -105,    -8,    -8,  -105,  -105,  -104,   -59,  -105,  -105,
  -105,   177,    -4,   -21,  -105,  -105,   -72,   -73,   -74,   -75,
   -76,   -77,   -78,   -79,   -80,  -105,   -81,   -82,   -83,   -84,
   -85,  -105,   -25,   -28,   -29,   -60,   -90,   -91,   -92,   -93,
   -94,  -105,  -105,  -105,  -105,  -105,   -64,   -31,    -9,   -40,
   -40,   -34,   -35,  -105,  -103,   -61,  -105,  -105,   -67,   -69,
   -71,   -24,  -105,  -105,  -105,  -105,  -105,  -105,  -105,    -8,
  -105,  -105,   -62,   -63,   -26,  -105,  -105,  -105,  -105,  -105,
   -32,   -39,   -33,  -105,   -95,   -96,   -97,   -98,   -99,  -105,
  -105,   -41,   -42,  -104,   -43,  -105,  -105,  -105,  -105,  -105,
  -105,  -105,  -105,  -105,  -105,  -105,   -55,  -105,  -105,  -105,
  -105,   -52,   -53,   -44,   -54,   -57,   -58,  -105,   -45,   -46,
  -105,   -56,  -105,  -105,   -50,   -51,   -47 ]

racc_goto_table = [
    27,    44,    32,    34,    27,    45,   103,    37,    99,   100,
   164,    82,    52,    53,   141,     2,   142,   144,    46,    33,
    50,   174,   171,   118,   120,   175,    81,    62,   154,   160,
   173,     1,    27,    32,    83,    85,   108,    64,   109,   110,
    86,    87,    88,    89,   101,   102,    90,    84,   105,   nil,
   nil,   nil,    27,    27,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   131,   124,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   145,   nil,   nil,   122,   123,    32,    83,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    84,   nil,   nil,   nil,   nil,   nil,   nil,    27,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   139,   158,   nil,   nil,   155,    45,   nil,
   162,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   157,    46,   159,   161 ]

racc_goto_check = [
    22,    19,     4,    17,    22,    17,    25,    18,     5,     5,
    31,    21,    18,    18,    26,     2,    27,    27,    22,     2,
    22,    14,    31,    23,    23,    10,    20,     3,    28,    29,
    30,     1,    22,     4,    17,    32,    33,    34,    35,    37,
    39,    40,    41,    42,    18,    18,    43,    22,    18,   nil,
   nil,   nil,    22,    22,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,     5,    21,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    25,   nil,   nil,    18,    18,     4,    17,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    22,   nil,   nil,   nil,   nil,   nil,   nil,    22,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    22,    19,   nil,   nil,    17,    17,   nil,
    17,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    22,    22,    22,    22 ]

racc_goto_pointer = [
   nil,    31,    15,    -5,     0,   -44,   nil,   nil,   nil,   nil,
  -145,   nil,   nil,   nil,  -149,   nil,   nil,   -13,   -10,   -17,
   -21,   -36,     0,   -76,   nil,   -50,  -126,  -124,  -122,  -124,
  -140,  -145,   -13,   -28,    -2,   -27,   nil,   -36,   nil,    -8,
    -7,    -6,    -5,    -2,   nil ]

racc_goto_default = [
   nil,   nil,    98,     3,     4,   nil,     5,     6,     7,     8,
     9,    10,    11,    12,    13,    14,    15,    42,   nil,   nil,
   nil,   nil,    43,   nil,    24,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    39,   nil,    40,    65,    41,    75,   nil,
   nil,   nil,   nil,   nil,    30 ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 56, :_reduce_none,
  1, 56, :_reduce_2,
  1, 57, :_reduce_3,
  3, 57, :_reduce_4,
  2, 57, :_reduce_5,
  2, 57, :_reduce_6,
  1, 57, :_reduce_7,
  0, 60, :_reduce_none,
  1, 60, :_reduce_9,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  1, 58, :_reduce_none,
  3, 71, :_reduce_21,
  2, 71, :_reduce_22,
  2, 70, :_reduce_23,
  4, 69, :_reduce_24,
  1, 75, :_reduce_25,
  3, 75, :_reduce_26,
  0, 75, :_reduce_27,
  1, 76, :_reduce_none,
  1, 76, :_reduce_none,
  2, 65, :_reduce_30,
  3, 64, :_reduce_31,
  5, 67, :_reduce_32,
  5, 67, :_reduce_33,
  3, 68, :_reduce_34,
  3, 68, :_reduce_35,
  1, 79, :_reduce_none,
  1, 79, :_reduce_none,
  1, 79, :_reduce_none,
  2, 78, :_reduce_39,
  0, 78, :_reduce_none,
  8, 63, :_reduce_41,
  1, 81, :_reduce_42,
  2, 81, :_reduce_43,
  6, 82, :_reduce_44,
  6, 82, :_reduce_45,
  6, 82, :_reduce_46,
  8, 82, :_reduce_47,
  1, 74, :_reduce_none,
  1, 74, :_reduce_none,
  1, 85, :_reduce_none,
  1, 85, :_reduce_none,
  1, 84, :_reduce_none,
  1, 84, :_reduce_none,
  2, 83, :_reduce_54,
  1, 83, :_reduce_55,
  3, 83, :_reduce_56,
  1, 86, :_reduce_57,
  1, 86, :_reduce_58,
  2, 66, :_reduce_59,
  3, 61, :_reduce_60,
  3, 62, :_reduce_61,
  4, 62, :_reduce_62,
  4, 62, :_reduce_63,
  3, 77, :_reduce_64,
  1, 77, :_reduce_65,
  1, 73, :_reduce_66,
  3, 73, :_reduce_67,
  1, 88, :_reduce_68,
  3, 88, :_reduce_69,
  1, 90, :_reduce_none,
  3, 90, :_reduce_71,
  1, 89, :_reduce_none,
  1, 89, :_reduce_none,
  1, 89, :_reduce_none,
  1, 89, :_reduce_none,
  1, 89, :_reduce_none,
  1, 89, :_reduce_none,
  1, 91, :_reduce_none,
  1, 91, :_reduce_none,
  1, 91, :_reduce_none,
  1, 93, :_reduce_none,
  1, 93, :_reduce_none,
  1, 93, :_reduce_none,
  1, 93, :_reduce_none,
  1, 93, :_reduce_none,
  1, 92, :_reduce_none,
  1, 92, :_reduce_none,
  1, 72, :_reduce_88,
  1, 72, :_reduce_89,
  1, 87, :_reduce_none,
  1, 87, :_reduce_none,
  1, 87, :_reduce_none,
  1, 87, :_reduce_none,
  1, 87, :_reduce_none,
  4, 98, :_reduce_95,
  4, 97, :_reduce_96,
  4, 94, :_reduce_97,
  4, 96, :_reduce_98,
  4, 95, :_reduce_99,
  1, 99, :_reduce_100,
  1, 59, :_reduce_101,
  1, 59, :_reduce_102,
  1, 80, :_reduce_103,
  0, 80, :_reduce_none ]

racc_reduce_n = 105

racc_shift_n = 177

racc_token_table = {
  false => 0,
  :error => 1,
  :ASSIGN => 2,
  :AT_SYM => 3,
  :COMMENT => 4,
  :JUMP => 5,
  :IO_METHOD => 6,
  :INPUT => 7,
  :OUTPUT => 8,
  :NUMREG => 9,
  :POSREG => 10,
  :VREG => 11,
  :SREG => 12,
  :POSITION => 13,
  :TIME_SEGMENT => 14,
  :MOVE => 15,
  :DOT => 16,
  :TO => 17,
  :AT => 18,
  :TERM => 19,
  :OFFSET => 20,
  :SEMICOLON => 21,
  :NEWLINE => 22,
  :REAL => 23,
  :DIGIT => 24,
  :WORD => 25,
  :EQUAL => 26,
  :UNITS => 27,
  :EEQUAL => 28,
  :NOTEQUAL => 29,
  :GTE => 30,
  :LTE => 31,
  :LT => 32,
  :GT => 33,
  :PLUS => 34,
  :MINUS => 35,
  :STAR => 36,
  :SLASH => 37,
  :DIV => 38,
  :AND => 39,
  :OR => 40,
  :MOD => 41,
  :IF => 42,
  :ELSE => 43,
  :END => 44,
  :UNLESS => 45,
  :WAIT_FOR => 46,
  :WAIT_UNTIL => 47,
  :MAX_SPEED => 48,
  :FANUC_USE => 49,
  "(" => 50,
  ")" => 51,
  "," => 52,
  "[" => 53,
  "]" => 54 }

racc_nt_base = 55

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
  "IO_METHOD",
  "INPUT",
  "OUTPUT",
  "NUMREG",
  "POSREG",
  "VREG",
  "SREG",
  "POSITION",
  "TIME_SEGMENT",
  "MOVE",
  "DOT",
  "TO",
  "AT",
  "TERM",
  "OFFSET",
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
  "WAIT_FOR",
  "WAIT_UNTIL",
  "MAX_SPEED",
  "FANUC_USE",
  "\"(\"",
  "\")\"",
  "\",\"",
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
  "jump",
  "io_method",
  "label_definition",
  "conditional",
  "inline_conditional",
  "program_call",
  "use_statement",
  "wait_statement",
  "number",
  "expression",
  "indirectable",
  "args",
  "arg",
  "var",
  "else_block",
  "inlineable",
  "swallow_newlines",
  "motion_modifiers",
  "motion_modifier",
  "speed",
  "time",
  "time_seg_actions",
  "units",
  "definable",
  "simple_expression",
  "relop",
  "term",
  "addop",
  "factor",
  "mulop",
  "numreg",
  "output",
  "posreg",
  "position",
  "vreg",
  "comment" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

def _reduce_2(val, _values, result)
 @interpreter.nodes = val[0].flatten 
    result
end

def _reduce_3(val, _values, result)
 result = val 
    result
end

def _reduce_4(val, _values, result)
 result = val[0] << val[1] << val[2] 
    result
end

def _reduce_5(val, _values, result)
 result = val[0] << val[1] 
    result
end

def _reduce_6(val, _values, result)
 result = [val[0]] << val[1] 
    result
end

def _reduce_7(val, _values, result)
 result = [val[0]] 
    result
end

# reduce 8 omitted

def _reduce_9(val, _values, result)
 result = val[0] 
    result
end

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

# reduce 17 omitted

# reduce 18 omitted

# reduce 19 omitted

# reduce 20 omitted

def _reduce_21(val, _values, result)
 result = WaitForNode.new(val[1], val[2]) 
    result
end

def _reduce_22(val, _values, result)
 result = WaitUntilNode.new(val[1]) 
    result
end

def _reduce_23(val, _values, result)
 result = UseNode.new(val[0],val[1]) 
    result
end

def _reduce_24(val, _values, result)
 result = CallNode.new(val[0],val[2]) 
    result
end

def _reduce_25(val, _values, result)
 result = [val[0]] 
    result
end

def _reduce_26(val, _values, result)
 result = val[0] << val[2] 
    result
end

def _reduce_27(val, _values, result)
 result = [] 
    result
end

# reduce 28 omitted

# reduce 29 omitted

def _reduce_30(val, _values, result)
 result = IOMethodNode.new(val[0],val[1]) 
    result
end

def _reduce_31(val, _values, result)
 result = JumpNode.new(val[2]) 
    result
end

def _reduce_32(val, _values, result)
 result = ConditionalNode.new("if",val[1],val[2],val[3]) 
    result
end

def _reduce_33(val, _values, result)
 result = ConditionalNode.new("unless",val[1],val[2],val[3]) 
    result
end

def _reduce_34(val, _values, result)
 result = InlineConditionalNode.new("if",val[2],val[0]) 
    result
end

def _reduce_35(val, _values, result)
 result = InlineConditionalNode.new("unless",val[2],val[0]) 
    result
end

# reduce 36 omitted

# reduce 37 omitted

# reduce 38 omitted

def _reduce_39(val, _values, result)
 result = val[1] 
    result
end

# reduce 40 omitted

def _reduce_41(val, _values, result)
 result = MotionNode.new(val[0],val[5],val[7]) 
    result
end

def _reduce_42(val, _values, result)
 result = val 
    result
end

def _reduce_43(val, _values, result)
 result = val[0] << val[1] 
    result
end

def _reduce_44(val, _values, result)
 result = SpeedNode.new(val[4]) 
    result
end

def _reduce_45(val, _values, result)
 result = TerminationNode.new(val[4]) 
    result
end

def _reduce_46(val, _values, result)
 result = OffsetNode.new(val[4]) 
    result
end

def _reduce_47(val, _values, result)
 result = TimeNode.new(val[2],val[4],val[6]) 
    result
end

# reduce 48 omitted

# reduce 49 omitted

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

# reduce 53 omitted

def _reduce_54(val, _values, result)
 result = [val[0],val[1]] 
    result
end

def _reduce_55(val, _values, result)
 result = [:max_speed,:max_speed] 
    result
end

def _reduce_56(val, _values, result)
 result = [val[0],val[2]] 
    result
end

def _reduce_57(val, _values, result)
 result = UnitsNode.new(val[0]) 
    result
end

def _reduce_58(val, _values, result)
 result = UnitsNode.new(val[0]) 
    result
end

def _reduce_59(val, _values, result)
 result = LabelDefinitionNode.new(val[1]) 
    result
end

def _reduce_60(val, _values, result)
 result = DefinitionNode.new(val[0],val[2]) 
    result
end

def _reduce_61(val, _values, result)
 result = AssignmentNode.new(val[0],val[2]) 
    result
end

def _reduce_62(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_63(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_64(val, _values, result)
 result = VarMethodNode.new(val[0],val[2]) 
    result
end

def _reduce_65(val, _values, result)
 result = VarNode.new(val[0]) 
    result
end

def _reduce_66(val, _values, result)
 result = val[0] 
    result
end

def _reduce_67(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

def _reduce_68(val, _values, result)
 result = val[0] 
    result
end

def _reduce_69(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

# reduce 70 omitted

def _reduce_71(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

# reduce 72 omitted

# reduce 73 omitted

# reduce 74 omitted

# reduce 75 omitted

# reduce 76 omitted

# reduce 77 omitted

# reduce 78 omitted

# reduce 79 omitted

# reduce 80 omitted

# reduce 81 omitted

# reduce 82 omitted

# reduce 83 omitted

# reduce 84 omitted

# reduce 85 omitted

# reduce 86 omitted

# reduce 87 omitted

def _reduce_88(val, _values, result)
 result = DigitNode.new(val[0]) 
    result
end

def _reduce_89(val, _values, result)
 result = RealNode.new(val[0]) 
    result
end

# reduce 90 omitted

# reduce 91 omitted

# reduce 92 omitted

# reduce 93 omitted

# reduce 94 omitted

def _reduce_95(val, _values, result)
 result = VisionRegisterNode.new(val[2].to_i) 
    result
end

def _reduce_96(val, _values, result)
 result = PositionNode.new(val[2].to_i) 
    result
end

def _reduce_97(val, _values, result)
 result = NumregNode.new(val[2].to_i) 
    result
end

def _reduce_98(val, _values, result)
 result = PosregNode.new(val[2].to_i) 
    result
end

def _reduce_99(val, _values, result)
 result = IONode.new(val[0], val[2].to_i) 
    result
end

def _reduce_100(val, _values, result)
 result = CommentNode.new(val[0]) 
    result
end

def _reduce_101(val, _values, result)
 result = TerminatorNode.new 
    result
end

def _reduce_102(val, _values, result)
 result = val[0] 
    result
end

def _reduce_103(val, _values, result)
 result = TerminatorNode.new 
    result
end

# reduce 104 omitted

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module TPPlus
