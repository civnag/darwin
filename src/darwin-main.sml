structure DarwinTest =
struct
	open Grammar
	structure CP = DarwinParseFn(DarwinLexer)

	fun tok2s (DarwinTokens.ID s) = s
		| tok2s (DarwinTokens.NUM n) = Int.toString n
		| tok2s tok = DarwinTokens.toString tok

	fun darwin instrm =
		let
			val sm = AntlrStreamPos.mkSourcemap()
			val lex = DarwinLexer.lex sm
			val strm = DarwinLexer.streamifyInstream instrm
			val _ = print "      _                     _       \n"
			val _ = print "   __| | __ _ _ ____      _(_)_ __  \n"
			val _ = print "  / _` |/ _` | '__\\ \\ /\\ / / | '_ \\ \n"
			val _ = print " | (_| | (_| | |   \\ V  V /| | | | |\n"
			val _ = print "  \\__,_|\\__,_|_|    \\_/\\_/ |_|_| |_|\n"
			val _ = print "                                    \n"
			val _ = print "        Interpreting code...        \n"
			val _ = print "                                    \n"

			val (r, strm', errs,{ps=prints,v=vars}) = CP.parse lex nil strm
			fun doErr err = print ("Syntax error " ^
			    AntlrRepair.repairToString DarwinTokens.toString sm err ^ "\n")
			val _ = app doErr errs
		in
			List.app print (List.rev prints); print "\n"
		end

	fun main (prog_name, args) =
    	let
      		val _ = darwin (TextIO.openIn "lol")
    	in
      		1
    	end
end
