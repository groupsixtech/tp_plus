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

    #puts t.inspect
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
    57,    30,    32,    24,    23,    24,   198,   215,    40,    39,
    42,    24,    32,   143,    29,    58,    30,    32,    24,    23,
    49,   216,    33,    23,    42,    22,    42,   180,    30,    29,
    24,    23,    33,   180,    49,   147,    49,    33,    42,    45,
    22,    29,    25,    32,   180,    26,    18,    19,    49,    20,
    21,    27,    22,    45,    56,    45,   -50,    25,    42,   -50,
    26,    18,    19,    33,    20,    21,    27,    45,    49,    25,
    32,    32,    26,    18,    19,    42,    20,    21,    27,    30,
    32,    24,    23,    94,   164,    49,    68,    45,    40,    39,
    33,    33,    29,   147,    69,    70,    40,    39,    42,   134,
    33,   133,    32,    22,    45,   -67,    77,    78,    81,    82,
    79,    80,    83,    84,    86,    87,    88,    90,    85,    89,
    25,   205,    33,    26,    18,    19,    42,    20,    21,    27,
    30,    32,    24,    23,   215,   -51,    49,   -52,   -51,   196,
   -52,    93,    92,    29,   193,   194,   195,   197,   216,    64,
   -53,    33,    65,   -53,    22,    45,   148,    77,    78,    81,
    82,    79,    80,    83,    84,    86,    87,    88,    90,    85,
    89,    25,    58,    73,    26,    18,    19,    42,    20,    21,
    27,    30,    32,    24,    23,    42,    42,    49,    42,    42,
    42,    40,    39,    42,    29,    49,    49,    71,    49,    49,
    49,   141,    33,    67,    66,    22,    45,    40,    39,    42,
    40,    39,    42,   140,    45,    45,   152,    45,    45,    45,
   153,   154,    25,   155,   156,    26,    18,    19,   157,    20,
    21,    27,    77,    78,    81,    82,    79,    80,    83,    84,
    86,    87,    88,    90,    85,    89,   114,   113,   111,   112,
   109,   158,   110,   159,   108,    40,    39,    42,   139,   131,
    40,    39,    42,   161,    40,    39,    77,    78,    81,    82,
    79,    80,    83,    84,    86,    87,    88,    90,    85,    89,
    77,    78,    81,    82,    79,    80,    83,    84,    86,    87,
    88,    90,    85,    89,    77,    78,    81,    82,    79,    80,
    83,    84,    86,    87,    88,    90,    85,    89,    77,    78,
    81,    82,    79,    80,    83,    84,    86,    87,    88,    90,
    85,    89,    77,    78,    81,    82,    79,    80,    83,    84,
    86,    87,    88,    90,    85,    89,    77,    78,    81,    82,
    79,    80,    83,    84,    86,    87,    88,    90,    85,    89,
    77,    78,    81,    82,    79,    80,    83,    84,    86,    87,
    88,    90,    85,    89,    77,    78,    81,    82,    79,    80,
    83,    84,    86,    87,    88,    90,    85,    89,    77,    78,
    81,    82,    79,    80,    83,    84,    86,    87,    88,    90,
    85,    89,    77,    78,    81,    82,    79,    80,    83,    84,
    86,    87,    88,    90,    85,    89,    40,    39,    42,   138,
   137,   168,    42,    60,   169,   170,   171,   172,   173,   174,
   175,   176,   121,   121,    42,    42,   136,   185,    56,   135,
    42,   190,   190,   121,   121,   143,   199,   200,   201,   202,
   115,   116,    42,   121,   212,   213,   127,   217,   218,   219,
   220,   221,   126,    35,   227,   228,   229,    42 ]

racc_action_check = [
    22,     4,     4,     4,     4,   177,   193,   217,    21,    21,
    21,   178,    37,   119,     4,    22,     0,     0,     0,     0,
    21,   217,     4,   220,   126,     4,    75,   177,    36,     0,
    36,    36,    37,   178,   126,   120,    75,     0,    68,    21,
     0,    36,     4,   117,   220,     4,     4,     4,    68,     4,
     4,     4,    36,   126,    22,    75,     8,     0,    76,     8,
     0,     0,     0,   117,     0,     0,     0,    68,    76,    36,
     2,   181,    36,    36,    36,    74,    36,    36,    36,    62,
    62,    62,    62,    53,   145,    74,    31,    76,    18,    18,
     2,   181,    62,   145,    31,    31,   198,   198,   198,    95,
    62,    95,   184,    62,    74,    55,    62,    62,    62,    62,
    62,    62,    62,    62,    62,    62,    62,    62,    62,    62,
    62,   198,   184,    62,    62,    62,    45,    62,    62,    62,
    61,    61,    61,    61,   204,     6,    45,     9,     6,   192,
     9,    48,    48,    61,   192,   192,   192,   192,   204,    28,
    13,    61,    28,    13,    61,    45,   124,    61,    61,    61,
    61,    61,    61,    61,    61,    61,    61,    61,    61,    61,
    61,    61,    42,    38,    61,    61,    61,    64,    61,    61,
    61,   143,   143,   143,   143,    25,    26,    64,   127,    19,
    65,   134,   134,   134,   143,    25,    26,    35,   127,    19,
    65,   114,   143,    30,    29,   143,    64,   199,   199,   199,
    20,    20,    20,   113,    25,    26,   135,   127,    19,    65,
   136,   137,   143,   138,   139,   143,   143,   143,   140,   143,
   143,   143,    91,    91,    91,    91,    91,    91,    91,    91,
    91,    91,    91,    91,    91,    91,    57,    57,    57,    57,
    57,   141,    57,   142,    57,   147,   147,   147,   112,    91,
   201,   201,   201,   144,    57,    57,    54,    54,    54,    54,
    54,    54,    54,    54,    54,    54,    54,    54,    54,    54,
   122,   122,   122,   122,   122,   122,   122,   122,   122,   122,
   122,   122,   122,   122,   123,   123,   123,   123,   123,   123,
   123,   123,   123,   123,   123,   123,   123,   123,    41,    41,
    41,    41,    41,    41,    41,    41,    41,    41,    41,    41,
    41,    41,   129,   129,   129,   129,   129,   129,   129,   129,
   129,   129,   129,   129,   129,   129,   150,   150,   150,   150,
   150,   150,   150,   150,   150,   150,   150,   150,   150,   150,
   149,   149,   149,   149,   149,   149,   149,   149,   149,   149,
   149,   149,   149,   149,   130,   130,   130,   130,   130,   130,
   130,   130,   130,   130,   130,   130,   130,   130,   128,   128,
   128,   128,   128,   128,   128,   128,   128,   128,   128,   128,
   128,   128,   125,   125,   125,   125,   125,   125,   125,   125,
   125,   125,   125,   125,   125,   125,    56,    56,    56,   111,
   110,   148,    27,    24,   152,   153,   154,   155,   156,   157,
   158,   162,   164,   165,   168,    23,   109,   179,   180,   108,
    94,   185,   188,   190,    66,   118,   194,   195,   196,   197,
    58,    60,   200,    63,   202,   203,    70,   206,   207,   208,
   209,   212,    69,     1,   221,   223,   226,   227 ]

racc_action_pointer = [
    13,   453,    66,   nil,    -2,   nil,    91,   nil,    12,    93,
   nil,   nil,   nil,   106,   nil,   nil,   nil,   nil,    63,   162,
   185,   -17,    -2,   398,   410,   158,   159,   385,   105,   187,
   176,    58,   nil,   nil,   nil,   197,    25,     8,   146,   nil,
   nil,   278,   155,   nil,   nil,    99,   nil,   nil,   116,   nil,
   nil,   nil,   nil,    28,   236,    50,   381,   239,   413,   nil,
   414,   127,    76,   419,   150,   163,   410,   nil,    11,   424,
   418,   nil,   nil,   nil,    48,    -1,    31,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   202,   nil,   nil,   403,    44,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   371,   368,
   352,   351,   200,   155,   143,   nil,   nil,    39,   390,   -32,
   -19,   nil,   250,   264,   138,   362,    -3,   161,   348,   292,
   334,   nil,   nil,   nil,   166,   190,   194,   195,   197,   198,
   202,   225,   207,   178,   217,    39,   nil,   230,   355,   320,
   306,   nil,   355,   356,   357,   358,   359,   360,   361,   nil,
   nil,   nil,   375,   nil,   398,   399,   nil,   nil,   397,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     0,     6,   370,
   372,    67,   nil,   nil,    98,   414,   nil,   nil,   415,   nil,
   409,   nil,   125,   -50,   380,   381,   382,   383,    71,   182,
   415,   235,   441,   388,   105,   nil,   392,   391,   392,   395,
   nil,   nil,   424,   nil,   nil,   nil,   nil,   -22,   nil,   nil,
    17,   399,   nil,   398,   nil,   nil,   399,   430,   nil,   nil,
   nil ]

racc_action_default = [
    -1,  -132,    -2,    -3,    -7,   -10,   -11,   -12,   -13,   -14,
   -15,   -16,   -17,   -18,   -19,   -20,   -21,   -22,  -132,  -109,
  -132,  -132,   -83,  -132,  -132,  -109,  -109,  -132,  -132,  -132,
  -132,  -132,  -127,  -128,  -129,  -132,    -5,    -6,  -132,  -110,
  -111,   -24,   -83,   -84,   -85,  -109,  -104,  -105,  -132,  -108,
   -25,   -66,   -67,  -132,   -27,  -105,   -31,  -132,  -132,   -34,
  -132,    -8,    -8,  -131,  -109,  -109,  -131,   -77,  -109,  -132,
  -132,   231,    -4,   -23,  -109,  -109,  -109,   -90,   -91,   -92,
   -93,   -94,   -95,   -96,   -97,   -98,   -99,  -100,  -101,  -102,
  -103,  -132,  -106,  -107,  -132,  -132,   -29,   -32,   -33,   -78,
  -112,  -113,  -114,  -115,  -116,  -117,  -118,  -119,  -132,  -132,
  -132,  -132,  -132,  -132,  -132,   -82,   -35,    -9,   -55,   -55,
  -132,  -130,   -48,   -49,  -132,   -79,  -109,  -109,   -87,   -88,
   -89,   -86,   -26,   -28,  -132,  -132,  -132,  -132,  -132,  -132,
  -132,  -132,  -132,    -8,  -132,   -45,   -39,  -132,  -132,   -80,
   -81,   -30,  -132,  -132,  -132,  -132,  -132,  -132,  -132,   -36,
   -54,   -37,  -132,   -40,  -131,  -131,   -42,   -43,  -132,  -120,
  -121,  -122,  -123,  -124,  -125,  -126,   -38,  -132,  -132,  -132,
  -132,  -132,   -46,   -47,  -132,  -132,   -44,   -41,   -56,   -57,
  -131,   -58,  -132,  -132,  -132,  -132,  -132,  -132,  -132,  -132,
  -132,  -132,  -132,  -132,  -132,   -73,  -132,  -132,  -132,  -132,
   -70,   -71,  -132,   -59,   -72,   -75,   -76,  -132,   -60,   -61,
  -132,   -65,   -74,  -132,   -68,   -69,  -132,  -132,   -62,   -63,
   -64 ]

racc_goto_table = [
    31,    38,   120,    36,    31,   124,    96,    50,    53,   118,
   119,   182,   182,     2,     1,   214,   146,    37,   162,   189,
    52,    55,   191,    59,    41,   145,    54,    63,   222,   165,
    61,    62,   181,   184,   142,   144,    31,    95,    36,    97,
   106,   163,   183,   183,   188,   225,   203,   209,   223,   226,
    91,    72,    99,   100,   224,   101,    98,   102,   103,   104,
   105,    31,    31,   107,   nil,   nil,   nil,   nil,   nil,   122,
   123,   nil,   nil,   125,   nil,   nil,   nil,   nil,   nil,   128,
   129,   130,   nil,   nil,   151,   nil,   nil,   nil,   nil,   nil,
   nil,   160,   nil,   nil,   132,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   177,   178,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    97,    36,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   192,
   166,   149,   150,   nil,    98,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    31,   nil,   nil,   nil,   167,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   179,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   204,   186,   nil,   211,   187,   207,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   206,    52,
   208,   210,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   230 ]

racc_goto_check = [
    22,    19,    26,     4,    22,    26,    24,    21,    21,     5,
     5,    14,    14,     2,     1,    39,    29,     2,    28,    34,
    22,    22,    34,    22,    20,    27,    20,    22,    39,    30,
    20,    20,    31,    31,    25,    25,    22,    23,     4,    19,
    19,    29,     9,     9,    33,    10,    35,    36,    37,    38,
    20,     3,    40,    48,    14,    49,    22,    50,    51,    52,
    53,    22,    22,    54,   nil,   nil,   nil,   nil,   nil,    20,
    20,   nil,   nil,    20,   nil,   nil,   nil,   nil,   nil,    20,
    20,    20,   nil,   nil,    24,   nil,   nil,   nil,   nil,   nil,
   nil,     5,   nil,   nil,    22,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    26,    26,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    19,     4,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    26,
    19,    20,    20,   nil,    22,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    22,   nil,   nil,   nil,    22,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    22,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    19,     4,   nil,    19,     4,    21,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    22,    22,
    22,    22,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    22 ]

racc_goto_pointer = [
   nil,    14,    13,    15,     1,   -52,   nil,   nil,   nil,  -135,
  -175,   nil,   nil,   nil,  -166,   nil,   nil,   nil,   nil,   -17,
     5,   -13,     0,   -19,   -50,   -84,   -61,   -95,  -127,  -104,
  -118,  -145,   nil,  -141,  -166,  -152,  -154,  -172,  -172,  -189,
    -5,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    -4,    -2,
     0,     1,     2,     3,     6,   nil ]

racc_goto_default = [
   nil,   nil,   117,     3,     4,   nil,     5,     6,     7,     8,
     9,    10,    11,    12,    13,    14,    15,    16,    17,    51,
   nil,   nil,    47,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    28,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    43,    44,    74,    75,    76,    46,    48,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    34 ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 61, :_reduce_none,
  1, 61, :_reduce_2,
  1, 62, :_reduce_3,
  3, 62, :_reduce_4,
  2, 62, :_reduce_5,
  2, 62, :_reduce_6,
  1, 62, :_reduce_7,
  0, 65, :_reduce_none,
  1, 65, :_reduce_9,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  1, 63, :_reduce_none,
  3, 77, :_reduce_23,
  2, 77, :_reduce_24,
  2, 75, :_reduce_25,
  4, 76, :_reduce_26,
  2, 76, :_reduce_27,
  4, 74, :_reduce_28,
  1, 83, :_reduce_29,
  3, 83, :_reduce_30,
  0, 83, :_reduce_31,
  1, 84, :_reduce_none,
  1, 84, :_reduce_none,
  2, 70, :_reduce_34,
  3, 69, :_reduce_35,
  5, 72, :_reduce_36,
  5, 72, :_reduce_37,
  6, 78, :_reduce_38,
  1, 87, :_reduce_39,
  2, 87, :_reduce_40,
  5, 89, :_reduce_41,
  1, 90, :_reduce_none,
  1, 90, :_reduce_none,
  4, 88, :_reduce_44,
  0, 88, :_reduce_none,
  1, 91, :_reduce_none,
  1, 91, :_reduce_none,
  3, 73, :_reduce_48,
  3, 73, :_reduce_49,
  1, 92, :_reduce_none,
  1, 92, :_reduce_none,
  1, 92, :_reduce_none,
  1, 92, :_reduce_none,
  2, 85, :_reduce_54,
  0, 85, :_reduce_none,
  8, 68, :_reduce_56,
  1, 93, :_reduce_57,
  2, 93, :_reduce_58,
  6, 94, :_reduce_59,
  6, 94, :_reduce_60,
  6, 94, :_reduce_61,
  8, 94, :_reduce_62,
  8, 94, :_reduce_63,
  2, 98, :_reduce_64,
  0, 98, :_reduce_none,
  1, 81, :_reduce_none,
  1, 81, :_reduce_none,
  1, 97, :_reduce_none,
  1, 97, :_reduce_none,
  1, 96, :_reduce_none,
  1, 96, :_reduce_none,
  2, 95, :_reduce_72,
  1, 95, :_reduce_73,
  3, 95, :_reduce_74,
  1, 99, :_reduce_75,
  1, 99, :_reduce_76,
  2, 71, :_reduce_77,
  3, 66, :_reduce_78,
  3, 67, :_reduce_79,
  4, 67, :_reduce_80,
  4, 67, :_reduce_81,
  3, 82, :_reduce_82,
  1, 82, :_reduce_83,
  1, 80, :_reduce_84,
  1, 80, :_reduce_85,
  3, 80, :_reduce_86,
  3, 102, :_reduce_87,
  3, 102, :_reduce_88,
  3, 102, :_reduce_89,
  1, 103, :_reduce_none,
  1, 103, :_reduce_none,
  1, 103, :_reduce_none,
  1, 103, :_reduce_none,
  1, 103, :_reduce_none,
  1, 103, :_reduce_none,
  1, 104, :_reduce_none,
  1, 104, :_reduce_none,
  1, 104, :_reduce_none,
  1, 105, :_reduce_none,
  1, 105, :_reduce_none,
  1, 105, :_reduce_none,
  1, 105, :_reduce_none,
  1, 105, :_reduce_none,
  1, 101, :_reduce_none,
  1, 101, :_reduce_none,
  2, 106, :_reduce_106,
  2, 106, :_reduce_107,
  1, 107, :_reduce_none,
  0, 107, :_reduce_none,
  1, 79, :_reduce_110,
  1, 79, :_reduce_111,
  1, 100, :_reduce_none,
  1, 100, :_reduce_none,
  1, 100, :_reduce_none,
  1, 100, :_reduce_none,
  1, 100, :_reduce_none,
  1, 100, :_reduce_none,
  1, 100, :_reduce_none,
  1, 100, :_reduce_none,
  4, 114, :_reduce_120,
  4, 113, :_reduce_121,
  4, 112, :_reduce_122,
  4, 108, :_reduce_123,
  4, 111, :_reduce_124,
  4, 109, :_reduce_125,
  4, 110, :_reduce_126,
  1, 115, :_reduce_127,
  1, 64, :_reduce_128,
  1, 64, :_reduce_129,
  1, 86, :_reduce_130,
  0, 86, :_reduce_none ]

racc_reduce_n = 132

racc_shift_n = 231

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
  :ARG => 15,
  :MOVE => 16,
  :DOT => 17,
  :TO => 18,
  :AT => 19,
  :TERM => 20,
  :OFFSET => 21,
  :SKIP => 22,
  :SEMICOLON => 23,
  :NEWLINE => 24,
  :REAL => 25,
  :DIGIT => 26,
  :WORD => 27,
  :EQUAL => 28,
  :UNITS => 29,
  :EEQUAL => 30,
  :NOTEQUAL => 31,
  :GTE => 32,
  :LTE => 33,
  :LT => 34,
  :GT => 35,
  :PLUS => 36,
  :MINUS => 37,
  :STAR => 38,
  :SLASH => 39,
  :DIV => 40,
  :AND => 41,
  :OR => 42,
  :MOD => 43,
  :IF => 44,
  :ELSE => 45,
  :END => 46,
  :UNLESS => 47,
  :WAIT_FOR => 48,
  :WAIT_UNTIL => 49,
  :MAX_SPEED => 50,
  :FANUC_USE => 51,
  :FANUC_SET => 52,
  :CASE => 53,
  :WHEN => 54,
  "," => 55,
  "(" => 56,
  ")" => 57,
  "[" => 58,
  "]" => 59 }

racc_nt_base = 60

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
  "ARG",
  "MOVE",
  "DOT",
  "TO",
  "AT",
  "TERM",
  "OFFSET",
  "SKIP",
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
  "FANUC_SET",
  "CASE",
  "WHEN",
  "\",\"",
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
  "jump",
  "io_method",
  "label_definition",
  "conditional",
  "inline_conditional",
  "program_call",
  "use_statement",
  "set_statement",
  "wait_statement",
  "case_statement",
  "number",
  "expression",
  "indirectable",
  "var",
  "args",
  "arg",
  "else_block",
  "swallow_newlines",
  "case_conditions",
  "case_else",
  "case_condition",
  "case_allowed_condition",
  "case_allowed_statement",
  "inlineable",
  "motion_modifiers",
  "motion_modifier",
  "speed",
  "time",
  "time_seg_actions",
  "optional_lpos_arg",
  "units",
  "definable",
  "factor",
  "operator",
  "relop",
  "addop",
  "mulop",
  "signed_number",
  "sign",
  "numreg",
  "output",
  "input",
  "posreg",
  "position",
  "vreg",
  "argument",
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

# reduce 21 omitted

# reduce 22 omitted

def _reduce_23(val, _values, result)
 result = WaitForNode.new(val[1], val[2]) 
    result
end

def _reduce_24(val, _values, result)
 result = WaitUntilNode.new(val[1]) 
    result
end

def _reduce_25(val, _values, result)
 result = UseNode.new(val[0],val[1]) 
    result
end

def _reduce_26(val, _values, result)
 result = SetNode.new(val[0],val[1],val[3]) 
    result
end

def _reduce_27(val, _values, result)
 result = SetNode.new(val[0],nil,val[1]) 
    result
end

def _reduce_28(val, _values, result)
 result = CallNode.new(val[0],val[2]) 
    result
end

def _reduce_29(val, _values, result)
 result = [val[0]] 
    result
end

def _reduce_30(val, _values, result)
 result = val[0] << val[2] 
    result
end

def _reduce_31(val, _values, result)
 result = [] 
    result
end

# reduce 32 omitted

# reduce 33 omitted

def _reduce_34(val, _values, result)
 result = IOMethodNode.new(val[0],val[1]) 
    result
end

def _reduce_35(val, _values, result)
 result = JumpNode.new(val[2]) 
    result
end

def _reduce_36(val, _values, result)
 result = ConditionalNode.new("if",val[1],val[2],val[3]) 
    result
end

def _reduce_37(val, _values, result)
 result = ConditionalNode.new("unless",val[1],val[2],val[3]) 
    result
end

def _reduce_38(val, _values, result)
 result = CaseNode.new(val[1],val[3],val[4]) 
    result
end

def _reduce_39(val, _values, result)
 result = val 
    result
end

def _reduce_40(val, _values, result)
 result = val[0] << val[1] << val[2] 
    result
end

def _reduce_41(val, _values, result)
 result = CaseConditionNode.new(val[1],val[3]) 
    result
end

# reduce 42 omitted

# reduce 43 omitted

def _reduce_44(val, _values, result)
 result = CaseConditionNode.new(nil,val[2]) 
    result
end

# reduce 45 omitted

# reduce 46 omitted

# reduce 47 omitted

def _reduce_48(val, _values, result)
 result = InlineConditionalNode.new("if",val[2],val[0]) 
    result
end

def _reduce_49(val, _values, result)
 result = InlineConditionalNode.new("unless",val[2],val[0]) 
    result
end

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

# reduce 53 omitted

def _reduce_54(val, _values, result)
 result = val[1] 
    result
end

# reduce 55 omitted

def _reduce_56(val, _values, result)
 result = MotionNode.new(val[0],val[5],val[7]) 
    result
end

def _reduce_57(val, _values, result)
 result = val 
    result
end

def _reduce_58(val, _values, result)
 result = val[0] << val[1] 
    result
end

def _reduce_59(val, _values, result)
 result = SpeedNode.new(val[4]) 
    result
end

def _reduce_60(val, _values, result)
 result = TerminationNode.new(val[4]) 
    result
end

def _reduce_61(val, _values, result)
 result = OffsetNode.new(val[4]) 
    result
end

def _reduce_62(val, _values, result)
 result = TimeNode.new(val[2],val[4],val[6]) 
    result
end

def _reduce_63(val, _values, result)
 result = SkipNode.new(val[5],val[6]) 
    result
end

def _reduce_64(val, _values, result)
 result = val[1] 
    result
end

# reduce 65 omitted

# reduce 66 omitted

# reduce 67 omitted

# reduce 68 omitted

# reduce 69 omitted

# reduce 70 omitted

# reduce 71 omitted

def _reduce_72(val, _values, result)
 result = [val[0],val[1]] 
    result
end

def _reduce_73(val, _values, result)
 result = [:max_speed,:max_speed] 
    result
end

def _reduce_74(val, _values, result)
 result = [val[0],val[2]] 
    result
end

def _reduce_75(val, _values, result)
 result = UnitsNode.new(val[0]) 
    result
end

def _reduce_76(val, _values, result)
 result = UnitsNode.new(val[0]) 
    result
end

def _reduce_77(val, _values, result)
 result = LabelDefinitionNode.new(val[1]) 
    result
end

def _reduce_78(val, _values, result)
 result = DefinitionNode.new(val[0],val[2]) 
    result
end

def _reduce_79(val, _values, result)
 result = AssignmentNode.new(val[0],val[2]) 
    result
end

def _reduce_80(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_81(val, _values, result)
 result = AssignmentNode.new(
                                           val[0],
                                           ExpressionNode.new(val[0],val[1],val[3])
                                         )
                                       
    result
end

def _reduce_82(val, _values, result)
 result = VarMethodNode.new(val[0],val[2]) 
    result
end

def _reduce_83(val, _values, result)
 result = VarNode.new(val[0]) 
    result
end

def _reduce_84(val, _values, result)
 result = val[0] 
    result
end

def _reduce_85(val, _values, result)
 result = val[0] 
    result
end

def _reduce_86(val, _values, result)
 val[1].grouped = true; result = val[1] 
    result
end

def _reduce_87(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

def _reduce_88(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

def _reduce_89(val, _values, result)
 result = ExpressionNode.new(val[0],val[1],val[2]) 
    result
end

# reduce 90 omitted

# reduce 91 omitted

# reduce 92 omitted

# reduce 93 omitted

# reduce 94 omitted

# reduce 95 omitted

# reduce 96 omitted

# reduce 97 omitted

# reduce 98 omitted

# reduce 99 omitted

# reduce 100 omitted

# reduce 101 omitted

# reduce 102 omitted

# reduce 103 omitted

# reduce 104 omitted

# reduce 105 omitted

def _reduce_106(val, _values, result)
 val[1] = val[1].to_i * -1 if val[0] == "-"; result = DigitNode.new(val[1]) 
    result
end

def _reduce_107(val, _values, result)
 val[1] = val[1].to_f * -1 if val[0] == "-"; result = RealNode.new(val[1]) 
    result
end

# reduce 108 omitted

# reduce 109 omitted

def _reduce_110(val, _values, result)
 result = DigitNode.new(val[0]) 
    result
end

def _reduce_111(val, _values, result)
 result = RealNode.new(val[0]) 
    result
end

# reduce 112 omitted

# reduce 113 omitted

# reduce 114 omitted

# reduce 115 omitted

# reduce 116 omitted

# reduce 117 omitted

# reduce 118 omitted

# reduce 119 omitted

def _reduce_120(val, _values, result)
 result = ArgumentNode.new(val[2].to_i) 
    result
end

def _reduce_121(val, _values, result)
 result = VisionRegisterNode.new(val[2].to_i) 
    result
end

def _reduce_122(val, _values, result)
 result = PositionNode.new(val[2].to_i) 
    result
end

def _reduce_123(val, _values, result)
 result = NumregNode.new(val[2].to_i) 
    result
end

def _reduce_124(val, _values, result)
 result = PosregNode.new(val[2].to_i) 
    result
end

def _reduce_125(val, _values, result)
 result = IONode.new(val[0], val[2].to_i) 
    result
end

def _reduce_126(val, _values, result)
 result = IONode.new(val[0], val[2].to_i) 
    result
end

def _reduce_127(val, _values, result)
 result = CommentNode.new(val[0]) 
    result
end

def _reduce_128(val, _values, result)
 result = TerminatorNode.new 
    result
end

def _reduce_129(val, _values, result)
 result = val[0] 
    result
end

def _reduce_130(val, _values, result)
 result = TerminatorNode.new 
    result
end

# reduce 131 omitted

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module TPPlus
