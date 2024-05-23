É2
RD:\Final_Project\CybageConnect\Backend\CybageConnect\Controllers\AuthController.cs
	namespace 	
CybageConnect
 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
AuthController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IAuthService %
_authService& 2
;2 3
public 
AuthController 
( 
IAuthService *
authService+ 6
)6 7
{ 	
_authService 
= 
authService &
;& '
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
)5 6
]6 7
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status400BadRequest* =
)= >
]> ?
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status404NotFound* ;
); <
]< =
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public 
async 
Task 
< 
IActionResult '
>' (
Register) 1
(1 2
UserDTO2 9
userDTO: A
)A B
{ 	
try 
{   
ValidateDTO!! 
validationResult!! ,
=!!- .
await!!/ 4
_authService!!5 A
.!!A B
ValidateFields!!B P
(!!P Q
userDTO!!Q X
.!!X Y
Username!!Y a
,!!a b
userDTO!!c j
.!!j k
Email!!k p
,!!p q
userDTO!!r y
.!!y z
Phone!!z 
,	!! Ä
userDTO
!!Å à
.
!!à â
Id
!!â ã
)
!!ã å
;
!!å ç
if## 
(## 
validationResult## #
.### $
UsernameError##$ 1
.##1 2
IsNullOrEmpty##2 ?
(##? @
)##@ A
&&##B D
validationResult##E U
.##U V

EmailError##V `
.##` a
IsNullOrEmpty##a n
(##n o
)##o p
&&##q s
validationResult	##t Ñ
.
##Ñ Ö

PhoneError
##Ö è
.
##è ê
IsNullOrEmpty
##ê ù
(
##ù û
)
##û ü
)
##ü †
{$$ 
bool%% 
result%% 
=%%  !
await%%" '
_authService%%( 4
.%%4 5
RegisterAsync%%5 B
(%%B C
userDTO%%C J
)%%J K
;%%K L
if(( 
((( 
result(( 
)(( 
{)) 
return++ 
Ok++ !
(++! "
new++" %
{++& '
message++( /
=++0 1
$str++2 K
}++L M
)++M N
;++N O
},, 
else-- 
{.. 
return00 

BadRequest00 )
(00) *
$str00* ?
)00? @
;00@ A
}11 
}22 
else33 
{44 
return55 

BadRequest55 %
(55% &
validationResult55& 6
)556 7
;557 8
}66 
}77 
catch88 
(88 
	Exception88 
ex88 
)88  
{99 
Console;; 
.;; 
	WriteLine;; !
(;;! "
$";;" $
$str;;$ >
{;;> ?
ex;;? A
.;;A B
Message;;B I
};;I J
";;J K
);;K L
;;;L M
return== 

StatusCode== !
(==! "
$num==" %
,==% &
$str==' >
)==> ?
;==? @
}>> 
}?? 	
[BB 	
HttpPostBB	 
(BB 
$strBB 
)BB 
]BB 
[CC 	 
ProducesResponseTypeCC	 
(CC 
StatusCodesCC )
.CC) *
Status200OKCC* 5
)CC5 6
]CC6 7
[DD 	 
ProducesResponseTypeDD	 
(DD 
StatusCodesDD )
.DD) *
Status400BadRequestDD* =
)DD= >
]DD> ?
[EE 	 
ProducesResponseTypeEE	 
(EE 
StatusCodesEE )
.EE) *
Status404NotFoundEE* ;
)EE; <
]EE< =
[FF 	 
ProducesResponseTypeFF	 
(FF 
StatusCodesFF )
.FF) *(
Status500InternalServerErrorFF* F
)FFF G
]FFG H
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
LoginGG) .
(GG. /
LoginDTOGG/ 7
loginDTOGG8 @
)GG@ A
{HH 	
tryII 
{JJ 
stringLL 
tokenLL 
=LL 
awaitLL $
_authServiceLL% 1
.LL1 2

LoginAsyncLL2 <
(LL< =
loginDTOLL= E
)LLE F
;LLF G
ifOO 
(OO 
tokenOO 
!=OO 
nullOO !
)OO! "
{PP 
returnSS 
OkSS 
(SS 
newSS !
{SS" #
tokenSS$ )
}SS* +
)SS+ ,
;SS, -
}TT 
elseUU 
{VV 
returnXX 
UnauthorizedXX '
(XX' (
$strXX( F
)XXF G
;XXG H
}YY 
}ZZ 
catch[[ 
([[ 
	Exception[[ 
ex[[ 
)[[  
{\\ 
Console^^ 
.^^ 
	WriteLine^^ !
(^^! "
$"^^" $
$str^^$ ;
{^^; <
ex^^< >
.^^> ?
Message^^? F
}^^F G
"^^G H
)^^H I
;^^I J
return__ 

StatusCode__ !
(__! "
$num__" %
,__% &
$str__' >
)__> ?
;__? @
}`` 
}aa 	
}bb 
}cc ïH
UD:\Final_Project\CybageConnect\Backend\CybageConnect\Controllers\CommentController.cs
	namespace 	
CybageConnect
 
. 
Controllers #
{		 
[

 
	Authorize

 
(

 
)

 
]

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
CommentController "
:# $
ControllerBase% 3
{ 
private 
readonly 
ICommentService (
_commentService) 8
;8 9
public 
CommentController  
(  !
ICommentService! 0
commentService1 ?
)? @
{ 	
_commentService 
= 
commentService ,
;, -
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
)5 6
]6 7
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status400BadRequest* =
)= >
]> ?
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status404NotFound* ;
); <
]< =
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public 
async 
Task 
< 
IActionResult '
>' (
GetCommentsById) 8
(8 9
int9 <
postId= C
)C D
{ 	
try 
{   
if!! 
(!! 
postId!! 
==!! 
$num!! 
)!!  
{"" 
return## 

BadRequest## %
(##% &
$str##& 6
)##6 7
;##7 8
}$$ 
List%% 
<%% 

CommentDTO%% 
>%%  
comments%%! )
=%%* +
await%%, 1
_commentService%%2 A
.%%A B
GetCommentsById%%B Q
(%%Q R
postId%%R X
)%%X Y
;%%Y Z
if&& 
(&& 
comments&& 
!=&& 
null&&  $
)&&$ %
{'' 
return(( 
Ok(( 
((( 
comments(( &
)((& '
;((' (
})) 
return** 
NotFound** 
(**  
$str**  0
)**0 1
;**1 2
}++ 
catch,, 
{-- 
return.. 

StatusCode.. !
(..! "
$num.." %
,..% &
$str..' >
)..> ?
;..? @
}// 
}00 	
[33 	
HttpPost33	 
(33 
Name33 
=33 
$str33 %
)33% &
]33& '
[44 	 
ProducesResponseType44	 
(44 
StatusCodes44 )
.44) *
Status200OK44* 5
)445 6
]446 7
[55 	 
ProducesResponseType55	 
(55 
StatusCodes55 )
.55) *
Status400BadRequest55* =
)55= >
]55> ?
[66 	 
ProducesResponseType66	 
(66 
StatusCodes66 )
.66) *
Status404NotFound66* ;
)66; <
]66< =
[77 	 
ProducesResponseType77	 
(77 
StatusCodes77 )
.77) *(
Status500InternalServerError77* F
)77F G
]77G H
public88 
async88 
Task88 
<88 
IActionResult88 '
>88' (
CommentOnPost88) 6
(886 7
int887 :
postId88; A
,88A B
[88C D
FromBody88D L
]88L M

CommentDTO88N X
comment88Y `
)88` a
{99 	
try:: 
{;; 
if<< 
(<< 
comment<< 
==<< 
null<< "
)<<" #
{== 
return>> 

BadRequest>> %
(>>% &
$str>>& 8
)>>8 9
;>>9 :
}?? 
int@@ 
	commentId@@ 
=@@ 
await@@  %
_commentService@@& 5
.@@5 6

AddComment@@6 @
(@@@ A
comment@@A H
)@@H I
;@@I J
returnAA 
(AA 
	commentIdAA !
>AA" #
$numAA$ %
)AA% &
?AA' (
OkAA) +
(AA+ ,
	commentIdAA, 5
)AA5 6
:AA7 8
NotFoundAA9 A
(AAA B
$strAAB R
)AAR S
;AAS T
}BB 
catchCC 
{DD 
returnEE 

StatusCodeEE !
(EE! "
$numEE" %
,EE% &
$strEE' >
)EE> ?
;EE? @
}FF 
}GG 	
[KK 	
HttpPutKK	 
(KK 
NameKK 
=KK 
$strKK '
)KK' (
]KK( )
[LL 	 
ProducesResponseTypeLL	 
(LL 
StatusCodesLL )
.LL) *
Status200OKLL* 5
)LL5 6
]LL6 7
[MM 	 
ProducesResponseTypeMM	 
(MM 
StatusCodesMM )
.MM) *
Status400BadRequestMM* =
)MM= >
]MM> ?
[NN 	 
ProducesResponseTypeNN	 
(NN 
StatusCodesNN )
.NN) *
Status404NotFoundNN* ;
)NN; <
]NN< =
[OO 	 
ProducesResponseTypeOO	 
(OO 
StatusCodesOO )
.OO) *(
Status500InternalServerErrorOO* F
)OOF G
]OOG H
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (
UpdateCommentPP) 6
(PP6 7

CommentDTOPP7 A
updatedCommentPPB P
)PPP Q
{QQ 	
tryRR 
{SS 
ifTT 
(TT 
updatedCommentTT !
==TT" $
nullTT% )
)TT) *
{UU 
returnVV 

BadRequestVV %
(VV% &
$strVV& 8
)VV8 9
;VV9 :
}WW 
intXX 
resultXX 
=XX 
awaitXX "
_commentServiceXX# 2
.XX2 3
UpdateCommentXX3 @
(XX@ A
updatedCommentXXA O
)XXO P
;XXP Q
returnYY 
(YY 
resultYY 
>YY  
$numYY! "
)YY" #
?YY$ %
OkYY& (
(YY( )
resultYY) /
)YY/ 0
:YY1 2
NotFoundYY3 ;
(YY; <
$strYY< I
)YYI J
;YYJ K
}ZZ 
catch[[ 
{\\ 
return]] 

StatusCode]] !
(]]! "
$num]]" %
,]]% &
$str]]' >
)]]> ?
;]]? @
}^^ 
}__ 	
[bb 	

HttpDeletebb	 
(bb 
$strbb !
,bb! "
Namebb# '
=bb( )
$strbb* 2
)bb2 3
]bb3 4
[cc 	 
ProducesResponseTypecc	 
(cc 
StatusCodescc )
.cc) *
Status200OKcc* 5
)cc5 6
]cc6 7
[dd 	 
ProducesResponseTypedd	 
(dd 
StatusCodesdd )
.dd) *
Status400BadRequestdd* =
)dd= >
]dd> ?
[ee 	 
ProducesResponseTypeee	 
(ee 
StatusCodesee )
.ee) *
Status404NotFoundee* ;
)ee; <
]ee< =
[ff 	 
ProducesResponseTypeff	 
(ff 
StatusCodesff )
.ff) *(
Status500InternalServerErrorff* F
)ffF G
]ffG H
publicgg 
asyncgg 
Taskgg 
<gg 
IActionResultgg '
>gg' (
DeleteCommentgg) 6
(gg6 7
intgg7 :
	commentIdgg; D
)ggD E
{hh 	
tryii 
{jj 
ifkk 
(kk 
	commentIdkk 
==kk  
$numkk! "
)kk" #
{ll 
returnmm 

BadRequestmm %
(mm% &
$strmm& 6
)mm6 7
;mm7 8
}nn 
intoo 
resultoo 
=oo 
awaitoo "
_commentServiceoo# 2
.oo2 3
DeleteCommentoo3 @
(oo@ A
	commentIdooA J
)ooJ K
;ooK L
returnpp 
(pp 
resultpp 
>pp  
$numpp! "
)pp" #
?pp$ %
Okpp& (
(pp( )
resultpp) /
)pp/ 0
:pp1 2
NotFoundpp3 ;
(pp; <
$strpp< I
)ppI J
;ppJ K
}qq 
catchrr 
{ss 
returntt 

StatusCodett !
(tt! "
$numtt" %
,tt% &
$strtt' >
)tt> ?
;tt? @
}uu 
}vv 	
}ww 
}xx £G
SD:\Final_Project\CybageConnect\Backend\CybageConnect\Controllers\LikesController.cs
	namespace 	
CybageConnect
 
. 
Controllers #
{ 
[ 
	Authorize 
( 
) 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
LikesController  
:! "
ControllerBase# 1
{ 
private 
readonly 
ILikeService %
_likeService& 2
;2 3
public 
LikesController 
( 
ILikeService +
likeService, 7
)7 8
{ 	
_likeService 
= 
likeService &
;& '
} 	
[ 	
HttpGet	 
( 
$str 
, 
Name !
=" #
$str$ 1
)1 2
]2 3
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
)5 6
]6 7
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status400BadRequest* =
)= >
]> ?
[   	 
ProducesResponseType  	 
(   
StatusCodes   )
.  ) *
Status404NotFound  * ;
)  ; <
]  < =
[!! 	 
ProducesResponseType!!	 
(!! 
StatusCodes!! )
.!!) *(
Status500InternalServerError!!* F
)!!F G
]!!G H
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
GetLike"") 0
(""0 1
int""1 4
postId""5 ;
)""; <
{## 	
try$$ 
{%% 
if&& 
(&& 
postId&& 
==&& 
$num&& 
)&& 
{'' 
return(( 

BadRequest(( %
(((% &
$str((& ;
)((; <
;((< =
})) 
int** 
likes** 
=** 
await** !
_likeService**" .
.**. /
GetLikes**/ 7
(**7 8
postId**8 >
)**> ?
;**? @
return++ 
Ok++ 
(++ 
likes++ 
)++  
;++  !
},, 
catch-- 
{.. 
return// 

StatusCode// !
(//! "
$num//" %
,//% &
$str//' >
)//> ?
;//? @
}00 
}11 	
[33 	
HttpGet33	 
(33 
$str33 $
,33$ %
Name33& *
=33+ ,
$str33- 6
)336 7
]337 8
[44 	 
ProducesResponseType44	 
(44 
StatusCodes44 )
.44) *
Status200OK44* 5
)445 6
]446 7
[55 	 
ProducesResponseType55	 
(55 
StatusCodes55 )
.55) *
Status400BadRequest55* =
)55= >
]55> ?
[66 	 
ProducesResponseType66	 
(66 
StatusCodes66 )
.66) *
Status404NotFound66* ;
)66; <
]66< =
[77 	 
ProducesResponseType77	 
(77 
StatusCodes77 )
.77) *(
Status500InternalServerError77* F
)77F G
]77G H
public88 
async88 
Task88 
<88 
IActionResult88 '
>88' (
GetLike88) 0
(880 1
int881 4
postId885 ;
,88; <
int88= @
userId88A G
)88G H
{99 	
try:: 
{;; 
if<< 
(<< 
postId<< 
==<< 
$num<< 
||<<  "
userId<<# )
==<<* ,
$num<<- .
)<<. /
{== 
return>> 

BadRequest>> %
(>>% &
$str>>& F
)>>F G
;>>G H
}?? 
bool@@ 
result@@ 
=@@ 
await@@ #
_likeService@@$ 0
.@@0 1
GetLike@@1 8
(@@8 9
postId@@9 ?
,@@? @
userId@@A G
)@@G H
;@@H I
returnAA 
OkAA 
(AA 
resultAA  
)AA  !
;AA! "
}BB 
catchCC 
{DD 
returnEE 

StatusCodeEE !
(EE! "
$numEE" %
,EE% &
$strEE& 9
)EE9 :
;EE: ;
}FF 
}GG 	
[JJ 	
HttpPostJJ	 
(JJ 
$strJJ 
)JJ 
]JJ 
[KK 	 
ProducesResponseTypeKK	 
(KK 
StatusCodesKK )
.KK) *
Status200OKKK* 5
)KK5 6
]KK6 7
[LL 	 
ProducesResponseTypeLL	 
(LL 
StatusCodesLL )
.LL) *
Status400BadRequestLL* =
)LL= >
]LL> ?
[MM 	 
ProducesResponseTypeMM	 
(MM 
StatusCodesMM )
.MM) *
Status404NotFoundMM* ;
)MM; <
]MM< =
[NN 	 
ProducesResponseTypeNN	 
(NN 
StatusCodesNN )
.NN) *(
Status500InternalServerErrorNN* F
)NNF G
]NNG H
publicOO 
asyncOO 
TaskOO 
<OO 
IActionResultOO '
>OO' (
LikeOO) -
(OO- .
LikeDTOOO. 5
likeDTOOO6 =
)OO= >
{PP 	
tryQQ 
{RR 
ifSS 
(SS 
likeDTOSS 
==SS 
nullSS #
)SS# $
{TT 
returnUU 

BadRequestUU %
(UU% &
$strUU& 8
)UU8 9
;UU9 :
}VV 
intWW 
resultWW 
=WW 
awaitWW "
_likeServiceWW# /
.WW/ 0
LikeWW0 4
(WW4 5
likeDTOWW5 <
)WW< =
;WW= >
ifXX 
(XX 
resultXX 
>XX 
$numXX 
)XX 
{YY 
returnZZ 
OkZZ 
(ZZ 
resultZZ #
)ZZ# $
;ZZ$ %
}\\ 
if]] 
(]] 
result]] 
==]] 
-]] 
$num]] 
)]]  
{^^ 
return__ 

BadRequest__ %
(__% &
$str__& 5
)__5 6
;__6 7
}`` 
returnaa 
NotFoundaa 
(aa  
$straa  *
)aa* +
;aa+ ,
}bb 
catchcc 
{dd 
returnee 

StatusCodeee !
(ee! "
$numee" %
,ee% &
$stree' >
)ee> ?
;ee? @
}ff 
}gg 	
[ii 	

HttpDeleteii	 
(ii 
$strii '
,ii' (
Nameii( ,
=ii- .
$strii/ 7
)ii7 8
]ii8 9
[jj 	 
ProducesResponseTypejj	 
(jj 
StatusCodesjj )
.jj) *
Status204NoContentjj* <
)jj< =
]jj= >
[kk 	 
ProducesResponseTypekk	 
(kk 
StatusCodeskk )
.kk) *
Status400BadRequestkk* =
)kk= >
]kk> ?
[ll 	 
ProducesResponseTypell	 
(ll 
StatusCodesll )
.ll) *
Status404NotFoundll* ;
)ll; <
]ll< =
[mm 	 
ProducesResponseTypemm	 
(mm 
StatusCodesmm )
.mm) *(
Status500InternalServerErrormm* F
)mmF G
]mmG H
publicnn 
asyncnn 
Tasknn 
<nn 
IActionResultnn '
>nn' (
UnLikenn) /
(nn/ 0
intnn0 3
postIdnn4 :
,nn: ;
intnn; >
userIdnn? E
)nnE F
{oo 	
trypp 
{qq 
ifrr 
(rr 
postIdrr 
==rr 
$numrr 
||rr  "
userIdrr# )
==rr* ,
$numrr- .
)rr. /
{ss 
returntt 

BadRequesttt %
(tt% &
$strtt& F
)ttF G
;ttG H
}uu 
ifvv 
(vv 
awaitvv 
_likeServicevv &
.vv& '
UnLikevv' -
(vv- .
postIdvv. 4
,vv4 5
userIdvv5 ;
)vv; <
)vv< =
{ww 
returnxx 
	NoContentxx $
(xx$ %
)xx% &
;xx& '
}yy 
returnzz 
NotFoundzz 
(zz  
$strzz  ,
)zz, -
;zz- .
}{{ 
catch|| 
{}} 
return~~ 

StatusCode~~ !
(~~! "
$num~~" %
,~~% &
$str~~' >
)~~> ?
;~~? @
} 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ π^
UD:\Final_Project\CybageConnect\Backend\CybageConnect\Controllers\NetworkController.cs
	namespace 	
CybageConnect
 
. 
Controllers #
{ 
[ 
	Authorize 
( 
) 
] 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
NetworkController "
:# $
ControllerBase% 3
{ 
private 
readonly 
INetworkService (
_networkService) 8
;8 9
public 
NetworkController  
(  !
INetworkService! 0
networkService1 ?
)? @
{ 	
_networkService 
= 
networkService ,
;, -
} 	
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
)5 6
]6 7
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status400BadRequest* =
)= >
]> ?
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status404NotFound* ;
); <
]< =
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
[ 	
HttpPost	 
( 
$str  
)  !
]! "
public 
async 
Task 
< 
IActionResult '
>' (!
SendConnectionRequest) >
(> ?
ConnectionDTO? L

connectionM W
)W X
{ 	
try 
{ 
var 
result 
= 
await "
_networkService# 2
.2 3!
SendConnectionRequest3 H
(H I

connectionI S
.S T
UserIdT Z
,Z [

connection\ f
.f g
FriendIdg o
)o p
;p q
return 
Ok 
( 
result  
)  !
;! "
} 
catch   
(   
	Exception   
ex   
)    
{!! 
return"" 

StatusCode"" !
(""! "
$num""" %
,""% &
ex""' )
."") *
Message""* 1
)""1 2
;""2 3
}## 
}$$ 	
['' 	
HttpPost''	 
('' 
$str'' "
)''" #
]''# $
[(( 	 
ProducesResponseType((	 
((( 
StatusCodes(( )
.(() *
Status200OK((* 5
)((5 6
]((6 7
[)) 	 
ProducesResponseType))	 
()) 
StatusCodes)) )
.))) *
Status400BadRequest))* =
)))= >
]))> ?
[** 	 
ProducesResponseType**	 
(** 
StatusCodes** )
.**) *
Status404NotFound*** ;
)**; <
]**< =
[++ 	 
ProducesResponseType++	 
(++ 
StatusCodes++ )
.++) *(
Status500InternalServerError++* F
)++F G
]++G H
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (#
AcceptConnectionRequest,,) @
(,,@ A
ConnectionDTO,,A N

connection,,O Y
),,Y Z
{-- 	
try.. 
{// 
var00 
result00 
=00 
await00 "
_networkService00# 2
.002 3#
AcceptConnectionRequest003 J
(00J K

connection00K U
.00U V
UserId00V \
,00\ ]

connection00^ h
.00h i
FriendId00i q
)00q r
;00r s
return11 
Ok11 
(11 
result11  
)11  !
;11! "
}22 
catch33 
(33 
	Exception33 
ex33 
)33 
{44 
return55 

StatusCode55 !
(55! "
$num55" %
,55% &
ex55' )
.55) *
Message55* 1
)551 2
;552 3
}66 
}77 	
[99 	
HttpPost99	 
(99 
$str99 #
)99# $
]99$ %
[:: 	 
ProducesResponseType::	 
(:: 
StatusCodes:: )
.::) *
Status200OK::* 5
)::5 6
]::6 7
[;; 	 
ProducesResponseType;;	 
(;; 
StatusCodes;; )
.;;) *
Status400BadRequest;;* =
);;= >
];;> ?
[<< 	 
ProducesResponseType<<	 
(<< 
StatusCodes<< )
.<<) *
Status404NotFound<<* ;
)<<; <
]<<< =
[== 	 
ProducesResponseType==	 
(== 
StatusCodes== )
.==) *(
Status500InternalServerError==* F
)==F G
]==G H
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' ($
DeclineConnectionRequest>>) A
(>>A B
ConnectionDTO>>B O

connection>>P Z
)>>Z [
{?? 	
try@@ 
{AA 
varBB 
resultBB 
=BB 
awaitBB "
_networkServiceBB# 2
.BB2 3$
DeclineConnectionRequestBB3 K
(BBK L

connectionBBL V
.BBV W
UserIdBBW ]
,BB] ^

connectionBB_ i
.BBi j
FriendIdBBj r
)BBr s
;BBs t
returnCC 
OkCC 
(CC 
resultCC  
)CC  !
;CC! "
}DD 
catchEE 
(EE 
	ExceptionEE 
exEE 
)EE  
{FF 
returnGG 

StatusCodeGG !
(GG! "
$numGG" %
,GG% &
exGG' )
.GG) *
MessageGG* 1
)GG1 2
;GG2 3
}HH 
}II 	
[KK 	
HttpGetKK	 
(KK 
$strKK /
)KK/ 0
]KK0 1
[LL 	 
ProducesResponseTypeLL	 
(LL 
StatusCodesLL )
.LL) *
Status200OKLL* 5
)LL5 6
]LL6 7
[MM 	 
ProducesResponseTypeMM	 
(MM 
StatusCodesMM )
.MM) *
Status400BadRequestMM* =
)MM= >
]MM> ?
[NN 	 
ProducesResponseTypeNN	 
(NN 
StatusCodesNN )
.NN) *
Status404NotFoundNN* ;
)NN; <
]NN< =
[OO 	 
ProducesResponseTypeOO	 
(OO 
StatusCodesOO )
.OO) *(
Status500InternalServerErrorOO* F
)OOF G
]OOG H
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (!
GetConnectionRequestsPP) >
(PP> ?
intPP? B
userIdPPC I
)PPI J
{QQ 	
tryRR 
{SS 
varTT 
resultTT 
=TT 
awaitTT "
_networkServiceTT# 2
.TT2 3!
GetConnectionRequestsTT3 H
(TTH I
userIdTTI O
)TTO P
;TTP Q
ifUU 
(UU 
resultUU 
==UU 
nullUU "
)UU" #
{VV 
returnWW 
NotFoundWW #
(WW# $
)WW$ %
;WW% &
}XX 
returnYY 
OkYY 
(YY 
resultYY  
)YY  !
;YY! "
}ZZ 
catch[[ 
([[ 
	Exception[[ 
ex[[ 
)[[  
{\\ 
return]] 

StatusCode]] !
(]]! "
$num]]" %
,]]% &
ex]]' )
.]]) *
Message]]* 1
)]]1 2
;]]2 3
}^^ 
}__ 	
[aa 	
HttpGetaa	 
(aa 
$straa -
)aa- .
]aa. /
[bb 	 
ProducesResponseTypebb	 
(bb 
StatusCodesbb )
.bb) *
Status200OKbb* 5
)bb5 6
]bb6 7
[cc 	 
ProducesResponseTypecc	 
(cc 
StatusCodescc )
.cc) *
Status400BadRequestcc* =
)cc= >
]cc> ?
[dd 	 
ProducesResponseTypedd	 
(dd 
StatusCodesdd )
.dd) *
Status404NotFounddd* ;
)dd; <
]dd< =
[ee 	 
ProducesResponseTypeee	 
(ee 
StatusCodesee )
.ee) *(
Status500InternalServerErroree* F
)eeF G
]eeG H
publicff 
asyncff 
Taskff 
<ff 
IActionResultff '
>ff' (
GetUnconnectedUsersff) <
(ff< =
intff= @
userIdffA G
)ffG H
{gg 	
tryhh 
{ii 
varjj 
resultjj 
=jj 
awaitjj "
_networkServicejj# 2
.jj2 3
GetUnconnectedUsersjj3 F
(jjF G
userIdjjG M
)jjM N
;jjN O
ifkk 
(kk 
resultkk 
==kk 
nullkk "
)kk" #
{ll 
returnmm 
NotFoundmm #
(mm# $
)mm$ %
;mm% &
}nn 
returnoo 
Okoo 
(oo 
resultoo  
)oo  !
;oo! "
}pp 
catchqq 
(qq 
	Exceptionqq 
exqq 
)qq  
{rr 
returnss 

StatusCodess !
(ss! "
$numss" %
,ss% &
exss' )
.ss) *
Messagess* 1
)ss1 2
;ss2 3
}tt 
}uu 	
[ww 	
HttpGetww	 
(ww 
$strww '
)ww' (
]ww( )
[xx 	 
ProducesResponseTypexx	 
(xx 
StatusCodesxx )
.xx) *
Status200OKxx* 5
)xx5 6
]xx6 7
[yy 	 
ProducesResponseTypeyy	 
(yy 
StatusCodesyy )
.yy) *
Status400BadRequestyy* =
)yy= >
]yy> ?
[zz 	 
ProducesResponseTypezz	 
(zz 
StatusCodeszz )
.zz) *
Status404NotFoundzz* ;
)zz; <
]zz< =
[{{ 	 
ProducesResponseType{{	 
({{ 
StatusCodes{{ )
.{{) *(
Status500InternalServerError{{* F
){{F G
]{{G H
public|| 
async|| 
Task|| 
<|| 
IActionResult|| '
>||' (
GetConnections||) 7
(||7 8
int||8 ;
userId||< B
)||B C
{}} 	
try~~ 
{ 
var
ÄÄ 
result
ÄÄ 
=
ÄÄ 
await
ÄÄ "
_networkService
ÄÄ# 2
.
ÄÄ2 3
GetConnections
ÄÄ3 A
(
ÄÄA B
userId
ÄÄB H
)
ÄÄH I
;
ÄÄI J
if
ÅÅ 
(
ÅÅ 
result
ÅÅ 
==
ÅÅ 
null
ÅÅ "
)
ÅÅ" #
{
ÇÇ 
return
ÉÉ 
NotFound
ÉÉ #
(
ÉÉ# $
)
ÉÉ$ %
;
ÉÉ% &
}
ÑÑ 
return
ÖÖ 
Ok
ÖÖ 
(
ÖÖ 
result
ÖÖ  
)
ÖÖ  !
;
ÖÖ! "
}
ÜÜ 
catch
áá 
(
áá 
	Exception
áá 
ex
áá 
)
áá  
{
àà 
return
ââ 

StatusCode
ââ !
(
ââ! "
$num
ââ" %
,
ââ% &
ex
ââ' )
.
ââ) *
Message
ââ* 1
)
ââ1 2
;
ââ2 3
}
ää 
}
ãã 	
}
åå 
}çç ˙Y
RD:\Final_Project\CybageConnect\Backend\CybageConnect\Controllers\PostController.cs
	namespace 	
CybageConnect
 
. 
Controllers #
{ 
[ 
	Authorize 
( 
) 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
PostController 
:  !
ControllerBase" 0
{ 
private 
readonly 
IPostService %
_postService& 2
;2 3
public 
PostController 
( 
IPostService *
postService+ 6
)6 7
{ 	
_postService 
= 
postService &
;& '
} 	
[ 	
HttpGet	 
] 
[   	 
ProducesResponseType  	 
(   
StatusCodes   )
.  ) *
Status400BadRequest  * =
)  = >
]  > ?
[!! 	 
ProducesResponseType!!	 
(!! 
StatusCodes!! )
.!!) *
Status404NotFound!!* ;
)!!; <
]!!< =
["" 	 
ProducesResponseType""	 
("" 
StatusCodes"" )
."") *(
Status500InternalServerError""* F
)""F G
]""G H
public## 
async## 
Task## 
<## 
IActionResult## '
>##' (
GetAllPosts##( 3
(##3 4
)##4 5
{$$ 	
try%% 
{&& 
IEnumerable'' 
<'' 
PostDTO'' #
>''# $
posts''% *
=''+ ,
await''- 2
_postService''3 ?
.''? @
GetAllPosts''@ K
(''K L
)''L M
;''M N
if(( 
((( 
posts(( 
!=(( 
null((  
)((  !
{)) 
return** 
Ok** 
(** 
posts** #
)**# $
;**$ %
}++ 
else,, 
{-- 
return.. 
NotFound.. #
(..# $
$str..$ -
)..- .
;... /
}// 
}00 
catch11 
{11 
return22 

StatusCode22 !
(22! "
$num22" %
,22% &
$str22' >
)22> ?
;22? @
}33 
}55 	
[99 	
HttpGet99	 
(99 
$str99 
,99 
Name99 
=99 
$str99  )
)99) *
]99* +
[:: 	 
ProducesResponseType::	 
(:: 
StatusCodes:: )
.::) *
Status200OK::* 5
)::5 6
]::6 7
[;; 	 
ProducesResponseType;;	 
(;; 
StatusCodes;; )
.;;) *
Status400BadRequest;;* =
);;= >
];;> ?
[<< 	 
ProducesResponseType<<	 
(<< 
StatusCodes<< )
.<<) *
Status404NotFound<<* ;
)<<; <
]<<< =
[== 	 
ProducesResponseType==	 
(== 
StatusCodes== )
.==) *(
Status500InternalServerError==* F
)==F G
]==G H
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (
GetPost>>) 0
(>>0 1
int>>1 4
id>>5 7
)>>7 8
{?? 	
try@@ 
{AA 
ifBB 
(BB 
idBB 
==BB 
$numBB 
)BB 
{CC 
returnDD 

BadRequestDD %
(DD% &
$strDD& 5
)DD5 6
;DD6 7
}EE 
varFF 
postFF 
=FF 
awaitFF  
_postServiceFF! -
.FF- .
GetPostByIdFF. 9
(FF9 :
idFF: <
)FF< =
;FF= >
returnGG 
(GG 
postGG 
!=GG 
nullGG  $
)GG$ %
?GG& '
OkGG( *
(GG* +
postGG+ /
)GG/ 0
:GG1 2
NotFoundGG3 ;
(GG; <
$strGG< G
)GGG H
;GGH I
}HH 
catchII 
{JJ 
returnKK 

StatusCodeKK !
(KK! "
$numKK" %
,KK% &
$strKK' >
)KK> ?
;KK? @
}LL 
}MM 	
[PP 	
HttpPostPP	 
(PP 
NamePP 
=PP 
$strPP  
)PP  !
]PP! "
[QQ 	 
ProducesResponseTypeQQ	 
(QQ 
StatusCodesQQ )
.QQ) *
Status201CreatedQQ* :
)QQ: ;
]QQ; <
[RR 	 
ProducesResponseTypeRR	 
(RR 
StatusCodesRR )
.RR) *
Status400BadRequestRR* =
)RR= >
]RR> ?
[SS 	 
ProducesResponseTypeSS	 
(SS 
StatusCodesSS )
.SS) *
Status404NotFoundSS* ;
)SS; <
]SS< =
[TT 	 
ProducesResponseTypeTT	 
(TT 
StatusCodesTT )
.TT) *(
Status500InternalServerErrorTT* F
)TTF G
]TTG H
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (
AddPostUU) 0
(UU0 1
PostDTOUU1 8
postUU9 =
)UU= >
{VV 	
tryWW 
{XX 
ifYY 
(YY 
postYY 
==YY 
nullYY  
)YY  !
{ZZ 
return[[ 

BadRequest[[ %
([[% &
$str[[& 8
)[[8 9
;[[9 :
}\\ 
if]] 
(]] 
post]] 
.]] 
Id]] 
>]] 
$num]] 
)]] 
{^^ 
return__ 

BadRequest__ %
(__% &
$str__& 6
)__6 7
;__7 8
}`` 
intaa 
createdPostIdaa !
=aa" #
awaitaa$ )
_postServiceaa* 6
.aa6 7

CreatePostaa7 A
(aaA B
postaaB F
)aaF G
;aaG H
ifbb 
(bb 
createdPostIdbb !
>bb" #
$numbb$ %
)bb% &
{cc 
returndd 
CreatedAtActiondd *
(dd* +
$strdd+ 4
,dd4 5
newdd6 9
{dd: ;
iddd< >
=dd? @
createdPostIdddA N
}ddO P
,ddP Q
postddR V
)ddV W
;ddW X
}ee 
returnff 

StatusCodeff !
(ff! "
$numff" %
,ff% &
$strff' ;
)ff; <
;ff< =
}gg 
catchhh 
{ii 
returnjj 

StatusCodejj !
(jj! "
$numjj" %
,jj% &
$strjj' >
)jj> ?
;jj? @
}kk 
}ll 	
[oo 	
HttpPutoo	 
(oo 
$stroo 
,oo 
Nameoo 
=oo  
$stroo! -
)oo- .
]oo. /
[pp 	 
ProducesResponseTypepp	 
(pp 
StatusCodespp )
.pp) *
Status400BadRequestpp* =
)pp= >
]pp> ?
[qq 	 
ProducesResponseTypeqq	 
(qq 
StatusCodesqq )
.qq) *
Status404NotFoundqq* ;
)qq; <
]qq< =
[rr 	 
ProducesResponseTyperr	 
(rr 
StatusCodesrr )
.rr) *
Status201Createdrr* :
)rr: ;
]rr; <
[ss 	 
ProducesResponseTypess	 
(ss 
StatusCodesss )
.ss) *
Status404NotFoundss* ;
)ss; <
]ss< =
publictt 
asynctt 
Tasktt 
<tt 
IActionResulttt '
>tt' (

UpdatePosttt) 3
(tt3 4
inttt4 7
idtt8 :
,tt: ;
[tt; <
FromBodytt< D
]ttD E
PostDTOttF M
postttN R
)ttR S
{uu 	
ifvv 
(vv 
idvv 
!=vv 
postvv 
.vv 
Idvv 
)vv 
{ww 
returnxx 

BadRequestxx !
(xx! "
)xx" #
;xx# $
}yy 
tryzz 
{{{ 
int|| 
?|| 
updatedPost||  
=||! "
await||# (
_postService||) 5
.||5 6

UpdatePost||6 @
(||@ A
id||A C
,||C D
post||E I
)||I J
;||J K
return}} 
(}} 
updatedPost}} #
>}}$ %
$num}}& '
)}}' (
?}}) *
Ok}}+ -
(}}- .
updatedPost}}. 9
)}}9 :
:}}; <
NotFound}}= E
(}}E F
$str}}F S
)}}S T
;}}T U
}~~ 
catch 
( 
	Exception 
ex 
)  
{
ÄÄ 
return
ÅÅ 

StatusCode
ÅÅ !
(
ÅÅ! "
$num
ÅÅ" %
,
ÅÅ% &
$str
ÅÅ' >
+
ÅÅ> ?
ex
ÅÅ? A
)
ÅÅA B
;
ÅÅB C
}
ÇÇ 
}
ÑÑ 	
[
áá 	

HttpDelete
áá	 
(
áá 
$str
áá 
)
áá 
]
áá 
[
àà 	"
ProducesResponseType
àà	 
(
àà 
StatusCodes
àà )
.
àà) * 
Status204NoContent
àà* <
)
àà< =
]
àà= >
[
ââ 	"
ProducesResponseType
ââ	 
(
ââ 
StatusCodes
ââ )
.
ââ) *!
Status400BadRequest
ââ* =
)
ââ= >
]
ââ> ?
[
ää 	"
ProducesResponseType
ää	 
(
ää 
StatusCodes
ää )
.
ää) *
Status404NotFound
ää* ;
)
ää; <
]
ää< =
[
ãã 	"
ProducesResponseType
ãã	 
(
ãã 
StatusCodes
ãã )
.
ãã) **
Status500InternalServerError
ãã* F
)
ããF G
]
ããG H
public
åå 
async
åå 
Task
åå 
<
åå 
IActionResult
åå '
>
åå' (

DeletePost
åå) 3
(
åå3 4
int
åå4 7
id
åå8 :
)
åå: ;
{
çç 	
try
éé 
{
èè 
if
êê 
(
êê 
id
êê 
==
êê 
$num
êê 
)
êê 
{
ëë 
return
íí 

BadRequest
íí %
(
íí% &
$str
íí& 5
)
íí5 6
;
íí6 7
}
ìì 
bool
îî 
	isDeleted
îî 
=
îî  
await
îî! &
_postService
îî' 3
.
îî3 4

DeletePost
îî4 >
(
îî> ?
id
îî? A
)
îîA B
;
îîB C
return
ïï 
(
ïï 
	isDeleted
ïï !
)
ïï! "
?
ïï# $
	NoContent
ïï% .
(
ïï. /
)
ïï/ 0
:
ïï1 2
NotFound
ïï3 ;
(
ïï; <
$str
ïï< G
)
ïïG H
;
ïïH I
}
ññ 
catch
óó 
{
òò 
return
ôô 

StatusCode
ôô !
(
ôô! "
$num
ôô" %
,
ôô% &
$str
ôô' >
)
ôô> ?
;
ôô? @
}
öö 
}
õõ 	
}
úú 
}ùù ≥2
UD:\Final_Project\CybageConnect\Backend\CybageConnect\Controllers\ProfileController.cs
	namespace 	
CybageConnect
 
. 
Controllers #
{ 
[ 
	Authorize 
( 
) 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
ProfileController "
:# $
ControllerBase% 3
{ 
private 
readonly 
IProfileService (
_profileService) 8
;8 9
private 
readonly 
IAuthService %
_authService& 2
;2 3
public 
ProfileController  
(  !
IProfileService! 0
profileService1 ?
,? @
IAuthServiceA M
authServiceN Y
)Y Z
{ 	
_profileService 
= 
profileService ,
;, -
_authService 
= 
authService &
;& '
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
)5 6
]6 7
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status400BadRequest* =
)= >
]> ?
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status404NotFound* ;
); <
]< =
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public   
async   
Task   
<   
IActionResult   '
>  ' (
Get  ) ,
(  , -
int  - 0
id  1 3
)  3 4
{!! 	
try"" 
{## 
var$$ 
user$$ 
=$$ 
await$$  
_profileService$$! 0
.$$0 1
GetUserProfile$$1 ?
($$? @
id$$@ B
)$$B C
;$$C D
if%% 
(%% 
user%% 
!=%% 
null%% 
)%%  
{&& 
return'' 
Ok'' 
('' 
user'' "
)''" #
;''# $
}(( 
else)) 
{** 
return++ 
NotFound++ #
(++# $
$str++$ 4
)++4 5
;++5 6
},, 
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
)..  
{// 
return00 

StatusCode00 !
(00! "
$num00" %
,00% &
$str00' >
)00> ?
;00? @
}11 
}33 	
[55 	
HttpPut55	 
]55 
[66 	
Route66	 
(66 
$str66 
)66 
]66 
[77 	 
ProducesResponseType77	 
(77 
StatusCodes77 )
.77) *
Status200OK77* 5
)775 6
]776 7
[88 	 
ProducesResponseType88	 
(88 
StatusCodes88 )
.88) *
Status400BadRequest88* =
)88= >
]88> ?
[99 	 
ProducesResponseType99	 
(99 
StatusCodes99 )
.99) *
Status404NotFound99* ;
)99; <
]99< =
[:: 	 
ProducesResponseType::	 
(:: 
StatusCodes:: )
.::) *(
Status500InternalServerError::* F
)::F G
]::G H
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
Update;;) /
(;;/ 0
int;;0 3
id;;4 6
,;;6 7
UserDTO;;7 >
user;;? C
);;C D
{<< 	
try== 
{>> 
ValidateDTO?? 
validationResult?? ,
=??- .
await??0 5
_authService??6 B
.??B C
ValidateFields??C Q
(??Q R
user??R V
.??V W
Username??W _
,??_ `
user??a e
.??e f
Email??f k
,??k l
user??m q
.??q r
Phone??r w
,??w x
user??y }
.??} ~
Id	??~ Ä
)
??Ä Å
;
??Å Ç
ifAA 
(AA 
validationResultAA $
.AA$ %
UsernameErrorAA% 2
.AA2 3
IsNullOrEmptyAA3 @
(AA@ A
)AAA B
&&AAC E
validationResultAAF V
.AAV W

EmailErrorAAW a
.AAa b
IsNullOrEmptyAAb o
(AAo p
)AAp q
&&AAr t
validationResult	AAu Ö
.
AAÖ Ü

PhoneError
AAÜ ê
.
AAê ë
IsNullOrEmpty
AAë û
(
AAû ü
)
AAü †
)
AA† °
{BB 
boolCC 
resultCC 
=CC  !
_profileServiceCC" 1
.CC1 2
UpdateUserProfileCC2 C
(CCC D
idCCD F
,CCF G
userCCH L
)CCL M
;CCM N
ifEE 
(EE 
resultEE 
)EE 
{FF 
returnGG 
OkGG !
(GG! "
newGG" %
{GG& '
messageGG( /
=GG0 1
$strGG2 ;
}GG< =
)GG= >
;GG> ?
}HH 
elseII 
{JJ 
returnKK 

BadRequestKK )
(KK) *
newKK* -
{KK. /
messageKK0 7
=KK8 9
$strKK: O
}KKP Q
)KKQ R
;KKR S
}LL 
}MM 
elseNN 
{OO 
returnPP 

BadRequestPP %
(PP% &
validationResultPP& 6
)PP6 7
;PP7 8
}QQ 
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 
returnUU 

StatusCodeUU !
(UU! "
$numUU" %
,UU% &
$strUU' >
)UU> ?
;UU? @
}VV 
}WW 	
}XX 
}YY  
UD:\Final_Project\CybageConnect\Backend\CybageConnect\Controllers\UtilityController.cs
	namespace 	
CybageConnect
 
. 
Controllers #
{ 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 
UtilityController

 "
:

# $
ControllerBase

% 3
{ 
[ 	
HttpPost	 
( 
$str 
) 
] 
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status200OK* 5
)5 6
]6 7
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status400BadRequest* =
)= >
]> ?
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *
Status404NotFound* ;
); <
]< =
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public 
async 
Task 
< 
IActionResult '
>' (
UploadImage) 4
(4 5
	IFormFile5 >
file? C
)C D
{ 	
try 
{ 
if 
( 
file 
== 
null  
||! #
file$ (
.( )
Length) /
==0 2
$num3 4
)4 5
{ 
return 

BadRequest %
(% &
$str& G
)G H
;H I
} 
var 
filePath 
= 
Path #
.# $
GetTempFileName$ 3
(3 4
)4 5
;5 6
using 
( 
var 
stream !
=" #
new$ '

FileStream( 2
(2 3
filePath3 ;
,; <
FileMode= E
.E F
CreateF L
)L M
)M N
{   
await!! 
file!! 
.!! 
CopyToAsync!! *
(!!* +
stream!!+ 1
)!!1 2
;!!2 3
}"" 
Account%% 
?%% 
account%%  
=%%! "
new%%# &
Account%%' .
(%%. /
$str&& #
,&&# $
$str'' )
,'') *
$str(( 5
)((5 6
;((6 7

Cloudinary++ 

cloudinary++ %
=++& '
new++( +

Cloudinary++, 6
(++6 7
account++7 >
)++> ?
;++? @
var.. 
result.. 
=.. 

cloudinary.. '
...' (
Upload..( .
(... /
new../ 2
ImageUploadParams..3 D
(..D E
)..E F
{// 
File00 
=00 
new00 
FileDescription00 .
(00. /
filePath00/ 7
)007 8
,008 9
PublicId11 
=11 
Guid11 #
.11# $
NewGuid11$ +
(11+ ,
)11, -
.11- .
ToString11. 6
(116 7
)117 8
}22 
)22 
;22 
return33 
Ok33 
(33 
result33  
)33  !
;33! "
}44 
catch55 
{66 
return77 

StatusCode77 !
(77! "
$num77" %
,77% &
$str77' D
)77D E
;77E F
}88 
}99 	
}:: 
};; ä
GD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\Category.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 
Category !
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public

 
string

 
CategoryName

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
=

1 2
null

3 7
!

7 8
;

8 9
public 
virtual 
ICollection "
<" #
Post# '
>' (
Posts) .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
new? B
ListC G
<G H
PostH L
>L M
(M N
)N O
;O P
} 
} µ
FD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\Comment.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 
Comment  
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public

 
int

 
UserId

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 
DateTime 
CreationDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
virtual 
Post 
Post  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
} 
} ñ
ID:\Final_Project\CybageConnect\Backend\CybageConnect\Models\Connection.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 

Connection #
{ 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public

 
int

 
FriendId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
? 
ConnectionStatus '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DateTime 
? 
ConnectionDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
User 
Friend "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
} 
} ºí
UD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\CybageConnectDbContext.cs
	namespace 	
CybageConnect
 
. 
Models 
{  
public 

partial 
class "
CybageConnectDbContext /
:0 1
	DbContext2 ;
{ 
public		 "
CybageConnectDbContext		 %
(		% &
)		& '
{

 	
} 	
public "
CybageConnectDbContext %
(% &
DbContextOptions& 6
<6 7"
CybageConnectDbContext7 M
>M N
optionsO V
)V W
: 
base 
( 
options 
) 
{ 	
} 	
public 
virtual 
DbSet 
< 
Category %
>% &

Categories' 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
virtual 
DbSet 
< 
Comment $
>$ %
Comments& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
virtual 
DbSet 
< 

Connection '
>' (
Connections) 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
DbSet 
< 

Experience '
>' (
Experiences) 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
DbSet 
< 
Like !
>! "
Likes# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
virtual 
DbSet 
< 
Post !
>! "
Posts# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
virtual 
DbSet 
< 
Project $
>$ %
Projects& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public   
virtual   
DbSet   
<   
Skill   "
>  " #
Skills  $ *
{  + ,
get  - 0
;  0 1
set  2 5
;  5 6
}  7 8
public"" 
virtual"" 
DbSet"" 
<"" 
User"" !
>""! "
Users""# (
{"") *
get""+ .
;"". /
set""0 3
;""3 4
}""5 6
public$$ 
virtual$$ 
DbSet$$ 
<$$ 
UserProject$$ (
>$$( )
UserProjects$$* 6
{$$7 8
get$$9 <
;$$< =
set$$> A
;$$A B
}$$C D
public&& 
virtual&& 
DbSet&& 
<&& 
	UserSkill&& &
>&&& '

UserSkills&&( 2
{&&3 4
get&&5 8
;&&8 9
set&&: =
;&&= >
}&&? @
	protected(( 
override(( 
void(( 
OnModelCreating((  /
(((/ 0
ModelBuilder((0 <
modelBuilder((= I
)((I J
{)) 	
modelBuilder** 
.** 
Entity** 
<**  
Category**  (
>**( )
(**) *
entity*** 0
=>**1 3
{++ 
entity,, 
.,, 
HasKey,, 
(,, 
e,, 
=>,,  "
e,,# $
.,,$ %
Id,,% '
),,' (
.,,( )
HasName,,) 0
(,,0 1
$str,,1 Q
),,Q R
;,,R S
entity.. 
... 
Property.. 
(..  
e..  !
=>.." $
e..% &
...& '
Id..' )
)..) *
...* +
HasColumnName..+ 8
(..8 9
$str..9 =
)..= >
;..> ?
entity// 
.// 
Property// 
(//  
e//  !
=>//" $
e//% &
.//& '
CategoryName//' 3
)//3 4
.00 
HasMaxLength00 !
(00! "
$num00" $
)00$ %
.11 
	IsUnicode11 
(11 
false11 $
)11$ %
;11% &
}22 
)22 
;22 
modelBuilder44 
.44 
Entity44 
<44  
Comment44  '
>44' (
(44( )
entity44) /
=>440 2
{55 
entity66 
.66 
HasKey66 
(66 
e66 
=>66  "
e66# $
.66$ %
Id66% '
)66' (
.66( )
HasName66) 0
(660 1
$str661 Q
)66Q R
;66R S
entity88 
.88 
Property88 
(88  
e88  !
=>88" $
e88% &
.88& '
Id88' )
)88) *
.88* +
HasColumnName88+ 8
(888 9
$str889 =
)88= >
;88> ?
entity99 
.99 
Property99 
(99  
e99  !
=>99" $
e99% &
.99& '
Content99' .
)99. /
.99/ 0
HasColumnType990 =
(99= >
$str99> D
)99D E
;99E F
entity:: 
.:: 
Property:: 
(::  
e::  !
=>::" $
e::% &
.::& '
CreationDate::' 3
)::3 4
.::4 5
HasColumnType::5 B
(::B C
$str::C M
)::M N
;::N O
entity;; 
.;; 
Property;; 
(;;  
e;;  !
=>;;" $
e;;% &
.;;& '
PostId;;' -
);;- .
.;;. /
HasColumnName;;/ <
(;;< =
$str;;= E
);;E F
;;;F G
entity<< 
.<< 
Property<< 
(<<  
e<<  !
=><<" $
e<<% &
.<<& '
UserId<<' -
)<<- .
.<<. /
HasColumnName<</ <
(<<< =
$str<<= E
)<<E F
;<<F G
entity>> 
.>> 
HasOne>> 
(>> 
d>> 
=>>>  "
d>># $
.>>$ %
Post>>% )
)>>) *
.>>* +
WithMany>>+ 3
(>>3 4
p>>4 5
=>>>6 8
p>>9 :
.>>: ;
Comments>>; C
)>>C D
.?? 
HasForeignKey?? "
(??" #
d??# $
=>??% '
d??( )
.??) *
PostId??* 0
)??0 1
.@@ 
HasConstraintName@@ &
(@@& '
$str@@' :
)@@: ;
;@@; <
entityBB 
.BB 
HasOneBB 
(BB 
dBB 
=>BB  "
dBB# $
.BB$ %
UserBB% )
)BB) *
.BB* +
WithManyBB+ 3
(BB3 4
pBB4 5
=>BB6 8
pBB9 :
.BB: ;
CommentsBB; C
)BBC D
.CC 
HasForeignKeyCC "
(CC" #
dCC# $
=>CC% '
dCC( )
.CC) *
UserIdCC* 0
)CC0 1
.DD 
OnDeleteDD 
(DD 
DeleteBehaviorDD ,
.DD, -
ClientSetNullDD- :
)DD: ;
.EE 
HasConstraintNameEE &
(EE& '
$strEE' :
)EE: ;
;EE; <
}FF 
)FF 
;FF 
modelBuilderHH 
.HH 
EntityHH 
<HH  

ConnectionHH  *
>HH* +
(HH+ ,
entityHH, 2
=>HH3 5
{II 
entityJJ 
.JJ 
HasKeyJJ 
(JJ 
eJJ 
=>JJ  "
newJJ# &
{JJ' (
eJJ) *
.JJ* +
UserIdJJ+ 1
,JJ1 2
eJJ3 4
.JJ4 5
FriendIdJJ5 =
}JJ> ?
)JJ? @
.JJ@ A
HasNameJJA H
(JJH I
$strJJI i
)JJi j
;JJj k
entityLL 
.LL 
PropertyLL 
(LL  
eLL  !
=>LL" $
eLL% &
.LL& '
UserIdLL' -
)LL- .
.LL. /
HasColumnNameLL/ <
(LL< =
$strLL= E
)LLE F
;LLF G
entityMM 
.MM 
PropertyMM 
(MM  
eMM  !
=>MM" $
eMM% &
.MM& '
FriendIdMM' /
)MM/ 0
.MM0 1
HasColumnNameMM1 >
(MM> ?
$strMM? I
)MMI J
;MMJ K
entityNN 
.NN 
PropertyNN 
(NN  
eNN  !
=>NN" $
eNN% &
.NN& '
ConnectionDateNN' 5
)NN5 6
.NN6 7
HasColumnTypeNN7 D
(NND E
$strNNE O
)NNO P
;NNP Q
entityOO 
.OO 
PropertyOO 
(OO  
eOO  !
=>OO" $
eOO% &
.OO& '
ConnectionStatusOO' 7
)OO7 8
.PP 
HasMaxLengthPP !
(PP! "
$numPP" $
)PP$ %
.QQ 
	IsUnicodeQQ 
(QQ 
falseQQ $
)QQ$ %
;QQ% &
entitySS 
.SS 
HasOneSS 
(SS 
dSS 
=>SS  "
dSS# $
.SS$ %
FriendSS% +
)SS+ ,
.SS, -
WithManySS- 5
(SS5 6
pSS6 7
=>SS8 :
pSS; <
.SS< =
ConnectionFriendsSS= N
)SSN O
.TT 
HasForeignKeyTT "
(TT" #
dTT# $
=>TT% '
dTT( )
.TT) *
FriendIdTT* 2
)TT2 3
.UU 
OnDeleteUU 
(UU 
DeleteBehaviorUU ,
.UU, -
ClientSetNullUU- :
)UU: ;
.VV 
HasConstraintNameVV &
(VV& '
$strVV' >
)VV> ?
;VV? @
entityXX 
.XX 
HasOneXX 
(XX 
dXX 
=>XX  "
dXX# $
.XX$ %
UserXX% )
)XX) *
.XX* +
WithManyXX+ 3
(XX3 4
pXX4 5
=>XX6 8
pXX9 :
.XX: ;
ConnectionUsersXX; J
)XXJ K
.YY 
HasForeignKeyYY "
(YY" #
dYY# $
=>YY% '
dYY( )
.YY) *
UserIdYY* 0
)YY0 1
.ZZ 
OnDeleteZZ 
(ZZ 
DeleteBehaviorZZ ,
.ZZ, -
ClientSetNullZZ- :
)ZZ: ;
.[[ 
HasConstraintName[[ &
([[& '
$str[[' >
)[[> ?
;[[? @
}\\ 
)\\ 
;\\ 
modelBuilder^^ 
.^^ 
Entity^^ 
<^^  

Experience^^  *
>^^* +
(^^+ ,
entity^^, 2
=>^^3 5
{__ 
entity`` 
.`` 
HasKey`` 
(`` 
e`` 
=>``  "
e``# $
.``$ %
Id``% '
)``' (
.``( )
HasName``) 0
(``0 1
$str``1 Q
)``Q R
;``R S
entitybb 
.bb 
Propertybb 
(bb  
ebb  !
=>bb" $
ebb% &
.bb& '
Idbb' )
)bb) *
.bb* +
HasColumnNamebb+ 8
(bb8 9
$strbb9 =
)bb= >
;bb> ?
entitycc 
.cc 
Propertycc 
(cc  
ecc  !
=>cc" $
ecc% &
.cc& '
CompanyNamecc' 2
)cc2 3
.dd 
HasMaxLengthdd !
(dd! "
$numdd" %
)dd% &
.ee 
	IsUnicodeee 
(ee 
falseee $
)ee$ %
;ee% &
entityff 
.ff 
Propertyff 
(ff  
eff  !
=>ff" $
eff% &
.ff& '
Descriptionff' 2
)ff2 3
.ff3 4
HasColumnTypeff4 A
(ffA B
$strffB H
)ffH I
;ffI J
entitygg 
.gg 
Propertygg 
(gg  
egg  !
=>gg" $
egg% &
.gg& '
Designationgg' 2
)gg2 3
.hh 
HasMaxLengthhh !
(hh! "
$numhh" %
)hh% &
.ii 
	IsUnicodeii 
(ii 
falseii $
)ii$ %
;ii% &
entityjj 
.jj 
Propertyjj 
(jj  
ejj  !
=>jj" $
ejj% &
.jj& '
UserIdjj' -
)jj- .
.jj. /
HasColumnNamejj/ <
(jj< =
$strjj= E
)jjE F
;jjF G
entityll 
.ll 
HasOnell 
(ll 
dll 
=>ll  "
dll# $
.ll$ %
Userll% )
)ll) *
.ll* +
WithManyll+ 3
(ll3 4
pll4 5
=>ll6 8
pll9 :
.ll: ;
Experiencesll; F
)llF G
.mm 
HasForeignKeymm "
(mm" #
dmm# $
=>mm% '
dmm( )
.mm) *
UserIdmm* 0
)mm0 1
.nn 
OnDeletenn 
(nn 
DeleteBehaviornn ,
.nn, -
ClientSetNullnn- :
)nn: ;
.oo 
HasConstraintNameoo &
(oo& '
$stroo' =
)oo= >
;oo> ?
}pp 
)pp 
;pp 
modelBuilderrr 
.rr 
Entityrr 
<rr  
Likerr  $
>rr$ %
(rr% &
entityrr& ,
=>rr- /
{ss 
entitytt 
.tt 
HasKeytt 
(tt 
ett 
=>tt  "
ett# $
.tt$ %
Idtt% '
)tt' (
.tt( )
HasNamett) 0
(tt0 1
$strtt1 N
)ttN O
;ttO P
entityvv 
.vv 
Propertyvv 
(vv  
evv  !
=>vv" $
evv% &
.vv& '
Idvv' )
)vv) *
.vv* +
HasColumnNamevv+ 8
(vv8 9
$strvv9 =
)vv= >
;vv> ?
entityww 
.ww 
Propertyww 
(ww  
eww  !
=>ww" $
eww% &
.ww& '
CreationDateww' 3
)ww3 4
.ww4 5
HasColumnTypeww5 B
(wwB C
$strwwC M
)wwM N
;wwN O
entityxx 
.xx 
Propertyxx 
(xx  
exx  !
=>xx" $
exx% &
.xx& '
PostIdxx' -
)xx- .
.xx. /
HasColumnNamexx/ <
(xx< =
$strxx= E
)xxE F
;xxF G
entityyy 
.yy 
Propertyyy 
(yy  
eyy  !
=>yy" $
eyy% &
.yy& '
UserIdyy' -
)yy- .
.yy. /
HasColumnNameyy/ <
(yy< =
$stryy= E
)yyE F
;yyF G
entity{{ 
.{{ 
HasOne{{ 
({{ 
d{{ 
=>{{  "
d{{# $
.{{$ %
Post{{% )
){{) *
.{{* +
WithMany{{+ 3
({{3 4
p{{4 5
=>{{6 8
p{{9 :
.{{: ;
Likes{{; @
){{@ A
.|| 
HasForeignKey|| "
(||" #
d||# $
=>||% '
d||( )
.||) *
PostId||* 0
)||0 1
.}} 
HasConstraintName}} &
(}}& '
$str}}' 7
)}}7 8
;}}8 9
entity 
. 
HasOne 
( 
d 
=>  "
d# $
.$ %
User% )
)) *
.* +
WithMany+ 3
(3 4
p4 5
=>6 8
p9 :
.: ;
Likes; @
)@ A
.
ÄÄ 
HasForeignKey
ÄÄ "
(
ÄÄ" #
d
ÄÄ# $
=>
ÄÄ% '
d
ÄÄ( )
.
ÄÄ) *
UserId
ÄÄ* 0
)
ÄÄ0 1
.
ÅÅ 
OnDelete
ÅÅ 
(
ÅÅ 
DeleteBehavior
ÅÅ ,
.
ÅÅ, -
ClientSetNull
ÅÅ- :
)
ÅÅ: ;
.
ÇÇ 
HasConstraintName
ÇÇ &
(
ÇÇ& '
$str
ÇÇ' 7
)
ÇÇ7 8
;
ÇÇ8 9
}
ÉÉ 
)
ÉÉ 
;
ÉÉ 
modelBuilder
ÖÖ 
.
ÖÖ 
Entity
ÖÖ 
<
ÖÖ  
Post
ÖÖ  $
>
ÖÖ$ %
(
ÖÖ% &
entity
ÖÖ& ,
=>
ÖÖ- /
{
ÜÜ 
entity
áá 
.
áá 
HasKey
áá 
(
áá 
e
áá 
=>
áá  "
e
áá# $
.
áá$ %
Id
áá% '
)
áá' (
.
áá( )
HasName
áá) 0
(
áá0 1
$str
áá1 N
)
ááN O
;
ááO P
entity
ââ 
.
ââ 
Property
ââ 
(
ââ  
e
ââ  !
=>
ââ" $
e
ââ% &
.
ââ& '
Id
ââ' )
)
ââ) *
.
ââ* +
HasColumnName
ââ+ 8
(
ââ8 9
$str
ââ9 =
)
ââ= >
;
ââ> ?
entity
ää 
.
ää 
Property
ää 
(
ää  
e
ää  !
=>
ää" $
e
ää% &
.
ää& '

CategoryId
ää' 1
)
ää1 2
.
ää2 3
HasColumnName
ää3 @
(
ää@ A
$str
ääA M
)
ääM N
;
ääN O
entity
ãã 
.
ãã 
Property
ãã 
(
ãã  
e
ãã  !
=>
ãã" $
e
ãã% &
.
ãã& '
Content
ãã' .
)
ãã. /
.
ãã/ 0
HasColumnType
ãã0 =
(
ãã= >
$str
ãã> D
)
ããD E
;
ããE F
entity
åå 
.
åå 
Property
åå 
(
åå  
e
åå  !
=>
åå" $
e
åå% &
.
åå& '
CreationDate
åå' 3
)
åå3 4
.
åå4 5
HasColumnType
åå5 B
(
ååB C
$str
ååC M
)
ååM N
;
ååN O
entity
çç 
.
çç 
Property
çç 
(
çç  
e
çç  !
=>
çç" $
e
çç% &
.
çç& '
ImageUrl
çç' /
)
çç/ 0
.
éé 
HasMaxLength
éé !
(
éé! "
$num
éé" %
)
éé% &
.
èè 
	IsUnicode
èè 
(
èè 
false
èè $
)
èè$ %
.
êê 
HasColumnName
êê "
(
êê" #
$str
êê# -
)
êê- .
;
êê. /
entity
ëë 
.
ëë 
Property
ëë 
(
ëë  
e
ëë  !
=>
ëë" $
e
ëë% &
.
ëë& '
UserId
ëë' -
)
ëë- .
.
ëë. /
HasColumnName
ëë/ <
(
ëë< =
$str
ëë= E
)
ëëE F
;
ëëF G
entity
ìì 
.
ìì 
HasOne
ìì 
(
ìì 
d
ìì 
=>
ìì  "
d
ìì# $
.
ìì$ %
Category
ìì% -
)
ìì- .
.
ìì. /
WithMany
ìì/ 7
(
ìì7 8
p
ìì8 9
=>
ìì: <
p
ìì= >
.
ìì> ?
Posts
ìì? D
)
ììD E
.
îî 
HasForeignKey
îî "
(
îî" #
d
îî# $
=>
îî% '
d
îî( )
.
îî) *

CategoryId
îî* 4
)
îî4 5
.
ïï 
HasConstraintName
ïï &
(
ïï& '
$str
ïï' <
)
ïï< =
;
ïï= >
entity
óó 
.
óó 
HasOne
óó 
(
óó 
d
óó 
=>
óó  "
d
óó# $
.
óó$ %
User
óó% )
)
óó) *
.
óó* +
WithMany
óó+ 3
(
óó3 4
p
óó4 5
=>
óó6 8
p
óó9 :
.
óó: ;
Posts
óó; @
)
óó@ A
.
òò 
HasForeignKey
òò "
(
òò" #
d
òò# $
=>
òò% '
d
òò( )
.
òò) *
UserId
òò* 0
)
òò0 1
.
ôô 
OnDelete
ôô 
(
ôô 
DeleteBehavior
ôô ,
.
ôô, -
ClientSetNull
ôô- :
)
ôô: ;
.
öö 
HasConstraintName
öö &
(
öö& '
$str
öö' 7
)
öö7 8
;
öö8 9
}
õõ 
)
õõ 
;
õõ 
modelBuilder
ùù 
.
ùù 
Entity
ùù 
<
ùù  
Project
ùù  '
>
ùù' (
(
ùù( )
entity
ùù) /
=>
ùù0 2
{
ûû 
entity
üü 
.
üü 
HasKey
üü 
(
üü 
e
üü 
=>
üü  "
e
üü# $
.
üü$ %
Id
üü% '
)
üü' (
.
üü( )
HasName
üü) 0
(
üü0 1
$str
üü1 Q
)
üüQ R
;
üüR S
entity
°° 
.
°° 
Property
°° 
(
°°  
e
°°  !
=>
°°" $
e
°°% &
.
°°& '
Id
°°' )
)
°°) *
.
°°* +
HasColumnName
°°+ 8
(
°°8 9
$str
°°9 =
)
°°= >
;
°°> ?
entity
¢¢ 
.
¢¢ 
Property
¢¢ 
(
¢¢  
e
¢¢  !
=>
¢¢" $
e
¢¢% &
.
¢¢& '
Description
¢¢' 2
)
¢¢2 3
.
¢¢3 4
HasColumnType
¢¢4 A
(
¢¢A B
$str
¢¢B H
)
¢¢H I
;
¢¢I J
entity
££ 
.
££ 
Property
££ 
(
££  
e
££  !
=>
££" $
e
££% &
.
££& '
ProjectName
££' 2
)
££2 3
.
§§ 
HasMaxLength
§§ !
(
§§! "
$num
§§" %
)
§§% &
.
•• 
	IsUnicode
•• 
(
•• 
false
•• $
)
••$ %
;
••% &
}
¶¶ 
)
¶¶ 
;
¶¶ 
modelBuilder
®® 
.
®® 
Entity
®® 
<
®®  
Skill
®®  %
>
®®% &
(
®®& '
entity
®®' -
=>
®®. 0
{
©© 
entity
™™ 
.
™™ 
HasKey
™™ 
(
™™ 
e
™™ 
=>
™™  "
e
™™# $
.
™™$ %
Id
™™% '
)
™™' (
.
™™( )
HasName
™™) 0
(
™™0 1
$str
™™1 O
)
™™O P
;
™™P Q
entity
¨¨ 
.
¨¨ 
Property
¨¨ 
(
¨¨  
e
¨¨  !
=>
¨¨" $
e
¨¨% &
.
¨¨& '
Id
¨¨' )
)
¨¨) *
.
¨¨* +
HasColumnName
¨¨+ 8
(
¨¨8 9
$str
¨¨9 =
)
¨¨= >
;
¨¨> ?
entity
≠≠ 
.
≠≠ 
Property
≠≠ 
(
≠≠  
e
≠≠  !
=>
≠≠" $
e
≠≠% &
.
≠≠& '
	SkillName
≠≠' 0
)
≠≠0 1
.
ÆÆ 
HasMaxLength
ÆÆ !
(
ÆÆ! "
$num
ÆÆ" %
)
ÆÆ% &
.
ØØ 
	IsUnicode
ØØ 
(
ØØ 
false
ØØ $
)
ØØ$ %
;
ØØ% &
}
∞∞ 
)
∞∞ 
;
∞∞ 
modelBuilder
≤≤ 
.
≤≤ 
Entity
≤≤ 
<
≤≤  
User
≤≤  $
>
≤≤$ %
(
≤≤% &
entity
≤≤& ,
=>
≤≤- /
{
≥≥ 
entity
¥¥ 
.
¥¥ 
HasKey
¥¥ 
(
¥¥ 
e
¥¥ 
=>
¥¥  "
e
¥¥# $
.
¥¥$ %
Id
¥¥% '
)
¥¥' (
.
¥¥( )
HasName
¥¥) 0
(
¥¥0 1
$str
¥¥1 N
)
¥¥N O
;
¥¥O P
entity
∂∂ 
.
∂∂ 
HasIndex
∂∂ 
(
∂∂  
e
∂∂  !
=>
∂∂" $
e
∂∂% &
.
∂∂& '
Username
∂∂' /
,
∂∂/ 0
$str
∂∂1 N
)
∂∂N O
.
∂∂O P
IsUnique
∂∂P X
(
∂∂X Y
)
∂∂Y Z
;
∂∂Z [
entity
∏∏ 
.
∏∏ 
HasIndex
∏∏ 
(
∏∏  
e
∏∏  !
=>
∏∏" $
e
∏∏% &
.
∏∏& '
Email
∏∏' ,
,
∏∏, -
$str
∏∏. K
)
∏∏K L
.
∏∏L M
IsUnique
∏∏M U
(
∏∏U V
)
∏∏V W
;
∏∏W X
entity
∫∫ 
.
∫∫ 
Property
∫∫ 
(
∫∫  
e
∫∫  !
=>
∫∫" $
e
∫∫% &
.
∫∫& '
Id
∫∫' )
)
∫∫) *
.
∫∫* +
HasColumnName
∫∫+ 8
(
∫∫8 9
$str
∫∫9 =
)
∫∫= >
;
∫∫> ?
entity
ªª 
.
ªª 
Property
ªª 
(
ªª  
e
ªª  !
=>
ªª" $
e
ªª% &
.
ªª& '
Departament
ªª' 2
)
ªª2 3
.
ºº 
HasMaxLength
ºº !
(
ºº! "
$num
ºº" $
)
ºº$ %
.
ΩΩ 
	IsUnicode
ΩΩ 
(
ΩΩ 
false
ΩΩ $
)
ΩΩ$ %
;
ΩΩ% &
entity
ææ 
.
ææ 
Property
ææ 
(
ææ  
e
ææ  !
=>
ææ" $
e
ææ% &
.
ææ& '
Designation
ææ' 2
)
ææ2 3
.
øø 
HasMaxLength
øø !
(
øø! "
$num
øø" $
)
øø$ %
.
¿¿ 
	IsUnicode
¿¿ 
(
¿¿ 
false
¿¿ $
)
¿¿$ %
;
¿¿% &
entity
¡¡ 
.
¡¡ 
Property
¡¡ 
(
¡¡  
e
¡¡  !
=>
¡¡" $
e
¡¡% &
.
¡¡& '
Email
¡¡' ,
)
¡¡, -
.
¬¬ 
HasMaxLength
¬¬ !
(
¬¬! "
$num
¬¬" %
)
¬¬% &
.
√√ 
	IsUnicode
√√ 
(
√√ 
false
√√ $
)
√√$ %
;
√√% &
entity
ƒƒ 
.
ƒƒ 
Property
ƒƒ 
(
ƒƒ  
e
ƒƒ  !
=>
ƒƒ" $
e
ƒƒ% &
.
ƒƒ& '
	FirstName
ƒƒ' 0
)
ƒƒ0 1
.
≈≈ 
HasMaxLength
≈≈ !
(
≈≈! "
$num
≈≈" $
)
≈≈$ %
.
∆∆ 
	IsUnicode
∆∆ 
(
∆∆ 
false
∆∆ $
)
∆∆$ %
;
∆∆% &
entity
«« 
.
«« 
Property
«« 
(
««  
e
««  !
=>
««" $
e
««% &
.
««& '
IsActive
««' /
)
««/ 0
.
««0 1
HasDefaultValue
««1 @
(
««@ A
true
««A E
)
««E F
;
««F G
entity
»» 
.
»» 
Property
»» 
(
»»  
e
»»  !
=>
»»" $
e
»»% &
.
»»& '
LastName
»»' /
)
»»/ 0
.
…… 
HasMaxLength
…… !
(
……! "
$num
……" $
)
……$ %
.
   
	IsUnicode
   
(
   
false
   $
)
  $ %
;
  % &
entity
ÀÀ 
.
ÀÀ 
Property
ÀÀ 
(
ÀÀ  
e
ÀÀ  !
=>
ÀÀ" $
e
ÀÀ% &
.
ÀÀ& '
Location
ÀÀ' /
)
ÀÀ/ 0
.
ÃÃ 
HasMaxLength
ÃÃ !
(
ÃÃ! "
$num
ÃÃ" $
)
ÃÃ$ %
.
ÕÕ 
	IsUnicode
ÕÕ 
(
ÕÕ 
false
ÕÕ $
)
ÕÕ$ %
;
ÕÕ% &
entity
ŒŒ 
.
ŒŒ 
Property
ŒŒ 
(
ŒŒ  
e
ŒŒ  !
=>
ŒŒ" $
e
ŒŒ% &
.
ŒŒ& '
Password
ŒŒ' /
)
ŒŒ/ 0
.
œœ 
HasMaxLength
œœ !
(
œœ! "
$num
œœ" %
)
œœ% &
.
–– 
	IsUnicode
–– 
(
–– 
false
–– $
)
––$ %
;
––% &
entity
—— 
.
—— 
Property
—— 
(
——  
e
——  !
=>
——" $
e
——% &
.
——& '
Phone
——' ,
)
——, -
.
““ 
HasMaxLength
““ !
(
““! "
$num
““" $
)
““$ %
.
”” 
	IsUnicode
”” 
(
”” 
false
”” $
)
””$ %
;
””% &
entity
‘‘ 
.
‘‘ 
Property
‘‘ 
(
‘‘  
e
‘‘  !
=>
‘‘" $
e
‘‘% &
.
‘‘& '
ProfilePicture
‘‘' 5
)
‘‘5 6
.
’’ 
HasMaxLength
’’ !
(
’’! "
$num
’’" %
)
’’% &
.
÷÷ 
	IsUnicode
÷÷ 
(
÷÷ 
false
÷÷ $
)
÷÷$ %
;
÷÷% &
entity
◊◊ 
.
◊◊ 
Property
◊◊ 
(
◊◊  
e
◊◊  !
=>
◊◊" $
e
◊◊% &
.
◊◊& '
Username
◊◊' /
)
◊◊/ 0
.
ÿÿ 
HasMaxLength
ÿÿ !
(
ÿÿ! "
$num
ÿÿ" $
)
ÿÿ$ %
.
ŸŸ 
	IsUnicode
ŸŸ 
(
ŸŸ 
false
ŸŸ $
)
ŸŸ$ %
;
ŸŸ% &
}
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
modelBuilder
‹‹ 
.
‹‹ 
Entity
‹‹ 
<
‹‹  
UserProject
‹‹  +
>
‹‹+ ,
(
‹‹, -
entity
‹‹- 3
=>
‹‹4 6
{
›› 
entity
ﬁﬁ 
.
ﬁﬁ 
HasKey
ﬁﬁ 
(
ﬁﬁ 
e
ﬁﬁ 
=>
ﬁﬁ  "
e
ﬁﬁ# $
.
ﬁﬁ$ %
Id
ﬁﬁ% '
)
ﬁﬁ' (
.
ﬁﬁ( )
HasName
ﬁﬁ) 0
(
ﬁﬁ0 1
$str
ﬁﬁ1 Q
)
ﬁﬁQ R
;
ﬁﬁR S
entity
‡‡ 
.
‡‡ 
Property
‡‡ 
(
‡‡  
e
‡‡  !
=>
‡‡" $
e
‡‡% &
.
‡‡& '
Id
‡‡' )
)
‡‡) *
.
‡‡* +
HasColumnName
‡‡+ 8
(
‡‡8 9
$str
‡‡9 =
)
‡‡= >
;
‡‡> ?
entity
·· 
.
·· 
Property
·· 
(
··  
e
··  !
=>
··" $
e
··% &
.
··& '
	ProjectId
··' 0
)
··0 1
.
··1 2
HasColumnName
··2 ?
(
··? @
$str
··@ K
)
··K L
;
··L M
entity
‚‚ 
.
‚‚ 
Property
‚‚ 
(
‚‚  
e
‚‚  !
=>
‚‚" $
e
‚‚% &
.
‚‚& '
UserId
‚‚' -
)
‚‚- .
.
‚‚. /
HasColumnName
‚‚/ <
(
‚‚< =
$str
‚‚= E
)
‚‚E F
;
‚‚F G
entity
‰‰ 
.
‰‰ 
HasOne
‰‰ 
(
‰‰ 
d
‰‰ 
=>
‰‰  "
d
‰‰# $
.
‰‰$ %
Project
‰‰% ,
)
‰‰, -
.
‰‰- .
WithMany
‰‰. 6
(
‰‰6 7
p
‰‰7 8
=>
‰‰9 ;
p
‰‰< =
.
‰‰= >
UserProjects
‰‰> J
)
‰‰J K
.
ÂÂ 
HasForeignKey
ÂÂ "
(
ÂÂ" #
d
ÂÂ# $
=>
ÂÂ% '
d
ÂÂ( )
.
ÂÂ) *
	ProjectId
ÂÂ* 3
)
ÂÂ3 4
.
ÊÊ 
HasConstraintName
ÊÊ &
(
ÊÊ& '
$str
ÊÊ' A
)
ÊÊA B
;
ÊÊB C
entity
ËË 
.
ËË 
HasOne
ËË 
(
ËË 
d
ËË 
=>
ËË  "
d
ËË# $
.
ËË$ %
User
ËË% )
)
ËË) *
.
ËË* +
WithMany
ËË+ 3
(
ËË3 4
p
ËË4 5
=>
ËË6 8
p
ËË9 :
.
ËË: ;
UserProjects
ËË; G
)
ËËG H
.
ÈÈ 
HasForeignKey
ÈÈ "
(
ÈÈ" #
d
ÈÈ# $
=>
ÈÈ% '
d
ÈÈ( )
.
ÈÈ) *
UserId
ÈÈ* 0
)
ÈÈ0 1
.
ÍÍ 
HasConstraintName
ÍÍ &
(
ÍÍ& '
$str
ÍÍ' >
)
ÍÍ> ?
;
ÍÍ? @
}
ÎÎ 
)
ÎÎ 
;
ÎÎ 
modelBuilder
ÌÌ 
.
ÌÌ 
Entity
ÌÌ 
<
ÌÌ  
	UserSkill
ÌÌ  )
>
ÌÌ) *
(
ÌÌ* +
entity
ÌÌ+ 1
=>
ÌÌ2 4
{
ÓÓ 
entity
ÔÔ 
.
ÔÔ 
HasKey
ÔÔ 
(
ÔÔ 
e
ÔÔ 
=>
ÔÔ  "
e
ÔÔ# $
.
ÔÔ$ %
Id
ÔÔ% '
)
ÔÔ' (
.
ÔÔ( )
HasName
ÔÔ) 0
(
ÔÔ0 1
$str
ÔÔ1 Q
)
ÔÔQ R
;
ÔÔR S
entity
ÒÒ 
.
ÒÒ 
Property
ÒÒ 
(
ÒÒ  
e
ÒÒ  !
=>
ÒÒ" $
e
ÒÒ% &
.
ÒÒ& '
Id
ÒÒ' )
)
ÒÒ) *
.
ÒÒ* +
HasColumnName
ÒÒ+ 8
(
ÒÒ8 9
$str
ÒÒ9 =
)
ÒÒ= >
;
ÒÒ> ?
entity
ÚÚ 
.
ÚÚ 
Property
ÚÚ 
(
ÚÚ  
e
ÚÚ  !
=>
ÚÚ" $
e
ÚÚ% &
.
ÚÚ& '
SkillId
ÚÚ' .
)
ÚÚ. /
.
ÚÚ/ 0
HasColumnName
ÚÚ0 =
(
ÚÚ= >
$str
ÚÚ> G
)
ÚÚG H
;
ÚÚH I
entity
ÛÛ 
.
ÛÛ 
Property
ÛÛ 
(
ÛÛ  
e
ÛÛ  !
=>
ÛÛ" $
e
ÛÛ% &
.
ÛÛ& '
UserId
ÛÛ' -
)
ÛÛ- .
.
ÛÛ. /
HasColumnName
ÛÛ/ <
(
ÛÛ< =
$str
ÛÛ= E
)
ÛÛE F
;
ÛÛF G
entity
ıı 
.
ıı 
HasOne
ıı 
(
ıı 
d
ıı 
=>
ıı  "
d
ıı# $
.
ıı$ %
Skill
ıı% *
)
ıı* +
.
ıı+ ,
WithMany
ıı, 4
(
ıı4 5
p
ıı5 6
=>
ıı7 9
p
ıı: ;
.
ıı; <

UserSkills
ıı< F
)
ııF G
.
ˆˆ 
HasForeignKey
ˆˆ "
(
ˆˆ" #
d
ˆˆ# $
=>
ˆˆ% '
d
ˆˆ( )
.
ˆˆ) *
SkillId
ˆˆ* 1
)
ˆˆ1 2
.
˜˜ 
HasConstraintName
˜˜ &
(
˜˜& '
$str
˜˜' =
)
˜˜= >
;
˜˜> ?
entity
˘˘ 
.
˘˘ 
HasOne
˘˘ 
(
˘˘ 
d
˘˘ 
=>
˘˘  "
d
˘˘# $
.
˘˘$ %
User
˘˘% )
)
˘˘) *
.
˘˘* +
WithMany
˘˘+ 3
(
˘˘3 4
p
˘˘4 5
=>
˘˘6 8
p
˘˘9 :
.
˘˘: ;

UserSkills
˘˘; E
)
˘˘E F
.
˙˙ 
HasForeignKey
˙˙ "
(
˙˙" #
d
˙˙# $
=>
˙˙% '
d
˙˙( )
.
˙˙) *
UserId
˙˙* 0
)
˙˙0 1
.
˚˚ 
HasConstraintName
˚˚ &
(
˚˚& '
$str
˚˚' <
)
˚˚< =
;
˚˚= >
}
¸¸ 
)
¸¸ 
;
¸¸ $
OnModelCreatingPartial
˛˛ "
(
˛˛" #
modelBuilder
˛˛# /
)
˛˛/ 0
;
˛˛0 1
}
ˇˇ 	
partial
ÅÅ 
void
ÅÅ $
OnModelCreatingPartial
ÅÅ +
(
ÅÅ+ ,
ModelBuilder
ÅÅ, 8
modelBuilder
ÅÅ9 E
)
ÅÅE F
;
ÅÅF G
}
ÇÇ 
}ÉÉ ¯
ID:\Final_Project\CybageConnect\Backend\CybageConnect\Models\Experience.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 

Experience #
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
? 
CompanyName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
Designation "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
? 
ExperienceMonths $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
? 
Description "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
} 
} ’

CD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\Like.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 
Like 
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
PostId 
{ 
get 
;  
set! $
;$ %
}& '
public 
DateTime 
CreationDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
virtual 
Post 
Post  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
} 
} ≤
CD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\Post.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 
Post 
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
null. 2
!2 3
;3 4
public 
string 
? 
ImageUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
CreationDate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? 

CategoryId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
Category 
?  
Category! )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
virtual 
ICollection "
<" #
Comment# *
>* +
Comments, 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
=C D
newE H
ListI M
<M N
CommentN U
>U V
(V W
)W X
;X Y
public 
virtual 
ICollection "
<" #
Like# '
>' (
Likes) .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
new? B
ListC G
<G H
LikeH L
>L M
(M N
)N O
;O P
public 
virtual 
User 
User  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
} 
} ö	
FD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\Project.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 
Project  
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public 
string 
? 
ProjectName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
Description "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
ICollection "
<" #
UserProject# .
>. /
UserProjects0 <
{= >
get? B
;B C
setD G
;G H
}I J
=K L
newM P
ListQ U
<U V
UserProjectV a
>a b
(b c
)c d
;d e
} 
} ‡
DD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\Skill.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 
Skill 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public

 
string

 
?

 
	SkillName

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
virtual 
ICollection "
<" #
	UserSkill# ,
>, -

UserSkills. 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ListM Q
<Q R
	UserSkillR [
>[ \
(\ ]
)] ^
;^ _
} 
} Ω+
CD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\User.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 
User 
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 
string 
? 
LastName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 
string 
? 
Designation "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
Departament "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
? 
ProfilePicture %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
Location 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Phone 
{ 
get "
;" #
set$ '
;' (
}) *
public!! 
virtual!! 
ICollection!! "
<!!" #
Comment!!# *
>!!* +
Comments!!, 4
{!!5 6
get!!7 :
;!!: ;
set!!< ?
;!!? @
}!!A B
=!!C D
new!!E H
List!!I M
<!!M N
Comment!!N U
>!!U V
(!!V W
)!!W X
;!!X Y
public## 
virtual## 
ICollection## "
<##" #

Connection### -
>##- .
ConnectionFriends##/ @
{##A B
get##C F
;##F G
set##H K
;##K L
}##M N
=##O P
new##Q T
List##U Y
<##Y Z

Connection##Z d
>##d e
(##e f
)##f g
;##g h
public%% 
virtual%% 
ICollection%% "
<%%" #

Connection%%# -
>%%- .
ConnectionUsers%%/ >
{%%? @
get%%A D
;%%D E
set%%F I
;%%I J
}%%K L
=%%M N
new%%O R
List%%S W
<%%W X

Connection%%X b
>%%b c
(%%c d
)%%d e
;%%e f
public'' 
virtual'' 
ICollection'' "
<''" #

Experience''# -
>''- .
Experiences''/ :
{''; <
get''= @
;''@ A
set''B E
;''E F
}''G H
=''I J
new''K N
List''O S
<''S T

Experience''T ^
>''^ _
(''_ `
)''` a
;''a b
public)) 
virtual)) 
ICollection)) "
<))" #
Like))# '
>))' (
Likes))) .
{))/ 0
get))1 4
;))4 5
set))6 9
;))9 :
})); <
=))= >
new))? B
List))C G
<))G H
Like))H L
>))L M
())M N
)))N O
;))O P
public++ 
virtual++ 
ICollection++ "
<++" #
Post++# '
>++' (
Posts++) .
{++/ 0
get++1 4
;++4 5
set++6 9
;++9 :
}++; <
=++= >
new++? B
List++C G
<++G H
Post++H L
>++L M
(++M N
)++N O
;++O P
public-- 
virtual-- 
ICollection-- "
<--" #
UserProject--# .
>--. /
UserProjects--0 <
{--= >
get--? B
;--B C
set--D G
;--G H
}--I J
=--K L
new--M P
List--Q U
<--U V
UserProject--V a
>--a b
(--b c
)--c d
;--d e
public// 
virtual// 
ICollection// "
<//" #
	UserSkill//# ,
>//, -

UserSkills//. 8
{//9 :
get//; >
;//> ?
set//@ C
;//C D
}//E F
=//G H
new//I L
List//M Q
<//Q R
	UserSkill//R [
>//[ \
(//\ ]
)//] ^
;//^ _
}00 
}11 à	
JD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\UserProject.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 
UserProject $
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public 
int 
? 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
	ProjectId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
Project 
? 
Project  '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
User 
? 
User !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ˛
HD:\Final_Project\CybageConnect\Backend\CybageConnect\Models\UserSkill.cs
	namespace 	
CybageConnect
 
. 
Models 
{ 
public 

partial 
class 
	UserSkill "
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public 
int 
? 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
SkillId 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
Skill 
? 
Skill #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
virtual 
User 
? 
User !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ∞D
?D:\Final_Project\CybageConnect\Backend\CybageConnect\Program.cs
	namespace 	
CybageConnect
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
var 
builder 
= 
WebApplication (
.( )
CreateBuilder) 6
(6 7
args7 ;
); <
;< =
var 
configuration 
= 
builder  '
.' (
Configuration( 5
;5 6
builder 
. 
Services 
. 
AddControllers +
(+ ,
), -
;- .
builder 
. 
Services 
. #
AddEndpointsApiExplorer 4
(4 5
)5 6
;6 7
builder 
. 
Services 
. 
AddSwaggerGen *
(* +
)+ ,
;, -
builder 
. 
Services 
. 
AddDbContext )
<) *"
CybageConnectDbContext* @
>@ A
(A B
optionB H
=>I K
option 
. 
UseSqlServer #
(# $
builder$ +
.+ ,
Configuration, 9
.9 :
GetConnectionString: M
(M N
$strN a
)a b
)b c
)c d
;d e
builder 
. 
Services 
. 
	AddScoped &
<& '
IAuthRepository' 6
,6 7
AuthRepository7 E
>E F
(F G
)G H
;H I
builder   
.   
Services   
.   
	AddScoped   &
<  & '
IProfileRepository  ' 9
,  9 :
ProfileRepository  ; L
>  L M
(  M N
)  N O
;  O P
builder!! 
.!! 
Services!! 
.!! 
	AddScoped!! &
<!!& '
IPostRepository!!' 6
,!!6 7
PostRepository!!8 F
>!!F G
(!!G H
)!!H I
;!!I J
builder"" 
."" 
Services"" 
."" 
	AddScoped"" &
<""& '
ILikeRepository""' 6
,""6 7
LikeRepository""8 F
>""F G
(""G H
)""H I
;""I J
builder## 
.## 
Services## 
.## 
	AddScoped## &
<##& '
ICommentRepository##' 9
,##9 :
CommentRepository##; L
>##L M
(##M N
)##N O
;##O P
builder$$ 
.$$ 
Services$$ 
.$$ 
	AddScoped$$ &
<$$& '
INetworkService$$' 6
,$$6 7
NetworkService$$8 F
>$$F G
($$G H
)$$H I
;$$I J
builder%% 
.%% 
Services%% 
.%% 
	AddScoped%% &
<%%& '
INetworkRepository%%' 9
,%%9 :
NetworkRepository%%; L
>%%L M
(%%M N
)%%N O
;%%O P
builder&& 
.&& 
Services&& 
.&& 
	AddScoped&& &
<&&& '
IAuthService&&' 3
,&&3 4
AuthService&&5 @
>&&@ A
(&&A B
)&&B C
;&&C D
builder'' 
.'' 
Services'' 
.'' 
	AddScoped'' &
<''& '
IProfileService''' 6
,''6 7
ProfileService''8 F
>''F G
(''G H
)''H I
;''I J
builder(( 
.(( 
Services(( 
.(( 
	AddScoped(( &
<((& '
IPostService((' 3
,((3 4
PostService((5 @
>((@ A
(((A B
)((B C
;((C D
builder)) 
.)) 
Services)) 
.)) 
	AddScoped)) &
<))& '
ILikeService))' 3
,))3 4
LikeService))5 @
>))@ A
())A B
)))B C
;))C D
builder** 
.** 
Services** 
.** 
	AddScoped** &
<**& '
ICommentService**' 6
,**6 7
CommentService**8 F
>**F G
(**G H
)**H I
;**I J
builder-- 
.-- 
Services-- 
.-- 
AddAuthentication-- .
(--. /
options--/ 6
=>--7 9
{.. 
options// 
.// %
DefaultAuthenticateScheme// 1
=//2 3
JwtBearerDefaults//4 E
.//E F 
AuthenticationScheme//F Z
;//Z [
options00 
.00 "
DefaultChallengeScheme00 .
=00/ 0
JwtBearerDefaults001 B
.00B C 
AuthenticationScheme00C W
;00W X
}11 
)11 
.11 
AddJwtBearer11 
(11 
options11 #
=>11$ &
{22 
options33 
.33  
RequireHttpsMetadata33 ,
=33- .
false33/ 4
;334 5
options44 
.44 
	SaveToken44 !
=44" #
true44$ (
;44( )
options55 
.55 %
TokenValidationParameters55 1
=552 3
new554 7%
TokenValidationParameters558 Q
(55Q R
)55R S
{77 
ValidateIssuer88 "
=88# $
true88% )
,88) *
ValidateAudience99 $
=99% &
true99' +
,99+ ,$
ValidateIssuerSigningKey:: ,
=::- .
true::/ 3
,::3 4
ValidateLifetime;; $
=;;% &
true;;' +
,;;+ ,
IssuerSigningKey<< $
=<<% &
new<<' * 
SymmetricSecurityKey<<+ ?
(<<? @
Encoding<<@ H
.<<H I
UTF8<<I M
.<<M N
GetBytes<<N V
(<<V W
configuration<<W d
.<<d e
GetValue<<e m
<<<m n
string<<n t
><<t u
(<<u v
$str	<<v Å
)
<<Å Ç
)
<<Ç É
)
<<É Ñ
,
<<Ñ Ö
ValidIssuer== 
===  !
configuration==" /
[==/ 0
$str==0 ;
]==; <
,==< =
ValidAudience>> !
=>>" #
configuration>>$ 1
[>>1 2
$str>>2 ?
]>>? @
,>>@ A
	ClockSkew@@ 
=@@ 
TimeSpan@@  (
.@@( )
Zero@@) -
}AA 
;AA 
}BB 
)BB 
;BB 
builderDD 
.DD 
ServicesDD 
.DD 
AddCorsDD $
(DD$ %
optionsDD% ,
=>DD- /
{EE 
optionsFF 
.FF 
	AddPolicyFF !
(FF! "
$strFF" 3
,FF3 4
builderGG 
=>GG 
{HH 
builderII 
.II  
AllowAnyOriginII  .
(II. /
)II/ 0
.JJ  
AllowAnyMethodJJ  .
(JJ. /
)JJ/ 0
.KK  
AllowAnyHeaderKK  .
(KK. /
)KK/ 0
;KK0 1
}LL 
)LL 
;LL 
}MM 
)MM 
;MM 
varOO 
appOO 
=OO 
builderOO 
.OO 
BuildOO #
(OO# $
)OO$ %
;OO% &
ifRR 
(RR 
appRR 
.RR 
EnvironmentRR 
.RR  
IsDevelopmentRR  -
(RR- .
)RR. /
)RR/ 0
{SS 
appTT 
.TT 

UseSwaggerTT 
(TT 
)TT  
;TT  !
appUU 
.UU 
UseSwaggerUIUU  
(UU  !
)UU! "
;UU" #
}VV 
appXX 
.XX 
UseHttpsRedirectionXX #
(XX# $
)XX$ %
;XX% &
appYY 
.YY 
UseCorsYY 
(YY 
$strYY )
)YY) *
;YY* +
app[[ 
.[[ 
UseAuthentication[[ !
([[! "
)[[" #
;[[# $
app]] 
.]] 
UseAuthorization]]  
(]]  !
)]]! "
;]]" #
app`` 
.`` 
MapControllers`` 
(`` 
)``  
;``  !
appbb 
.bb 
Runbb 
(bb 
)bb 
;bb 
}cc 	
}dd 
}ee 