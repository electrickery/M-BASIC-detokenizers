#include "gwbasic.h"

typedef struct {
  int opcode;
  char *name;
} gwb_optable;


/* 
TRS-80 Model 4 tokens and keywords 
Source: Ira Goldklang website trs-80.com 
http://www.trs-80.com/trs80-zaps-internals.htm#tokens
*/ 

/*  Statement opcodes  */
gwb_optable gwb_ops[] = {
129,"END",
130,"FOR",
131,"NEXT",
132,"DATA", 
133,"INPUT",
134,"DIM",
135,"READ",
136,"LET",
137,"GOTO",
138,"RUN",
139,"IF",
140,"RESTORE",
141,"GOSUB",
142,"RETURN",
143,"REM",
144,"STOP",
145,"PRINT",
146,"CLEAR",
147,"LIST",
148,"NEW",
149,"ON",
150,"WAIT",
151,"DEF",
152,"POKE",
153,"CONT",
156,"OUT",
157,"LPRINT",
158,"LLIST",
159,"CLS",
162,"ELSE",
163,"TRON",
164,"TROFF",
165,"SWAP",
166,"ERASE",
167,"EDIT",
168,"ERROR",
169,"RESUME",
170,"DELETE",
171,"AUTO",
172,"RENUM",
173,"DEFSTR",
174,"DEFINT",
175,"DEFSNG",
176,"DEFDBL",
177,"LINE",
180,"WHILE",
181,"WEND",
182,"CALL",
183,"WRITE",
184,"COMMON",
185,"CHAIN",
186,"OPTION",
187,"RANDOM",
189,"SYSTEM",
191,"OPEN",
192,"FIELD",
193,"GET",
194,"PUT",
195,"CLOSE",
196,"LOAD",
197,"MERGE", 
199,"NAME",
200,"KILL",
201,"LSET",
202,"RSET",
203,"SAVE",
205,"SOUND",
207,"TO",
208,"THEN",
209,"TAB(",
210,"STEP",
211,"USR",
212,"FN",
213,"SPC",
214,"NOT",
215,"ERL",
216,"ERR",
217,"STRING$", 
218,"USING",
219,"INSTR",
220,"'",
221,"VARPTR",
223,"ERRS$",
224,"INKEY$",
225,"MEM",
226,"TIME$",
240,">",
241,"=",
242,"<",
243,"+",
244,"-",
245,"*",
246,"/",
247,"^",
248,"AND",
249,"OR",
250,"XOR",
251,"EQV",
252,"IMP",
253,"MOD",
254,"\\",
0, 0
}; 

/* Function opcodes, preceded by 0xff */


gwb_optable gwb_duops[] = {
129,"LEFT$",
130,"RIGHT$",
131,"MID$",
132,"SGN",
133,"INT",
134,"ABS",
135,"SQR",
136,"RND",
137,"SIN",
138,"LOG",
139,"EXP",
140,"COS",
141,"TAN",
142,"ATN",
143,"FRE",
144,"INP",
145,"POS",
146,"LEN",
147,"STR$",
148,"VAL",
149,"ASC",
150,"CHR$",
151,"PEEK",
152,"SPACE$",
153,"OCT$",
154,"HEX$",
155,"LPOS",
156,"CINT",
157,"CSNG",
158,"CDBL",
159,"FIX",
170,"CVI",
171,"CVS",
172,"CVD",
173,"EOF",
174,"LOC",
175,"LOF",
176,"MKI$",
177,"MKS$",
178,"MKD$",
179,"ROW",
0, 0
}; 
