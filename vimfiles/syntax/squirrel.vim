" Vim syntax file
" Language:	Squirrel
" Maintainer:	YASUHIRO.Kanda <y-kanda@r6.dion.ne.jp>
" Last Change:	2009/02/07


syntax case match
syntax keyword sqStatement		clone
syntax keyword sqStatement		delegate
syntax keyword sqStatement		resume
syntax keyword sqStatement		return
syntax keyword sqStatement		this
syntax keyword sqStatement		parent
syntax keyword sqStatement		constructor
syntax keyword sqStatement		vargc
syntax keyword sqStatement		vargv
syntax keyword sqStatement		yield 
syntax keyword sqStatement		sqConditional
syntax keyword sqRepeat         else
syntax keyword sqRepeat         if
syntax keyword sqRepeat         switch 
syntax keyword sqStatement		sqExeption
syntax keyword sqRepeat         catch
syntax keyword sqRepeat         throw
syntax keyword sqRepeat         try 
syntax keyword sqStatement		class
syntax keyword sqStatement		extends
syntax keyword sqRepeat			default
syntax keyword sqRepeat			case
syntax keyword sqRepeat			for
syntax keyword sqRepeat			while 
syntax keyword sqRepeat			continue
syntax keyword sqRepeat			break
syntax keyword sqOperator		in delete typeof instanceof
" syntax keyword sqOperator		"!"
" syntax keyword sqOperator		"!="
" syntax keyword sqOperator		"=="
" syntax keyword sqOperator		"&&"
" syntax keyword sqOperator		"<="
" syntax keyword sqOperator		"=>"
" syntax keyword sqOperator		">"
" syntax keyword sqOperator		"+"
" syntax keyword sqOperator		"+="
" syntax keyword sqOperator		"-"
" syntax keyword sqOperator		"-="
" syntax keyword sqOperator		"/"
" syntax keyword sqOperator		"/="
" syntax keyword sqOperator		"*"
" syntax keyword sqOperator		"*="
" syntax keyword sqOperator		"%"
" syntax keyword sqOperator		"%="
" syntax keyword sqOperator		"++"
" syntax keyword sqOperator		"--"
" syntax keyword sqOperator		"<-"
" syntax keyword sqOperator		"="
" syntax keyword sqOperator		"&"
" syntax keyword sqOperator		"^"
" syntax keyword sqOperator		"|"
" syntax keyword sqOperator		"~"
" syntax keyword sqOperator		">>"
" syntax keyword sqOperator		"<<"
" syntax keyword sqOperator		">>>"
" syntax keyword sqOperator		"."
syntax keyword sqStatement		function
syntax keyword sqStorageClass	local
syntax keyword sqStorageClass	static
syntax keyword sqConstant		null
syntax keyword sqBoolean		true
syntax keyword sqBoolean		false

syn region sqCommentL start="\/\/" skip="\\$" end="$" keepend
" syn region	sqCommentL start="\/\/" end="$" keepend
syntax region  sqComment		start=+/\*+ end=+\*/+

syntax region  sqString			start=+"+ skip=+\\"+ end=+"+
syntax region  sqString			start=+@"+ skip=+\\"+ end=+"+
syntax region  sqCharacter		start=+'+ end=+'+
syn match sqNumberD "\<\d\>" display 
" syn match sqNumberH "\<[0x|0X]\x\+\>" display
syn match  sqNumberH  "\<0[xX]\x\+\>" display
syn match sqNumberO "\<0\o\>" display
syn match sqFloat "\<\d[\.][e\|E]\=[\-]\=\d\+\>" display
"syn match sqFloat "\<\d\+[.]\d\+[e]\d\+\>" display
"syn match sqFloat "\<\d\+[.]\d\+[e-]\d\+\>" display
" syntax match   sqNumber			+[^a-zA-Z][0]\d*+
" builtin function
syntax keyword sqStatement print
syntax keyword sqStatement array
syntax keyword sqStatement seterrorhandler
syntax keyword sqStatement setdebughook
syntax keyword sqStatement enabledebuginfo
syntax keyword sqStatement getroottable
syntax keyword sqStatement setroottable
syntax keyword sqStatement getconsttable
syntax keyword sqStatement setconsttable
syntax keyword sqStatement assert
syntax keyword sqStatement compilestring
syntax keyword sqStatement compiledscript
syntax keyword sqStatement collectgarbage
syntax keyword sqStatement type
syntax keyword sqStatement getstackinfos
syntax keyword sqStatement newthread
syntax keyword sqStatement _version_
syntax keyword sqStatement _charsize_
syntax keyword sqStatement _intsize_
syntax keyword sqStatement tofloat
syntax keyword sqStatement tostring
syntax keyword sqStatement tointeger
syntax keyword sqStatement tochar
syntax keyword sqStatement weakref
syntax keyword sqStatement len
syntax keyword sqStatement slice
syntax keyword sqStatement find
syntax keyword sqStatement tolower
syntax keyword sqStatement toupper
syntax keyword sqStatement rawget
syntax keyword sqStatement rawset
syntax keyword sqStatement rawdelete
syntax keyword sqStatement rawin
syntax keyword sqStatement clear
syntax keyword sqStatement append
syntax keyword sqStatement push
syntax keyword sqStatement extend
syntax keyword sqStatement pop
syntax keyword sqStatement top
syntax keyword sqStatement insert
syntax keyword sqStatement remove
syntax keyword sqStatement resize
syntax keyword sqStatement sort
syntax keyword sqStatement reverse
syntax keyword sqStatement call
syntax keyword sqStatement pcall
syntax keyword sqStatement acall
syntax keyword sqStatement pacall
syntax keyword sqStatement bindenv
syntax keyword sqStatement instance
syntax keyword sqStatement getattributes
syntax keyword sqStatement getclass
syntax keyword sqStatement getstatus
syntax keyword sqStatement wakeup
syntax keyword sqStatement ref
" metamethods
syntax keyword sqStatement _set
syntax keyword sqStatement _get
syntax keyword sqStatement _newslot
syntax keyword sqStatement _delslot
syntax keyword sqStatement _add
syntax keyword sqStatement _sub
syntax keyword sqStatement _mul
syntax keyword sqStatement _div
syntax keyword sqStatement _modulo
syntax keyword sqStatement _unm
syntax keyword sqStatement _typeof
syntax keyword sqStatement _cmp
syntax keyword sqStatement _call
syntax keyword sqStatement _cloned
syntax keyword sqStatement _nexti
syntax keyword sqStatement _tostring
syntax keyword sqStatement _inherited
syntax keyword sqStatement _newmember


hi def link sqStatement     Statement
hi def link sqConditional   Conditional
hi def link sqException     Exception
hi def link sqLabel         Label
hi def link sqRepeat        Repeat
hi def link sqStatement     Structure
hi def link sqOperator      Operator
hi def link sqFunction      Function
hi def link sqStorageClass  StorageClass
hi def link sqConstant      Constant
hi def link sqBoolean       Boolean
hi def link sqComment       Comment
hi def link sqCommentL Comment
hi def link sqString        String
hi def link sqCharacter     Character
hi def link sqFloat         Float
hi def link sqNumberD Number
hi def link sqNumberO Number
hi def link sqNumberH Number
hi def link sqKeyword Keyword


syn sync maxlines=50
let b:current_syntax = "squirrel"


" ±êðfiletype.vim É­±Æ
" au BufNewFile,BufRead *.nut setf squirrel
