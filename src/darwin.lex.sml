structure DarwinLexer  = struct

    datatype yystart_state = 
INITIAL
    structure UserDeclarations = 
      struct

 
    structure T = DarwinTokens
    type lex_result = T.token
    fun eof() = T.EOF


      end

    local
    datatype yymatch 
      = yyNO_MATCH
      | yyMATCH of ULexBuffer.stream * action * yymatch
    withtype action = ULexBuffer.stream * yymatch -> UserDeclarations.lex_result

    val yytable : ((UTF8.wchar * UTF8.wchar * int) list * int list) Vector.vector = 
#[([(0w0,0w8,1),
(0w11,0w31,1),
(0w35,0w37,1),
(0w39,0w39,1),
(0w58,0w58,1),
(0w63,0w64,1),
(0w91,0w96,1),
(0w125,0w2147483647,1),
(0w9,0w10,2),
(0w32,0w32,2),
(0w33,0w33,3),
(0w34,0w34,4),
(0w38,0w38,5),
(0w40,0w40,6),
(0w41,0w41,7),
(0w42,0w42,8),
(0w43,0w43,9),
(0w44,0w44,10),
(0w45,0w45,11),
(0w46,0w46,12),
(0w47,0w47,13),
(0w48,0w57,14),
(0w59,0w59,15),
(0w60,0w60,16),
(0w61,0w61,17),
(0w62,0w62,18),
(0w65,0w90,19),
(0w97,0w97,19),
(0w100,0w100,19),
(0w103,0w104,19),
(0w106,0w107,19),
(0w109,0w111,19),
(0w113,0w114,19),
(0w117,0w117,19),
(0w119,0w122,19),
(0w98,0w98,20),
(0w99,0w99,21),
(0w101,0w101,22),
(0w102,0w102,23),
(0w105,0w105,24),
(0w108,0w108,25),
(0w112,0w112,26),
(0w115,0w115,27),
(0w116,0w116,28),
(0w118,0w118,29),
(0w123,0w123,30),
(0w124,0w124,31)], []), ([], [42]), ([], [40, 42]), ([(0w61,0w61,516)], [32, 42]), ([(0w65,0w90,514),
(0w97,0w122,514)], [42]), ([(0w38,0w38,513)], [42]), ([(0w34,0w34,353),
(0w48,0w57,354),
(0w102,0w102,355),
(0w116,0w116,356)], [27, 42]), ([], [28, 42]), ([], [25, 42]), ([], [23, 42]), ([], [39, 42]), ([], [24, 42]), ([], [29, 42]), ([], [26, 42]), ([(0w34,0w34,347),
(0w46,0w46,347),
(0w48,0w57,348)], [12, 42]), ([], [22, 42]), ([(0w61,0w61,346)], [42]), ([(0w61,0w61,345)], [20, 42]), ([(0w61,0w61,344)], [42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w110,60),
(0w112,0w122,60),
(0w111,0w111,339)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w110,60),
(0w112,0w122,60),
(0w111,0w111,332)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w109,60),
(0w111,0w122,60),
(0w110,0w110,320)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w98,0w107,60),
(0w109,0w122,60),
(0w97,0w97,315),
(0w108,0w108,316)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w109,60),
(0w111,0w122,60),
(0w110,0w110,314)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w100,60),
(0w102,0w122,60),
(0w101,0w101,312)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w113,60),
(0w115,0w122,60),
(0w114,0w114,306)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w98,0w115,60),
(0w118,0w122,60),
(0w97,0w97,269),
(0w116,0w116,270),
(0w117,0w117,271)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w100,60),
(0w102,0w104,60),
(0w106,0w113,60),
(0w115,0w116,60),
(0w118,0w122,60),
(0w101,0w101,69),
(0w105,0w105,70),
(0w114,0w114,71),
(0w117,0w117,72)], [10, 42]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w98,0w122,60),
(0w97,0w97,61)], [10, 42]), ([(0w34,0w34,33),
(0w48,0w57,34),
(0w102,0w102,35),
(0w116,0w116,36),
(0w125,0w125,37)], [42]), ([(0w124,0w124,32)], [42]), ([], [31]), ([(0w65,0w90,56),
(0w97,0w122,56)], []), ([(0w34,0w34,45),
(0w46,0w46,45),
(0w44,0w44,46),
(0w48,0w57,34),
(0w125,0w125,47)], []), ([(0w97,0w97,43)], []), ([(0w114,0w114,38)], []), ([], [16, 17, 18, 19, 38]), ([(0w117,0w117,39)], []), ([(0w101,0w101,40)], []), ([(0w44,0w44,41),
(0w125,0w125,42)], []), ([(0w102,0w102,35),
(0w116,0w116,36)], []), ([], [18]), ([(0w108,0w108,44)], []), ([(0w115,0w115,39)], []), ([(0w48,0w57,49)], []), ([(0w48,0w57,48)], []), ([], [16]), ([(0w44,0w44,46),
(0w48,0w57,48),
(0w125,0w125,47)], []), ([(0w44,0w44,50),
(0w48,0w57,51),
(0w69,0w69,52),
(0w101,0w101,52),
(0w125,0w125,53)], []), ([(0w48,0w57,55)], []), ([(0w44,0w44,50),
(0w48,0w57,51),
(0w125,0w125,53)], []), ([(0w48,0w57,54)], []), ([], [17]), ([(0w44,0w44,50),
(0w48,0w57,54),
(0w125,0w125,53)], []), ([(0w34,0w34,45),
(0w46,0w46,45),
(0w48,0w57,55)], []), ([(0w34,0w34,57),
(0w48,0w57,56),
(0w65,0w90,56),
(0w97,0w122,56)], []), ([(0w44,0w44,58),
(0w125,0w125,59)], []), ([(0w34,0w34,33)], []), ([], [19]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w113,60),
(0w115,0w122,60),
(0w114,0w114,62)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w104,60),
(0w106,0w122,60),
(0w105,0w105,63)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w98,0w122,60),
(0w97,0w97,64)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w97,60),
(0w99,0w122,60),
(0w98,0w98,65)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w107,60),
(0w109,0w122,60),
(0w108,0w108,66)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w100,60),
(0w102,0w122,60),
(0w101,0w101,67)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w114,60),
(0w116,0w122,60),
(0w115,0w115,68)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [1, 10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w113,60),
(0w115,0w122,60),
(0w114,0w114,262)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w115,60),
(0w117,0w122,60),
(0w116,0w116,259)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w116,60),
(0w118,0w122,60),
(0w117,0w117,257)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w111,60),
(0w113,0w122,60),
(0w112,0w112,73)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w107,60),
(0w109,0w122,60),
(0w108,0w108,74)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w100,60),
(0w102,0w122,60),
(0w101,0w101,75)], [10]), ([(0w40,0w40,76),
(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [10]), ([(0w98,0w98,77),
(0w102,0w102,78),
(0w105,0w105,79),
(0w115,0w115,80)], []), ([(0w111,0w111,252)], []), ([(0w108,0w108,250)], []), ([(0w110,0w110,249)], []), ([(0w116,0w116,81)], []), ([(0w114,0w114,82)], []), ([(0w105,0w105,83)], []), ([(0w110,0w110,84)], []), ([(0w103,0w103,85)], []), ([(0w44,0w44,86)], []), ([(0w98,0w98,87),
(0w102,0w102,88),
(0w105,0w105,89),
(0w115,0w115,90)], []), ([(0w111,0w111,244)], []), ([(0w108,0w108,242)], []), ([(0w110,0w110,241)], []), ([(0w116,0w116,91)], []), ([(0w114,0w114,92)], []), ([(0w105,0w105,93)], []), ([(0w110,0w110,94)], []), ([(0w103,0w103,95)], []), ([(0w41,0w41,96),
(0w44,0w44,97)], []), ([], [9]), ([(0w98,0w98,98),
(0w102,0w102,99),
(0w105,0w105,100),
(0w115,0w115,101)], []), ([(0w111,0w111,236)], []), ([(0w108,0w108,234)], []), ([(0w110,0w110,233)], []), ([(0w116,0w116,102)], []), ([(0w114,0w114,103)], []), ([(0w105,0w105,104)], []), ([(0w110,0w110,105)], []), ([(0w103,0w103,106)], []), ([(0w41,0w41,96),
(0w44,0w44,107)], []), ([(0w98,0w98,108),
(0w102,0w102,109),
(0w105,0w105,110),
(0w115,0w115,111)], []), ([(0w111,0w111,228)], []), ([(0w108,0w108,226)], []), ([(0w110,0w110,225)], []), ([(0w116,0w116,112)], []), ([(0w114,0w114,113)], []), ([(0w105,0w105,114)], []), ([(0w110,0w110,115)], []), ([(0w103,0w103,116)], []), ([(0w41,0w41,96),
(0w44,0w44,117)], []), ([(0w98,0w98,118),
(0w102,0w102,119),
(0w105,0w105,120),
(0w115,0w115,121)], []), ([(0w111,0w111,220)], []), ([(0w108,0w108,218)], []), ([(0w110,0w110,217)], []), ([(0w116,0w116,122)], []), ([(0w114,0w114,123)], []), ([(0w105,0w105,124)], []), ([(0w110,0w110,125)], []), ([(0w103,0w103,126)], []), ([(0w41,0w41,96),
(0w44,0w44,127)], []), ([(0w98,0w98,128),
(0w102,0w102,129),
(0w105,0w105,130),
(0w115,0w115,131)], []), ([(0w111,0w111,212)], []), ([(0w108,0w108,210)], []), ([(0w110,0w110,209)], []), ([(0w116,0w116,132)], []), ([(0w114,0w114,133)], []), ([(0w105,0w105,134)], []), ([(0w110,0w110,135)], []), ([(0w103,0w103,136)], []), ([(0w41,0w41,96),
(0w44,0w44,137)], []), ([(0w98,0w98,138),
(0w102,0w102,139),
(0w105,0w105,140),
(0w115,0w115,141)], []), ([(0w111,0w111,204)], []), ([(0w108,0w108,202)], []), ([(0w110,0w110,201)], []), ([(0w116,0w116,142)], []), ([(0w114,0w114,143)], []), ([(0w105,0w105,144)], []), ([(0w110,0w110,145)], []), ([(0w103,0w103,146)], []), ([(0w41,0w41,96),
(0w44,0w44,147)], []), ([(0w98,0w98,148),
(0w102,0w102,149),
(0w105,0w105,150),
(0w115,0w115,151)], []), ([(0w111,0w111,196)], []), ([(0w108,0w108,194)], []), ([(0w110,0w110,193)], []), ([(0w116,0w116,152)], []), ([(0w114,0w114,153)], []), ([(0w105,0w105,154)], []), ([(0w110,0w110,155)], []), ([(0w103,0w103,156)], []), ([(0w41,0w41,96),
(0w44,0w44,157)], []), ([(0w98,0w98,158),
(0w102,0w102,159),
(0w105,0w105,160),
(0w115,0w115,161)], []), ([(0w111,0w111,188)], []), ([(0w108,0w108,186)], []), ([(0w110,0w110,185)], []), ([(0w116,0w116,162)], []), ([(0w114,0w114,163)], []), ([(0w105,0w105,164)], []), ([(0w110,0w110,165)], []), ([(0w103,0w103,166)], []), ([(0w41,0w41,96),
(0w44,0w44,167)], []), ([(0w98,0w98,168),
(0w102,0w102,169),
(0w105,0w105,170),
(0w115,0w115,171)], []), ([(0w111,0w111,180)], []), ([(0w108,0w108,178)], []), ([(0w110,0w110,177)], []), ([(0w116,0w116,172)], []), ([(0w114,0w114,173)], []), ([(0w105,0w105,174)], []), ([(0w110,0w110,175)], []), ([(0w103,0w103,176)], []), ([(0w41,0w41,96)], []), ([(0w116,0w116,176)], []), ([(0w111,0w111,179)], []), ([(0w97,0w97,177)], []), ([(0w111,0w111,181)], []), ([(0w108,0w108,182)], []), ([(0w101,0w101,183)], []), ([(0w97,0w97,184)], []), ([(0w110,0w110,176)], []), ([(0w116,0w116,166)], []), ([(0w111,0w111,187)], []), ([(0w97,0w97,185)], []), ([(0w111,0w111,189)], []), ([(0w108,0w108,190)], []), ([(0w101,0w101,191)], []), ([(0w97,0w97,192)], []), ([(0w110,0w110,166)], []), ([(0w116,0w116,156)], []), ([(0w111,0w111,195)], []), ([(0w97,0w97,193)], []), ([(0w111,0w111,197)], []), ([(0w108,0w108,198)], []), ([(0w101,0w101,199)], []), ([(0w97,0w97,200)], []), ([(0w110,0w110,156)], []), ([(0w116,0w116,146)], []), ([(0w111,0w111,203)], []), ([(0w97,0w97,201)], []), ([(0w111,0w111,205)], []), ([(0w108,0w108,206)], []), ([(0w101,0w101,207)], []), ([(0w97,0w97,208)], []), ([(0w110,0w110,146)], []), ([(0w116,0w116,136)], []), ([(0w111,0w111,211)], []), ([(0w97,0w97,209)], []), ([(0w111,0w111,213)], []), ([(0w108,0w108,214)], []), ([(0w101,0w101,215)], []), ([(0w97,0w97,216)], []), ([(0w110,0w110,136)], []), ([(0w116,0w116,126)], []), ([(0w111,0w111,219)], []), ([(0w97,0w97,217)], []), ([(0w111,0w111,221)], []), ([(0w108,0w108,222)], []), ([(0w101,0w101,223)], []), ([(0w97,0w97,224)], []), ([(0w110,0w110,126)], []), ([(0w116,0w116,116)], []), ([(0w111,0w111,227)], []), ([(0w97,0w97,225)], []), ([(0w111,0w111,229)], []), ([(0w108,0w108,230)], []), ([(0w101,0w101,231)], []), ([(0w97,0w97,232)], []), ([(0w110,0w110,116)], []), ([(0w116,0w116,106)], []), ([(0w111,0w111,235)], []), ([(0w97,0w97,233)], []), ([(0w111,0w111,237)], []), ([(0w108,0w108,238)], []), ([(0w101,0w101,239)], []), ([(0w97,0w97,240)], []), ([(0w110,0w110,106)], []), ([(0w116,0w116,95)], []), ([(0w111,0w111,243)], []), ([(0w97,0w97,241)], []), ([(0w111,0w111,245)], []), ([(0w108,0w108,246)], []), ([(0w101,0w101,247)], []), ([(0w97,0w97,248)], []), ([(0w110,0w110,95)], []), ([(0w116,0w116,85)], []), ([(0w111,0w111,251)], []), ([(0w97,0w97,249)], []), ([(0w111,0w111,253)], []), ([(0w108,0w108,254)], []), ([(0w101,0w101,255)], []), ([(0w97,0w97,256)], []), ([(0w110,0w110,85)], []), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w100,60),
(0w102,0w122,60),
(0w101,0w101,258)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [10, 14]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w107,60),
(0w109,0w122,60),
(0w108,0w108,260)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w100,60),
(0w102,0w122,60),
(0w101,0w101,261)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [2, 10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w108,60),
(0w110,0w122,60),
(0w109,0w109,263)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w104,60),
(0w106,0w122,60),
(0w105,0w105,264)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w109,60),
(0w111,0w122,60),
(0w110,0w110,265)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w98,0w122,60),
(0w97,0w97,266)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w115,60),
(0w117,0w122,60),
(0w116,0w116,267)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w100,60),
(0w102,0w122,60),
(0w101,0w101,268)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [10, 41]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w108,60),
(0w110,0w122,60),
(0w109,0w109,277)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w113,60),
(0w115,0w122,60),
(0w114,0w114,273)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w108,60),
(0w110,0w122,60),
(0w109,0w109,272)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [5, 10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w104,60),
(0w106,0w122,60),
(0w105,0w105,274)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w109,60),
(0w111,0w122,60),
(0w110,0w110,275)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w102,60),
(0w104,0w122,60),
(0w103,0w103,276)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [9, 10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w111,60),
(0w113,0w122,60),
(0w112,0w112,278)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w107,60),
(0w109,0w122,60),
(0w108,0w108,279)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w100,60),
(0w102,0w122,60),
(0w101,0w101,280)], [10]), ([(0w32,0w32,281),
(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [10]), ([(0w111,0w111,282)], []), ([(0w102,0w102,283)], []), ([(0w32,0w32,284)], []), ([(0w98,0w98,285),
(0w102,0w102,286),
(0w105,0w105,287),
(0w115,0w115,288),
(0w116,0w116,289)], []), ([(0w111,0w111,301)], []), ([(0w108,0w108,299)], []), ([(0w110,0w110,298)], []), ([(0w116,0w116,294)], []), ([(0w117,0w117,290)], []), ([(0w112,0w112,291)], []), ([(0w108,0w108,292)], []), ([(0w101,0w101,293)], []), ([(0w40,0w40,76)], []), ([(0w114,0w114,295)], []), ([(0w105,0w105,296)], []), ([(0w110,0w110,297)], []), ([(0w103,0w103,96)], []), ([(0w116,0w116,96)], []), ([(0w111,0w111,300)], []), ([(0w97,0w97,298)], []), ([(0w111,0w111,302)], []), ([(0w108,0w108,303)], []), ([(0w101,0w101,304)], []), ([(0w97,0w97,305)], []), ([(0w110,0w110,96)], []), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w104,60),
(0w106,0w110,60),
(0w112,0w122,60),
(0w105,0w105,307),
(0w111,0w111,308)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w109,60),
(0w111,0w122,60),
(0w110,0w110,310)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w99,60),
(0w101,0w122,60),
(0w100,0w100,309)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [6, 10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w115,60),
(0w117,0w122,60),
(0w116,0w116,311)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [4, 10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w115,60),
(0w117,0w122,60),
(0w116,0w116,313)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [0, 10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w115,60),
(0w117,0w122,60),
(0w116,0w116,276)], [8, 10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w107,60),
(0w109,0w122,60),
(0w108,0w108,319)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w110,60),
(0w112,0w122,60),
(0w111,0w111,317)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w98,0w122,60),
(0w97,0w97,318)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w115,60),
(0w117,0w122,60),
(0w116,0w116,276)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w114,60),
(0w116,0w122,60),
(0w115,0w115,257)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w99,60),
(0w101,0w122,60),
(0w100,0w100,321)], [10]), ([(0w32,0w32,322),
(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [10]), ([(0w118,0w118,323)], []), ([(0w97,0w97,324)], []), ([(0w114,0w114,325)], []), ([(0w105,0w105,326)], []), ([(0w97,0w97,327)], []), ([(0w98,0w98,328)], []), ([(0w108,0w108,329)], []), ([(0w101,0w101,330)], []), ([(0w115,0w115,331)], []), ([], [7]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w108,60),
(0w110,0w122,60),
(0w109,0w109,333)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w108,60),
(0w110,0w122,60),
(0w109,0w109,334)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w98,0w122,60),
(0w97,0w97,335)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w109,60),
(0w111,0w122,60),
(0w110,0w110,336)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w99,60),
(0w101,0w122,60),
(0w100,0w100,337)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w114,60),
(0w116,0w122,60),
(0w115,0w115,338)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], [3, 10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w110,60),
(0w112,0w122,60),
(0w111,0w111,340)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w107,60),
(0w109,0w122,60),
(0w108,0w108,341)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w100,60),
(0w102,0w122,60),
(0w101,0w101,342)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w98,0w122,60),
(0w97,0w97,343)], [10]), ([(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w109,60),
(0w111,0w122,60),
(0w110,0w110,276)], [10]), ([], [33, 35]), ([], [21]), ([], [34, 36]), ([(0w48,0w57,349)], []), ([(0w34,0w34,347),
(0w46,0w46,347),
(0w48,0w57,348)], [12]), ([(0w48,0w57,350),
(0w69,0w69,351),
(0w101,0w101,351)], [13]), ([(0w48,0w57,350)], [13]), ([(0w48,0w57,352)], []), ([(0w48,0w57,352)], [13]), ([(0w65,0w90,512),
(0w97,0w122,512)], []), ([(0w34,0w34,507),
(0w46,0w46,507),
(0w44,0w44,360),
(0w48,0w57,354)], []), ([(0w97,0w97,505)], []), ([(0w114,0w114,357)], []), ([(0w117,0w117,358)], []), ([(0w101,0w101,359)], []), ([(0w44,0w44,360)], []), ([(0w34,0w34,361),
(0w48,0w57,362),
(0w102,0w102,363),
(0w116,0w116,364)], []), ([(0w65,0w90,504),
(0w97,0w122,504)], []), ([(0w34,0w34,499),
(0w46,0w46,499),
(0w41,0w41,368),
(0w44,0w44,369),
(0w48,0w57,362)], []), ([(0w97,0w97,497)], []), ([(0w114,0w114,365)], []), ([(0w117,0w117,366)], []), ([(0w101,0w101,367)], []), ([(0w41,0w41,368),
(0w44,0w44,369)], []), ([], [15]), ([(0w34,0w34,370),
(0w48,0w57,371),
(0w102,0w102,372),
(0w116,0w116,373)], []), ([(0w65,0w90,496),
(0w97,0w122,496)], []), ([(0w34,0w34,491),
(0w46,0w46,491),
(0w41,0w41,368),
(0w44,0w44,377),
(0w48,0w57,371)], []), ([(0w97,0w97,489)], []), ([(0w114,0w114,374)], []), ([(0w117,0w117,375)], []), ([(0w101,0w101,376)], []), ([(0w41,0w41,368),
(0w44,0w44,377)], []), ([(0w34,0w34,378),
(0w48,0w57,379),
(0w102,0w102,380),
(0w116,0w116,381)], []), ([(0w65,0w90,488),
(0w97,0w122,488)], []), ([(0w34,0w34,483),
(0w46,0w46,483),
(0w41,0w41,368),
(0w44,0w44,385),
(0w48,0w57,379)], []), ([(0w97,0w97,481)], []), ([(0w114,0w114,382)], []), ([(0w117,0w117,383)], []), ([(0w101,0w101,384)], []), ([(0w41,0w41,368),
(0w44,0w44,385)], []), ([(0w34,0w34,386),
(0w48,0w57,387),
(0w102,0w102,388),
(0w116,0w116,389)], []), ([(0w65,0w90,480),
(0w97,0w122,480)], []), ([(0w34,0w34,475),
(0w46,0w46,475),
(0w41,0w41,368),
(0w44,0w44,393),
(0w48,0w57,387)], []), ([(0w97,0w97,473)], []), ([(0w114,0w114,390)], []), ([(0w117,0w117,391)], []), ([(0w101,0w101,392)], []), ([(0w41,0w41,368),
(0w44,0w44,393)], []), ([(0w34,0w34,394),
(0w48,0w57,395),
(0w102,0w102,396),
(0w116,0w116,397)], []), ([(0w65,0w90,472),
(0w97,0w122,472)], []), ([(0w34,0w34,467),
(0w46,0w46,467),
(0w41,0w41,368),
(0w44,0w44,401),
(0w48,0w57,395)], []), ([(0w97,0w97,465)], []), ([(0w114,0w114,398)], []), ([(0w117,0w117,399)], []), ([(0w101,0w101,400)], []), ([(0w41,0w41,368),
(0w44,0w44,401)], []), ([(0w34,0w34,402),
(0w48,0w57,403),
(0w102,0w102,404),
(0w116,0w116,405)], []), ([(0w65,0w90,464),
(0w97,0w122,464)], []), ([(0w34,0w34,459),
(0w46,0w46,459),
(0w41,0w41,368),
(0w44,0w44,409),
(0w48,0w57,403)], []), ([(0w97,0w97,457)], []), ([(0w114,0w114,406)], []), ([(0w117,0w117,407)], []), ([(0w101,0w101,408)], []), ([(0w41,0w41,368),
(0w44,0w44,409)], []), ([(0w34,0w34,410),
(0w48,0w57,411),
(0w102,0w102,412),
(0w116,0w116,413)], []), ([(0w65,0w90,456),
(0w97,0w122,456)], []), ([(0w34,0w34,451),
(0w46,0w46,451),
(0w41,0w41,368),
(0w44,0w44,417),
(0w48,0w57,411)], []), ([(0w97,0w97,449)], []), ([(0w114,0w114,414)], []), ([(0w117,0w117,415)], []), ([(0w101,0w101,416)], []), ([(0w41,0w41,368),
(0w44,0w44,417)], []), ([(0w34,0w34,418),
(0w48,0w57,419),
(0w102,0w102,420),
(0w116,0w116,421)], []), ([(0w65,0w90,448),
(0w97,0w122,448)], []), ([(0w34,0w34,443),
(0w46,0w46,443),
(0w41,0w41,368),
(0w44,0w44,425),
(0w48,0w57,419)], []), ([(0w97,0w97,441)], []), ([(0w114,0w114,422)], []), ([(0w117,0w117,423)], []), ([(0w101,0w101,424)], []), ([(0w41,0w41,368),
(0w44,0w44,425)], []), ([(0w34,0w34,426),
(0w48,0w57,427),
(0w102,0w102,428),
(0w116,0w116,429)], []), ([(0w65,0w90,440),
(0w97,0w122,440)], []), ([(0w34,0w34,435),
(0w46,0w46,435),
(0w41,0w41,368),
(0w48,0w57,427)], []), ([(0w97,0w97,433)], []), ([(0w114,0w114,430)], []), ([(0w117,0w117,431)], []), ([(0w101,0w101,432)], []), ([(0w41,0w41,368)], []), ([(0w108,0w108,434)], []), ([(0w115,0w115,431)], []), ([(0w48,0w57,436)], []), ([(0w41,0w41,368),
(0w48,0w57,437),
(0w69,0w69,438),
(0w101,0w101,438)], []), ([(0w41,0w41,368),
(0w48,0w57,437)], []), ([(0w48,0w57,439)], []), ([(0w41,0w41,368),
(0w48,0w57,439)], []), ([(0w34,0w34,432),
(0w48,0w57,440),
(0w65,0w90,440),
(0w97,0w122,440)], []), ([(0w108,0w108,442)], []), ([(0w115,0w115,423)], []), ([(0w48,0w57,444)], []), ([(0w41,0w41,368),
(0w44,0w44,425),
(0w48,0w57,445),
(0w69,0w69,446),
(0w101,0w101,446)], []), ([(0w41,0w41,368),
(0w44,0w44,425),
(0w48,0w57,445)], []), ([(0w48,0w57,447)], []), ([(0w41,0w41,368),
(0w44,0w44,425),
(0w48,0w57,447)], []), ([(0w34,0w34,424),
(0w48,0w57,448),
(0w65,0w90,448),
(0w97,0w122,448)], []), ([(0w108,0w108,450)], []), ([(0w115,0w115,415)], []), ([(0w48,0w57,452)], []), ([(0w41,0w41,368),
(0w44,0w44,417),
(0w48,0w57,453),
(0w69,0w69,454),
(0w101,0w101,454)], []), ([(0w41,0w41,368),
(0w44,0w44,417),
(0w48,0w57,453)], []), ([(0w48,0w57,455)], []), ([(0w41,0w41,368),
(0w44,0w44,417),
(0w48,0w57,455)], []), ([(0w34,0w34,416),
(0w48,0w57,456),
(0w65,0w90,456),
(0w97,0w122,456)], []), ([(0w108,0w108,458)], []), ([(0w115,0w115,407)], []), ([(0w48,0w57,460)], []), ([(0w41,0w41,368),
(0w44,0w44,409),
(0w48,0w57,461),
(0w69,0w69,462),
(0w101,0w101,462)], []), ([(0w41,0w41,368),
(0w44,0w44,409),
(0w48,0w57,461)], []), ([(0w48,0w57,463)], []), ([(0w41,0w41,368),
(0w44,0w44,409),
(0w48,0w57,463)], []), ([(0w34,0w34,408),
(0w48,0w57,464),
(0w65,0w90,464),
(0w97,0w122,464)], []), ([(0w108,0w108,466)], []), ([(0w115,0w115,399)], []), ([(0w48,0w57,468)], []), ([(0w41,0w41,368),
(0w44,0w44,401),
(0w48,0w57,469),
(0w69,0w69,470),
(0w101,0w101,470)], []), ([(0w41,0w41,368),
(0w44,0w44,401),
(0w48,0w57,469)], []), ([(0w48,0w57,471)], []), ([(0w41,0w41,368),
(0w44,0w44,401),
(0w48,0w57,471)], []), ([(0w34,0w34,400),
(0w48,0w57,472),
(0w65,0w90,472),
(0w97,0w122,472)], []), ([(0w108,0w108,474)], []), ([(0w115,0w115,391)], []), ([(0w48,0w57,476)], []), ([(0w41,0w41,368),
(0w44,0w44,393),
(0w48,0w57,477),
(0w69,0w69,478),
(0w101,0w101,478)], []), ([(0w41,0w41,368),
(0w44,0w44,393),
(0w48,0w57,477)], []), ([(0w48,0w57,479)], []), ([(0w41,0w41,368),
(0w44,0w44,393),
(0w48,0w57,479)], []), ([(0w34,0w34,392),
(0w48,0w57,480),
(0w65,0w90,480),
(0w97,0w122,480)], []), ([(0w108,0w108,482)], []), ([(0w115,0w115,383)], []), ([(0w48,0w57,484)], []), ([(0w41,0w41,368),
(0w44,0w44,385),
(0w48,0w57,485),
(0w69,0w69,486),
(0w101,0w101,486)], []), ([(0w41,0w41,368),
(0w44,0w44,385),
(0w48,0w57,485)], []), ([(0w48,0w57,487)], []), ([(0w41,0w41,368),
(0w44,0w44,385),
(0w48,0w57,487)], []), ([(0w34,0w34,384),
(0w48,0w57,488),
(0w65,0w90,488),
(0w97,0w122,488)], []), ([(0w108,0w108,490)], []), ([(0w115,0w115,375)], []), ([(0w48,0w57,492)], []), ([(0w41,0w41,368),
(0w44,0w44,377),
(0w48,0w57,493),
(0w69,0w69,494),
(0w101,0w101,494)], []), ([(0w41,0w41,368),
(0w44,0w44,377),
(0w48,0w57,493)], []), ([(0w48,0w57,495)], []), ([(0w41,0w41,368),
(0w44,0w44,377),
(0w48,0w57,495)], []), ([(0w34,0w34,376),
(0w48,0w57,496),
(0w65,0w90,496),
(0w97,0w122,496)], []), ([(0w108,0w108,498)], []), ([(0w115,0w115,366)], []), ([(0w48,0w57,500)], []), ([(0w41,0w41,368),
(0w44,0w44,369),
(0w48,0w57,501),
(0w69,0w69,502),
(0w101,0w101,502)], []), ([(0w41,0w41,368),
(0w44,0w44,369),
(0w48,0w57,501)], []), ([(0w48,0w57,503)], []), ([(0w41,0w41,368),
(0w44,0w44,369),
(0w48,0w57,503)], []), ([(0w34,0w34,367),
(0w48,0w57,504),
(0w65,0w90,504),
(0w97,0w122,504)], []), ([(0w108,0w108,506)], []), ([(0w115,0w115,358)], []), ([(0w48,0w57,508)], []), ([(0w44,0w44,360),
(0w48,0w57,509),
(0w69,0w69,510),
(0w101,0w101,510)], []), ([(0w44,0w44,360),
(0w48,0w57,509)], []), ([(0w48,0w57,511)], []), ([(0w44,0w44,360),
(0w48,0w57,511)], []), ([(0w34,0w34,359),
(0w48,0w57,512),
(0w65,0w90,512),
(0w97,0w122,512)], []), ([], [30]), ([(0w34,0w34,515),
(0w48,0w57,514),
(0w65,0w90,514),
(0w97,0w122,514)], []), ([], [11]), ([], [37])]
    fun yystreamify' p input = ULexBuffer.mkStream (p, input)

    fun yystreamifyReader' p readFn strm = let
          val s = ref strm
	  fun iter(strm, n, accum) = 
	        if n > 1024 then (String.implode (rev accum), strm)
		else (case readFn strm
		       of NONE => (String.implode (rev accum), strm)
			| SOME(c, strm') => iter (strm', n+1, c::accum))
          fun input() = let
	        val (data, strm) = iter(!s, 0, [])
	        in
	          s := strm;
		  data
	        end
          in
            yystreamify' p input
          end

    fun yystreamifyInstream' p strm = yystreamify' p (fn ()=>TextIO.input strm)

    fun innerLex 
(yystrm_, yyss_, yysm) = let
        (* current start state *)
          val yyss = ref yyss_
	  fun YYBEGIN ss = (yyss := ss)
	(* current input stream *)
          val yystrm = ref yystrm_
	  fun yysetStrm strm = yystrm := strm
	  fun yygetPos() = ULexBuffer.getpos (!yystrm)
	  fun yystreamify input = yystreamify' (yygetPos()) input
	  fun yystreamifyReader readFn strm = yystreamifyReader' (yygetPos()) readFn strm
	  fun yystreamifyInstream strm = yystreamifyInstream' (yygetPos()) strm
        (* start position of token -- can be updated via skip() *)
	  val yystartPos = ref (yygetPos())
	(* get one char of input *)
	  fun yygetc strm = (case ULexBuffer.getu strm
                of (SOME (0w10, s')) => 
		     (AntlrStreamPos.markNewLine yysm (ULexBuffer.getpos strm);
		      SOME (0w10, s'))
		 | x => x)
          fun yygetList getc strm = let
            val get1 = UTF8.getu getc
            fun iter (strm, accum) = 
	        (case get1 strm
	          of NONE => rev accum
	           | SOME (w, strm') => iter (strm', w::accum)
	         (* end case *))
          in
            iter (strm, [])
          end
	(* create yytext *)
	  fun yymksubstr(strm) = ULexBuffer.subtract (strm, !yystrm)
	  fun yymktext(strm) = Substring.string (yymksubstr strm)
	  fun yymkunicode(strm) = yygetList Substring.getc (yymksubstr strm)
          open UserDeclarations
          fun lex () = let
            fun yystuck (yyNO_MATCH) = raise Fail "lexer reached a stuck state"
	      | yystuck (yyMATCH (strm, action, old)) = 
		  action (strm, old)
	    val yypos = yygetPos()
	    fun yygetlineNo strm = AntlrStreamPos.lineNo yysm (ULexBuffer.getpos strm)
	    fun yygetcolNo  strm = AntlrStreamPos.colNo  yysm (ULexBuffer.getpos strm)
	    fun yyactsToMatches (strm, [],	  oldMatches) = oldMatches
	      | yyactsToMatches (strm, act::acts, oldMatches) = 
		  yyMATCH (strm, act, yyactsToMatches (strm, acts, oldMatches))
	    fun yygo actTable = 
		(fn (~1, _, oldMatches) => yystuck oldMatches
		  | (curState, strm, oldMatches) => let
		      val (transitions, finals') = Vector.sub (yytable, curState)
		      val finals = map (fn i => Vector.sub (actTable, i)) finals'
		      fun tryfinal() = 
		            yystuck (yyactsToMatches (strm, finals, oldMatches))
		      fun find (c, []) = NONE
			| find (c, (c1, c2, s)::ts) = 
		            if c1 <= c andalso c <= c2 then SOME s
			    else find (c, ts)
		      in case yygetc strm
			  of SOME(c, strm') => 
			       (case find (c, transitions)
				 of NONE => tryfinal()
				  | SOME n => 
				      yygo actTable
					(n, strm', 
					 yyactsToMatches (strm, finals, oldMatches)))
			   | NONE => tryfinal()
		      end)
	    val yylastwasnref = ref (ULexBuffer.lastWasNL (!yystrm))
	    fun continue() = let val yylastwasn = !yylastwasnref in
let
fun yyAction0 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_let )
fun yyAction1 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_variables )
fun yyAction2 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_title )
fun yyAction3 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_comands )
fun yyAction4 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_Print )
fun yyAction5 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_SUM )
fun yyAction6 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_PROD )
fun yyAction7 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_endvars )
fun yyAction8 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_in )
fun yyAction9 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   print yytext; T.TIPO yytext 
      end
fun yyAction10 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.ID yytext 
      end
fun yyAction11 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  T.STR yytext
      end
fun yyAction12 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.NUM (valOf (Int.fromString yytext)) 
      end
fun yyAction13 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.REAL (valOf (Real.fromString yytext)) 
      end
fun yyAction14 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.BOOL (valOf (Bool.fromString yytext)) 
      end
fun yyAction15 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  T.STR yytext
      end
fun yyAction16 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;
         print yytext; T.SINT (Grammar.toIntList (Grammar.tokenize yytext))
      end
fun yyAction17 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;
         print yytext; T.SFLOAT (Grammar.toFloatList (Grammar.tokenize yytext))
      end
fun yyAction18 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;
         print yytext; T.SBOOL (Grammar.toBoolList (Grammar.tokenize yytext))
      end
fun yyAction19 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  print yytext; T.SSTRING (Grammar.tokenize yytext)
      end
fun yyAction20 (strm, lastMatch : yymatch) = (yystrm := strm;   T.EQ )
fun yyAction21 (strm, lastMatch : yymatch) = (yystrm := strm;   T.EEQ )
fun yyAction22 (strm, lastMatch : yymatch) = (yystrm := strm;   T.SEMI)
fun yyAction23 (strm, lastMatch : yymatch) = (yystrm := strm;   T.PLUS )
fun yyAction24 (strm, lastMatch : yymatch) = (yystrm := strm;   T.MINUS )
fun yyAction25 (strm, lastMatch : yymatch) = (yystrm := strm;   T.TIMES )
fun yyAction26 (strm, lastMatch : yymatch) = (yystrm := strm;   T.DIV )
fun yyAction27 (strm, lastMatch : yymatch) = (yystrm := strm;   T.LP )
fun yyAction28 (strm, lastMatch : yymatch) = (yystrm := strm;   T.RP )
fun yyAction29 (strm, lastMatch : yymatch) = (yystrm := strm;   T.DOT )
fun yyAction30 (strm, lastMatch : yymatch) = (yystrm := strm;   T.AND )
fun yyAction31 (strm, lastMatch : yymatch) = (yystrm := strm;   T.OR )
fun yyAction32 (strm, lastMatch : yymatch) = (yystrm := strm;   T.NOT )
fun yyAction33 (strm, lastMatch : yymatch) = (yystrm := strm;   T.GEQ )
fun yyAction34 (strm, lastMatch : yymatch) = (yystrm := strm;   T.LEQ )
fun yyAction35 (strm, lastMatch : yymatch) = (yystrm := strm;   T.GT )
fun yyAction36 (strm, lastMatch : yymatch) = (yystrm := strm;   T.LT )
fun yyAction37 (strm, lastMatch : yymatch) = (yystrm := strm;   T.NEQ )
fun yyAction38 (strm, lastMatch : yymatch) = (yystrm := strm;   T.EMPTY )
fun yyAction39 (strm, lastMatch : yymatch) = (yystrm := strm;   T.COMMA )
fun yyAction40 (strm, lastMatch : yymatch) = (yystrm := strm;   continue() )
fun yyAction41 (strm, lastMatch : yymatch) = (yystrm := strm;
        T.KW_terminate )
fun yyAction42 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;
         print (concat ["Unexpected character: '", yytext,
			           "'\n"]); continue()
      end
val yyactTable = Vector.fromList([yyAction0, yyAction1, yyAction2, yyAction3,
  yyAction4, yyAction5, yyAction6, yyAction7, yyAction8, yyAction9, yyAction10,
  yyAction11, yyAction12, yyAction13, yyAction14, yyAction15, yyAction16,
  yyAction17, yyAction18, yyAction19, yyAction20, yyAction21, yyAction22,
  yyAction23, yyAction24, yyAction25, yyAction26, yyAction27, yyAction28,
  yyAction29, yyAction30, yyAction31, yyAction32, yyAction33, yyAction34,
  yyAction35, yyAction36, yyAction37, yyAction38, yyAction39, yyAction40,
  yyAction41, yyAction42])
in
  if ULexBuffer.eof(!(yystrm))
    then let
      val yycolno = ref(yygetcolNo(!(yystrm)))
      val yylineno = ref(yygetlineNo(!(yystrm)))
      in
        (case (!(yyss))
         of _ => (UserDeclarations.eof())
        (* end case *))
      end
    else (case (!(yyss))
       of INITIAL => yygo yyactTable (0, !(yystrm), yyNO_MATCH)
      (* end case *))
end
end
            and skip() = (yystartPos := yygetPos(); 
			  yylastwasnref := ULexBuffer.lastWasNL (!yystrm);
			  continue())
	    in (continue(), (!yystartPos, yygetPos()), !yystrm, !yyss) end
          in 
            lex()
          end
  in
    type pos = AntlrStreamPos.pos
    type span = AntlrStreamPos.span
    type tok = UserDeclarations.lex_result

    datatype prestrm = STRM of ULexBuffer.stream * 
		(yystart_state * tok * span * prestrm * yystart_state) option ref
    type strm = (prestrm * yystart_state)

    fun lex sm 
(STRM (yystrm, memo), ss) = (case !memo
	  of NONE => let
	     val (tok, span, yystrm', ss') = innerLex 
(yystrm, ss, sm)
	     val strm' = STRM (yystrm', ref NONE);
	     in 
	       memo := SOME (ss, tok, span, strm', ss');
	       (tok, span, (strm', ss'))
	     end
	   | SOME (ss', tok, span, strm', ss'') => 
	       if ss = ss' then
		 (tok, span, (strm', ss''))
	       else (
		 memo := NONE;
		 lex sm 
(STRM (yystrm, memo), ss))
         (* end case *))

    fun streamify input = (STRM (yystreamify' 0 input, ref NONE), INITIAL)
    fun streamifyReader readFn strm = (STRM (yystreamifyReader' 0 readFn strm, ref NONE), 
				       INITIAL)
    fun streamifyInstream strm = (STRM (yystreamifyInstream' 0 strm, ref NONE), 
				  INITIAL)

    fun getPos (STRM (strm, _), _) = ULexBuffer.getpos strm

  end
end
