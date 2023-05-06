#include "gwbasic.h"

typedef struct {
  int opcode;
  char *name;
} gwb_optable;


/* Ohio Scientific OSI BASIC : 69 keywords. 
Source: E. D. Morris, Jr. in MICRO: The 6502 Journal issue 15, p. 20 (Aug. 1979) */

gwb_optable gwb_ops[] = {
128,"END",
129,"FOR",
130,"NEXT",
131,"DATA",
132,"INPUT",
133,"DIM",
134,"READ",
135,"LET",
136,"GOTO",
137,"RUN",
138,"IF",
139,"RESTORE",
140,"GOSUB",
141,"RETURN",
142,"REM",
143,"STOP",
144,"ON",
145,"NULL",
146,"WAIT",
147,"LOAD",
148,"SAVE",
149,"DEF",
150,"POKE",
151,"PRINT",
152,"CONT",
153,"LIST",
154,"CLEAR",
155,"NEW",
156,"TAB(",
157,"TO",
158,"FN",
159,"SPC(",
160,"THEN",
161,"NOT",
162,"STEP",
163,"+",
164,"-",
165,"*",
166,"/",
167,"^",
168,"AND",
169,"OR",
170,">",
171,"=",
172,"<",
173,"SGN",
174,"INT",
175,"ABS",
176,"USR",
177,"FRE",
178,"POS",
179,"SQR",
180,"RND",
181,"LOG",
182,"EXP",
183,"COS",
184,"SIN",
185,"TAN",
186,"ATN",
187,"PEEK",
188,"LEN",
189,"STR$",
190,"VAL",
191,"ASC",
192,"CHR$",
193,"LEFT$",
194,"RIGHT$",
195,"MID$",
0, 0
  };

