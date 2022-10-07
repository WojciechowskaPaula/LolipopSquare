°:
dC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
LolipopSquare
 
. 
Areas 
. 
Identity &
.& '
Pages' ,
., -
Account- 4
{ 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
IdentityUser( 4
>4 5
signInManager6 C
,C D
ILoggerE L
<L M

LoginModelM W
>W X
loggerY _
)_ `
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public** 
IList** 
<**  
AuthenticationScheme** )
>**) *
ExternalLogins**+ 9
{**: ;
get**< ?
;**? @
set**A D
;**D E
}**F G
public00 
string00 
	ReturnUrl00 
{00  !
get00" %
;00% &
set00' *
;00* +
}00, -
[66 	
TempData66	 
]66 
public77 
string77 
ErrorMessage77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
public== 
class== 

InputModel== 
{>> 	
[CC 
RequiredCC 
]CC 
[DD 
EmailAddressDD 
]DD 
publicEE 
stringEE 
EmailEE 
{EE  !
getEE" %
;EE% &
setEE' *
;EE* +
}EE, -
[KK 
RequiredKK 
]KK 
[LL 
DataTypeLL 
(LL 
DataTypeLL 
.LL 
PasswordLL '
)LL' (
]LL( )
publicMM 
stringMM 
PasswordMM "
{MM# $
getMM% (
;MM( )
setMM* -
;MM- .
}MM/ 0
[SS 
DisplaySS 
(SS 
NameSS 
=SS 
$strSS *
)SS* +
]SS+ ,
publicTT 
boolTT 

RememberMeTT "
{TT# $
getTT% (
;TT( )
setTT* -
;TT- .
}TT/ 0
}UU 	
publicWW 
asyncWW 
TaskWW 

OnGetAsyncWW $
(WW$ %
stringWW% +
	returnUrlWW, 5
=WW6 7
nullWW8 <
)WW< =
{XX 	
ifYY 
(YY 
!YY 
stringYY 
.YY 
IsNullOrEmptyYY %
(YY% &
ErrorMessageYY& 2
)YY2 3
)YY3 4
{ZZ 

ModelState[[ 
.[[ 
AddModelError[[ (
([[( )
string[[) /
.[[/ 0
Empty[[0 5
,[[5 6
ErrorMessage[[7 C
)[[C D
;[[D E
}\\ 
	returnUrl^^ 
??=^^ 
Url^^ 
.^^ 
Content^^ %
(^^% &
$str^^& *
)^^* +
;^^+ ,
awaitaa 
HttpContextaa 
.aa 
SignOutAsyncaa *
(aa* +
IdentityConstantsaa+ <
.aa< =
ExternalSchemeaa= K
)aaK L
;aaL M
ExternalLoginscc 
=cc 
(cc 
awaitcc #
_signInManagercc$ 2
.cc2 31
%GetExternalAuthenticationSchemesAsynccc3 X
(ccX Y
)ccY Z
)ccZ [
.cc[ \
ToListcc\ b
(ccb c
)ccc d
;ccd e
	ReturnUrlee 
=ee 
	returnUrlee !
;ee! "
}ff 	
publichh 
asynchh 
Taskhh 
<hh 
IActionResulthh '
>hh' (
OnPostAsynchh) 4
(hh4 5
stringhh5 ;
	returnUrlhh< E
=hhF G
nullhhH L
)hhL M
{ii 	
	returnUrljj 
??=jj 
Urljj 
.jj 
Contentjj %
(jj% &
$strjj& *
)jj* +
;jj+ ,
ExternalLoginsll 
=ll 
(ll 
awaitll #
_signInManagerll$ 2
.ll2 31
%GetExternalAuthenticationSchemesAsyncll3 X
(llX Y
)llY Z
)llZ [
.ll[ \
ToListll\ b
(llb c
)llc d
;lld e
ifnn 
(nn 

ModelStatenn 
.nn 
IsValidnn "
)nn" #
{oo 
varrr 
resultrr 
=rr 
awaitrr "
_signInManagerrr# 1
.rr1 2
PasswordSignInAsyncrr2 E
(rrE F
InputrrF K
.rrK L
EmailrrL Q
,rrQ R
InputrrS X
.rrX Y
PasswordrrY a
,rra b
Inputrrc h
.rrh i

RememberMerri s
,rrs t
lockoutOnFailure	rru Ö
:
rrÖ Ü
false
rrá å
)
rrå ç
;
rrç é
ifss 
(ss 
resultss 
.ss 
	Succeededss $
)ss$ %
{tt 
_loggeruu 
.uu 
LogInformationuu *
(uu* +
$struu+ <
)uu< =
;uu= >
returnvv 
LocalRedirectvv (
(vv( )
	returnUrlvv) 2
)vv2 3
;vv3 4
}ww 
ifxx 
(xx 
resultxx 
.xx 
RequiresTwoFactorxx ,
)xx, -
{yy 
returnzz 
RedirectToPagezz )
(zz) *
$strzz* :
,zz: ;
newzz< ?
{zz@ A
	ReturnUrlzzB K
=zzL M
	returnUrlzzN W
,zzW X

RememberMezzY c
=zzd e
Inputzzf k
.zzk l

RememberMezzl v
}zzw x
)zzx y
;zzy z
}{{ 
if|| 
(|| 
result|| 
.|| 
IsLockedOut|| &
)||& '
{}} 
_logger~~ 
.~~ 

LogWarning~~ &
(~~& '
$str~~' A
)~~A B
;~~B C
return 
RedirectToPage )
() *
$str* 5
)5 6
;6 7
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 

ModelState
ÉÉ 
.
ÉÉ 
AddModelError
ÉÉ ,
(
ÉÉ, -
string
ÉÉ- 3
.
ÉÉ3 4
Empty
ÉÉ4 9
,
ÉÉ9 :
$str
ÉÉ; S
)
ÉÉS T
;
ÉÉT U
return
ÑÑ 
Page
ÑÑ 
(
ÑÑ  
)
ÑÑ  !
;
ÑÑ! "
}
ÖÖ 
}
ÜÜ 
return
ââ 
Page
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 	
}
ãã 
}åå ã
eC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
LolipopSquare
 
. 
Areas 
. 
Identity &
.& '
Pages' ,
., -
Account- 4
{ 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
IdentityUser) 5
>5 6
signInManager7 D
,D E
ILoggerF M
<M N
LogoutModelN Y
>Y Z
logger[ a
)a b
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
HttpContext 
. 
Session 
.  
Clear  %
(% &
)& '
;' (
_logger 
. 
LogInformation "
(" #
$str# 5
)5 6
;6 7
if 
( 
	returnUrl 
!= 
null !
)! "
{   
return!! 
LocalRedirect!! $
(!!$ %
	returnUrl!!% .
)!!. /
;!!/ 0
}"" 
else## 
{$$ 
return'' 
RedirectToPage'' %
(''% &
)''& '
;''' (
}(( 
})) 	
}** 
}++ “)
mC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	
LolipopSquare 
. 
Areas 
. 
Identity '
.' (
Pages( -
.- .
Account. 5
.5 6
Manage6 <
{		 
public 

static 
class 
ManageNavPages &
{ 
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
Email "
=># %
$str& -
;- .
public   
static   
string   
ChangePassword   +
=>  , .
$str  / ?
;  ? @
public&& 
static&& 
string&&  
DownloadPersonalData&& 1
=>&&2 4
$str&&5 K
;&&K L
public,, 
static,, 
string,, 
DeletePersonalData,, /
=>,,0 2
$str,,3 G
;,,G H
public22 
static22 
string22 
ExternalLogins22 +
=>22, .
$str22/ ?
;22? @
public88 
static88 
string88 
PersonalData88 )
=>88* ,
$str88- ;
;88; <
public>> 
static>> 
string>> #
TwoFactorAuthentication>> 4
=>>>5 7
$str>>8 Q
;>>Q R
publicDD 
staticDD 
stringDD 
IndexNavClassDD *
(DD* +
ViewContextDD+ 6
viewContextDD7 B
)DDB C
=>DDD F
PageNavClassDDG S
(DDS T
viewContextDDT _
,DD_ `
IndexDDa f
)DDf g
;DDg h
publicJJ 
staticJJ 
stringJJ 
EmailNavClassJJ *
(JJ* +
ViewContextJJ+ 6
viewContextJJ7 B
)JJB C
=>JJD F
PageNavClassJJG S
(JJS T
viewContextJJT _
,JJ_ `
EmailJJa f
)JJf g
;JJg h
publicPP 
staticPP 
stringPP "
ChangePasswordNavClassPP 3
(PP3 4
ViewContextPP4 ?
viewContextPP@ K
)PPK L
=>PPM O
PageNavClassPPP \
(PP\ ]
viewContextPP] h
,PPh i
ChangePasswordPPj x
)PPx y
;PPy z
publicVV 
staticVV 
stringVV (
DownloadPersonalDataNavClassVV 9
(VV9 :
ViewContextVV: E
viewContextVVF Q
)VVQ R
=>VVS U
PageNavClassVVV b
(VVb c
viewContextVVc n
,VVn o!
DownloadPersonalData	VVp Ñ
)
VVÑ Ö
;
VVÖ Ü
public\\ 
static\\ 
string\\ &
DeletePersonalDataNavClass\\ 7
(\\7 8
ViewContext\\8 C
viewContext\\D O
)\\O P
=>\\Q S
PageNavClass\\T `
(\\` a
viewContext\\a l
,\\l m
DeletePersonalData	\\n Ä
)
\\Ä Å
;
\\Å Ç
publicbb 
staticbb 
stringbb "
ExternalLoginsNavClassbb 3
(bb3 4
ViewContextbb4 ?
viewContextbb@ K
)bbK L
=>bbM O
PageNavClassbbP \
(bb\ ]
viewContextbb] h
,bbh i
ExternalLoginsbbj x
)bbx y
;bby z
publichh 
statichh 
stringhh  
PersonalDataNavClasshh 1
(hh1 2
ViewContexthh2 =
viewContexthh> I
)hhI J
=>hhK M
PageNavClasshhN Z
(hhZ [
viewContexthh[ f
,hhf g
PersonalDatahhh t
)hht u
;hhu v
publicnn 
staticnn 
stringnn +
TwoFactorAuthenticationNavClassnn <
(nn< =
ViewContextnn= H
viewContextnnI T
)nnT U
=>nnV X
PageNavClassnnY e
(nne f
viewContextnnf q
,nnq r$
TwoFactorAuthentication	nns ä
)
nnä ã
;
nnã å
publictt 
statictt 
stringtt 
PageNavClasstt )
(tt) *
ViewContexttt* 5
viewContexttt6 A
,ttA B
stringttC I
pagettJ N
)ttN O
{uu 	
varvv 

activePagevv 
=vv 
viewContextvv (
.vv( )
ViewDatavv) 1
[vv1 2
$strvv2 >
]vv> ?
asvv@ B
stringvvC I
??ww 
Systemww 
.ww 
IOww 
.ww 
Pathww !
.ww! "'
GetFileNameWithoutExtensionww" =
(ww= >
viewContextww> I
.wwI J
ActionDescriptorwwJ Z
.wwZ [
DisplayNameww[ f
)wwf g
;wwg h
returnxx 
stringxx 
.xx 
Equalsxx  
(xx  !

activePagexx! +
,xx+ ,
pagexx- 1
,xx1 2
StringComparisonxx3 C
.xxC D
OrdinalIgnoreCasexxD U
)xxU V
?xxW X
$strxxY a
:xxb c
nullxxd h
;xxh i
}yy 	
}zz 
}{{ ß
rC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Areas\Identity\Pages\Account\Manage\PersonalData.cshtml.cs
	namespace

 	
LolipopSquare


 
.

 
Areas

 
.

 
Identity

 &
.

& '
Pages

' ,
.

, -
Account

- 4
.

4 5
Manage

5 ;
{ 
public 

class 
PersonalDataModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
PersonalDataModel! 2
>2 3
_logger4 ;
;; <
public 
PersonalDataModel  
(  !
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
PersonalDataModel %
>% &
logger' -
)- .
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  "
$str" ?
{? @
_userManager@ L
.L M
	GetUserIdM V
(V W
UserW [
)[ \
}\ ]
$str] _
"_ `
)` a
;a b
} 
return!! 
Page!! 
(!! 
)!! 
;!! 
}"" 	
}## 
}$$ ◊t
gC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
LolipopSquare
 
. 
Areas 
. 
Identity &
.& '
Pages' ,
., -
Account- 4
{ 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 

IUserStore #
<# $
IdentityUser$ 0
>0 1

_userStore2 <
;< =
private 
readonly 
IUserEmailStore (
<( )
IdentityUser) 5
>5 6
_emailStore7 B
;B C
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
private   
readonly   
IEmailSender   %
_emailSender  & 2
;  2 3
public"" 
RegisterModel"" 
("" 
UserManager## 
<## 
IdentityUser## $
>##$ %
userManager##& 1
,##1 2

IUserStore$$ 
<$$ 
IdentityUser$$ #
>$$# $
	userStore$$% .
,$$. /
SignInManager%% 
<%% 
IdentityUser%% &
>%%& '
signInManager%%( 5
,%%5 6
ILogger&& 
<&& 
RegisterModel&& !
>&&! "
logger&&# )
,&&) *
IEmailSender'' 
emailSender'' $
)''$ %
{(( 	
_userManager)) 
=)) 
userManager)) &
;))& '

_userStore** 
=** 
	userStore** "
;**" #
_emailStore++ 
=++ 
GetEmailStore++ '
(++' (
)++( )
;++) *
_signInManager,, 
=,, 
signInManager,, *
;,,* +
_logger-- 
=-- 
logger-- 
;-- 
_emailSender.. 
=.. 
emailSender.. &
;..& '
}// 	
[55 	
BindProperty55	 
]55 
public66 

InputModel66 
Input66 
{66  !
get66" %
;66% &
set66' *
;66* +
}66, -
public<< 
string<< 
	ReturnUrl<< 
{<<  !
get<<" %
;<<% &
set<<' *
;<<* +
}<<, -
publicBB 
IListBB 
<BB  
AuthenticationSchemeBB )
>BB) *
ExternalLoginsBB+ 9
{BB: ;
getBB< ?
;BB? @
setBBA D
;BBD E
}BBF G
publicHH 
classHH 

InputModelHH 
{II 	
[NN 
RequiredNN 
]NN 
[OO 
EmailAddressOO 
]OO 
[PP 
DisplayPP 
(PP 
NamePP 
=PP 
$strPP #
)PP# $
]PP$ %
publicQQ 
stringQQ 
EmailQQ 
{QQ  !
getQQ" %
;QQ% &
setQQ' *
;QQ* +
}QQ, -
[WW 
RequiredWW 
]WW 
[XX 
StringLengthXX 
(XX 
$numXX 
,XX 
ErrorMessageXX +
=XX, -
$strXX. l
,XXl m
MinimumLengthXXn {
=XX| }
$numXX~ 
)	XX Ä
]
XXÄ Å
[YY 
DataTypeYY 
(YY 
DataTypeYY 
.YY 
PasswordYY '
)YY' (
]YY( )
[ZZ 
DisplayZZ 
(ZZ 
NameZZ 
=ZZ 
$strZZ &
)ZZ& '
]ZZ' (
public[[ 
string[[ 
Password[[ "
{[[# $
get[[% (
;[[( )
set[[* -
;[[- .
}[[/ 0
[aa 
DataTypeaa 
(aa 
DataTypeaa 
.aa 
Passwordaa '
)aa' (
]aa( )
[bb 
Displaybb 
(bb 
Namebb 
=bb 
$strbb .
)bb. /
]bb/ 0
[cc 
Comparecc 
(cc 
$strcc 
,cc  
ErrorMessagecc! -
=cc. /
$strcc0 f
)ccf g
]ccg h
publicdd 
stringdd 
ConfirmPassworddd )
{dd* +
getdd, /
;dd/ 0
setdd1 4
;dd4 5
}dd6 7
[ff 
Requiredff 
]ff 
[gg 
StringLengthgg 
(gg 
$numgg 
,gg 
ErrorMessagegg +
=gg, -
$strgg- j
)ggj k
]ggk l
[hh 
Displayhh 
(hh 
Namehh 
=hh 
$strhh '
)hh' (
]hh( )
publicii 
stringii 
	FirstNameii #
{ii$ %
getii& )
;ii) *
setii+ .
;ii. /
}ii0 1
[kk 
Requiredkk 
]kk 
[ll 
StringLengthll 
(ll 
$numll 
,ll 
ErrorMessagell +
=ll, -
$strll. j
)llj k
]llk l
[mm 
Displaymm 
(mm 
Namemm 
=mm 
$strmm '
)mm' (
]mm( )
publicnn 
stringnn 
LastNamenn "
{nn# $
getnn% (
;nn( )
setnn* -
;nn- .
}nn/ 0
}oo 	
publicrr 
asyncrr 
Taskrr 

OnGetAsyncrr $
(rr$ %
stringrr% +
	returnUrlrr, 5
=rr6 7
nullrr8 <
)rr< =
{ss 	
	ReturnUrltt 
=tt 
	returnUrltt !
;tt! "
ExternalLoginsuu 
=uu 
(uu 
awaituu #
_signInManageruu$ 2
.uu2 31
%GetExternalAuthenticationSchemesAsyncuu3 X
(uuX Y
)uuY Z
)uuZ [
.uu[ \
ToListuu\ b
(uub c
)uuc d
;uud e
}vv 	
publicxx 
asyncxx 
Taskxx 
<xx 
IActionResultxx '
>xx' (
OnPostAsyncxx) 4
(xx4 5
stringxx5 ;
	returnUrlxx< E
=xxF G
nullxxH L
)xxL M
{yy 	
	returnUrlzz 
??=zz 
Urlzz 
.zz 
Contentzz %
(zz% &
$strzz& *
)zz* +
;zz+ ,
ExternalLogins{{ 
={{ 
({{ 
await{{ #
_signInManager{{$ 2
.{{2 31
%GetExternalAuthenticationSchemesAsync{{3 X
({{X Y
){{Y Z
){{Z [
.{{[ \
ToList{{\ b
({{b c
){{c d
;{{d e
if|| 
(|| 

ModelState|| 
.|| 
IsValid|| "
)||" #
{}} 
var~~ 
user~~ 
=~~ 

CreateUser~~ %
(~~% &
)~~& '
;~~' (
user 
. 
	FirstName 
=  
Input! &
.& '
	FirstName' 0
;0 1
user
ÄÄ 
.
ÄÄ 
LastName
ÄÄ 
=
ÄÄ 
Input
ÄÄ  %
.
ÄÄ% &
LastName
ÄÄ& .
;
ÄÄ. /
await
ÉÉ 

_userStore
ÉÉ  
.
ÉÉ  !
SetUserNameAsync
ÉÉ! 1
(
ÉÉ1 2
user
ÉÉ2 6
,
ÉÉ6 7
Input
ÉÉ8 =
.
ÉÉ= >
Email
ÉÉ> C
,
ÉÉC D
CancellationToken
ÉÉE V
.
ÉÉV W
None
ÉÉW [
)
ÉÉ[ \
;
ÉÉ\ ]
await
ÑÑ 
_emailStore
ÑÑ !
.
ÑÑ! "
SetEmailAsync
ÑÑ" /
(
ÑÑ/ 0
user
ÑÑ0 4
,
ÑÑ4 5
Input
ÑÑ6 ;
.
ÑÑ; <
Email
ÑÑ< A
,
ÑÑA B
CancellationToken
ÑÑC T
.
ÑÑT U
None
ÑÑU Y
)
ÑÑY Z
;
ÑÑZ [
var
ÖÖ 
result
ÖÖ 
=
ÖÖ 
await
ÖÖ "
_userManager
ÖÖ# /
.
ÖÖ/ 0
CreateAsync
ÖÖ0 ;
(
ÖÖ; <
user
ÖÖ< @
,
ÖÖ@ A
Input
ÖÖB G
.
ÖÖG H
Password
ÖÖH P
)
ÖÖP Q
;
ÖÖQ R
if
áá 
(
áá 
result
áá 
.
áá 
	Succeeded
áá $
)
áá$ %
{
àà 
_logger
ââ 
.
ââ 
LogInformation
ââ *
(
ââ* +
$str
ââ+ V
)
ââV W
;
ââW X
var
ãã 
userId
ãã 
=
ãã  
await
ãã! &
_userManager
ãã' 3
.
ãã3 4
GetUserIdAsync
ãã4 B
(
ããB C
user
ããC G
)
ããG H
;
ããH I
_userManager
åå  
.
åå  !
AddToRoleAsync
åå! /
(
åå/ 0
user
åå0 4
,
åå4 5
$str
åå6 <
)
åå< =
.
åå= >
Wait
åå> B
(
ååB C
)
ååC D
;
ååD E
var
çç 
code
çç 
=
çç 
await
çç $
_userManager
çç% 1
.
çç1 21
#GenerateEmailConfirmationTokenAsync
çç2 U
(
ççU V
user
ççV Z
)
ççZ [
;
çç[ \
code
éé 
=
éé 
WebEncoders
éé &
.
éé& '
Base64UrlEncode
éé' 6
(
éé6 7
Encoding
éé7 ?
.
éé? @
UTF8
éé@ D
.
ééD E
GetBytes
ééE M
(
ééM N
code
ééN R
)
ééR S
)
ééS T
;
ééT U
var
èè 
callbackUrl
èè #
=
èè$ %
Url
èè& )
.
èè) *
Page
èè* .
(
èè. /
$str
êê /
,
êê/ 0
pageHandler
ëë #
:
ëë# $
null
ëë% )
,
ëë) *
values
íí 
:
íí 
new
íí  #
{
íí$ %
area
íí& *
=
íí+ ,
$str
íí- 7
,
íí7 8
userId
íí9 ?
=
íí@ A
userId
ííB H
,
ííH I
code
ííJ N
=
ííO P
code
ííQ U
,
ííU V
	returnUrl
ííW `
=
íía b
	returnUrl
ííc l
}
íím n
,
íín o
protocol
ìì  
:
ìì  !
Request
ìì" )
.
ìì) *
Scheme
ìì* 0
)
ìì0 1
;
ìì1 2
await
ïï 
_emailSender
ïï &
.
ïï& '
SendEmailAsync
ïï' 5
(
ïï5 6
Input
ïï6 ;
.
ïï; <
Email
ïï< A
,
ïïA B
$str
ïïC W
,
ïïW X
$"
ññ 
$str
ññ B
{
ññB C
HtmlEncoder
ññC N
.
ññN O
Default
ññO V
.
ññV W
Encode
ññW ]
(
ññ] ^
callbackUrl
ññ^ i
)
ññi j
}
ññj k
$str
ññk 
"ññ Ä
)ññÄ Å
;ññÅ Ç
if
òò 
(
òò 
_userManager
òò $
.
òò$ %
Options
òò% ,
.
òò, -
SignIn
òò- 3
.
òò3 4%
RequireConfirmedAccount
òò4 K
)
òòK L
{
ôô 
return
öö 
RedirectToPage
öö -
(
öö- .
$str
öö. D
,
ööD E
new
ööF I
{
ööJ K
email
ööL Q
=
ööR S
Input
ööT Y
.
ööY Z
Email
ööZ _
,
öö_ `
	returnUrl
ööa j
=
öök l
	returnUrl
ööm v
}
ööw x
)
ööx y
;
ööy z
}
õõ 
else
úú 
{
ùù 
await
ûû 
_signInManager
ûû ,
.
ûû, -
SignInAsync
ûû- 8
(
ûû8 9
user
ûû9 =
,
ûû= >
isPersistent
ûû? K
:
ûûK L
false
ûûM R
)
ûûR S
;
ûûS T
return
üü 
LocalRedirect
üü ,
(
üü, -
	returnUrl
üü- 6
)
üü6 7
;
üü7 8
}
†† 
}
°° 
foreach
¢¢ 
(
¢¢ 
var
¢¢ 
error
¢¢ "
in
¢¢# %
result
¢¢& ,
.
¢¢, -
Errors
¢¢- 3
)
¢¢3 4
{
££ 

ModelState
§§ 
.
§§ 
AddModelError
§§ ,
(
§§, -
string
§§- 3
.
§§3 4
Empty
§§4 9
,
§§9 :
error
§§; @
.
§§@ A
Description
§§A L
)
§§L M
;
§§M N
}
•• 
}
ßß 
return
¨¨ 
Page
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 	
private
ØØ 
ApplicationUser
ØØ 

CreateUser
ØØ  *
(
ØØ* +
)
ØØ+ ,
{
∞∞ 	
try
±± 
{
≤≤ 
return
≥≥ 
	Activator
≥≥  
.
≥≥  !
CreateInstance
≥≥! /
<
≥≥/ 0
ApplicationUser
≥≥0 ?
>
≥≥? @
(
≥≥@ A
)
≥≥A B
;
≥≥B C
}
¥¥ 
catch
µµ 
{
∂∂ 
throw
∑∑ 
new
∑∑ '
InvalidOperationException
∑∑ 3
(
∑∑3 4
$"
∑∑4 6
$str
∑∑6 S
{
∑∑S T
nameof
∑∑T Z
(
∑∑Z [
ApplicationUser
∑∑[ j
)
∑∑j k
}
∑∑k l
$str
∑∑l o
"
∑∑o p
+
∑∑q r
$"
∏∏ 
$str
∏∏ #
{
∏∏# $
nameof
∏∏$ *
(
∏∏* +
ApplicationUser
∏∏+ :
)
∏∏: ;
}
∏∏; <
$str∏∏< ç
"∏∏ç é
+∏∏è ê
$"
ππ 
$str
ππ a
"
ππa b
)
ππb c
;
ππc d
}
∫∫ 
}
ªª 	
private
ΩΩ 
IUserEmailStore
ΩΩ 
<
ΩΩ  
IdentityUser
ΩΩ  ,
>
ΩΩ, -
GetEmailStore
ΩΩ. ;
(
ΩΩ; <
)
ΩΩ< =
{
ææ 	
if
øø 
(
øø 
!
øø 
_userManager
øø 
.
øø 
SupportsUserEmail
øø /
)
øø/ 0
{
¿¿ 
throw
¡¡ 
new
¡¡ #
NotSupportedException
¡¡ /
(
¡¡/ 0
$str
¡¡0 j
)
¡¡j k
;
¡¡k l
}
¬¬ 
return
√√ 
(
√√ 
IUserEmailStore
√√ #
<
√√# $
IdentityUser
√√$ 0
>
√√0 1
)
√√1 2

_userStore
√√2 <
;
√√< =
}
ƒƒ 	
}
≈≈ 
}∆∆ ‘#
sC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Areas\Identity\Pages\Account\RegisterConfirmation.cshtml.cs
	namespace 	
LolipopSquare
 
. 
Areas 
. 
Identity &
.& '
Pages' ,
., -
Account- 4
{ 
[ 
AllowAnonymous 
] 
public 

class %
RegisterConfirmationModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public %
RegisterConfirmationModel (
(( )
UserManager) 4
<4 5
IdentityUser5 A
>A B
userManagerC N
)N O
{ 	
_userManager 
= 
userManager &
;& '
} 	
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public%% 
bool%% %
DisplayConfirmAccountLink%% -
{%%. /
get%%0 3
;%%3 4
set%%5 8
;%%8 9
}%%: ;
public++ 
string++  
EmailConfirmationUrl++ *
{+++ ,
get++- 0
;++0 1
set++2 5
;++5 6
}++7 8
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (

OnGetAsync--) 3
(--3 4
string--4 :
email--; @
,--@ A
string--B H
	returnUrl--I R
=--S T
null--U Y
)--Y Z
{.. 	
if// 
(// 
email// 
==// 
null// 
)// 
{00 
return11 
RedirectToPage11 %
(11% &
$str11& .
)11. /
;11/ 0
}22 
	returnUrl33 
=33 
	returnUrl33 !
??33" $
Url33% (
.33( )
Content33) 0
(330 1
$str331 5
)335 6
;336 7
var55 
user55 
=55 
await55 
_userManager55 )
.55) *
FindByEmailAsync55* :
(55: ;
email55; @
)55@ A
;55A B
if66 
(66 
user66 
==66 
null66 
)66 
{77 
return88 
NotFound88 
(88  
$"88  "
$str88" B
{88B C
email88C H
}88H I
$str88I K
"88K L
)88L M
;88M N
}99 
Email;; 
=;; 
email;; 
;;; %
DisplayConfirmAccountLink== %
===& '
false==( -
;==- .
if>> 
(>> %
DisplayConfirmAccountLink>> )
)>>) *
{?? 
var@@ 
userId@@ 
=@@ 
await@@ "
_userManager@@# /
.@@/ 0
GetUserIdAsync@@0 >
(@@> ?
user@@? C
)@@C D
;@@D E
varAA 
codeAA 
=AA 
awaitAA  
_userManagerAA! -
.AA- ./
#GenerateEmailConfirmationTokenAsyncAA. Q
(AAQ R
userAAR V
)AAV W
;AAW X
codeBB 
=BB 
WebEncodersBB "
.BB" #
Base64UrlEncodeBB# 2
(BB2 3
EncodingBB3 ;
.BB; <
UTF8BB< @
.BB@ A
GetBytesBBA I
(BBI J
codeBBJ N
)BBN O
)BBO P
;BBP Q 
EmailConfirmationUrlCC $
=CC% &
UrlCC' *
.CC* +
PageCC+ /
(CC/ 0
$strDD +
,DD+ ,
pageHandlerEE 
:EE  
nullEE! %
,EE% &
valuesFF 
:FF 
newFF 
{FF  !
areaFF" &
=FF' (
$strFF) 3
,FF3 4
userIdFF5 ;
=FF< =
userIdFF> D
,FFD E
codeFFF J
=FFK L
codeFFM Q
,FFQ R
	returnUrlFFS \
=FF] ^
	returnUrlFF_ h
}FFi j
,FFj k
protocolGG 
:GG 
RequestGG %
.GG% &
SchemeGG& ,
)GG, -
;GG- .
}HH 
returnJJ 
PageJJ 
(JJ 
)JJ 
;JJ 
}KK 	
}LL 
}MM π$
YC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Controllers\CategoryController.cs
	namespace 	
LolipopSquare
 
. 
Controllers #
{ 
public 

class 
CategoryController #
:$ %

Controller& 0
{ 
private		 
readonly		 
ICategoryService		 )
_categoryService		* :
;		: ;
public 
CategoryController !
(! "
ICategoryService" 2
categoryService3 B
)B C
{ 	
_categoryService 
= 
categoryService .
;. /
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
Index "
(" #
)# $
{ 	
var 
listOfCategories  
=! "
_categoryService# 3
.3 4 
DisplayAllCategories4 H
(H I
)I J
;J K
return 
View 
( 
listOfCategories (
)( )
;) *
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
EditCategoryForm -
(- .
int. 1
id2 4
)4 5
{ 	
var 
categoryToEdit 
=  
_categoryService! 1
.1 2
GetCategoryById2 A
(A B
idB D
)D E
;E F
return 
View 
( 
categoryToEdit &
)& '
;' (
} 	
[ 	
HttpPost	 
] 
[   	$
ValidateAntiForgeryToken  	 !
]  ! "
public!! 
IActionResult!! 
UpdateCategory!! +
(!!+ ,
EditCategoryVM!!, :
editCategoryVM!!; I
)!!I J
{"" 	
if## 
(## 

ModelState## 
.## 
IsValid## "
)##" #
{$$ 
_categoryService%%  
.%%  !
UpdateCategory%%! /
(%%/ 0
editCategoryVM%%0 >
)%%> ?
;%%? @
}&& 
return'' 
RedirectToAction'' #
(''# $
$str''$ +
)''+ ,
;'', -
}(( 	
[** 	
HttpGet**	 
]** 
public++ 
IActionResult++ 
AddNewCategoryForm++ /
(++/ 0
)++0 1
{,, 	
AddNewCategoryVM-- 
newCategoryVM-- *
=--+ ,
new--- 0
AddNewCategoryVM--1 A
(--A B
)--B C
;--C D
return.. 
View.. 
(.. 
newCategoryVM.. %
)..% &
;..& '
}// 	
[11 	
HttpPost11	 
]11 
[22 	$
ValidateAntiForgeryToken22	 !
]22! "
public33 
IActionResult33 
AddNew33 #
(33# $
AddNewCategoryVM33$ 4
addNewCategoryVM335 E
)33E F
{44 	
if55 
(55 

ModelState55 
.55 
IsValid55 "
)55" #
{66 
_categoryService77  
.77  !
AddNewCategory77! /
(77/ 0
addNewCategoryVM770 @
)77@ A
;77A B
}88 
return99 
RedirectToAction99 #
(99# $
$str99$ +
)99+ ,
;99, -
}:: 	
[<< 	
HttpGet<<	 
]<< 
public== 
IActionResult== 
DeleteCategory== +
(==+ ,
int==, /
id==0 2
)==2 3
{>> 	
var?? 
categoryToDelete??  
=??! "
_categoryService??# 3
.??3 4$
GetCategoryByIdForDelete??4 L
(??L M
id??M O
)??O P
;??P Q
return@@ 
View@@ 
(@@ 
categoryToDelete@@ (
)@@( )
;@@) *
}AA 	
[CC 	
HttpPostCC	 
]CC 
[DD 	$
ValidateAntiForgeryTokenDD	 !
]DD! "
publicEE 
IActionResultEE 
DeleteEE #
(EE# $
intEE$ '
idEE( *
)EE* +
{FF 	
_categoryServiceGG 
.GG 
DeleteCategoryGG +
(GG+ ,
idGG, .
)GG. /
;GG/ 0
returnHH 
RedirectToActionHH #
(HH# $
$strHH$ +
)HH+ ,
;HH, -
}II 	
}JJ 
}KK Û
UC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Controllers\HomeController.cs
	namespace 	
LolipopSquare
 
. 
Controllers #
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		 
ILogger		  
<		  !
HomeController		! /
>		/ 0
_logger		1 8
;		8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
}   £
]C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Controllers\OrderHistoryController.cs
	namespace 	
LolipopSquare
 
. 
Controllers #
{ 
public 

class "
OrderHistoryController '
:( )

Controller* 4
{		 
private

 
readonly

  
IOrderHistoryService

 - 
_orderHistoryService

. B
;

B C
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public "
OrderHistoryController %
(% & 
IOrderHistoryService& :
orderHistoryService; N
,N O
SignInManagerP ]
<] ^
IdentityUser^ j
>j k
signInManagerl y
)y z
{ 	 
_orderHistoryService  
=! "
orderHistoryService# 6
;6 7
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
Index "
(" #
string$ *
filter+ 1
)1 2
{ 	
var 
userId 
= 
_signInManager '
.' (
UserManager( 3
.3 4
	GetUserId4 =
(= >
User> B
)B C
;C D
var 
orderHistory 
=  
_orderHistoryService 3
.3 4
DisplayOrderHistory4 G
(G H
userIdH N
)N O
;O P
if 
( 
filter 
== 
$str $
)$ %
{ 
var 
cancelledOrder "
=# $
orderHistory% 1
.1 2
Where2 7
(7 8
x8 9
=>: <
x= >
.> ?
OrderConfirmation? P
==Q S
falseT Y
)Y Z
.Z [
ToList[ a
(a b
)b c
;c d
return 
View 
( 
cancelledOrder *
)* +
;+ ,
} 
else 
if 
( 
filter 
== 
$str *
)* +
{ 
var   
inProgressOrders   $
=  % &
orderHistory  ' 3
.  3 4
Where  4 9
(  9 :
x  : ;
=>  < >
x  ? @
.  @ A
OrderConfirmation  A R
==  S U
true  V Z
)  Z [
.  [ \
ToList  \ b
(  b c
)  c d
;  d e
return!! 
View!! 
(!! 
inProgressOrders!! ,
)!!, -
;!!- .
}"" 
return## 
View## 
(## 
orderHistory## $
)##$ %
;##% &
}$$ 	
}%% 
}&& È?
XC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Controllers\ProductController.cs
	namespace 	
LolipopSquare
 
. 
Controllers #
{ 
public 

class 
ProductController "
:# $

Controller% /
{ 
private		 
readonly		 
IProductService		 (
_productService		) 8
;		8 9
private

 
readonly

 
ICategoryService

 )
_categoryService

* :
;

: ;
public 
ProductController  
(  !
IProductService! 0
productService1 ?
,? @
ICategoryServiceA Q
categoryServiceR a
)a b
{ 	
_productService 
= 
productService ,
;, -
_categoryService 
= 
categoryService .
;. /
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
Index "
(" #
)# $
{ 	
var 
products 
= 
_productService *
.* +
GetAllProducts+ 9
(9 :
$num: ;
,; <
$num= >
,> ?
string@ F
.F G
EmptyG L
,L M
stringN T
.T U
EmptyU Z
)Z [
;[ \
var 
allCategories 
= 
_categoryService  0
.0 1 
DisplayAllCategories1 E
(E F
)F G
;G H
ViewBag 
. 

Categories 
=  
allCategories! .
;. /
return 
View 
( 
products  
)  !
;! "
} 	
[ 	
HttpPost	 
] 
[ 	$
ValidateAntiForgeryToken	 !
]! "
public 
IActionResult 
Index "
(" #
int# &

actualPage' 1
,1 2
string3 9
search: @
,@ A
stringB H
categoryI Q
,Q R
intS V
pageSizeW _
=` a
$numb c
)c d
{ 	
if   
(   

actualPage   
==   
$num   
)   
{!! 

actualPage"" 
="" 
$num"" 
;"" 
}## 
if$$ 
($$ 
search$$ 
==$$ 
null$$ 
)$$ 
{%% 
search&& 
=&& 
String&& 
.&&  
Empty&&  %
;&&% &
}'' 
var(( 
products(( 
=(( 
_productService(( *
.((* +
GetAllProducts((+ 9
(((9 :
pageSize((: B
,((B C

actualPage((D N
,((N O
search((P V
,((V W
category((X `
)((` a
;((a b
var)) 
allCategories)) 
=)) 
_categoryService))  0
.))0 1 
DisplayAllCategories))1 E
())E F
)))F G
;))G H
ViewBag** 
.** 

Categories** 
=**  
allCategories**! .
;**. /
return++ 
View++ 
(++ 
products++  
)++  !
;++! "
},, 	
[.. 	
HttpGet..	 
].. 
public// 
IActionResult// 
EditProductForm// ,
(//, -
int//- 0
id//1 3
)//3 4
{00 	
var22 
edit22 
=22 
_productService22 &
.22& '
GetProductById22' 5
(225 6
id226 8
)228 9
;229 :
return44 
View44 
(44 
edit44 
)44 
;44 
}55 	
[77 	
HttpPost77	 
]77 
[88 	$
ValidateAntiForgeryToken88	 !
]88! "
public99 
IActionResult99 
UpdateProduct99 *
(99* +
ProductImageVM99+ 9
productImageVM99: H
)99H I
{:: 	
if;; 
(;; 

ModelState;; 
.;; 
IsValid;; "
);;" #
{<< 
_productService== 
.==  
UpdateProduct==  -
(==- .
productImageVM==. <
)==< =
;=== >
}>> 
return?? 
RedirectToAction?? #
(??# $
$str??$ +
)??+ ,
;??, -
}@@ 	
[BB 	
HttpGetBB	 
]BB 
publicCC 
IActionResultCC 
AddNewProductFormCC .
(CC. /
)CC/ 0
{DD 	
varEE #
newProductVMAndCategoryEE '
=EE( )
_productServiceEE) 8
.EE8 9
GetNewProductVMEE9 H
(EEH I
)EEI J
;EEJ K
returnFF 
ViewFF 
(FF #
newProductVMAndCategoryFF /
)FF/ 0
;FF0 1
}GG 	
[II 	
HttpPostII	 
]II 
[JJ 	$
ValidateAntiForgeryTokenJJ	 !
]JJ! "
publicKK 
IActionResultKK 
AddNewProductKK *
(KK* +
AddNewProductVMKK+ :
	productVMKK; D
)KKD E
{LL 	
ifMM 
(MM 

ModelStateMM 
.MM 
IsValidMM "
)MM" #
{NN 
_productServiceOO 
.OO  
AddNewProductOO  -
(OO- .
	productVMOO. 7
)OO7 8
;OO8 9
}PP 
returnQQ 
RedirectToActionQQ #
(QQ# $
$strQQ$ +
)QQ+ ,
;QQ, -
}RR 	
[TT 	
HttpGetTT	 
]TT 
publicUU 
IActionResultUU 
DeleteProductFormUU .
(UU. /
intUU/ 2
	productIdUU3 <
)UU< =
{VV 	
varWW 
productToRemoveWW 
=WW  !
_productServiceWW" 1
.WW1 2#
GetProductByIdForDeleteWW2 I
(WWI J
	productIdWWJ S
)WWS T
;WWT U
returnXX 
ViewXX 
(XX 
productToRemoveXX '
)XX' (
;XX( )
}YY 	
[[[ 	
HttpPost[[	 
][[ 
[\\ 	$
ValidateAntiForgeryToken\\	 !
]\\! "
public]] 
IActionResult]] 
DeleteProduct]] *
(]]* +
int]]+ .
	productId]]/ 8
)]]8 9
{^^ 	
_productService__ 
.__ 
DeleteProduct__ )
(__) *
	productId__* 3
)__3 4
;__4 5
return`` 
RedirectToAction`` #
(``# $
$str``$ +
)``+ ,
;``, -
}aa 	
[cc 	
HttpGetcc	 
]cc 
publicdd 
asyncdd 
Taskdd 
<dd 
IActionResultdd '
>dd' (!
DisplayProductDetailsdd) >
(dd> ?
intdd? B
idddC E
)ddE F
{ee 	
varff 
productff 
=ff 
awaitff 
_productServiceff  /
.ff/ 0
GetProductDetailsff0 A
(ffA B
idffB D
)ffD E
;ffE F
returngg 
Viewgg 
(gg 
productgg 
)gg  
;gg  !
}hh 	
[jj 	
HttpPostjj	 
]jj 
[kk 	$
ValidateAntiForgeryTokenkk	 !
]kk! "
publicll 
IActionResultll 
	DeleteImgll &
(ll& '
intll' *
idll+ -
)ll- .
{mm 	
_productServicenn 
.nn 
DeleteSingleImgnn +
(nn+ ,
idnn, .
)nn. /
;nn/ 0
returnoo 
Okoo 
(oo 
)oo 
;oo 
}pp 	
}qq 
}rr ∫
UC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Controllers\RoleController.cs
	namespace 	
LolipopSquare
 
. 
Controllers #
{ 
[		 
	Authorize		 
(		 
Roles		 
=		 
$str		 &
)		& '
]		' (
public

 

class

 
RoleController

 
:

  !

Controller

" ,
{ 
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
_roleManager3 ?
;? @
public 
RoleController 
( 
RoleManager )
<) *
IdentityRole* 6
>6 7
roleManager8 C
)C D
{ 	
_roleManager 
= 
roleManager &
;& '
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
Index "
(" #
)# $
{ 	
var 
roles 
= 
_roleManager $
.$ %
Roles% *
.* +
ToList+ 1
(1 2
)2 3
;3 4
return 
View 
( 
roles 
) 
; 
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
Create #
(# $
)$ %
{ 	
return 
View 
( 
) 
; 
} 	
[   	
HttpPost  	 
]   
[!! 	$
ValidateAntiForgeryToken!!	 !
]!!! "
public"" 
async"" 
Task"" 
<"" 
IActionResult"" (
>""( )
Create""* 0
(""0 1
ProjectRolesVM""1 ?
projectRoles""@ L
)""L M
{## 	
var$$ 
	roleExist$$ 
=$$ 
await$$ !
_roleManager$$" .
.$$. /
RoleExistsAsync$$/ >
($$> ?
projectRoles$$? K
.$$K L
RoleName$$L T
)$$T U
;$$U V
if%% 
(%% 
!%% 
	roleExist%% 
)%% 
{&& 
await'' 
_roleManager'' "
.''" #
CreateAsync''# .
(''. /
new''/ 2
IdentityRole''3 ?
(''? @
projectRoles''@ L
.''L M
RoleName''M U
)''U V
)''V W
;''W X
}(( 
return)) 
View)) 
()) 
))) 
;)) 
}** 	
}++ 
},, Øà
]C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Controllers\ShoppingCartController.cs
	namespace		 	
LolipopSquare		
 
.		 
Controllers		 #
{

 
public 

class "
ShoppingCartController '
:( )

Controller* 4
{ 
private 
readonly  
IShoppingCartService - 
_shoppingCartService. B
;B C
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public "
ShoppingCartController %
(% & 
IShoppingCartService& :
shoppingCartService; N
,N O
SignInManagerP ]
<] ^
IdentityUser^ j
>j k
signInManagerl y
)y z
{ 	 
_shoppingCartService  
=! "
shoppingCartService# 6
;6 7
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
AddItem $
($ %
int% (
	productId) 2
,2 3
int4 7
quantity8 @
=A B
$numC D
)D E
{ 	
List 
< 
ShoppingCartItem !
>! "
listOfItems# .
=/ 0
new1 4
List5 9
<9 :
ShoppingCartItem: J
>J K
(K L
)L M
;M N
var 
products 
= 
HttpContext &
.& '
Session' .
.. /
	GetString/ 8
(8 9
$str9 B
)B C
;C D
if 
( 
products 
!= 
null 
)  
{ 
var 

newProduct 
=   
_shoppingCartService! 5
.5 6

GetProduct6 @
(@ A
	productIdA J
)J K
;K L
listOfItems 
= 
JsonSerializer +
.+ ,
Deserialize, 7
<7 8
List8 <
<< =
ShoppingCartItem= M
>M N
>N O
(O P
productsP X
)X Y
;Y Z
if 
( 
listOfItems 
!=  "
null# '
)' (
{ 
foreach   
(   
var    
item  ! %
in  & (
listOfItems  ) 4
)  4 5
{!! 
if"" 
("" 

newProduct"" &
.""& '
	ProductId""' 0
==""1 3
item""4 8
.""8 9
	ProductId""9 B
)""B C
{## 
item$$  
.$$  !
Quantity$$! )
+=$$* ,
quantity$$- 5
;$$5 6
}%% 
}&& 
if'' 
('' 
!'' 
listOfItems'' $
.''$ %
Exists''% +
(''+ ,
x'', -
=>''. 0
x''1 2
.''2 3
	ProductId''3 <
==''= ?

newProduct''@ J
.''J K
	ProductId''K T
)''T U
)''U V
{(( 

newProduct)) "
.))" #
Quantity))# +
=)), -
quantity)). 6
;))6 7
listOfItems** #
.**# $
Add**$ '
(**' (

newProduct**( 2
)**2 3
;**3 4
}++ 
},, 
else-- 
{.. 
listOfItems// 
=//  !
new//" %
List//& *
<//* +
ShoppingCartItem//+ ;
>//; <
(//< =
)//= >
;//> ?
}00 
}22 
else33 
{44 
var55 
product55 
=55  
_shoppingCartService55 2
.552 3

GetProduct553 =
(55= >
	productId55> G
)55G H
;55H I
product66 
.66 
Quantity66  
=66! "
quantity66# +
;66+ ,
listOfItems77 
.77 
Add77 
(77  
product77  '
)77' (
;77( )
}88 
string;; 
serializeList;;  
=;;! "
JsonSerializer;;# 1
.;;1 2
	Serialize;;2 ;
(;;; <
listOfItems;;< G
);;G H
;;;H I
HttpContext<< 
.<< 
Session<< 
.<<  
	SetString<<  )
(<<) *
$str<<* 3
,<<3 4
serializeList<<5 B
)<<B C
;<<C D
return== 
RedirectToAction== #
(==# $
$str==$ +
,==+ ,
$str==- 6
)==6 7
;==7 8
}>> 	
[@@ 	
HttpPost@@	 
]@@ 
[AA 	$
ValidateAntiForgeryTokenAA	 !
]AA! "
publicBB 
IActionResultBB 
AddItemFormBB (
(BB( )
intBB) ,
	productIdBB- 6
,BB6 7
intBB8 ;
quantityBB< D
=BBE F
$numBBG H
)BBH I
{CC 	
ListDD 
<DD 
ShoppingCartItemDD !
>DD! "
listOfItemsDD# .
=DD/ 0
newDD1 4
ListDD5 9
<DD9 :
ShoppingCartItemDD: J
>DDJ K
(DDK L
)DDL M
;DDM N
varEE 
productsEE 
=EE 
HttpContextEE &
.EE& '
SessionEE' .
.EE. /
	GetStringEE/ 8
(EE8 9
$strEE9 B
)EEB C
;EEC D
ifFF 
(FF 
productsFF 
!=FF 
nullFF  
)FF  !
{GG 
varHH 

newProductHH 
=HH   
_shoppingCartServiceHH! 5
.HH5 6

GetProductHH6 @
(HH@ A
	productIdHHA J
)HHJ K
;HHK L
listOfItemsII 
=II 
JsonSerializerII ,
.II, -
DeserializeII- 8
<II8 9
ListII9 =
<II= >
ShoppingCartItemII> N
>IIN O
>IIO P
(IIP Q
productsIIQ Y
)IIY Z
;IIZ [
foreachJJ 
(JJ 
varJJ 
itemJJ !
inJJ" $
listOfItemsJJ% 0
)JJ0 1
{KK 
ifLL 
(LL 

newProductLL "
.LL" #
	ProductIdLL# ,
==LL- /
itemLL0 4
.LL4 5
	ProductIdLL5 >
)LL> ?
{MM 
itemNN 
.NN 
QuantityNN %
+=NN& (
quantityNN) 1
;NN1 2
}OO 
}PP 
ifQQ 
(QQ 
!QQ 
listOfItemsQQ  
.QQ  !
ExistsQQ! '
(QQ' (
xQQ( )
=>QQ* ,
xQQ- .
.QQ. /
	ProductIdQQ/ 8
==QQ9 ;

newProductQQ< F
.QQF G
	ProductIdQQG P
)QQP Q
)QQQ R
{RR 

newProductSS 
.SS 
QuantitySS '
=SS( )
quantitySS* 2
;SS2 3
listOfItemsTT 
.TT  
AddTT  #
(TT# $

newProductTT$ .
)TT. /
;TT/ 0
}UU 
}VV 
elseWW 
{XX 
varYY 
productYY 
=YY  
_shoppingCartServiceYY 2
.YY2 3

GetProductYY3 =
(YY= >
	productIdYY> G
)YYG H
;YYH I
productZZ 
.ZZ 
QuantityZZ  
=ZZ! "
quantityZZ# +
;ZZ+ ,
listOfItems[[ 
.[[ 
Add[[ 
([[  
product[[  '
)[[' (
;[[( )
}\\ 
string__ 
serializeList__  
=__! "
JsonSerializer__# 1
.__1 2
	Serialize__2 ;
(__; <
listOfItems__< G
)__G H
;__H I
HttpContext`` 
.`` 
Session`` 
.``  
	SetString``  )
(``) *
$str``* 3
,``3 4
serializeList``5 B
)``B C
;``C D
returnaa 
RedirectToActionaa #
(aa# $
$straa$ +
,aa+ ,
$straa- 6
)aa6 7
;aa7 8
}bb 	
[dd 	
HttpGetdd	 
]dd 
[ee 	
	Authorizeee	 
]ee 
publicff 
IActionResultff  
GetShoppingCartItemsff 1
(ff1 2
)ff2 3
{gg 	
decimalhh 

totalPricehh 
=hh  
$numhh! #
;hh# $
varii 
productsii 
=ii 
HttpContextii &
.ii& '
Sessionii' .
.ii. /
	GetStringii/ 8
(ii8 9
$strii9 B
)iiB C
;iiC D
ifjj 
(jj 
productsjj 
==jj 
nulljj  
)jj  !
{kk 
Listll 
<ll 
ShoppingCartItemll %
>ll% &
shoppingCartItemsll' 8
=ll9 :
newll; >
Listll? C
<llC D
ShoppingCartItemllD T
>llT U
(llU V
)llV W
;llW X
returnmm 
Viewmm 
(mm 
shoppingCartItemsmm -
)mm- .
;mm. /
}nn 
elseoo 
{pp 
varqq 
shoppingCartItemsqq %
=qq& '
JsonSerializerqq( 6
.qq6 7
Deserializeqq7 B
<qqB C
ListqqC G
<qqG H
ShoppingCartItemqqH X
>qqX Y
>qqY Z
(qqZ [
productsqq[ c
)qqc d
;qqd e
foreachrr 
(rr 
varrr 
itemrr !
inrr" $
shoppingCartItemsrr% 6
)rr6 7
{ss 

totalPricett 
+=tt !
itemtt" &
.tt& '
Quantitytt' /
*tt0 1
itemtt2 6
.tt6 7
Pricett7 <
;tt< =
}uu 
ViewBagvv 
.vv 

TotalPricevv "
=vv# $

totalPricevv% /
;vv/ 0
returnww 
Viewww 
(ww 
shoppingCartItemsww -
)ww- .
;ww. /
}xx 
}yy 	
[{{ 	$
ValidateAntiForgeryToken{{	 !
]{{! "
[|| 	
HttpPost||	 
]|| 
public}} 
IActionResult}} !
DeleteProductFromCart}} 2
(}}2 3
int}}3 6
id}}7 9
)}}9 :
{~~ 	
var $
productsToRemoveFromCart (
=) *
HttpContext+ 6
.6 7
Session7 >
.> ?
	GetString? H
(H I
$strI R
)R S
;S T
var
ÄÄ 
listOfProducts
ÄÄ 
=
ÄÄ  
JsonSerializer
ÄÄ! /
.
ÄÄ/ 0
Deserialize
ÄÄ0 ;
<
ÄÄ; <
List
ÄÄ< @
<
ÄÄ@ A
ShoppingCartItem
ÄÄA Q
>
ÄÄQ R
>
ÄÄR S
(
ÄÄS T&
productsToRemoveFromCart
ÄÄT l
)
ÄÄl m
;
ÄÄm n
listOfProducts
ÅÅ 
.
ÅÅ 
	RemoveAll
ÅÅ $
(
ÅÅ$ %
x
ÅÅ% &
=>
ÅÅ' )
x
ÅÅ* +
.
ÅÅ+ ,
	ProductId
ÅÅ, 5
==
ÅÅ6 8
id
ÅÅ9 ;
)
ÅÅ; <
;
ÅÅ< =
var
ÇÇ "
listOfProductsAsJson
ÇÇ $
=
ÇÇ% &
JsonSerializer
ÇÇ' 5
.
ÇÇ5 6
	Serialize
ÇÇ6 ?
(
ÇÇ? @
listOfProducts
ÇÇ@ N
)
ÇÇN O
;
ÇÇO P
HttpContext
ÉÉ 
.
ÉÉ 
Session
ÉÉ 
.
ÉÉ  
	SetString
ÉÉ  )
(
ÉÉ) *
$str
ÉÉ* 3
,
ÉÉ3 4"
listOfProductsAsJson
ÉÉ5 I
)
ÉÉI J
;
ÉÉJ K
return
ÑÑ 
RedirectToAction
ÑÑ #
(
ÑÑ# $
$str
ÑÑ$ :
)
ÑÑ: ;
;
ÑÑ; <
}
ÖÖ 	
[
áá 	
HttpPost
áá	 
]
áá 
[
àà 	&
ValidateAntiForgeryToken
àà	 !
]
àà! "
public
ââ 
IActionResult
ââ &
EditShoppingCartQuantity
ââ 5
(
ââ5 6
int
ââ6 9
id
ââ: <
,
ââ< =
int
ââ> A
quantity
ââB J
)
ââJ K
{
ää 	
var
ãã !
productsFromSession
ãã #
=
ãã# $
HttpContext
ãã% 0
.
ãã0 1
Session
ãã1 8
.
ãã8 9
	GetString
ãã9 B
(
ããB C
$str
ããC L
)
ããL M
;
ããM N
var
åå 
listOfProduct
åå 
=
åå 
JsonSerializer
åå  .
.
åå. /
Deserialize
åå/ :
<
åå: ;
List
åå; ?
<
åå? @
ShoppingCartItem
åå@ P
>
ååP Q
>
ååQ R
(
ååR S!
productsFromSession
ååS f
)
ååf g
;
ååg h
listOfProduct
çç 
.
çç 
Where
çç 
(
çç  
x
çç  !
=>
çç" $
x
çç% &
.
çç& '
	ProductId
çç' 0
==
çç1 3
id
çç4 6
)
çç6 7
.
çç7 8
FirstOrDefault
çç8 F
(
ççF G
)
ççG H
.
ççH I
Quantity
ççI Q
=
ççR S
quantity
ççT \
;
çç\ ]
var
éé "
listOfProductsAsJson
éé $
=
éé% &
JsonSerializer
éé' 5
.
éé5 6
	Serialize
éé6 ?
(
éé? @
listOfProduct
éé@ M
)
ééM N
;
ééN O
HttpContext
èè 
.
èè 
Session
èè 
.
èè  
	SetString
èè  )
(
èè) *
$str
èè* 3
,
èè3 4"
listOfProductsAsJson
èè5 I
)
èèI J
;
èèJ K
return
êê 
Ok
êê 
(
êê 
)
êê 
;
êê 
}
ëë 	
[
ìì 	
HttpGet
ìì	 
]
ìì 
public
îî 
IActionResult
îî 
AddOrder
îî %
(
îî% &
List
îî& *
<
îî* +
ShoppingCartItem
îî+ ;
>
îî; <
shoppingCartItems
îî= N
)
îîN O
{
ïï 	
var
ññ !
productsFromSession
ññ #
=
ññ$ %
HttpContext
ññ& 1
.
ññ1 2
Session
ññ2 9
.
ññ9 :
	GetString
ññ: C
(
ññC D
$str
ññD M
)
ññM N
;
ññN O
var
óó 
listOfProduct
óó 
=
óó 
JsonSerializer
óó  .
.
óó. /
Deserialize
óó/ :
<
óó: ;
List
óó; ?
<
óó? @
ShoppingCartItem
óó@ P
>
óóP Q
>
óóQ R
(
óóR S!
productsFromSession
óóS f
)
óóf g
;
óóg h
var
òò 
userId
òò 
=
òò 
_signInManager
òò '
.
òò' (
UserManager
òò( 3
.
òò3 4
	GetUserId
òò4 =
(
òò= >
User
òò> B
)
òòB C
;
òòC D
var
ôô 
vm
ôô 
=
ôô "
_shoppingCartService
ôô *
.
ôô* +
AddOrder
ôô+ 3
(
ôô3 4
listOfProduct
ôô4 A
,
ôôA B
userId
ôôC I
)
ôôI J
;
ôôJ K
return
öö 
View
öö 
(
öö 
vm
öö 
)
öö 
;
öö 
}
õõ 	
[
ùù 	
HttpPost
ùù	 
]
ùù 
[
ûû 	&
ValidateAntiForgeryToken
ûû	 !
]
ûû! "
public
üü 
IActionResult
üü 
AddUserData
üü (
(
üü( )
OrderSummaryVM
üü) 7
orderSummaryVM
üü8 F
)
üüF G
{
†† 	
var
°° !
productsFromSession
°° #
=
°°$ %
HttpContext
°°& 1
.
°°1 2
Session
°°2 9
.
°°9 :
	GetString
°°: C
(
°°C D
$str
°°D M
)
°°M N
;
°°N O
var
¢¢ 
listOfProduct
¢¢ 
=
¢¢ 
JsonSerializer
¢¢  .
.
¢¢. /
Deserialize
¢¢/ :
<
¢¢: ;
List
¢¢; ?
<
¢¢? @
ShoppingCartItem
¢¢@ P
>
¢¢P Q
>
¢¢Q R
(
¢¢R S!
productsFromSession
¢¢S f
)
¢¢f g
;
¢¢g h
var
££ 
userId
££ 
=
££ 
_signInManager
££ '
.
££' (
UserManager
££( 3
.
££3 4
	GetUserId
££4 =
(
££= >
User
££> B
)
££B C
;
££C D
var
§§ 
orderToConfirm
§§ 
=
§§  "
_shoppingCartService
§§! 5
.
§§5 6
AddDeliveryData
§§6 E
(
§§E F
userId
§§F L
,
§§L M
orderSummaryVM
§§N \
)
§§\ ]
;
§§] ^
HttpContext
•• 
.
•• 
Session
•• 
.
••  
Clear
••  %
(
••% &
)
••& '
;
••' (
return
¶¶ 
RedirectToAction
¶¶ #
(
¶¶# $
$str
¶¶$ +
,
¶¶+ ,
$str
¶¶, 5
)
¶¶5 6
;
¶¶6 7
}
ßß 	
}
®® 
}©© Ê 
TC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Data\ApplicationDbContext.cs
	namespace 	
LolipopSquare
 
. 
Data 
{ 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
{ 
public		  
ApplicationDbContext		 #
(		# $
DbContextOptions		$ 4
options		5 <
)		< =
:		> ?
base		@ D
(		D E
options		E L
)		L M
{		M N
}		N O
public

 
DbSet

 
<

 
Product

 
>

 
Products

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
DbSet 
< 
Category 
> 

Categories )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DbSet 
< 
Image 
> 
Images "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
ApplicationUser $
>$ %
ApplicationUser& 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
DbSet 
< 
LolipopSquare "
." #
Models# )
.) *

ViewModels* 4
.4 5
ProjectRolesVM5 C
>C D
?D E
ProjectRolesVMF T
{U V
getW Z
;Z [
set\ _
;_ `
}a b
public 
DbSet 
< 
Order 
> 
Orders "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
ProductOrder !
>! "
ProductOrder# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
Entity 
<  
ProductOrder  ,
>, -
(- .
). /
. 
HasKey 
( 
po 
=> 
new 
{ 
po  "
." #
	ProductId# ,
,, -
po. 0
.0 1
OrderID1 8
}9 :
): ;
;; <
modelBuilder 
. 
Entity 
<  
ProductOrder  ,
>, -
(- .
). /
. 
HasOne 
( 
po 
=> 
po  
.  !
Order! &
)& '
. 
WithMany 
( 
b 
=> 
b  
.  !
ProductOrders! .
). /
. 
HasForeignKey 
( 
o  
=>! #
o$ %
.% &
OrderID& -
)- .
;. /
modelBuilder 
. 
Entity 
<  
ProductOrder  ,
>, -
(- .
). /
. 
HasOne 
( 
p 
=> 
p 
. 
Product &
)& '
. 
WithMany 
( 
o 
=> 
o  
.  !
ProductOrders! .
). /
. 
HasForeignKey 
( 
x  
=>! #
x$ %
.% &
	ProductId& /
)/ 0
;0 1
}   	
}!! 
}"" á	
UC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Interface\ICategoryService.cs
	namespace 	
LolipopSquare
 
. 
	Interface !
{ 
public 

	interface 
ICategoryService %
{ 
List 
< 
Category 
>  
DisplayAllCategories +
(+ ,
), -
;- .
EditCategoryVM		 
GetCategoryById		 &
(		& '
int		' *
id		+ -
)		- .
;		. /
Category

 
UpdateCategory

 
(

  
EditCategoryVM

  .
editCategoryVM

/ =
)

= >
;

> ?
Category 
AddNewCategory 
(  
AddNewCategoryVM  0
newCategoryVM1 >
)> ?
;? @
DeleteCategoryVM $
GetCategoryByIdForDelete 1
(1 2
int2 5
id6 8
)8 9
;9 :
void 
DeleteCategory 
( 
int 
id  "
)" #
;# $
} 
} ¯
YC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Interface\IOrderHistoryService.cs
	namespace 	
LolipopSquare
 
. 
	Interface !
{ 
public 

	interface  
IOrderHistoryService )
{ 
List 
< 
OrderHistoryVM 
> 
DisplayOrderHistory 0
(0 1
string1 7
userId8 >
)> ?
;? @
} 
}		 ≤
TC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Interface\IProductService.cs
	namespace 	
LolipopSquare
 
. 
	Interface !
{ 
public 

	interface 
IProductService $
{ 
AllProductsVM 
GetAllProducts $
($ %
int% (
pageSize) 1
,1 2
int3 6

actualPage7 A
,A B
stringC I
searchJ P
,P Q
stringR X
categoryY a
)a b
;b c
ProductImageVM		 
GetProductById		 %
(		% &
int		& )
id		* ,
)		, -
;		- .
void

 
UpdateProduct

 
(

 
ProductImageVM

 )
productImageVM

* 8
)

8 9
;

9 :
Product 
AddNewProduct 
( 
AddNewProductVM -
	productVM. 7
)7 8
;8 9
AddNewProductVM 
GetNewProductVM '
(' (
)( )
;) *
void 
DeleteProduct 
( 
int 
id !
)! "
;" #
DeleteProductVM #
GetProductByIdForDelete /
(/ 0
int0 3
id4 6
)6 7
;7 8
Task 
< 
ProductDetailsVM 
> 
GetProductDetails 0
(0 1
int1 4
id5 7
)7 8
;8 9
void 
DeleteSingleImg 
( 
int  
id! #
)# $
;$ %
} 
} â
YC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Interface\IShoppingCartService.cs
	namespace 	
LolipopSquare
 
. 
	Interface !
{ 
public 

	interface  
IShoppingCartService )
{		 
ShoppingCartItem

 

GetProduct

 #
(

# $
int

$ '
id

( *
)

* +
;

+ ,
OrderSummaryVM 
AddOrder 
(  
List  $
<$ %
ShoppingCartItem% 5
>5 6
shoppingCartItems7 H
,H I
stringJ P
userIdQ W
)W X
;X Y
Order 
AddDeliveryData 
( 
string $
userId% +
,+ ,
OrderSummaryVM- ;
orderSummaryVM< J
)J K
;K L
} 
} „0
bC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220710125419_InitialCreate.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
nullableG O
:O P
falseQ V
)V W
,W X
Price 
= 
table !
.! "
Column" (
<( )
decimal) 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
nullableI Q
:Q R
falseS X
)X Y
,Y Z
Description 
=  !
table" '
.' (
Column( .
<. /
string/ 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _
Availability  
=! "
table# (
.( )
Column) /
</ 0
bool0 4
>4 5
(5 6
type6 :
:: ;
$str< A
,A B
nullableC K
:K L
falseM R
)R S
,S T
Image 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
nullableH P
:P Q
falseR W
)W X
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
Id; =
)= >
;> ?
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str "
," #
columns 
: 
table 
=> !
new" %
{ 
Id   
=   
table   
.   
Column   %
<  % &
int  & )
>  ) *
(  * +
type  + /
:  / 0
$str  1 6
,  6 7
nullable  8 @
:  @ A
false  B G
)  G H
.!! 

Annotation!! #
(!!# $
$str!!$ 8
,!!8 9
$str!!: @
)!!@ A
,!!A B
Name"" 
="" 
table""  
.""  !
Column""! '
<""' (
string""( .
>"". /
(""/ 0
type""0 4
:""4 5
$str""6 E
,""E F
nullable""G O
:""O P
false""Q V
)""V W
,""W X
	ProductID## 
=## 
table##  %
.##% &
Column##& ,
<##, -
int##- 0
>##0 1
(##1 2
type##2 6
:##6 7
$str##8 =
,##= >
nullable##? G
:##G H
false##I N
)##N O
}$$ 
,$$ 
constraints%% 
:%% 
table%% "
=>%%# %
{&& 
table'' 
.'' 

PrimaryKey'' $
(''$ %
$str''% 4
,''4 5
x''6 7
=>''8 :
x''; <
.''< =
Id''= ?
)''? @
;''@ A
table(( 
.(( 

ForeignKey(( $
((($ %
name)) 
:)) 
$str)) @
,))@ A
column** 
:** 
x**  !
=>**" $
x**% &
.**& '
	ProductID**' 0
,**0 1
principalTable++ &
:++& '
$str++( 2
,++2 3
principalColumn,, '
:,,' (
$str,,) -
,,,- .
onDelete--  
:--  !
ReferentialAction--" 3
.--3 4
Cascade--4 ;
)--; <
;--< =
}.. 
).. 
;.. 
migrationBuilder00 
.00 
CreateIndex00 (
(00( )
name11 
:11 
$str11 /
,11/ 0
table22 
:22 
$str22 #
,22# $
column33 
:33 
$str33 #
,33# $
unique44 
:44 
true44 
)44 
;44 
}55 	
	protected77 
override77 
void77 
Down77  $
(77$ %
MigrationBuilder77% 5
migrationBuilder776 F
)77F G
{88 	
migrationBuilder99 
.99 
	DropTable99 &
(99& '
name:: 
::: 
$str:: "
)::" #
;::# $
migrationBuilder<< 
.<< 
	DropTable<< &
(<<& '
name== 
:== 
$str==  
)==  !
;==! "
}>> 	
}?? 
}@@ »'
rC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220710130141_InitialCreate_changeRelations.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class )
InitialCreate_changeRelations 6
:7 8
	Migration9 B
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str 8
,8 9
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str /
,/ 0
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str !
,! "
table 
: 
$str #
)# $
;$ %
migrationBuilder 
. 
	AddColumn &
<& '
int' *
>* +
(+ ,
name 
: 
$str "
," #
table 
: 
$str !
,! "
type 
: 
$str 
, 
nullable 
: 
false 
,  
defaultValue 
: 
$num 
)  
;  !
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str .
,. /
table   
:   
$str   !
,  ! "
column!! 
:!! 
$str!! $
,!!$ %
unique"" 
:"" 
true"" 
)"" 
;"" 
migrationBuilder$$ 
.$$ 
AddForeignKey$$ *
($$* +
name%% 
:%% 
$str%% 9
,%%9 :
table&& 
:&& 
$str&& !
,&&! "
column'' 
:'' 
$str'' $
,''$ %
principalTable(( 
:(( 
$str((  ,
,((, -
principalColumn)) 
:))  
$str))! %
,))% &
onDelete** 
:** 
ReferentialAction** +
.**+ ,
Cascade**, 3
)**3 4
;**4 5
}++ 	
	protected-- 
override-- 
void-- 
Down--  $
(--$ %
MigrationBuilder--% 5
migrationBuilder--6 F
)--F G
{.. 	
migrationBuilder// 
.// 
DropForeignKey// +
(//+ ,
name00 
:00 
$str00 9
,009 :
table11 
:11 
$str11 !
)11! "
;11" #
migrationBuilder33 
.33 
	DropIndex33 &
(33& '
name44 
:44 
$str44 .
,44. /
table55 
:55 
$str55 !
)55! "
;55" #
migrationBuilder77 
.77 

DropColumn77 '
(77' (
name88 
:88 
$str88 "
,88" #
table99 
:99 
$str99 !
)99! "
;99" #
migrationBuilder;; 
.;; 
	AddColumn;; &
<;;& '
int;;' *
>;;* +
(;;+ ,
name<< 
:<< 
$str<< !
,<<! "
table== 
:== 
$str== #
,==# $
type>> 
:>> 
$str>> 
,>> 
nullable?? 
:?? 
false?? 
,??  
defaultValue@@ 
:@@ 
$num@@ 
)@@  
;@@  !
migrationBuilderBB 
.BB 
CreateIndexBB (
(BB( )
nameCC 
:CC 
$strCC /
,CC/ 0
tableDD 
:DD 
$strDD #
,DD# $
columnEE 
:EE 
$strEE #
,EE# $
uniqueFF 
:FF 
trueFF 
)FF 
;FF 
migrationBuilderHH 
.HH 
AddForeignKeyHH *
(HH* +
nameII 
:II 
$strII 8
,II8 9
tableJJ 
:JJ 
$strJJ #
,JJ# $
columnKK 
:KK 
$strKK #
,KK# $
principalTableLL 
:LL 
$strLL  *
,LL* +
principalColumnMM 
:MM  
$strMM! %
,MM% &
onDeleteNN 
:NN 
ReferentialActionNN +
.NN+ ,
CascadeNN, 3
)NN3 4
;NN4 5
}OO 	
}PP 
}QQ Ø#
wC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220713141255_ChangeProductModelAndAddImageModel.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class .
"ChangeProductModelAndAddImageModel ;
:< =
	Migration> G
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
	AddColumn &
<& '
int' *
>* +
(+ ,
name 
: 
$str 
,  
table 
: 
$str !
,! "
type 
: 
$str 
, 
nullable 
: 
true 
) 
;  
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B

ImageTitle 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
type6 :
:: ;
$str< K
,K L
nullableM U
:U V
falseW \
)\ ]
,] ^
	ImageData 
= 
table  %
.% &
Column& ,
<, -
byte- 1
[1 2
]2 3
>3 4
(4 5
type5 9
:9 :
$str; K
,K L
nullableM U
:U V
falseW \
)\ ]
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 0
,0 1
x2 3
=>4 6
x7 8
.8 9
Id9 ;
); <
;< =
} 
) 
; 
migrationBuilder   
.   
CreateIndex   (
(  ( )
name!! 
:!! 
$str!! +
,!!+ ,
table"" 
:"" 
$str"" !
,""! "
column## 
:## 
$str## !
)##! "
;##" #
migrationBuilder%% 
.%% 
AddForeignKey%% *
(%%* +
name&& 
:&& 
$str&& 2
,&&2 3
table'' 
:'' 
$str'' !
,''! "
column(( 
:(( 
$str(( !
,((! "
principalTable)) 
:)) 
$str))  (
,))( )
principalColumn** 
:**  
$str**! %
)**% &
;**& '
}++ 	
	protected-- 
override-- 
void-- 
Down--  $
(--$ %
MigrationBuilder--% 5
migrationBuilder--6 F
)--F G
{.. 	
migrationBuilder// 
.// 
DropForeignKey// +
(//+ ,
name00 
:00 
$str00 2
,002 3
table11 
:11 
$str11 !
)11! "
;11" #
migrationBuilder33 
.33 
	DropTable33 &
(33& '
name44 
:44 
$str44 
)44 
;44  
migrationBuilder66 
.66 
	DropIndex66 &
(66& '
name77 
:77 
$str77 +
,77+ ,
table88 
:88 
$str88 !
)88! "
;88" #
migrationBuilder:: 
.:: 

DropColumn:: '
(::' (
name;; 
:;; 
$str;; 
,;;  
table<< 
:<< 
$str<< !
)<<! "
;<<" #
}== 	
}>> 
}?? å,
dC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220718204648_ChangeRelations.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class 
ChangeRelations (
:) *
	Migration+ 4
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str 2
,2 3
table 
: 
$str !
)! "
;" #
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str .
,. /
table 
: 
$str !
)! "
;" #
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str +
,+ ,
table 
: 
$str !
)! "
;" #
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str 
,  
table 
: 
$str !
)! "
;" #
migrationBuilder 
. 
	AddColumn &
<& '
int' *
>* +
(+ ,
name 
: 
$str !
,! "
table 
: 
$str 
,  
type 
: 
$str 
, 
nullable 
: 
true 
) 
;  
migrationBuilder!! 
.!! 
CreateIndex!! (
(!!( )
name"" 
:"" 
$str"" .
,"". /
table## 
:## 
$str## !
,##! "
column$$ 
:$$ 
$str$$ $
)$$$ %
;$$% &
migrationBuilder&& 
.&& 
CreateIndex&& (
(&&( )
name'' 
:'' 
$str'' +
,''+ ,
table(( 
:(( 
$str(( 
,((  
column)) 
:)) 
$str)) #
)))# $
;))$ %
migrationBuilder++ 
.++ 
AddForeignKey++ *
(++* +
name,, 
:,, 
$str,, 4
,,,4 5
table-- 
:-- 
$str-- 
,--  
column.. 
:.. 
$str.. #
,..# $
principalTable// 
:// 
$str//  *
,//* +
principalColumn00 
:00  
$str00! %
)00% &
;00& '
}11 	
	protected33 
override33 
void33 
Down33  $
(33$ %
MigrationBuilder33% 5
migrationBuilder336 F
)33F G
{44 	
migrationBuilder55 
.55 
DropForeignKey55 +
(55+ ,
name66 
:66 
$str66 4
,664 5
table77 
:77 
$str77 
)77  
;77  !
migrationBuilder99 
.99 
	DropIndex99 &
(99& '
name:: 
::: 
$str:: .
,::. /
table;; 
:;; 
$str;; !
);;! "
;;;" #
migrationBuilder== 
.== 
	DropIndex== &
(==& '
name>> 
:>> 
$str>> +
,>>+ ,
table?? 
:?? 
$str?? 
)??  
;??  !
migrationBuilderAA 
.AA 

DropColumnAA '
(AA' (
nameBB 
:BB 
$strBB !
,BB! "
tableCC 
:CC 
$strCC 
)CC  
;CC  !
migrationBuilderEE 
.EE 
	AddColumnEE &
<EE& '
intEE' *
>EE* +
(EE+ ,
nameFF 
:FF 
$strFF 
,FF  
tableGG 
:GG 
$strGG !
,GG! "
typeHH 
:HH 
$strHH 
,HH 
nullableII 
:II 
trueII 
)II 
;II  
migrationBuilderKK 
.KK 
CreateIndexKK (
(KK( )
nameLL 
:LL 
$strLL .
,LL. /
tableMM 
:MM 
$strMM !
,MM! "
columnNN 
:NN 
$strNN $
,NN$ %
uniqueOO 
:OO 
trueOO 
)OO 
;OO 
migrationBuilderQQ 
.QQ 
CreateIndexQQ (
(QQ( )
nameRR 
:RR 
$strRR +
,RR+ ,
tableSS 
:SS 
$strSS !
,SS! "
columnTT 
:TT 
$strTT !
)TT! "
;TT" #
migrationBuilderVV 
.VV 
AddForeignKeyVV *
(VV* +
nameWW 
:WW 
$strWW 2
,WW2 3
tableXX 
:XX 
$strXX !
,XX! "
columnYY 
:YY 
$strYY !
,YY! "
principalTableZZ 
:ZZ 
$strZZ  (
,ZZ( )
principalColumn[[ 
:[[  
$str[[! %
)[[% &
;[[& '
}\\ 	
}]] 
}^^ ©»
wC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220803125410_AddingScaffoldIdentityClassLibrary.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class .
"AddingScaffoldIdentityClassLibrary ;
:< =
	Migration> G
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
	maxLengthK T
:T U
$numV Y
,Y Z
nullable[ c
:c d
truee i
)i j
,j k
NormalizedUserName   &
=  ' (
table  ) .
.  . /
Column  / 5
<  5 6
string  6 <
>  < =
(  = >
type  > B
:  B C
$str  D S
,  S T
	maxLength  U ^
:  ^ _
$num  ` c
,  c d
nullable  e m
:  m n
true  o s
)  s t
,  t u
Email!! 
=!! 
table!! !
.!!! "
Column!!" (
<!!( )
string!!) /
>!!/ 0
(!!0 1
type!!1 5
:!!5 6
$str!!7 F
,!!F G
	maxLength!!H Q
:!!Q R
$num!!S V
,!!V W
nullable!!X `
:!!` a
true!!b f
)!!f g
,!!g h
NormalizedEmail"" #
=""$ %
table""& +
.""+ ,
Column"", 2
<""2 3
string""3 9
>""9 :
("": ;
type""; ?
:""? @
$str""A P
,""P Q
	maxLength""R [
:""[ \
$num""] `
,""` a
nullable""b j
:""j k
true""l p
)""p q
,""q r
EmailConfirmed## "
=### $
table##% *
.##* +
Column##+ 1
<##1 2
bool##2 6
>##6 7
(##7 8
type##8 <
:##< =
$str##> C
,##C D
nullable##E M
:##M N
false##O T
)##T U
,##U V
PasswordHash$$  
=$$! "
table$$# (
.$$( )
Column$$) /
<$$/ 0
string$$0 6
>$$6 7
($$7 8
type$$8 <
:$$< =
$str$$> M
,$$M N
nullable$$O W
:$$W X
true$$Y ]
)$$] ^
,$$^ _
SecurityStamp%% !
=%%" #
table%%$ )
.%%) *
Column%%* 0
<%%0 1
string%%1 7
>%%7 8
(%%8 9
type%%9 =
:%%= >
$str%%? N
,%%N O
nullable%%P X
:%%X Y
true%%Z ^
)%%^ _
,%%_ `
ConcurrencyStamp&& $
=&&% &
table&&' ,
.&&, -
Column&&- 3
<&&3 4
string&&4 :
>&&: ;
(&&; <
type&&< @
:&&@ A
$str&&B Q
,&&Q R
nullable&&S [
:&&[ \
true&&] a
)&&a b
,&&b c
PhoneNumber'' 
=''  !
table''" '
.''' (
Column''( .
<''. /
string''/ 5
>''5 6
(''6 7
type''7 ;
:''; <
$str''= L
,''L M
nullable''N V
:''V W
true''X \
)''\ ]
,''] ^ 
PhoneNumberConfirmed(( (
=(() *
table((+ 0
.((0 1
Column((1 7
<((7 8
bool((8 <
>((< =
(((= >
type((> B
:((B C
$str((D I
,((I J
nullable((K S
:((S T
false((U Z
)((Z [
,(([ \
TwoFactorEnabled)) $
=))% &
table))' ,
.)), -
Column))- 3
<))3 4
bool))4 8
>))8 9
())9 :
type)): >
:))> ?
$str))@ E
,))E F
nullable))G O
:))O P
false))Q V
)))V W
,))W X

LockoutEnd** 
=**  
table**! &
.**& '
Column**' -
<**- .
DateTimeOffset**. <
>**< =
(**= >
type**> B
:**B C
$str**D T
,**T U
nullable**V ^
:**^ _
true**` d
)**d e
,**e f
LockoutEnabled++ "
=++# $
table++% *
.++* +
Column+++ 1
<++1 2
bool++2 6
>++6 7
(++7 8
type++8 <
:++< =
$str++> C
,++C D
nullable++E M
:++M N
false++O T
)++T U
,++U V
AccessFailedCount,, %
=,,& '
table,,( -
.,,- .
Column,,. 4
<,,4 5
int,,5 8
>,,8 9
(,,9 :
type,,: >
:,,> ?
$str,,@ E
,,,E F
nullable,,G O
:,,O P
false,,Q V
),,V W
}-- 
,-- 
constraints.. 
:.. 
table.. "
=>..# %
{// 
table00 
.00 

PrimaryKey00 $
(00$ %
$str00% 5
,005 6
x007 8
=>009 ;
x00< =
.00= >
Id00> @
)00@ A
;00A B
}11 
)11 
;11 
migrationBuilder33 
.33 
CreateTable33 (
(33( )
name44 
:44 
$str44 (
,44( )
columns55 
:55 
table55 
=>55 !
new55" %
{66 
Id77 
=77 
table77 
.77 
Column77 %
<77% &
int77& )
>77) *
(77* +
type77+ /
:77/ 0
$str771 6
,776 7
nullable778 @
:77@ A
false77B G
)77G H
.88 

Annotation88 #
(88# $
$str88$ 8
,888 9
$str88: @
)88@ A
,88A B
RoleId99 
=99 
table99 "
.99" #
Column99# )
<99) *
string99* 0
>990 1
(991 2
type992 6
:996 7
$str998 G
,99G H
nullable99I Q
:99Q R
false99S X
)99X Y
,99Y Z
	ClaimType:: 
=:: 
table::  %
.::% &
Column::& ,
<::, -
string::- 3
>::3 4
(::4 5
type::5 9
:::9 :
$str::; J
,::J K
nullable::L T
:::T U
true::V Z
)::Z [
,::[ \

ClaimValue;; 
=;;  
table;;! &
.;;& '
Column;;' -
<;;- .
string;;. 4
>;;4 5
(;;5 6
type;;6 :
:;;: ;
$str;;< K
,;;K L
nullable;;M U
:;;U V
true;;W [
);;[ \
}<< 
,<< 
constraints== 
:== 
table== "
=>==# %
{>> 
table?? 
.?? 

PrimaryKey?? $
(??$ %
$str??% :
,??: ;
x??< =
=>??> @
x??A B
.??B C
Id??C E
)??E F
;??F G
table@@ 
.@@ 

ForeignKey@@ $
(@@$ %
nameAA 
:AA 
$strAA F
,AAF G
columnBB 
:BB 
xBB  !
=>BB" $
xBB% &
.BB& '
RoleIdBB' -
,BB- .
principalTableCC &
:CC& '
$strCC( 5
,CC5 6
principalColumnDD '
:DD' (
$strDD) -
,DD- .
onDeleteEE  
:EE  !
ReferentialActionEE" 3
.EE3 4
CascadeEE4 ;
)EE; <
;EE< =
}FF 
)FF 
;FF 
migrationBuilderHH 
.HH 
CreateTableHH (
(HH( )
nameII 
:II 
$strII (
,II( )
columnsJJ 
:JJ 
tableJJ 
=>JJ !
newJJ" %
{KK 
IdLL 
=LL 
tableLL 
.LL 
ColumnLL %
<LL% &
intLL& )
>LL) *
(LL* +
typeLL+ /
:LL/ 0
$strLL1 6
,LL6 7
nullableLL8 @
:LL@ A
falseLLB G
)LLG H
.MM 

AnnotationMM #
(MM# $
$strMM$ 8
,MM8 9
$strMM: @
)MM@ A
,MMA B
UserIdNN 
=NN 
tableNN "
.NN" #
ColumnNN# )
<NN) *
stringNN* 0
>NN0 1
(NN1 2
typeNN2 6
:NN6 7
$strNN8 G
,NNG H
nullableNNI Q
:NNQ R
falseNNS X
)NNX Y
,NNY Z
	ClaimTypeOO 
=OO 
tableOO  %
.OO% &
ColumnOO& ,
<OO, -
stringOO- 3
>OO3 4
(OO4 5
typeOO5 9
:OO9 :
$strOO; J
,OOJ K
nullableOOL T
:OOT U
trueOOV Z
)OOZ [
,OO[ \

ClaimValuePP 
=PP  
tablePP! &
.PP& '
ColumnPP' -
<PP- .
stringPP. 4
>PP4 5
(PP5 6
typePP6 :
:PP: ;
$strPP< K
,PPK L
nullablePPM U
:PPU V
truePPW [
)PP[ \
}QQ 
,QQ 
constraintsRR 
:RR 
tableRR "
=>RR# %
{SS 
tableTT 
.TT 

PrimaryKeyTT $
(TT$ %
$strTT% :
,TT: ;
xTT< =
=>TT> @
xTTA B
.TTB C
IdTTC E
)TTE F
;TTF G
tableUU 
.UU 

ForeignKeyUU $
(UU$ %
nameVV 
:VV 
$strVV F
,VVF G
columnWW 
:WW 
xWW  !
=>WW" $
xWW% &
.WW& '
UserIdWW' -
,WW- .
principalTableXX &
:XX& '
$strXX( 5
,XX5 6
principalColumnYY '
:YY' (
$strYY) -
,YY- .
onDeleteZZ  
:ZZ  !
ReferentialActionZZ" 3
.ZZ3 4
CascadeZZ4 ;
)ZZ; <
;ZZ< =
}[[ 
)[[ 
;[[ 
migrationBuilder]] 
.]] 
CreateTable]] (
(]]( )
name^^ 
:^^ 
$str^^ (
,^^( )
columns__ 
:__ 
table__ 
=>__ !
new__" %
{`` 
LoginProvideraa !
=aa" #
tableaa$ )
.aa) *
Columnaa* 0
<aa0 1
stringaa1 7
>aa7 8
(aa8 9
typeaa9 =
:aa= >
$straa? N
,aaN O
	maxLengthaaP Y
:aaY Z
$numaa[ ^
,aa^ _
nullableaa` h
:aah i
falseaaj o
)aao p
,aap q
ProviderKeybb 
=bb  !
tablebb" '
.bb' (
Columnbb( .
<bb. /
stringbb/ 5
>bb5 6
(bb6 7
typebb7 ;
:bb; <
$strbb= L
,bbL M
	maxLengthbbN W
:bbW X
$numbbY \
,bb\ ]
nullablebb^ f
:bbf g
falsebbh m
)bbm n
,bbn o
ProviderDisplayNamecc '
=cc( )
tablecc* /
.cc/ 0
Columncc0 6
<cc6 7
stringcc7 =
>cc= >
(cc> ?
typecc? C
:ccC D
$strccE T
,ccT U
nullableccV ^
:cc^ _
truecc` d
)ccd e
,cce f
UserIddd 
=dd 
tabledd "
.dd" #
Columndd# )
<dd) *
stringdd* 0
>dd0 1
(dd1 2
typedd2 6
:dd6 7
$strdd8 G
,ddG H
nullableddI Q
:ddQ R
falseddS X
)ddX Y
}ee 
,ee 
constraintsff 
:ff 
tableff "
=>ff# %
{gg 
tablehh 
.hh 

PrimaryKeyhh $
(hh$ %
$strhh% :
,hh: ;
xhh< =
=>hh> @
newhhA D
{hhE F
xhhG H
.hhH I
LoginProviderhhI V
,hhV W
xhhX Y
.hhY Z
ProviderKeyhhZ e
}hhf g
)hhg h
;hhh i
tableii 
.ii 

ForeignKeyii $
(ii$ %
namejj 
:jj 
$strjj F
,jjF G
columnkk 
:kk 
xkk  !
=>kk" $
xkk% &
.kk& '
UserIdkk' -
,kk- .
principalTablell &
:ll& '
$strll( 5
,ll5 6
principalColumnmm '
:mm' (
$strmm) -
,mm- .
onDeletenn  
:nn  !
ReferentialActionnn" 3
.nn3 4
Cascadenn4 ;
)nn; <
;nn< =
}oo 
)oo 
;oo 
migrationBuilderqq 
.qq 
CreateTableqq (
(qq( )
namerr 
:rr 
$strrr '
,rr' (
columnsss 
:ss 
tabless 
=>ss !
newss" %
{tt 
UserIduu 
=uu 
tableuu "
.uu" #
Columnuu# )
<uu) *
stringuu* 0
>uu0 1
(uu1 2
typeuu2 6
:uu6 7
$struu8 G
,uuG H
nullableuuI Q
:uuQ R
falseuuS X
)uuX Y
,uuY Z
RoleIdvv 
=vv 
tablevv "
.vv" #
Columnvv# )
<vv) *
stringvv* 0
>vv0 1
(vv1 2
typevv2 6
:vv6 7
$strvv8 G
,vvG H
nullablevvI Q
:vvQ R
falsevvS X
)vvX Y
}ww 
,ww 
constraintsxx 
:xx 
tablexx "
=>xx# %
{yy 
tablezz 
.zz 

PrimaryKeyzz $
(zz$ %
$strzz% 9
,zz9 :
xzz; <
=>zz= ?
newzz@ C
{zzD E
xzzF G
.zzG H
UserIdzzH N
,zzN O
xzzP Q
.zzQ R
RoleIdzzR X
}zzY Z
)zzZ [
;zz[ \
table{{ 
.{{ 

ForeignKey{{ $
({{$ %
name|| 
:|| 
$str|| E
,||E F
column}} 
:}} 
x}}  !
=>}}" $
x}}% &
.}}& '
RoleId}}' -
,}}- .
principalTable~~ &
:~~& '
$str~~( 5
,~~5 6
principalColumn '
:' (
$str) -
,- .
onDelete
ÄÄ  
:
ÄÄ  !
ReferentialAction
ÄÄ" 3
.
ÄÄ3 4
Cascade
ÄÄ4 ;
)
ÄÄ; <
;
ÄÄ< =
table
ÅÅ 
.
ÅÅ 

ForeignKey
ÅÅ $
(
ÅÅ$ %
name
ÇÇ 
:
ÇÇ 
$str
ÇÇ E
,
ÇÇE F
column
ÉÉ 
:
ÉÉ 
x
ÉÉ  !
=>
ÉÉ" $
x
ÉÉ% &
.
ÉÉ& '
UserId
ÉÉ' -
,
ÉÉ- .
principalTable
ÑÑ &
:
ÑÑ& '
$str
ÑÑ( 5
,
ÑÑ5 6
principalColumn
ÖÖ '
:
ÖÖ' (
$str
ÖÖ) -
,
ÖÖ- .
onDelete
ÜÜ  
:
ÜÜ  !
ReferentialAction
ÜÜ" 3
.
ÜÜ3 4
Cascade
ÜÜ4 ;
)
ÜÜ; <
;
ÜÜ< =
}
áá 
)
áá 
;
áá 
migrationBuilder
ââ 
.
ââ 
CreateTable
ââ (
(
ââ( )
name
ää 
:
ää 
$str
ää (
,
ää( )
columns
ãã 
:
ãã 
table
ãã 
=>
ãã !
new
ãã" %
{
åå 
UserId
çç 
=
çç 
table
çç "
.
çç" #
Column
çç# )
<
çç) *
string
çç* 0
>
çç0 1
(
çç1 2
type
çç2 6
:
çç6 7
$str
çç8 G
,
ççG H
nullable
ççI Q
:
ççQ R
false
ççS X
)
ççX Y
,
ççY Z
LoginProvider
éé !
=
éé" #
table
éé$ )
.
éé) *
Column
éé* 0
<
éé0 1
string
éé1 7
>
éé7 8
(
éé8 9
type
éé9 =
:
éé= >
$str
éé? N
,
ééN O
	maxLength
ééP Y
:
ééY Z
$num
éé[ ^
,
éé^ _
nullable
éé` h
:
ééh i
false
ééj o
)
ééo p
,
éép q
Name
èè 
=
èè 
table
èè  
.
èè  !
Column
èè! '
<
èè' (
string
èè( .
>
èè. /
(
èè/ 0
type
èè0 4
:
èè4 5
$str
èè6 E
,
èèE F
	maxLength
èèG P
:
èèP Q
$num
èèR U
,
èèU V
nullable
èèW _
:
èè_ `
false
èèa f
)
èèf g
,
èèg h
Value
êê 
=
êê 
table
êê !
.
êê! "
Column
êê" (
<
êê( )
string
êê) /
>
êê/ 0
(
êê0 1
type
êê1 5
:
êê5 6
$str
êê7 F
,
êêF G
nullable
êêH P
:
êêP Q
true
êêR V
)
êêV W
}
ëë 
,
ëë 
constraints
íí 
:
íí 
table
íí "
=>
íí# %
{
ìì 
table
îî 
.
îî 

PrimaryKey
îî $
(
îî$ %
$str
îî% :
,
îî: ;
x
îî< =
=>
îî> @
new
îîA D
{
îîE F
x
îîG H
.
îîH I
UserId
îîI O
,
îîO P
x
îîQ R
.
îîR S
LoginProvider
îîS `
,
îî` a
x
îîb c
.
îîc d
Name
îîd h
}
îîi j
)
îîj k
;
îîk l
table
ïï 
.
ïï 

ForeignKey
ïï $
(
ïï$ %
name
ññ 
:
ññ 
$str
ññ F
,
ññF G
column
óó 
:
óó 
x
óó  !
=>
óó" $
x
óó% &
.
óó& '
UserId
óó' -
,
óó- .
principalTable
òò &
:
òò& '
$str
òò( 5
,
òò5 6
principalColumn
ôô '
:
ôô' (
$str
ôô) -
,
ôô- .
onDelete
öö  
:
öö  !
ReferentialAction
öö" 3
.
öö3 4
Cascade
öö4 ;
)
öö; <
;
öö< =
}
õõ 
)
õõ 
;
õõ 
migrationBuilder
ùù 
.
ùù 
CreateIndex
ùù (
(
ùù( )
name
ûû 
:
ûû 
$str
ûû 2
,
ûû2 3
table
üü 
:
üü 
$str
üü )
,
üü) *
column
†† 
:
†† 
$str
††  
)
††  !
;
††! "
migrationBuilder
¢¢ 
.
¢¢ 
CreateIndex
¢¢ (
(
¢¢( )
name
££ 
:
££ 
$str
££ %
,
££% &
table
§§ 
:
§§ 
$str
§§ $
,
§§$ %
column
•• 
:
•• 
$str
•• (
,
••( )
unique
¶¶ 
:
¶¶ 
true
¶¶ 
,
¶¶ 
filter
ßß 
:
ßß 
$str
ßß 6
)
ßß6 7
;
ßß7 8
migrationBuilder
©© 
.
©© 
CreateIndex
©© (
(
©©( )
name
™™ 
:
™™ 
$str
™™ 2
,
™™2 3
table
´´ 
:
´´ 
$str
´´ )
,
´´) *
column
¨¨ 
:
¨¨ 
$str
¨¨  
)
¨¨  !
;
¨¨! "
migrationBuilder
ÆÆ 
.
ÆÆ 
CreateIndex
ÆÆ (
(
ÆÆ( )
name
ØØ 
:
ØØ 
$str
ØØ 2
,
ØØ2 3
table
∞∞ 
:
∞∞ 
$str
∞∞ )
,
∞∞) *
column
±± 
:
±± 
$str
±±  
)
±±  !
;
±±! "
migrationBuilder
≥≥ 
.
≥≥ 
CreateIndex
≥≥ (
(
≥≥( )
name
¥¥ 
:
¥¥ 
$str
¥¥ 1
,
¥¥1 2
table
µµ 
:
µµ 
$str
µµ (
,
µµ( )
column
∂∂ 
:
∂∂ 
$str
∂∂  
)
∂∂  !
;
∂∂! "
migrationBuilder
∏∏ 
.
∏∏ 
CreateIndex
∏∏ (
(
∏∏( )
name
ππ 
:
ππ 
$str
ππ "
,
ππ" #
table
∫∫ 
:
∫∫ 
$str
∫∫ $
,
∫∫$ %
column
ªª 
:
ªª 
$str
ªª )
)
ªª) *
;
ªª* +
migrationBuilder
ΩΩ 
.
ΩΩ 
CreateIndex
ΩΩ (
(
ΩΩ( )
name
ææ 
:
ææ 
$str
ææ %
,
ææ% &
table
øø 
:
øø 
$str
øø $
,
øø$ %
column
¿¿ 
:
¿¿ 
$str
¿¿ ,
,
¿¿, -
unique
¡¡ 
:
¡¡ 
true
¡¡ 
,
¡¡ 
filter
¬¬ 
:
¬¬ 
$str
¬¬ :
)
¬¬: ;
;
¬¬; <
}
√√ 	
	protected
≈≈ 
override
≈≈ 
void
≈≈ 
Down
≈≈  $
(
≈≈$ %
MigrationBuilder
≈≈% 5
migrationBuilder
≈≈6 F
)
≈≈F G
{
∆∆ 	
migrationBuilder
«« 
.
«« 
	DropTable
«« &
(
««& '
name
»» 
:
»» 
$str
»» (
)
»»( )
;
»») *
migrationBuilder
   
.
   
	DropTable
   &
(
  & '
name
ÀÀ 
:
ÀÀ 
$str
ÀÀ (
)
ÀÀ( )
;
ÀÀ) *
migrationBuilder
ÕÕ 
.
ÕÕ 
	DropTable
ÕÕ &
(
ÕÕ& '
name
ŒŒ 
:
ŒŒ 
$str
ŒŒ (
)
ŒŒ( )
;
ŒŒ) *
migrationBuilder
–– 
.
–– 
	DropTable
–– &
(
––& '
name
—— 
:
—— 
$str
—— '
)
——' (
;
——( )
migrationBuilder
”” 
.
”” 
	DropTable
”” &
(
””& '
name
‘‘ 
:
‘‘ 
$str
‘‘ (
)
‘‘( )
;
‘‘) *
migrationBuilder
÷÷ 
.
÷÷ 
	DropTable
÷÷ &
(
÷÷& '
name
◊◊ 
:
◊◊ 
$str
◊◊ #
)
◊◊# $
;
◊◊$ %
migrationBuilder
ŸŸ 
.
ŸŸ 
	DropTable
ŸŸ &
(
ŸŸ& '
name
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ #
)
⁄⁄# $
;
⁄⁄$ %
}
€€ 	
}
‹‹ 
}›› †*
mC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220804094847_AddPropertiesToUserTable.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class $
AddPropertiesToUserTable 1
:2 3
	Migration4 =
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str 
,  
table 
: 
$str $
,$ %
type 
: 
$str %
,% &
nullable 
: 
true 
) 
;  
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str 
, 
table 
: 
$str $
,$ %
type 
: 
$str %
,% &
nullable 
: 
true 
) 
;  
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str %
,% &
table 
: 
$str $
,$ %
type 
: 
$str %
,% &
nullable 
: 
false 
,  
defaultValue 
: 
$str  
)  !
;! "
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str !
,! "
table   
:   
$str   $
,  $ %
type!! 
:!! 
$str!! %
,!!% &
nullable"" 
:"" 
true"" 
)"" 
;""  
migrationBuilder$$ 
.$$ 
	AddColumn$$ &
<$$& '
string$$' -
>$$- .
($$. /
name%% 
:%% 
$str%%  
,%%  !
table&& 
:&& 
$str&& $
,&&$ %
type'' 
:'' 
$str'' %
,''% &
nullable(( 
:(( 
true(( 
)(( 
;((  
migrationBuilder** 
.** 
	AddColumn** &
<**& '
string**' -
>**- .
(**. /
name++ 
:++ 
$str++ "
,++" #
table,, 
:,, 
$str,, $
,,,$ %
type-- 
:-- 
$str-- %
,--% &
nullable.. 
:.. 
true.. 
).. 
;..  
migrationBuilder00 
.00 
	AddColumn00 &
<00& '
string00' -
>00- .
(00. /
name11 
:11 
$str11 
,11  
table22 
:22 
$str22 $
,22$ %
type33 
:33 
$str33 %
,33% &
nullable44 
:44 
true44 
)44 
;44  
}55 	
	protected77 
override77 
void77 
Down77  $
(77$ %
MigrationBuilder77% 5
migrationBuilder776 F
)77F G
{88 	
migrationBuilder99 
.99 

DropColumn99 '
(99' (
name:: 
::: 
$str:: 
,::  
table;; 
:;; 
$str;; $
);;$ %
;;;% &
migrationBuilder== 
.== 

DropColumn== '
(==' (
name>> 
:>> 
$str>> 
,>> 
table?? 
:?? 
$str?? $
)??$ %
;??% &
migrationBuilderAA 
.AA 

DropColumnAA '
(AA' (
nameBB 
:BB 
$strBB %
,BB% &
tableCC 
:CC 
$strCC $
)CC$ %
;CC% &
migrationBuilderEE 
.EE 

DropColumnEE '
(EE' (
nameFF 
:FF 
$strFF !
,FF! "
tableGG 
:GG 
$strGG $
)GG$ %
;GG% &
migrationBuilderII 
.II 

DropColumnII '
(II' (
nameJJ 
:JJ 
$strJJ  
,JJ  !
tableKK 
:KK 
$strKK $
)KK$ %
;KK% &
migrationBuilderMM 
.MM 

DropColumnMM '
(MM' (
nameNN 
:NN 
$strNN "
,NN" #
tableOO 
:OO 
$strOO $
)OO$ %
;OO% &
migrationBuilderQQ 
.QQ 

DropColumnQQ '
(QQ' (
nameRR 
:RR 
$strRR 
,RR  
tableSS 
:SS 
$strSS $
)SS$ %
;SS% &
}TT 	
}UU 
}VV  
ÇC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220804100435_AddPropertiesToUserTableWithoutUnusedProperty.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class 9
-AddPropertiesToUserTableWithoutUnusedProperty F
:G H
	MigrationI R
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str "
," #
table 
: 
$str $
)$ %
;% &
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str "
," #
table 
: 
$str $
,$ %
type 
: 
$str %
,% &
nullable 
: 
true 
) 
;  
} 	
} 
} ’P
|C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220921134827_Adding Order model and change UserModel.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class .
"AddingOrdermodelandchangeUserModel ;
:< =
	Migration> G
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
RenameColumn )
() *
name 
: 
$str 
,  
table 
: 
$str $
,$ %
newName 
: 
$str !
)! "
;" #
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str "
," #
table 
: 
$str $
,$ %
type 
: 
$str %
,% &
nullable 
: 
true 
) 
;  
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
OrderId 
= 
table #
.# $
Column$ *
<* +
int+ .
>. /
(/ 0
type0 4
:4 5
$str6 ;
,; <
nullable= E
:E F
falseG L
)L M
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
DateOfOrder 
=  !
table" '
.' (
Column( .
<. /
DateTime/ 7
>7 8
(8 9
type9 =
:= >
$str? J
,J K
nullableL T
:T U
falseV [
)[ \
,\ ]

TotalPrice 
=  
table! &
.& '
Column' -
<- .
decimal. 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _
Quantity 
= 
table $
.$ %
Column% +
<+ ,
int, /
>/ 0
(0 1
type1 5
:5 6
$str7 <
,< =
nullable> F
:F G
falseH M
)M N
,N O
ApplicationUserId   %
=  & '
table  ( -
.  - .
Column  . 4
<  4 5
string  5 ;
>  ; <
(  < =
type  = A
:  A B
$str  C R
,  R S
nullable  T \
:  \ ]
true  ^ b
)  b c
}!! 
,!! 
constraints"" 
:"" 
table"" "
=>""# %
{## 
table$$ 
.$$ 

PrimaryKey$$ $
($$$ %
$str$$% 0
,$$0 1
x$$2 3
=>$$4 6
x$$7 8
.$$8 9
OrderId$$9 @
)$$@ A
;$$A B
table%% 
.%% 

ForeignKey%% $
(%%$ %
name&& 
:&& 
$str&& G
,&&G H
column'' 
:'' 
x''  !
=>''" $
x''% &
.''& '
ApplicationUserId''' 8
,''8 9
principalTable(( &
:((& '
$str((( 5
,((5 6
principalColumn)) '
:))' (
$str))) -
)))- .
;)). /
}** 
)** 
;** 
migrationBuilder,, 
.,, 
CreateTable,, (
(,,( )
name-- 
:-- 
$str-- &
,--& '
columns.. 
:.. 
table.. 
=>.. !
new.." %
{// 
Id00 
=00 
table00 
.00 
Column00 %
<00% &
int00& )
>00) *
(00* +
type00+ /
:00/ 0
$str001 6
,006 7
nullable008 @
:00@ A
false00B G
)00G H
.11 

Annotation11 #
(11# $
$str11$ 8
,118 9
$str11: @
)11@ A
,11A B
RoleName22 
=22 
table22 $
.22$ %
Column22% +
<22+ ,
string22, 2
>222 3
(223 4
type224 8
:228 9
$str22: I
,22I J
nullable22K S
:22S T
false22U Z
)22Z [
}33 
,33 
constraints44 
:44 
table44 "
=>44# %
{55 
table66 
.66 

PrimaryKey66 $
(66$ %
$str66% 8
,668 9
x66: ;
=>66< >
x66? @
.66@ A
Id66A C
)66C D
;66D E
}77 
)77 
;77 
migrationBuilder99 
.99 
CreateTable99 (
(99( )
name:: 
::: 
$str:: $
,::$ %
columns;; 
:;; 
table;; 
=>;; !
new;;" %
{<< 
OrderId== 
=== 
table== #
.==# $
Column==$ *
<==* +
int==+ .
>==. /
(==/ 0
type==0 4
:==4 5
$str==6 ;
,==; <
nullable=== E
:==E F
false==G L
)==L M
.>> 

Annotation>> #
(>># $
$str>>$ 8
,>>8 9
$str>>: @
)>>@ A
,>>A B
	ProductId?? 
=?? 
table??  %
.??% &
Column??& ,
<??, -
int??- 0
>??0 1
(??1 2
type??2 6
:??6 7
$str??8 =
,??= >
nullable??? G
:??G H
false??I N
)??N O
,??O P
OrderId1@@ 
=@@ 
table@@ $
.@@$ %
Column@@% +
<@@+ ,
int@@, /
>@@/ 0
(@@0 1
type@@1 5
:@@5 6
$str@@7 <
,@@< =
nullable@@> F
:@@F G
false@@H M
)@@M N
}AA 
,AA 
constraintsBB 
:BB 
tableBB "
=>BB# %
{CC 
tableDD 
.DD 

PrimaryKeyDD $
(DD$ %
$strDD% 6
,DD6 7
xDD8 9
=>DD: <
xDD= >
.DD> ?
OrderIdDD? F
)DDF G
;DDG H
tableEE 
.EE 

ForeignKeyEE $
(EE$ %
nameFF 
:FF 
$strFF ?
,FF? @
columnGG 
:GG 
xGG  !
=>GG" $
xGG% &
.GG& '
OrderId1GG' /
,GG/ 0
principalTableHH &
:HH& '
$strHH( 0
,HH0 1
principalColumnII '
:II' (
$strII) 2
,II2 3
onDeleteJJ  
:JJ  !
ReferentialActionJJ" 3
.JJ3 4
CascadeJJ4 ;
)JJ; <
;JJ< =
tableKK 
.KK 

ForeignKeyKK $
(KK$ %
nameLL 
:LL 
$strLL B
,LLB C
columnMM 
:MM 
xMM  !
=>MM" $
xMM% &
.MM& '
	ProductIdMM' 0
,MM0 1
principalTableNN &
:NN& '
$strNN( 2
,NN2 3
principalColumnOO '
:OO' (
$strOO) -
,OO- .
onDeletePP  
:PP  !
ReferentialActionPP" 3
.PP3 4
CascadePP4 ;
)PP; <
;PP< =
}QQ 
)QQ 
;QQ 
migrationBuilderSS 
.SS 
CreateIndexSS (
(SS( )
nameTT 
:TT 
$strTT 3
,TT3 4
tableUU 
:UU 
$strUU 
,UU  
columnVV 
:VV 
$strVV +
)VV+ ,
;VV, -
migrationBuilderXX 
.XX 
CreateIndexXX (
(XX( )
nameYY 
:YY 
$strYY 0
,YY0 1
tableZZ 
:ZZ 
$strZZ %
,ZZ% &
column[[ 
:[[ 
$str[[ "
)[[" #
;[[# $
migrationBuilder]] 
.]] 
CreateIndex]] (
(]]( )
name^^ 
:^^ 
$str^^ 1
,^^1 2
table__ 
:__ 
$str__ %
,__% &
column`` 
:`` 
$str`` #
)``# $
;``$ %
}aa 	
	protectedcc 
overridecc 
voidcc 
Downcc  $
(cc$ %
MigrationBuildercc% 5
migrationBuildercc6 F
)ccF G
{dd 	
migrationBuilderee 
.ee 
	DropTableee &
(ee& '
nameff 
:ff 
$strff $
)ff$ %
;ff% &
migrationBuilderhh 
.hh 
	DropTablehh &
(hh& '
nameii 
:ii 
$strii &
)ii& '
;ii' (
migrationBuilderkk 
.kk 
	DropTablekk &
(kk& '
namell 
:ll 
$strll 
)ll 
;ll  
migrationBuildernn 
.nn 

DropColumnnn '
(nn' (
nameoo 
:oo 
$stroo "
,oo" #
tablepp 
:pp 
$strpp $
)pp$ %
;pp% &
migrationBuilderrr 
.rr 
RenameColumnrr )
(rr) *
namess 
:ss 
$strss 
,ss 
tablett 
:tt 
$strtt $
,tt$ %
newNameuu 
:uu 
$struu "
)uu" #
;uu# $
}vv 	
}ww 
}xx ﬂ9
wC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220922083753_Changing key in ProductOrder model.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class *
ChangingkeyinProductOrdermodel 7
:8 9
	Migration: C
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
DropForeignKey +
(+ ,
name 
: 
$str 7
,7 8
table 
: 
$str %
)% &
;& '
migrationBuilder 
. 
DropPrimaryKey +
(+ ,
name 
: 
$str '
,' (
table 
: 
$str %
)% &
;& '
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str 0
,0 1
table 
: 
$str %
)% &
;& '
migrationBuilder 
. 
	DropIndex &
(& '
name 
: 
$str 1
,1 2
table 
: 
$str %
)% &
;& '
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str  
,  !
table 
: 
$str %
)% &
;& '
migrationBuilder 
. 
AlterColumn (
<( )
int) ,
>, -
(- .
name   
:   
$str   
,    
table!! 
:!! 
$str!! %
,!!% &
type"" 
:"" 
$str"" 
,"" 
nullable## 
:## 
false## 
,##  

oldClrType$$ 
:$$ 
typeof$$ "
($$" #
int$$# &
)$$& '
,$$' (
oldType%% 
:%% 
$str%% 
)%% 
.&& 
OldAnnotation&& 
(&& 
$str&& 3
,&&3 4
$str&&5 ;
)&&; <
;&&< =
migrationBuilder(( 
.(( 
AddPrimaryKey(( *
(((* +
name)) 
:)) 
$str)) '
,))' (
table** 
:** 
$str** %
,**% &
columns++ 
:++ 
new++ 
[++ 
]++ 
{++  
$str++! ,
,++, -
$str++. 7
}++8 9
)++9 :
;++: ;
migrationBuilder-- 
.-- 
CreateIndex-- (
(--( )
name.. 
:.. 
$str.. /
,../ 0
table// 
:// 
$str// %
,//% &
column00 
:00 
$str00 !
)00! "
;00" #
migrationBuilder22 
.22 
AddForeignKey22 *
(22* +
name33 
:33 
$str33 6
,336 7
table44 
:44 
$str44 %
,44% &
column55 
:55 
$str55 !
,55! "
principalTable66 
:66 
$str66  (
,66( )
principalColumn77 
:77  
$str77! *
,77* +
onDelete88 
:88 
ReferentialAction88 +
.88+ ,
Cascade88, 3
)883 4
;884 5
}99 	
	protected;; 
override;; 
void;; 
Down;;  $
(;;$ %
MigrationBuilder;;% 5
migrationBuilder;;6 F
);;F G
{<< 	
migrationBuilder== 
.== 
DropForeignKey== +
(==+ ,
name>> 
:>> 
$str>> 6
,>>6 7
table?? 
:?? 
$str?? %
)??% &
;??& '
migrationBuilderAA 
.AA 
DropPrimaryKeyAA +
(AA+ ,
nameBB 
:BB 
$strBB '
,BB' (
tableCC 
:CC 
$strCC %
)CC% &
;CC& '
migrationBuilderEE 
.EE 
	DropIndexEE &
(EE& '
nameFF 
:FF 
$strFF /
,FF/ 0
tableGG 
:GG 
$strGG %
)GG% &
;GG& '
migrationBuilderII 
.II 
AlterColumnII (
<II( )
intII) ,
>II, -
(II- .
nameJJ 
:JJ 
$strJJ 
,JJ  
tableKK 
:KK 
$strKK %
,KK% &
typeLL 
:LL 
$strLL 
,LL 
nullableMM 
:MM 
falseMM 
,MM  

oldClrTypeNN 
:NN 
typeofNN "
(NN" #
intNN# &
)NN& '
,NN' (
oldTypeOO 
:OO 
$strOO 
)OO 
.PP 

AnnotationPP 
(PP 
$strPP 0
,PP0 1
$strPP2 8
)PP8 9
;PP9 :
migrationBuilderRR 
.RR 
	AddColumnRR &
<RR& '
intRR' *
>RR* +
(RR+ ,
nameSS 
:SS 
$strSS  
,SS  !
tableTT 
:TT 
$strTT %
,TT% &
typeUU 
:UU 
$strUU 
,UU 
nullableVV 
:VV 
falseVV 
,VV  
defaultValueWW 
:WW 
$numWW 
)WW  
;WW  !
migrationBuilderYY 
.YY 
AddPrimaryKeyYY *
(YY* +
nameZZ 
:ZZ 
$strZZ '
,ZZ' (
table[[ 
:[[ 
$str[[ %
,[[% &
column\\ 
:\\ 
$str\\ !
)\\! "
;\\" #
migrationBuilder^^ 
.^^ 
CreateIndex^^ (
(^^( )
name__ 
:__ 
$str__ 0
,__0 1
table`` 
:`` 
$str`` %
,``% &
columnaa 
:aa 
$straa "
)aa" #
;aa# $
migrationBuildercc 
.cc 
CreateIndexcc (
(cc( )
namedd 
:dd 
$strdd 1
,dd1 2
tableee 
:ee 
$stree %
,ee% &
columnff 
:ff 
$strff #
)ff# $
;ff$ %
migrationBuilderhh 
.hh 
AddForeignKeyhh *
(hh* +
nameii 
:ii 
$strii 7
,ii7 8
tablejj 
:jj 
$strjj %
,jj% &
columnkk 
:kk 
$strkk "
,kk" #
principalTablell 
:ll 
$strll  (
,ll( )
principalColumnmm 
:mm  
$strmm! *
,mm* +
onDeletenn 
:nn 
ReferentialActionnn +
.nn+ ,
Cascadenn, 3
)nn3 4
;nn4 5
}oo 	
}pp 
}qq ø,
rC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220922095646_Fix relations in ProductOrder.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class &
FixrelationsinProductOrder 3
:4 5
	Migration6 ?
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str $
,$ %
columns 
: 
table 
=> !
new" %
{ 
	ProductId 
= 
table  %
.% &
Column& ,
<, -
int- 0
>0 1
(1 2
type2 6
:6 7
$str8 =
,= >
nullable? G
:G H
falseI N
)N O
,O P
OrderID 
= 
table #
.# $
Column$ *
<* +
int+ .
>. /
(/ 0
type0 4
:4 5
$str6 ;
,; <
nullable= E
:E F
falseG L
)L M
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 6
,6 7
x8 9
=>: <
new= @
{A B
xC D
.D E
	ProductIdE N
,N O
xP Q
.Q R
OrderIDR Y
}Z [
)[ \
;\ ]
table 
. 

ForeignKey $
($ %
name 
: 
$str >
,> ?
column 
: 
x  !
=>" $
x% &
.& '
OrderID' .
,. /
principalTable &
:& '
$str( 0
,0 1
principalColumn '
:' (
$str) 2
,2 3
onDelete  
:  !
ReferentialAction" 3
.3 4
Cascade4 ;
); <
;< =
table 
. 

ForeignKey $
($ %
name 
: 
$str B
,B C
column 
: 
x  !
=>" $
x% &
.& '
	ProductId' 0
,0 1
principalTable &
:& '
$str( 2
,2 3
principalColumn   '
:  ' (
$str  ) -
,  - .
onDelete!!  
:!!  !
ReferentialAction!!" 3
.!!3 4
Cascade!!4 ;
)!!; <
;!!< =
}"" 
)"" 
;"" 
migrationBuilder$$ 
.$$ 
CreateIndex$$ (
($$( )
name%% 
:%% 
$str%% /
,%%/ 0
table&& 
:&& 
$str&& %
,&&% &
column'' 
:'' 
$str'' !
)''! "
;''" #
}(( 	
	protected** 
override** 
void** 
Down**  $
(**$ %
MigrationBuilder**% 5
migrationBuilder**6 F
)**F G
{++ 	
migrationBuilder,, 
.,, 
	DropTable,, &
(,,& '
name-- 
:-- 
$str-- (
)--( )
;--) *
migrationBuilder// 
.// 
	DropTable// &
(//& '
name00 
:00 
$str00 (
)00( )
;00) *
migrationBuilder22 
.22 
	DropTable22 &
(22& '
name33 
:33 
$str33 (
)33( )
;33) *
migrationBuilder55 
.55 
	DropTable55 &
(55& '
name66 
:66 
$str66 '
)66' (
;66( )
migrationBuilder88 
.88 
	DropTable88 &
(88& '
name99 
:99 
$str99 (
)99( )
;99) *
migrationBuilder;; 
.;; 
	DropTable;; &
(;;& '
name<< 
:<< 
$str<< 
)<< 
;<<  
migrationBuilder>> 
.>> 
	DropTable>> &
(>>& '
name?? 
:?? 
$str?? $
)??$ %
;??% &
migrationBuilderAA 
.AA 
	DropTableAA &
(AA& '
nameBB 
:BB 
$strBB &
)BB& '
;BB' (
migrationBuilderDD 
.DD 
	DropTableDD &
(DD& '
nameEE 
:EE 
$strEE #
)EE# $
;EE$ %
migrationBuilderGG 
.GG 
	DropTableGG &
(GG& '
nameHH 
:HH 
$strHH 
)HH 
;HH  
migrationBuilderJJ 
.JJ 
	DropTableJJ &
(JJ& '
nameKK 
:KK 
$strKK  
)KK  !
;KK! "
migrationBuilderMM 
.MM 
	DropTableMM &
(MM& '
nameNN 
:NN 
$strNN #
)NN# $
;NN$ %
migrationBuilderPP 
.PP 
	DropTablePP &
(PP& '
nameQQ 
:QQ 
$strQQ "
)QQ" #
;QQ# $
}RR 	
}SS 
}TT ∞
iC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Migrations\20220923134141_Changing Order model.cs
	namespace 	
LolipopSquare
 
. 

Migrations "
{ 
public 

partial 
class 
ChangingOrdermodel +
:, -
	Migration. 7
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str  
,  !
table 
: 
$str 
)  
;  !
migrationBuilder 
. 
	AddColumn &
<& '
bool' +
>+ ,
(, -
name 
: 
$str )
,) *
table 
: 
$str 
,  
type 
: 
$str 
, 
nullable 
: 
false 
,  
defaultValue 
: 
false #
)# $
;$ %
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str )
,) *
table 
: 
$str 
)  
;  !
migrationBuilder 
. 
	AddColumn &
<& '
int' *
>* +
(+ ,
name 
: 
$str  
,  !
table 
: 
$str 
,  
type   
:   
$str   
,   
nullable!! 
:!! 
false!! 
,!!  
defaultValue"" 
:"" 
$num"" 
)""  
;""  !
}## 	
}$$ 
}%% à
QC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ApplicationUser.cs
	namespace 	
LolipopSquare
 
. 
Models 
{ 
public 

class 
ApplicationUser  
:! "
IdentityUser# /
{ 
[ 	
Display	 
( 
Name 
= 
$str #
)# $
]$ %
public		 
string		 
	FirstName		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
[ 	
Display	 
( 
Name 
= 
$str "
)" #
]# $
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Display	 
( 
Name 
= 
$str (
)( )
]) *
public 
string 

BuildingNo  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Street 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Display	 
( 
Name 
= 
$str !
)! "
]" #
public 
string 
ZipCode 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Display	 
( 
Name 
= 
$str %
)% &
]& '
public 
override 
string 
PhoneNumber *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
ICollection 
< 
Order  
>  !
Orders" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ˝
JC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\Category.cs
	namespace 	
LolipopSquare
 
. 
Models 
{ 
public 

class 
Category 
{ 
[ 	
Required	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[

 	
Required

	 
]

 
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
ICollection 
< 
Product "
>" #
Products$ ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} ÓÇ
`C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\CurrencyAPIResults\CurrencyAPI.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 
CurrencyAPIResults 1
{ 
public 

class 
CurrencyAPI 
{ 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
Motd 
Motd 
{ 
get 
; 
set  #
;# $
}% &
[

 	
JsonProperty

	 
(

 
$str

 
)

  
]

  !
public 
bool 
Success 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Base 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Date 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
Rates 
Rates 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class 
Motd 
{ 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Msg 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
public 

class 
Rates 
{   
[!! 	
JsonProperty!!	 
(!! 
$str!! 
)!! 
]!! 
public"" 
double"" 
AED"" 
{"" 
get"" 
;""  
set""! $
;""$ %
}""& '
[$$ 	
JsonProperty$$	 
($$ 
$str$$ 
)$$ 
]$$ 
public%% 
double%% 
AFN%% 
{%% 
get%% 
;%%  
set%%! $
;%%$ %
}%%& '
['' 	
JsonProperty''	 
('' 
$str'' 
)'' 
]'' 
public(( 
double(( 
ALL(( 
{(( 
get(( 
;((  
set((! $
;(($ %
}((& '
[** 	
JsonProperty**	 
(** 
$str** 
)** 
]** 
public++ 
double++ 
AMD++ 
{++ 
get++ 
;++  
set++! $
;++$ %
}++& '
[-- 	
JsonProperty--	 
(-- 
$str-- 
)-- 
]-- 
public.. 
double.. 
ANG.. 
{.. 
get.. 
;..  
set..! $
;..$ %
}..& '
[00 	
JsonProperty00	 
(00 
$str00 
)00 
]00 
public11 
double11 
AOA11 
{11 
get11 
;11  
set11! $
;11$ %
}11& '
[33 	
JsonProperty33	 
(33 
$str33 
)33 
]33 
public44 
double44 
ARS44 
{44 
get44 
;44  
set44! $
;44$ %
}44& '
[66 	
JsonProperty66	 
(66 
$str66 
)66 
]66 
public77 
double77 
AUD77 
{77 
get77 
;77  
set77! $
;77$ %
}77& '
[99 	
JsonProperty99	 
(99 
$str99 
)99 
]99 
public:: 
double:: 
AWG:: 
{:: 
get:: 
;::  
set::! $
;::$ %
}::& '
[<< 	
JsonProperty<<	 
(<< 
$str<< 
)<< 
]<< 
public== 
double== 
AZN== 
{== 
get== 
;==  
set==! $
;==$ %
}==& '
[?? 	
JsonProperty??	 
(?? 
$str?? 
)?? 
]?? 
public@@ 
double@@ 
BAM@@ 
{@@ 
get@@ 
;@@  
set@@! $
;@@$ %
}@@& '
[BB 	
JsonPropertyBB	 
(BB 
$strBB 
)BB 
]BB 
publicCC 
doubleCC 
BBDCC 
{CC 
getCC 
;CC  
setCC! $
;CC$ %
}CC& '
[EE 	
JsonPropertyEE	 
(EE 
$strEE 
)EE 
]EE 
publicFF 
doubleFF 
BDTFF 
{FF 
getFF 
;FF  
setFF! $
;FF$ %
}FF& '
[HH 	
JsonPropertyHH	 
(HH 
$strHH 
)HH 
]HH 
publicII 
doubleII 
BGNII 
{II 
getII 
;II  
setII! $
;II$ %
}II& '
[KK 	
JsonPropertyKK	 
(KK 
$strKK 
)KK 
]KK 
publicLL 
doubleLL 
BHDLL 
{LL 
getLL 
;LL  
setLL! $
;LL$ %
}LL& '
[NN 	
JsonPropertyNN	 
(NN 
$strNN 
)NN 
]NN 
publicOO 
doubleOO 
BIFOO 
{OO 
getOO 
;OO  
setOO! $
;OO$ %
}OO& '
[QQ 	
JsonPropertyQQ	 
(QQ 
$strQQ 
)QQ 
]QQ 
publicRR 
doubleRR 
BMDRR 
{RR 
getRR 
;RR  
setRR! $
;RR$ %
}RR& '
[TT 	
JsonPropertyTT	 
(TT 
$strTT 
)TT 
]TT 
publicUU 
doubleUU 
BNDUU 
{UU 
getUU 
;UU  
setUU! $
;UU$ %
}UU& '
[WW 	
JsonPropertyWW	 
(WW 
$strWW 
)WW 
]WW 
publicXX 
doubleXX 
BOBXX 
{XX 
getXX 
;XX  
setXX! $
;XX$ %
}XX& '
[ZZ 	
JsonPropertyZZ	 
(ZZ 
$strZZ 
)ZZ 
]ZZ 
public[[ 
double[[ 
BRL[[ 
{[[ 
get[[ 
;[[  
set[[! $
;[[$ %
}[[& '
[]] 	
JsonProperty]]	 
(]] 
$str]] 
)]] 
]]] 
public^^ 
double^^ 
BSD^^ 
{^^ 
get^^ 
;^^  
set^^! $
;^^$ %
}^^& '
[`` 	
JsonProperty``	 
(`` 
$str`` 
)`` 
]`` 
publicaa 
doubleaa 
BTCaa 
{aa 
getaa 
;aa  
setaa! $
;aa$ %
}aa& '
[cc 	
JsonPropertycc	 
(cc 
$strcc 
)cc 
]cc 
publicdd 
doubledd 
BTNdd 
{dd 
getdd 
;dd  
setdd! $
;dd$ %
}dd& '
[ff 	
JsonPropertyff	 
(ff 
$strff 
)ff 
]ff 
publicgg 
doublegg 
BWPgg 
{gg 
getgg 
;gg  
setgg! $
;gg$ %
}gg& '
[ii 	
JsonPropertyii	 
(ii 
$strii 
)ii 
]ii 
publicjj 
doublejj 
BYNjj 
{jj 
getjj 
;jj  
setjj! $
;jj$ %
}jj& '
[ll 	
JsonPropertyll	 
(ll 
$strll 
)ll 
]ll 
publicmm 
doublemm 
BZDmm 
{mm 
getmm 
;mm  
setmm! $
;mm$ %
}mm& '
[oo 	
JsonPropertyoo	 
(oo 
$stroo 
)oo 
]oo 
publicpp 
doublepp 
CADpp 
{pp 
getpp 
;pp  
setpp! $
;pp$ %
}pp& '
[rr 	
JsonPropertyrr	 
(rr 
$strrr 
)rr 
]rr 
publicss 
doubless 
CDFss 
{ss 
getss 
;ss  
setss! $
;ss$ %
}ss& '
[uu 	
JsonPropertyuu	 
(uu 
$struu 
)uu 
]uu 
publicvv 
doublevv 
CHFvv 
{vv 
getvv 
;vv  
setvv! $
;vv$ %
}vv& '
[xx 	
JsonPropertyxx	 
(xx 
$strxx 
)xx 
]xx 
publicyy 
doubleyy 
CLFyy 
{yy 
getyy 
;yy  
setyy! $
;yy$ %
}yy& '
[{{ 	
JsonProperty{{	 
({{ 
$str{{ 
){{ 
]{{ 
public|| 
double|| 
CLP|| 
{|| 
get|| 
;||  
set||! $
;||$ %
}||& '
[~~ 	
JsonProperty~~	 
(~~ 
$str~~ 
)~~ 
]~~ 
public 
double 
CNH 
{ 
get 
;  
set! $
;$ %
}& '
[
ÅÅ 	
JsonProperty
ÅÅ	 
(
ÅÅ 
$str
ÅÅ 
)
ÅÅ 
]
ÅÅ 
public
ÇÇ 
double
ÇÇ 
CNY
ÇÇ 
{
ÇÇ 
get
ÇÇ 
;
ÇÇ  
set
ÇÇ! $
;
ÇÇ$ %
}
ÇÇ& '
[
ÑÑ 	
JsonProperty
ÑÑ	 
(
ÑÑ 
$str
ÑÑ 
)
ÑÑ 
]
ÑÑ 
public
ÖÖ 
double
ÖÖ 
COP
ÖÖ 
{
ÖÖ 
get
ÖÖ 
;
ÖÖ  
set
ÖÖ! $
;
ÖÖ$ %
}
ÖÖ& '
[
áá 	
JsonProperty
áá	 
(
áá 
$str
áá 
)
áá 
]
áá 
public
àà 
double
àà 
CRC
àà 
{
àà 
get
àà 
;
àà  
set
àà! $
;
àà$ %
}
àà& '
[
ää 	
JsonProperty
ää	 
(
ää 
$str
ää 
)
ää 
]
ää 
public
ãã 
double
ãã 
CUC
ãã 
{
ãã 
get
ãã 
;
ãã  
set
ãã! $
;
ãã$ %
}
ãã& '
[
çç 	
JsonProperty
çç	 
(
çç 
$str
çç 
)
çç 
]
çç 
public
éé 
double
éé 
CUP
éé 
{
éé 
get
éé 
;
éé  
set
éé! $
;
éé$ %
}
éé& '
[
êê 	
JsonProperty
êê	 
(
êê 
$str
êê 
)
êê 
]
êê 
public
ëë 
double
ëë 
CVE
ëë 
{
ëë 
get
ëë 
;
ëë  
set
ëë! $
;
ëë$ %
}
ëë& '
[
ìì 	
JsonProperty
ìì	 
(
ìì 
$str
ìì 
)
ìì 
]
ìì 
public
îî 
double
îî 
CZK
îî 
{
îî 
get
îî 
;
îî  
set
îî! $
;
îî$ %
}
îî& '
[
ññ 	
JsonProperty
ññ	 
(
ññ 
$str
ññ 
)
ññ 
]
ññ 
public
óó 
double
óó 
DJF
óó 
{
óó 
get
óó 
;
óó  
set
óó! $
;
óó$ %
}
óó& '
[
ôô 	
JsonProperty
ôô	 
(
ôô 
$str
ôô 
)
ôô 
]
ôô 
public
öö 
double
öö 
DKK
öö 
{
öö 
get
öö 
;
öö  
set
öö! $
;
öö$ %
}
öö& '
[
úú 	
JsonProperty
úú	 
(
úú 
$str
úú 
)
úú 
]
úú 
public
ùù 
double
ùù 
DOP
ùù 
{
ùù 
get
ùù 
;
ùù  
set
ùù! $
;
ùù$ %
}
ùù& '
[
üü 	
JsonProperty
üü	 
(
üü 
$str
üü 
)
üü 
]
üü 
public
†† 
double
†† 
DZD
†† 
{
†† 
get
†† 
;
††  
set
††! $
;
††$ %
}
††& '
[
¢¢ 	
JsonProperty
¢¢	 
(
¢¢ 
$str
¢¢ 
)
¢¢ 
]
¢¢ 
public
££ 
double
££ 
EGP
££ 
{
££ 
get
££ 
;
££  
set
££! $
;
££$ %
}
££& '
[
•• 	
JsonProperty
••	 
(
•• 
$str
•• 
)
•• 
]
•• 
public
¶¶ 
double
¶¶ 
ERN
¶¶ 
{
¶¶ 
get
¶¶ 
;
¶¶  
set
¶¶! $
;
¶¶$ %
}
¶¶& '
[
®® 	
JsonProperty
®®	 
(
®® 
$str
®® 
)
®® 
]
®® 
public
©© 
double
©© 
ETB
©© 
{
©© 
get
©© 
;
©©  
set
©©! $
;
©©$ %
}
©©& '
[
´´ 	
JsonProperty
´´	 
(
´´ 
$str
´´ 
)
´´ 
]
´´ 
public
¨¨ 
int
¨¨ 
EUR
¨¨ 
{
¨¨ 
get
¨¨ 
;
¨¨ 
set
¨¨ !
;
¨¨! "
}
¨¨# $
[
ÆÆ 	
JsonProperty
ÆÆ	 
(
ÆÆ 
$str
ÆÆ 
)
ÆÆ 
]
ÆÆ 
public
ØØ 
double
ØØ 
FJD
ØØ 
{
ØØ 
get
ØØ 
;
ØØ  
set
ØØ! $
;
ØØ$ %
}
ØØ& '
[
±± 	
JsonProperty
±±	 
(
±± 
$str
±± 
)
±± 
]
±± 
public
≤≤ 
double
≤≤ 
FKP
≤≤ 
{
≤≤ 
get
≤≤ 
;
≤≤  
set
≤≤! $
;
≤≤$ %
}
≤≤& '
[
¥¥ 	
JsonProperty
¥¥	 
(
¥¥ 
$str
¥¥ 
)
¥¥ 
]
¥¥ 
public
µµ 
double
µµ 
GBP
µµ 
{
µµ 
get
µµ 
;
µµ  
set
µµ! $
;
µµ$ %
}
µµ& '
[
∑∑ 	
JsonProperty
∑∑	 
(
∑∑ 
$str
∑∑ 
)
∑∑ 
]
∑∑ 
public
∏∏ 
double
∏∏ 
GEL
∏∏ 
{
∏∏ 
get
∏∏ 
;
∏∏  
set
∏∏! $
;
∏∏$ %
}
∏∏& '
[
∫∫ 	
JsonProperty
∫∫	 
(
∫∫ 
$str
∫∫ 
)
∫∫ 
]
∫∫ 
public
ªª 
double
ªª 
GGP
ªª 
{
ªª 
get
ªª 
;
ªª  
set
ªª! $
;
ªª$ %
}
ªª& '
[
ΩΩ 	
JsonProperty
ΩΩ	 
(
ΩΩ 
$str
ΩΩ 
)
ΩΩ 
]
ΩΩ 
public
ææ 
double
ææ 
GHS
ææ 
{
ææ 
get
ææ 
;
ææ  
set
ææ! $
;
ææ$ %
}
ææ& '
[
¿¿ 	
JsonProperty
¿¿	 
(
¿¿ 
$str
¿¿ 
)
¿¿ 
]
¿¿ 
public
¡¡ 
double
¡¡ 
GIP
¡¡ 
{
¡¡ 
get
¡¡ 
;
¡¡  
set
¡¡! $
;
¡¡$ %
}
¡¡& '
[
√√ 	
JsonProperty
√√	 
(
√√ 
$str
√√ 
)
√√ 
]
√√ 
public
ƒƒ 
double
ƒƒ 
GMD
ƒƒ 
{
ƒƒ 
get
ƒƒ 
;
ƒƒ  
set
ƒƒ! $
;
ƒƒ$ %
}
ƒƒ& '
[
∆∆ 	
JsonProperty
∆∆	 
(
∆∆ 
$str
∆∆ 
)
∆∆ 
]
∆∆ 
public
«« 
double
«« 
GNF
«« 
{
«« 
get
«« 
;
««  
set
««! $
;
««$ %
}
««& '
[
…… 	
JsonProperty
……	 
(
…… 
$str
…… 
)
…… 
]
…… 
public
   
double
   
GTQ
   
{
   
get
   
;
    
set
  ! $
;
  $ %
}
  & '
[
ÃÃ 	
JsonProperty
ÃÃ	 
(
ÃÃ 
$str
ÃÃ 
)
ÃÃ 
]
ÃÃ 
public
ÕÕ 
double
ÕÕ 
GYD
ÕÕ 
{
ÕÕ 
get
ÕÕ 
;
ÕÕ  
set
ÕÕ! $
;
ÕÕ$ %
}
ÕÕ& '
[
œœ 	
JsonProperty
œœ	 
(
œœ 
$str
œœ 
)
œœ 
]
œœ 
public
–– 
double
–– 
HKD
–– 
{
–– 
get
–– 
;
––  
set
––! $
;
––$ %
}
––& '
[
““ 	
JsonProperty
““	 
(
““ 
$str
““ 
)
““ 
]
““ 
public
”” 
double
”” 
HNL
”” 
{
”” 
get
”” 
;
””  
set
””! $
;
””$ %
}
””& '
[
’’ 	
JsonProperty
’’	 
(
’’ 
$str
’’ 
)
’’ 
]
’’ 
public
÷÷ 
double
÷÷ 
HRK
÷÷ 
{
÷÷ 
get
÷÷ 
;
÷÷  
set
÷÷! $
;
÷÷$ %
}
÷÷& '
[
ÿÿ 	
JsonProperty
ÿÿ	 
(
ÿÿ 
$str
ÿÿ 
)
ÿÿ 
]
ÿÿ 
public
ŸŸ 
double
ŸŸ 
HTG
ŸŸ 
{
ŸŸ 
get
ŸŸ 
;
ŸŸ  
set
ŸŸ! $
;
ŸŸ$ %
}
ŸŸ& '
[
€€ 	
JsonProperty
€€	 
(
€€ 
$str
€€ 
)
€€ 
]
€€ 
public
‹‹ 
double
‹‹ 
HUF
‹‹ 
{
‹‹ 
get
‹‹ 
;
‹‹  
set
‹‹! $
;
‹‹$ %
}
‹‹& '
[
ﬁﬁ 	
JsonProperty
ﬁﬁ	 
(
ﬁﬁ 
$str
ﬁﬁ 
)
ﬁﬁ 
]
ﬁﬁ 
public
ﬂﬂ 
double
ﬂﬂ 
IDR
ﬂﬂ 
{
ﬂﬂ 
get
ﬂﬂ 
;
ﬂﬂ  
set
ﬂﬂ! $
;
ﬂﬂ$ %
}
ﬂﬂ& '
[
·· 	
JsonProperty
··	 
(
·· 
$str
·· 
)
·· 
]
·· 
public
‚‚ 
double
‚‚ 
ILS
‚‚ 
{
‚‚ 
get
‚‚ 
;
‚‚  
set
‚‚! $
;
‚‚$ %
}
‚‚& '
[
‰‰ 	
JsonProperty
‰‰	 
(
‰‰ 
$str
‰‰ 
)
‰‰ 
]
‰‰ 
public
ÂÂ 
double
ÂÂ 
IMP
ÂÂ 
{
ÂÂ 
get
ÂÂ 
;
ÂÂ  
set
ÂÂ! $
;
ÂÂ$ %
}
ÂÂ& '
[
ÁÁ 	
JsonProperty
ÁÁ	 
(
ÁÁ 
$str
ÁÁ 
)
ÁÁ 
]
ÁÁ 
public
ËË 
double
ËË 
INR
ËË 
{
ËË 
get
ËË 
;
ËË  
set
ËË! $
;
ËË$ %
}
ËË& '
[
ÍÍ 	
JsonProperty
ÍÍ	 
(
ÍÍ 
$str
ÍÍ 
)
ÍÍ 
]
ÍÍ 
public
ÎÎ 
double
ÎÎ 
IQD
ÎÎ 
{
ÎÎ 
get
ÎÎ 
;
ÎÎ  
set
ÎÎ! $
;
ÎÎ$ %
}
ÎÎ& '
[
ÌÌ 	
JsonProperty
ÌÌ	 
(
ÌÌ 
$str
ÌÌ 
)
ÌÌ 
]
ÌÌ 
public
ÓÓ 
double
ÓÓ 
IRR
ÓÓ 
{
ÓÓ 
get
ÓÓ 
;
ÓÓ  
set
ÓÓ! $
;
ÓÓ$ %
}
ÓÓ& '
[
 	
JsonProperty
	 
(
 
$str
 
)
 
]
 
public
ÒÒ 
double
ÒÒ 
ISK
ÒÒ 
{
ÒÒ 
get
ÒÒ 
;
ÒÒ  
set
ÒÒ! $
;
ÒÒ$ %
}
ÒÒ& '
[
ÛÛ 	
JsonProperty
ÛÛ	 
(
ÛÛ 
$str
ÛÛ 
)
ÛÛ 
]
ÛÛ 
public
ÙÙ 
double
ÙÙ 
JEP
ÙÙ 
{
ÙÙ 
get
ÙÙ 
;
ÙÙ  
set
ÙÙ! $
;
ÙÙ$ %
}
ÙÙ& '
[
ˆˆ 	
JsonProperty
ˆˆ	 
(
ˆˆ 
$str
ˆˆ 
)
ˆˆ 
]
ˆˆ 
public
˜˜ 
double
˜˜ 
JMD
˜˜ 
{
˜˜ 
get
˜˜ 
;
˜˜  
set
˜˜! $
;
˜˜$ %
}
˜˜& '
[
˘˘ 	
JsonProperty
˘˘	 
(
˘˘ 
$str
˘˘ 
)
˘˘ 
]
˘˘ 
public
˙˙ 
double
˙˙ 
JOD
˙˙ 
{
˙˙ 
get
˙˙ 
;
˙˙  
set
˙˙! $
;
˙˙$ %
}
˙˙& '
[
¸¸ 	
JsonProperty
¸¸	 
(
¸¸ 
$str
¸¸ 
)
¸¸ 
]
¸¸ 
public
˝˝ 
double
˝˝ 
JPY
˝˝ 
{
˝˝ 
get
˝˝ 
;
˝˝  
set
˝˝! $
;
˝˝$ %
}
˝˝& '
[
ˇˇ 	
JsonProperty
ˇˇ	 
(
ˇˇ 
$str
ˇˇ 
)
ˇˇ 
]
ˇˇ 
public
ÄÄ 
double
ÄÄ 
KES
ÄÄ 
{
ÄÄ 
get
ÄÄ 
;
ÄÄ  
set
ÄÄ! $
;
ÄÄ$ %
}
ÄÄ& '
[
ÇÇ 	
JsonProperty
ÇÇ	 
(
ÇÇ 
$str
ÇÇ 
)
ÇÇ 
]
ÇÇ 
public
ÉÉ 
double
ÉÉ 
KGS
ÉÉ 
{
ÉÉ 
get
ÉÉ 
;
ÉÉ  
set
ÉÉ! $
;
ÉÉ$ %
}
ÉÉ& '
[
ÖÖ 	
JsonProperty
ÖÖ	 
(
ÖÖ 
$str
ÖÖ 
)
ÖÖ 
]
ÖÖ 
public
ÜÜ 
double
ÜÜ 
KHR
ÜÜ 
{
ÜÜ 
get
ÜÜ 
;
ÜÜ  
set
ÜÜ! $
;
ÜÜ$ %
}
ÜÜ& '
[
àà 	
JsonProperty
àà	 
(
àà 
$str
àà 
)
àà 
]
àà 
public
ââ 
double
ââ 
KMF
ââ 
{
ââ 
get
ââ 
;
ââ  
set
ââ! $
;
ââ$ %
}
ââ& '
[
ãã 	
JsonProperty
ãã	 
(
ãã 
$str
ãã 
)
ãã 
]
ãã 
public
åå 
double
åå 
KPW
åå 
{
åå 
get
åå 
;
åå  
set
åå! $
;
åå$ %
}
åå& '
[
éé 	
JsonProperty
éé	 
(
éé 
$str
éé 
)
éé 
]
éé 
public
èè 
double
èè 
KRW
èè 
{
èè 
get
èè 
;
èè  
set
èè! $
;
èè$ %
}
èè& '
[
ëë 	
JsonProperty
ëë	 
(
ëë 
$str
ëë 
)
ëë 
]
ëë 
public
íí 
double
íí 
KWD
íí 
{
íí 
get
íí 
;
íí  
set
íí! $
;
íí$ %
}
íí& '
[
îî 	
JsonProperty
îî	 
(
îî 
$str
îî 
)
îî 
]
îî 
public
ïï 
double
ïï 
KYD
ïï 
{
ïï 
get
ïï 
;
ïï  
set
ïï! $
;
ïï$ %
}
ïï& '
[
óó 	
JsonProperty
óó	 
(
óó 
$str
óó 
)
óó 
]
óó 
public
òò 
double
òò 
KZT
òò 
{
òò 
get
òò 
;
òò  
set
òò! $
;
òò$ %
}
òò& '
[
öö 	
JsonProperty
öö	 
(
öö 
$str
öö 
)
öö 
]
öö 
public
õõ 
double
õõ 
LAK
õõ 
{
õõ 
get
õõ 
;
õõ  
set
õõ! $
;
õõ$ %
}
õõ& '
[
ùù 	
JsonProperty
ùù	 
(
ùù 
$str
ùù 
)
ùù 
]
ùù 
public
ûû 
double
ûû 
LBP
ûû 
{
ûû 
get
ûû 
;
ûû  
set
ûû! $
;
ûû$ %
}
ûû& '
[
†† 	
JsonProperty
††	 
(
†† 
$str
†† 
)
†† 
]
†† 
public
°° 
double
°° 
LKR
°° 
{
°° 
get
°° 
;
°°  
set
°°! $
;
°°$ %
}
°°& '
[
££ 	
JsonProperty
££	 
(
££ 
$str
££ 
)
££ 
]
££ 
public
§§ 
double
§§ 
LRD
§§ 
{
§§ 
get
§§ 
;
§§  
set
§§! $
;
§§$ %
}
§§& '
[
¶¶ 	
JsonProperty
¶¶	 
(
¶¶ 
$str
¶¶ 
)
¶¶ 
]
¶¶ 
public
ßß 
double
ßß 
LSL
ßß 
{
ßß 
get
ßß 
;
ßß  
set
ßß! $
;
ßß$ %
}
ßß& '
[
©© 	
JsonProperty
©©	 
(
©© 
$str
©© 
)
©© 
]
©© 
public
™™ 
double
™™ 
LYD
™™ 
{
™™ 
get
™™ 
;
™™  
set
™™! $
;
™™$ %
}
™™& '
[
¨¨ 	
JsonProperty
¨¨	 
(
¨¨ 
$str
¨¨ 
)
¨¨ 
]
¨¨ 
public
≠≠ 
double
≠≠ 
MAD
≠≠ 
{
≠≠ 
get
≠≠ 
;
≠≠  
set
≠≠! $
;
≠≠$ %
}
≠≠& '
[
ØØ 	
JsonProperty
ØØ	 
(
ØØ 
$str
ØØ 
)
ØØ 
]
ØØ 
public
∞∞ 
double
∞∞ 
MDL
∞∞ 
{
∞∞ 
get
∞∞ 
;
∞∞  
set
∞∞! $
;
∞∞$ %
}
∞∞& '
[
≤≤ 	
JsonProperty
≤≤	 
(
≤≤ 
$str
≤≤ 
)
≤≤ 
]
≤≤ 
public
≥≥ 
double
≥≥ 
MGA
≥≥ 
{
≥≥ 
get
≥≥ 
;
≥≥  
set
≥≥! $
;
≥≥$ %
}
≥≥& '
[
µµ 	
JsonProperty
µµ	 
(
µµ 
$str
µµ 
)
µµ 
]
µµ 
public
∂∂ 
double
∂∂ 
MKD
∂∂ 
{
∂∂ 
get
∂∂ 
;
∂∂  
set
∂∂! $
;
∂∂$ %
}
∂∂& '
[
∏∏ 	
JsonProperty
∏∏	 
(
∏∏ 
$str
∏∏ 
)
∏∏ 
]
∏∏ 
public
ππ 
double
ππ 
MMK
ππ 
{
ππ 
get
ππ 
;
ππ  
set
ππ! $
;
ππ$ %
}
ππ& '
[
ªª 	
JsonProperty
ªª	 
(
ªª 
$str
ªª 
)
ªª 
]
ªª 
public
ºº 
double
ºº 
MNT
ºº 
{
ºº 
get
ºº 
;
ºº  
set
ºº! $
;
ºº$ %
}
ºº& '
[
ææ 	
JsonProperty
ææ	 
(
ææ 
$str
ææ 
)
ææ 
]
ææ 
public
øø 
double
øø 
MOP
øø 
{
øø 
get
øø 
;
øø  
set
øø! $
;
øø$ %
}
øø& '
[
¡¡ 	
JsonProperty
¡¡	 
(
¡¡ 
$str
¡¡ 
)
¡¡ 
]
¡¡ 
public
¬¬ 
double
¬¬ 
MRU
¬¬ 
{
¬¬ 
get
¬¬ 
;
¬¬  
set
¬¬! $
;
¬¬$ %
}
¬¬& '
[
ƒƒ 	
JsonProperty
ƒƒ	 
(
ƒƒ 
$str
ƒƒ 
)
ƒƒ 
]
ƒƒ 
public
≈≈ 
double
≈≈ 
MUR
≈≈ 
{
≈≈ 
get
≈≈ 
;
≈≈  
set
≈≈! $
;
≈≈$ %
}
≈≈& '
[
«« 	
JsonProperty
««	 
(
«« 
$str
«« 
)
«« 
]
«« 
public
»» 
double
»» 
MVR
»» 
{
»» 
get
»» 
;
»»  
set
»»! $
;
»»$ %
}
»»& '
[
   	
JsonProperty
  	 
(
   
$str
   
)
   
]
   
public
ÀÀ 
double
ÀÀ 
MWK
ÀÀ 
{
ÀÀ 
get
ÀÀ 
;
ÀÀ  
set
ÀÀ! $
;
ÀÀ$ %
}
ÀÀ& '
[
ÕÕ 	
JsonProperty
ÕÕ	 
(
ÕÕ 
$str
ÕÕ 
)
ÕÕ 
]
ÕÕ 
public
ŒŒ 
double
ŒŒ 
MXN
ŒŒ 
{
ŒŒ 
get
ŒŒ 
;
ŒŒ  
set
ŒŒ! $
;
ŒŒ$ %
}
ŒŒ& '
[
–– 	
JsonProperty
––	 
(
–– 
$str
–– 
)
–– 
]
–– 
public
—— 
double
—— 
MYR
—— 
{
—— 
get
—— 
;
——  
set
——! $
;
——$ %
}
——& '
[
”” 	
JsonProperty
””	 
(
”” 
$str
”” 
)
”” 
]
”” 
public
‘‘ 
double
‘‘ 
MZN
‘‘ 
{
‘‘ 
get
‘‘ 
;
‘‘  
set
‘‘! $
;
‘‘$ %
}
‘‘& '
[
÷÷ 	
JsonProperty
÷÷	 
(
÷÷ 
$str
÷÷ 
)
÷÷ 
]
÷÷ 
public
◊◊ 
double
◊◊ 
NAD
◊◊ 
{
◊◊ 
get
◊◊ 
;
◊◊  
set
◊◊! $
;
◊◊$ %
}
◊◊& '
[
ŸŸ 	
JsonProperty
ŸŸ	 
(
ŸŸ 
$str
ŸŸ 
)
ŸŸ 
]
ŸŸ 
public
⁄⁄ 
double
⁄⁄ 
NGN
⁄⁄ 
{
⁄⁄ 
get
⁄⁄ 
;
⁄⁄  
set
⁄⁄! $
;
⁄⁄$ %
}
⁄⁄& '
[
‹‹ 	
JsonProperty
‹‹	 
(
‹‹ 
$str
‹‹ 
)
‹‹ 
]
‹‹ 
public
›› 
double
›› 
NIO
›› 
{
›› 
get
›› 
;
››  
set
››! $
;
››$ %
}
››& '
[
ﬂﬂ 	
JsonProperty
ﬂﬂ	 
(
ﬂﬂ 
$str
ﬂﬂ 
)
ﬂﬂ 
]
ﬂﬂ 
public
‡‡ 
double
‡‡ 
NOK
‡‡ 
{
‡‡ 
get
‡‡ 
;
‡‡  
set
‡‡! $
;
‡‡$ %
}
‡‡& '
[
‚‚ 	
JsonProperty
‚‚	 
(
‚‚ 
$str
‚‚ 
)
‚‚ 
]
‚‚ 
public
„„ 
double
„„ 
NPR
„„ 
{
„„ 
get
„„ 
;
„„  
set
„„! $
;
„„$ %
}
„„& '
[
ÂÂ 	
JsonProperty
ÂÂ	 
(
ÂÂ 
$str
ÂÂ 
)
ÂÂ 
]
ÂÂ 
public
ÊÊ 
double
ÊÊ 
NZD
ÊÊ 
{
ÊÊ 
get
ÊÊ 
;
ÊÊ  
set
ÊÊ! $
;
ÊÊ$ %
}
ÊÊ& '
[
ËË 	
JsonProperty
ËË	 
(
ËË 
$str
ËË 
)
ËË 
]
ËË 
public
ÈÈ 
double
ÈÈ 
OMR
ÈÈ 
{
ÈÈ 
get
ÈÈ 
;
ÈÈ  
set
ÈÈ! $
;
ÈÈ$ %
}
ÈÈ& '
[
ÎÎ 	
JsonProperty
ÎÎ	 
(
ÎÎ 
$str
ÎÎ 
)
ÎÎ 
]
ÎÎ 
public
ÏÏ 
double
ÏÏ 
PAB
ÏÏ 
{
ÏÏ 
get
ÏÏ 
;
ÏÏ  
set
ÏÏ! $
;
ÏÏ$ %
}
ÏÏ& '
[
ÓÓ 	
JsonProperty
ÓÓ	 
(
ÓÓ 
$str
ÓÓ 
)
ÓÓ 
]
ÓÓ 
public
ÔÔ 
double
ÔÔ 
PEN
ÔÔ 
{
ÔÔ 
get
ÔÔ 
;
ÔÔ  
set
ÔÔ! $
;
ÔÔ$ %
}
ÔÔ& '
[
ÒÒ 	
JsonProperty
ÒÒ	 
(
ÒÒ 
$str
ÒÒ 
)
ÒÒ 
]
ÒÒ 
public
ÚÚ 
double
ÚÚ 
PGK
ÚÚ 
{
ÚÚ 
get
ÚÚ 
;
ÚÚ  
set
ÚÚ! $
;
ÚÚ$ %
}
ÚÚ& '
[
ÙÙ 	
JsonProperty
ÙÙ	 
(
ÙÙ 
$str
ÙÙ 
)
ÙÙ 
]
ÙÙ 
public
ıı 
double
ıı 
PHP
ıı 
{
ıı 
get
ıı 
;
ıı  
set
ıı! $
;
ıı$ %
}
ıı& '
[
˜˜ 	
JsonProperty
˜˜	 
(
˜˜ 
$str
˜˜ 
)
˜˜ 
]
˜˜ 
public
¯¯ 
double
¯¯ 
PKR
¯¯ 
{
¯¯ 
get
¯¯ 
;
¯¯  
set
¯¯! $
;
¯¯$ %
}
¯¯& '
[
˙˙ 	
JsonProperty
˙˙	 
(
˙˙ 
$str
˙˙ 
)
˙˙ 
]
˙˙ 
public
˚˚ 
double
˚˚ 
PLN
˚˚ 
{
˚˚ 
get
˚˚ 
;
˚˚  
set
˚˚! $
;
˚˚$ %
}
˚˚& '
[
˝˝ 	
JsonProperty
˝˝	 
(
˝˝ 
$str
˝˝ 
)
˝˝ 
]
˝˝ 
public
˛˛ 
double
˛˛ 
PYG
˛˛ 
{
˛˛ 
get
˛˛ 
;
˛˛  
set
˛˛! $
;
˛˛$ %
}
˛˛& '
[
ÄÄ 	
JsonProperty
ÄÄ	 
(
ÄÄ 
$str
ÄÄ 
)
ÄÄ 
]
ÄÄ 
public
ÅÅ 
double
ÅÅ 
QAR
ÅÅ 
{
ÅÅ 
get
ÅÅ 
;
ÅÅ  
set
ÅÅ! $
;
ÅÅ$ %
}
ÅÅ& '
[
ÉÉ 	
JsonProperty
ÉÉ	 
(
ÉÉ 
$str
ÉÉ 
)
ÉÉ 
]
ÉÉ 
public
ÑÑ 
double
ÑÑ 
RON
ÑÑ 
{
ÑÑ 
get
ÑÑ 
;
ÑÑ  
set
ÑÑ! $
;
ÑÑ$ %
}
ÑÑ& '
[
ÜÜ 	
JsonProperty
ÜÜ	 
(
ÜÜ 
$str
ÜÜ 
)
ÜÜ 
]
ÜÜ 
public
áá 
double
áá 
RSD
áá 
{
áá 
get
áá 
;
áá  
set
áá! $
;
áá$ %
}
áá& '
[
ââ 	
JsonProperty
ââ	 
(
ââ 
$str
ââ 
)
ââ 
]
ââ 
public
ää 
double
ää 
RUB
ää 
{
ää 
get
ää 
;
ää  
set
ää! $
;
ää$ %
}
ää& '
[
åå 	
JsonProperty
åå	 
(
åå 
$str
åå 
)
åå 
]
åå 
public
çç 
double
çç 
RWF
çç 
{
çç 
get
çç 
;
çç  
set
çç! $
;
çç$ %
}
çç& '
[
èè 	
JsonProperty
èè	 
(
èè 
$str
èè 
)
èè 
]
èè 
public
êê 
double
êê 
SAR
êê 
{
êê 
get
êê 
;
êê  
set
êê! $
;
êê$ %
}
êê& '
[
íí 	
JsonProperty
íí	 
(
íí 
$str
íí 
)
íí 
]
íí 
public
ìì 
double
ìì 
SBD
ìì 
{
ìì 
get
ìì 
;
ìì  
set
ìì! $
;
ìì$ %
}
ìì& '
[
ïï 	
JsonProperty
ïï	 
(
ïï 
$str
ïï 
)
ïï 
]
ïï 
public
ññ 
double
ññ 
SCR
ññ 
{
ññ 
get
ññ 
;
ññ  
set
ññ! $
;
ññ$ %
}
ññ& '
[
òò 	
JsonProperty
òò	 
(
òò 
$str
òò 
)
òò 
]
òò 
public
ôô 
double
ôô 
SDG
ôô 
{
ôô 
get
ôô 
;
ôô  
set
ôô! $
;
ôô$ %
}
ôô& '
[
õõ 	
JsonProperty
õõ	 
(
õõ 
$str
õõ 
)
õõ 
]
õõ 
public
úú 
double
úú 
SEK
úú 
{
úú 
get
úú 
;
úú  
set
úú! $
;
úú$ %
}
úú& '
[
ûû 	
JsonProperty
ûû	 
(
ûû 
$str
ûû 
)
ûû 
]
ûû 
public
üü 
double
üü 
SGD
üü 
{
üü 
get
üü 
;
üü  
set
üü! $
;
üü$ %
}
üü& '
[
°° 	
JsonProperty
°°	 
(
°° 
$str
°° 
)
°° 
]
°° 
public
¢¢ 
double
¢¢ 
SHP
¢¢ 
{
¢¢ 
get
¢¢ 
;
¢¢  
set
¢¢! $
;
¢¢$ %
}
¢¢& '
[
§§ 	
JsonProperty
§§	 
(
§§ 
$str
§§ 
)
§§ 
]
§§ 
public
•• 
double
•• 
SLL
•• 
{
•• 
get
•• 
;
••  
set
••! $
;
••$ %
}
••& '
[
ßß 	
JsonProperty
ßß	 
(
ßß 
$str
ßß 
)
ßß 
]
ßß 
public
®® 
double
®® 
SOS
®® 
{
®® 
get
®® 
;
®®  
set
®®! $
;
®®$ %
}
®®& '
[
™™ 	
JsonProperty
™™	 
(
™™ 
$str
™™ 
)
™™ 
]
™™ 
public
´´ 
double
´´ 
SRD
´´ 
{
´´ 
get
´´ 
;
´´  
set
´´! $
;
´´$ %
}
´´& '
[
≠≠ 	
JsonProperty
≠≠	 
(
≠≠ 
$str
≠≠ 
)
≠≠ 
]
≠≠ 
public
ÆÆ 
double
ÆÆ 
SSP
ÆÆ 
{
ÆÆ 
get
ÆÆ 
;
ÆÆ  
set
ÆÆ! $
;
ÆÆ$ %
}
ÆÆ& '
[
∞∞ 	
JsonProperty
∞∞	 
(
∞∞ 
$str
∞∞ 
)
∞∞ 
]
∞∞ 
public
±± 
double
±± 
STD
±± 
{
±± 
get
±± 
;
±±  
set
±±! $
;
±±$ %
}
±±& '
[
≥≥ 	
JsonProperty
≥≥	 
(
≥≥ 
$str
≥≥ 
)
≥≥ 
]
≥≥ 
public
¥¥ 
double
¥¥ 
STN
¥¥ 
{
¥¥ 
get
¥¥ 
;
¥¥  
set
¥¥! $
;
¥¥$ %
}
¥¥& '
[
∂∂ 	
JsonProperty
∂∂	 
(
∂∂ 
$str
∂∂ 
)
∂∂ 
]
∂∂ 
public
∑∑ 
double
∑∑ 
SVC
∑∑ 
{
∑∑ 
get
∑∑ 
;
∑∑  
set
∑∑! $
;
∑∑$ %
}
∑∑& '
[
ππ 	
JsonProperty
ππ	 
(
ππ 
$str
ππ 
)
ππ 
]
ππ 
public
∫∫ 
double
∫∫ 
SYP
∫∫ 
{
∫∫ 
get
∫∫ 
;
∫∫  
set
∫∫! $
;
∫∫$ %
}
∫∫& '
[
ºº 	
JsonProperty
ºº	 
(
ºº 
$str
ºº 
)
ºº 
]
ºº 
public
ΩΩ 
double
ΩΩ 
SZL
ΩΩ 
{
ΩΩ 
get
ΩΩ 
;
ΩΩ  
set
ΩΩ! $
;
ΩΩ$ %
}
ΩΩ& '
[
øø 	
JsonProperty
øø	 
(
øø 
$str
øø 
)
øø 
]
øø 
public
¿¿ 
double
¿¿ 
THB
¿¿ 
{
¿¿ 
get
¿¿ 
;
¿¿  
set
¿¿! $
;
¿¿$ %
}
¿¿& '
[
¬¬ 	
JsonProperty
¬¬	 
(
¬¬ 
$str
¬¬ 
)
¬¬ 
]
¬¬ 
public
√√ 
double
√√ 
TJS
√√ 
{
√√ 
get
√√ 
;
√√  
set
√√! $
;
√√$ %
}
√√& '
[
≈≈ 	
JsonProperty
≈≈	 
(
≈≈ 
$str
≈≈ 
)
≈≈ 
]
≈≈ 
public
∆∆ 
double
∆∆ 
TMT
∆∆ 
{
∆∆ 
get
∆∆ 
;
∆∆  
set
∆∆! $
;
∆∆$ %
}
∆∆& '
[
»» 	
JsonProperty
»»	 
(
»» 
$str
»» 
)
»» 
]
»» 
public
…… 
double
…… 
TND
…… 
{
…… 
get
…… 
;
……  
set
……! $
;
……$ %
}
……& '
[
ÀÀ 	
JsonProperty
ÀÀ	 
(
ÀÀ 
$str
ÀÀ 
)
ÀÀ 
]
ÀÀ 
public
ÃÃ 
double
ÃÃ 
TOP
ÃÃ 
{
ÃÃ 
get
ÃÃ 
;
ÃÃ  
set
ÃÃ! $
;
ÃÃ$ %
}
ÃÃ& '
[
ŒŒ 	
JsonProperty
ŒŒ	 
(
ŒŒ 
$str
ŒŒ 
)
ŒŒ 
]
ŒŒ 
public
œœ 
double
œœ 
TRY
œœ 
{
œœ 
get
œœ 
;
œœ  
set
œœ! $
;
œœ$ %
}
œœ& '
[
—— 	
JsonProperty
——	 
(
—— 
$str
—— 
)
—— 
]
—— 
public
““ 
double
““ 
TTD
““ 
{
““ 
get
““ 
;
““  
set
““! $
;
““$ %
}
““& '
[
‘‘ 	
JsonProperty
‘‘	 
(
‘‘ 
$str
‘‘ 
)
‘‘ 
]
‘‘ 
public
’’ 
double
’’ 
TWD
’’ 
{
’’ 
get
’’ 
;
’’  
set
’’! $
;
’’$ %
}
’’& '
[
◊◊ 	
JsonProperty
◊◊	 
(
◊◊ 
$str
◊◊ 
)
◊◊ 
]
◊◊ 
public
ÿÿ 
double
ÿÿ 
TZS
ÿÿ 
{
ÿÿ 
get
ÿÿ 
;
ÿÿ  
set
ÿÿ! $
;
ÿÿ$ %
}
ÿÿ& '
[
⁄⁄ 	
JsonProperty
⁄⁄	 
(
⁄⁄ 
$str
⁄⁄ 
)
⁄⁄ 
]
⁄⁄ 
public
€€ 
double
€€ 
UAH
€€ 
{
€€ 
get
€€ 
;
€€  
set
€€! $
;
€€$ %
}
€€& '
[
›› 	
JsonProperty
››	 
(
›› 
$str
›› 
)
›› 
]
›› 
public
ﬁﬁ 
double
ﬁﬁ 
UGX
ﬁﬁ 
{
ﬁﬁ 
get
ﬁﬁ 
;
ﬁﬁ  
set
ﬁﬁ! $
;
ﬁﬁ$ %
}
ﬁﬁ& '
[
‡‡ 	
JsonProperty
‡‡	 
(
‡‡ 
$str
‡‡ 
)
‡‡ 
]
‡‡ 
public
·· 
double
·· 
USD
·· 
{
·· 
get
·· 
;
··  
set
··! $
;
··$ %
}
··& '
[
„„ 	
JsonProperty
„„	 
(
„„ 
$str
„„ 
)
„„ 
]
„„ 
public
‰‰ 
double
‰‰ 
UYU
‰‰ 
{
‰‰ 
get
‰‰ 
;
‰‰  
set
‰‰! $
;
‰‰$ %
}
‰‰& '
[
ÊÊ 	
JsonProperty
ÊÊ	 
(
ÊÊ 
$str
ÊÊ 
)
ÊÊ 
]
ÊÊ 
public
ÁÁ 
double
ÁÁ 
UZS
ÁÁ 
{
ÁÁ 
get
ÁÁ 
;
ÁÁ  
set
ÁÁ! $
;
ÁÁ$ %
}
ÁÁ& '
[
ÈÈ 	
JsonProperty
ÈÈ	 
(
ÈÈ 
$str
ÈÈ 
)
ÈÈ 
]
ÈÈ 
public
ÍÍ 
double
ÍÍ 
VES
ÍÍ 
{
ÍÍ 
get
ÍÍ 
;
ÍÍ  
set
ÍÍ! $
;
ÍÍ$ %
}
ÍÍ& '
[
ÏÏ 	
JsonProperty
ÏÏ	 
(
ÏÏ 
$str
ÏÏ 
)
ÏÏ 
]
ÏÏ 
public
ÌÌ 
double
ÌÌ 
VND
ÌÌ 
{
ÌÌ 
get
ÌÌ 
;
ÌÌ  
set
ÌÌ! $
;
ÌÌ$ %
}
ÌÌ& '
[
ÔÔ 	
JsonProperty
ÔÔ	 
(
ÔÔ 
$str
ÔÔ 
)
ÔÔ 
]
ÔÔ 
public
 
double
 
VUV
 
{
 
get
 
;
  
set
! $
;
$ %
}
& '
[
ÚÚ 	
JsonProperty
ÚÚ	 
(
ÚÚ 
$str
ÚÚ 
)
ÚÚ 
]
ÚÚ 
public
ÛÛ 
double
ÛÛ 
WST
ÛÛ 
{
ÛÛ 
get
ÛÛ 
;
ÛÛ  
set
ÛÛ! $
;
ÛÛ$ %
}
ÛÛ& '
[
ıı 	
JsonProperty
ıı	 
(
ıı 
$str
ıı 
)
ıı 
]
ıı 
public
ˆˆ 
double
ˆˆ 
XAF
ˆˆ 
{
ˆˆ 
get
ˆˆ 
;
ˆˆ  
set
ˆˆ! $
;
ˆˆ$ %
}
ˆˆ& '
[
¯¯ 	
JsonProperty
¯¯	 
(
¯¯ 
$str
¯¯ 
)
¯¯ 
]
¯¯ 
public
˘˘ 
double
˘˘ 
XAG
˘˘ 
{
˘˘ 
get
˘˘ 
;
˘˘  
set
˘˘! $
;
˘˘$ %
}
˘˘& '
[
˚˚ 	
JsonProperty
˚˚	 
(
˚˚ 
$str
˚˚ 
)
˚˚ 
]
˚˚ 
public
¸¸ 
double
¸¸ 
XAU
¸¸ 
{
¸¸ 
get
¸¸ 
;
¸¸  
set
¸¸! $
;
¸¸$ %
}
¸¸& '
[
˛˛ 	
JsonProperty
˛˛	 
(
˛˛ 
$str
˛˛ 
)
˛˛ 
]
˛˛ 
public
ˇˇ 
double
ˇˇ 
XCD
ˇˇ 
{
ˇˇ 
get
ˇˇ 
;
ˇˇ  
set
ˇˇ! $
;
ˇˇ$ %
}
ˇˇ& '
[
ÅÅ 	
JsonProperty
ÅÅ	 
(
ÅÅ 
$str
ÅÅ 
)
ÅÅ 
]
ÅÅ 
public
ÇÇ 
double
ÇÇ 
XDR
ÇÇ 
{
ÇÇ 
get
ÇÇ 
;
ÇÇ  
set
ÇÇ! $
;
ÇÇ$ %
}
ÇÇ& '
[
ÑÑ 	
JsonProperty
ÑÑ	 
(
ÑÑ 
$str
ÑÑ 
)
ÑÑ 
]
ÑÑ 
public
ÖÖ 
double
ÖÖ 
XOF
ÖÖ 
{
ÖÖ 
get
ÖÖ 
;
ÖÖ  
set
ÖÖ! $
;
ÖÖ$ %
}
ÖÖ& '
[
áá 	
JsonProperty
áá	 
(
áá 
$str
áá 
)
áá 
]
áá 
public
àà 
double
àà 
XPD
àà 
{
àà 
get
àà 
;
àà  
set
àà! $
;
àà$ %
}
àà& '
[
ää 	
JsonProperty
ää	 
(
ää 
$str
ää 
)
ää 
]
ää 
public
ãã 
double
ãã 
XPF
ãã 
{
ãã 
get
ãã 
;
ãã  
set
ãã! $
;
ãã$ %
}
ãã& '
[
çç 	
JsonProperty
çç	 
(
çç 
$str
çç 
)
çç 
]
çç 
public
éé 
double
éé 
XPT
éé 
{
éé 
get
éé 
;
éé  
set
éé! $
;
éé$ %
}
éé& '
[
êê 	
JsonProperty
êê	 
(
êê 
$str
êê 
)
êê 
]
êê 
public
ëë 
double
ëë 
YER
ëë 
{
ëë 
get
ëë 
;
ëë  
set
ëë! $
;
ëë$ %
}
ëë& '
[
ìì 	
JsonProperty
ìì	 
(
ìì 
$str
ìì 
)
ìì 
]
ìì 
public
îî 
double
îî 
ZAR
îî 
{
îî 
get
îî 
;
îî  
set
îî! $
;
îî$ %
}
îî& '
[
ññ 	
JsonProperty
ññ	 
(
ññ 
$str
ññ 
)
ññ 
]
ññ 
public
óó 
double
óó 
ZMW
óó 
{
óó 
get
óó 
;
óó  
set
óó! $
;
óó$ %
}
óó& '
[
ôô 	
JsonProperty
ôô	 
(
ôô 
$str
ôô 
)
ôô 
]
ôô 
public
öö 
double
öö 
ZWL
öö 
{
öö 
get
öö 
;
öö  
set
öö! $
;
öö$ %
}
öö& '
}
õõ 
}ùù ¥
VC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\DTO\ShoppingCartItem.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 
DTO "
{ 
public 

class 
ShoppingCartItem !
{ 
public 
int 
	ProductId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
}		 
}

 Æ
PC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ErrorViewModel.cs
	namespace 	
LolipopSquare
 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
} Ω
GC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\Image.cs
	namespace 	
LolipopSquare
 
. 
Models 
{ 
public 

class 
Image 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 

ImageTitle  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
byte 
[ 
] 
	ImageData 
{  !
get" %
;% &
set' *
;* +
}, -
public 
Product 
Product 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
int		 
?		 
	ProductId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
} 
} ƒ

GC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\Order.cs
	namespace 	
LolipopSquare
 
. 
Models 
{ 
public 

class 
Order 
{ 
public 
int 
OrderId 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
DateOfOrder #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
decimal 

TotalPrice !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
OrderConfirmation %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
false6 ;
;; <
public		 
ICollection		 
<		 
ProductOrder		 '
>		' (
ProductOrders		) 6
{		7 8
get		9 <
;		< =
set		> A
;		A B
}		C D
public

 
ApplicationUser

 
ApplicationUser

 .
{

/ 0
get

1 4
;

4 5
set

6 9
;

9 :
}

; <
} 
} ó
IC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\Product.cs
	namespace 	
LolipopSquare
 
. 
Models 
{ 
public 

class 
Product 
{ 
[ 	
Key	 
] 
[ 	
Display	 
( 
Name 
= 
$str #
)# $
]$ %
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Display	 
( 
Name 
= 
$str ,
), -
]- .
[ 	
	MinLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str% V
)V W
]W X
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Availability  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Category 
Category  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ICollection 
< 
Image  
>  !
Images" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
ICollection 
< 
ProductOrder '
>' (
ProductOrders) 6
{7 8
get9 <
;< =
set> A
;A B
}C D
} 
} Ç
NC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ProductOrder.cs
	namespace 	
LolipopSquare
 
. 
Models 
{ 
public 

class 
ProductOrder 
{ 
public 
int 
	ProductId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
Product		 
Product		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
int

 
OrderID

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
Order 
Order 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Î
]C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\AddNewCategoryVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
AddNewCategoryVM !
{ 
[ 	
Required	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[

 	
Required

	 
]

 
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ‰
\C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\AddNewProductVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
AddNewProductVM  
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
StringLength			 
(		 
$num		 
,		 
MinimumLength		 '
=		( )
$num		* +
,		+ ,
ErrorMessage		- 9
=		: ;
$str		< k
)		k l
]		l m
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage $
=% &
$str' J
)J K
]K L
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ -
,- .
ErrorMessage/ ;
=< =
$str> n
)n o
]o p
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Availability  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Category 
Category  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
List 
< 
Category 
> 
CategoryList *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
[ 	
Display	 
( 
Name 
= 
$str '
)' (
]( )
public 
ICollection 
< 
	IFormFile $
>$ %
Images& ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} Ñ	
ZC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\AllProductsVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
AllProductsVM 
{ 
public 
List 
< 
	ProductVM 
> 
Products '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
CurrentPage 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Search 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
Count		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
}

 
} Å
]C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\DeleteCategoryVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
DeleteCategoryVM !
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} à	
\C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\DeleteProductVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
DeleteProductVM  
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
ICollection		 
<		 
Image		  
>		  !
Images		" (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
}

 
} Á
[C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\EditCategoryVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
EditCategoryVM 
{ 
[ 	
Required	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[

 	
Required

	 
]

 
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ï

[C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\OrderHistoryVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
OrderHistoryVM 
{ 
public 
OrderHistoryVM 
( 
) 
{ 	
ApplicationUser 
= 
new !
ApplicationUser" 1
(1 2
)2 3
;3 4
} 	
public		 
int		 
OrderId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
DateTime

 
DateOfOrder

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
decimal 

TotalPrice !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
OrderConfirmation %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
ApplicationUser 
ApplicationUser .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} µ	
[C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\OrderSummaryVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
OrderSummaryVM 
{ 
public

 
int

 
OrderId

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
DateTime 
DateOfOrder #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
decimal 

TotalPrice !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
List 
< 
ShoppingCartItem $
>$ %
ShoppingCartItems& 7
{8 9
get9 <
;< =
set> A
;A B
}B C
public 
ApplicationUser 
ApplicationUser .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
} °
]C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\ProductDetailsVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
{ 
public 

class 
ProductDetailsVM !
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
decimal		 
Price		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
ICollection 
< 
Image  
>  !
Images" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
decimal 

PriceInUsd !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 

PriceInPLN !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Œ
[C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\ProductImageVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
ProductImageVM 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
StringLength			 
(		 
$num		 
,		 
MinimumLength		 '
=		( )
$num		* +
,		+ ,
ErrorMessage		- 9
=		: ;
$str		< k
)		k l
]		l m
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage $
=% &
$str' J
)J K
]K L
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
StringLength	 
( 
$num 
, 
MinimumLength (
=) *
$num+ -
,- .
ErrorMessage/ ;
=< =
$str= m
)m n
]n o
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Availability  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Category 
Category  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
List 
< 
Category 
> 
CategoryList *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
CategoryName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
ICollection 
< 
Image  
>  !
Images" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
Display	 
( 
Name 
= 
$str &
)& '
]' (
public 
List 
< 
	IFormFile 
> 
	NewImages (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} 
VC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\ProductVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
	ProductVM 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
bool		 
Availability		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
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
/ 0
public 
ICollection 
< 
Image  
>  !
Images" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Image 
Image 
{ 
get  
;  !
set" %
;% &
}' (
public 
decimal 
	PriceInEU  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Å
[C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Models\ViewModels\ProjectRolesVM.cs
	namespace 	
LolipopSquare
 
. 
Models 
. 

ViewModels )
{ 
public 

class 
ProjectRolesVM 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ¿/
BC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Program.cs
var		 
builder		 
=		 
WebApplication		 
.		 
CreateBuilder		 *
(		* +
args		+ /
)		/ 0
;		0 1
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
builder 
. 
Services 
. %
AddDistributedMemoryCache *
(* +
)+ ,
;, -
var 
connectionString 
= 
builder 
. 
Configuration ,
., -
GetConnectionString- @
(@ A
$strA T
)T U
;U V
builder 
. 
Services 
. 
AddDbContext 
<  
ApplicationDbContext 2
>2 3
(3 4
options4 ;
=>< >
options 
. 
UseSqlServer 
( 
connectionString %
)% &
)& '
;' (
builder 
. 
Services 
. 
AddDefaultIdentity #
<# $
IdentityUser$ 0
>0 1
(1 2
options2 9
=>: <
{ 
options 
. 
SignIn 
. #
RequireConfirmedAccount *
=+ ,
true- 1
;1 2
options 
. 
Password 
. 
RequiredLength #
=$ %
$num& '
;' (
options 
. 
User 
. 
RequireUniqueEmail #
=$ %
true& *
;* +
options 
. 
SignIn 
. !
RequireConfirmedEmail (
=) *
true+ /
;/ 0
} 
) 
. 
AddRoles 
< 
IdentityRole 
> 
( 
) 
. $
AddEntityFrameworkStores 
<  
ApplicationDbContext 2
>2 3
(3 4
)4 5
;5 6
builder 
. 
Services 
. "
AddHttpContextAccessor '
(' (
)( )
;) *
builder 
. 
Services 
. 

AddSession 
( 
options #
=>$ &
{ 
options 
. 
Cookie 
. 
IsEssential 
=  
true! %
;% &
}   
)   
;   
builder"" 
."" 
Services"" 
."" 
AddTransient"" 
<"" 
IProductService"" -
,""- .
ProductService""/ =
>""= >
(""> ?
)""? @
;""@ A
builder## 
.## 
Services## 
.## 
AddTransient## 
<## 
ICategoryService## .
,##. /
CategoryService##0 ?
>##? @
(##@ A
)##A B
;##B C
builder$$ 
.$$ 
Services$$ 
.$$ 
AddTransient$$ 
<$$  
IShoppingCartService$$ 2
,$$2 3
ShoppingCartService$$4 G
>$$G H
($$H I
)$$I J
;$$J K
builder%% 
.%% 
Services%% 
.%% 
AddTransient%% 
<%%  
IOrderHistoryService%% 2
,%%2 3
OrderHistoryService%%4 G
>%%G H
(%%H I
)%%I J
;%%J K
builder&& 
.&& 
Services&& 
.&& 
AddTransient&& 
<&& 
IEmailSender&& *
,&&* +
EmailService&&, 8
>&&8 9
(&&9 :
)&&: ;
;&&; <
builder'' 
.'' 
Services'' 
.'' 
	Configure'' 
<'' $
AuthMessageSenderOptions'' 3
>''3 4
(''4 5
builder''5 <
.''< =
Configuration''= J
)''J K
;''K L
var(( 
app(( 
=(( 	
builder((
 
.(( 
Build(( 
((( 
)(( 
;(( 
if** 
(** 
!** 
app** 
.** 	
Environment**	 
.** 
IsDevelopment** "
(**" #
)**# $
)**$ %
{++ 
app,, 
.,, 
UseExceptionHandler,, 
(,, 
$str,, )
),,) *
;,,* +
app.. 
... 
UseHsts.. 
(.. 
).. 
;.. 
}// 
app00 
.00 "
UseRequestLocalization00 
(00 
$str00 "
)00" #
;00# $
app22 
.22 
UseHttpsRedirection22 
(22 
)22 
;22 
app33 
.33 
UseStaticFiles33 
(33 
)33 
;33 
app44 
.44 

UseRouting44 
(44 
)44 
;44 
app55 
.55 
UseAuthentication55 
(55 
)55 
;55 
;55 
app66 
.66 
UseAuthorization66 
(66 
)66 
;66 
app77 
.77 

UseSession77 
(77 
)77 
;77 
app88 
.88 
MapRazorPages88 
(88 
)88 
;88 
app99 
.99 
MapControllerRoute99 
(99 
name:: 
::: 	
$str::
 
,:: 
pattern;; 
:;; 
$str;; 8
);;8 9
;;;9 :
app>> 
.>> 
Run>> 
(>> 
)>> 	
;>>	 
È
_C:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Services\AuthMessageSenderOptions.cs.cs
	namespace 	
LolipopSquare
 
. 
Services  
{ 
public 

class $
AuthMessageSenderOptions )
{ 
public 
string 
? 
SendGridKey "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ó5
SC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Services\CategoryService.cs
	namespace 	
LolipopSquare
 
. 
Services  
{ 
public 

class 
CategoryService  
:! "
ICategoryService# 3
{		 
private

 
readonly

  
ApplicationDbContext

 -
_applicationDb

. <
;

< =
public 
CategoryService 
(  
ApplicationDbContext 3
applicationDb4 A
)A B
{ 	
_applicationDb 
= 
applicationDb *
;* +
} 	
public 
List 
< 
Category 
>  
DisplayAllCategories 2
(2 3
)3 4
{ 	
var 
listOfCategories  
=! "
_applicationDb# 1
.1 2

Categories2 <
.< =
ToList= C
(C D
)D E
;E F
return 
listOfCategories #
;# $
} 	
public 
EditCategoryVM 
GetCategoryById -
(- .
int. 1
id2 4
)4 5
{ 	
var 
category 
= 
_applicationDb )
.) *

Categories* 4
.4 5
Where5 :
(: ;
x; <
=>= ?
x@ A
.A B
IdB D
==E G
idH J
)J K
.K L
FirstOrDefaultL Z
(Z [
)[ \
;\ ]
EditCategoryVM 
editCategoryVm )
=* +
new, /
EditCategoryVM0 >
(> ?
)? @
;@ A
if 
( 
category 
!= 
null  
)  !
{ 
editCategoryVm 
. 
Id !
=" #
category$ ,
., -
Id- /
;/ 0
editCategoryVm 
. 
Name #
=$ %
category& .
.. /
Name/ 3
;3 4
} 
return   
editCategoryVm   !
;  ! "
}!! 	
public## 
Category## 
UpdateCategory## &
(##& '
EditCategoryVM##' 5
editCategoryVM##6 D
)##D E
{$$ 	
var%% 
categoryToUpdate%%  
=%%! "
_applicationDb%%# 1
.%%1 2

Categories%%2 <
.%%< =
Where%%= B
(%%B C
x%%C D
=>%%E G
x%%H I
.%%I J
Id%%J L
==%%M O
editCategoryVM%%P ^
.%%^ _
Id%%_ a
)%%a b
.%%b c
FirstOrDefault%%c q
(%%q r
)%%r s
;%%s t
if&& 
(&& 
categoryToUpdate&& 
!=&&  "
null&&# '
)&&' (
{'' 
categoryToUpdate((  
.((  !
Id((! #
=(($ %
editCategoryVM((& 4
.((4 5
Id((5 7
;((7 8
categoryToUpdate))  
.))  !
Name))! %
=))& '
editCategoryVM))( 6
.))6 7
Name))7 ;
;)); <
_applicationDb** 
.** 
SaveChanges** *
(*** +
)**+ ,
;**, -
return++ 
categoryToUpdate++ '
;++' (
},, 
throw-- 
new-- 
	Exception-- 
(--  
$str--  A
)--A B
;--B C
}.. 	
public00 
Category00 
AddNewCategory00 &
(00& '
AddNewCategoryVM00' 7
newCategoryVM008 E
)00E F
{11 	
var22 
newCategory22 
=22 
new22 !
Category22" *
(22* +
)22+ ,
;22, -
newCategory33 
.33 
Id33 
=33 
newCategoryVM33 *
.33* +
Id33+ -
;33- .
newCategory44 
.44 
Name44 
=44 
newCategoryVM44 ,
.44, -
Name44- 1
;441 2
_applicationDb55 
.55 
Add55 
(55 
newCategory55 *
)55* +
;55+ ,
_applicationDb66 
.66 
SaveChanges66 &
(66& '
)66' (
;66( )
return77 
(77 
newCategory77 
)77  
;77  !
}88 	
public:: 
DeleteCategoryVM:: $
GetCategoryByIdForDelete::  8
(::8 9
int::9 <
id::= ?
)::? @
{;; 	
var<< 
category<< 
=<< 
_applicationDb<< )
.<<) *

Categories<<* 4
.<<4 5
Where<<5 :
(<<: ;
x<<; <
=><<= ?
x<<@ A
.<<A B
Id<<B D
==<<E G
id<<H J
)<<J K
.<<K L
FirstOrDefault<<L Z
(<<Z [
)<<[ \
;<<\ ]
DeleteCategoryVM== 
deleteCategoryVM== -
===. /
new==0 3
DeleteCategoryVM==4 D
(==D E
)==E F
;==F G
if>> 
(>> 
category>> 
!=>> 
null>> 
)>>  
{?? 
deleteCategoryVM@@  
.@@  !
Id@@! #
=@@$ %
category@@& .
.@@. /
Id@@/ 1
;@@1 2
deleteCategoryVMAA  
.AA  !
NameAA! %
=AA& '
categoryAA( 0
.AA0 1
NameAA1 5
;AA5 6
returnBB 
deleteCategoryVMBB '
;BB' (
}CC 
returnDD 
deleteCategoryVMDD #
;DD# $
}EE 	
publicGG 
voidGG 
DeleteCategoryGG "
(GG" #
intGG# &
idGG' )
)GG) *
{HH 	
varII 
categoryToRemoveII 
=II  !
_applicationDbII" 0
.II0 1

CategoriesII1 ;
.II; <
WhereII< A
(IIA B
xIIB C
=>IID F
xIIG H
.IIH I
IdIII K
==IIL N
idIIO Q
)IIQ R
.IIR S
FirstOrDefaultIIS a
(IIa b
)IIb c
;IIc d
_applicationDbJJ 
.JJ 

CategoriesJJ %
.JJ% &
RemoveJJ& ,
(JJ, -
categoryToRemoveJJ- =
)JJ= >
;JJ> ?
_applicationDbKK 
.KK 
SaveChangesKK &
(KK& '
)KK' (
;KK( )
}LL 	
}OO 
}QQ ∆
PC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Services\EmailService.cs
	namespace 	
LolipopSquare
 
. 
Services  
{ 
public 

class 
EmailService 
: 
IEmailSender  ,
{		 
public

 
EmailService

 
(

 
IOptions

 $
<

$ %$
AuthMessageSenderOptions

% =
>

= >
optionsAccessor

? N
)

N O
{ 	
Options 
= 
optionsAccessor %
.% &
Value& +
;+ ,
} 	
public $
AuthMessageSenderOptions '
Options( /
{0 1
get2 5
;5 6
}7 8
public 
async 
Task 
SendEmailAsync (
(( )
string) /
toEmail0 7
,7 8
string9 ?
subject@ G
,G H
stringI O
messageP W
)W X
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
Options% ,
., -
SendGridKey- 8
)8 9
)9 :
{ 
throw 
new 
	Exception #
(# $
$str$ 6
)6 7
;7 8
} 
await 
Execute 
( 
Options !
.! "
SendGridKey" -
,- .
subject/ 6
,6 7
message8 ?
,? @
toEmailA H
)H I
;I J
} 	
public 
async 
Task 
Execute !
(! "
string" (
apiKey) /
,/ 0
string1 7
subject8 ?
,? @
stringA G
messageH O
,O P
stringQ W
toEmailX _
)_ `
{ 	
var 
client 
= 
new 
SendGridClient +
(+ ,
apiKey, 2
)2 3
;3 4
var 
msg 
= 
new 
SendGridMessage )
() *
)* +
{ 
From 
= 
new 
EmailAddress '
(' (
$str( H
,H I
$strJ ]
)] ^
,^ _
Subject   
=   
subject   !
,  ! "
PlainTextContent!!  
=!!! "
message!!# *
,!!* +
HtmlContent"" 
="" 
message"" %
}## 
;## 
msg$$ 
.$$ 
AddTo$$ 
($$ 
new$$ 
EmailAddress$$ &
($$& '
toEmail$$' .
)$$. /
)$$/ 0
;$$0 1
msg(( 
.(( 
SetClickTracking((  
(((  !
false((! &
,((& '
false((( -
)((- .
;((. /
await)) 
client)) 
.)) 
SendEmailAsync)) '
())' (
msg))( +
)))+ ,
;)), -
}** 	
}++ 
},, ˜$
WC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Services\OrderHistoryService.cs
	namespace 	
LolipopSquare
 
. 
Services  
{ 
public 

class 
OrderHistoryService $
:% & 
IOrderHistoryService' ;
{		 
private

 
readonly

  
ApplicationDbContext

 -
_applicationDb

. <
;

< =
public 
OrderHistoryService "
(" # 
ApplicationDbContext# 7
applicationDb8 E
)E F
{ 	
_applicationDb 
= 
applicationDb *
;* +
} 	
public 
List 
< 
OrderHistoryVM "
>" #
DisplayOrderHistory$ 7
(7 8
string8 >
userId? E
)E F
{ 	
var 
listOfOrders 
= 
_applicationDb -
.- .
Orders. 4
.4 5
Where5 :
(: ;
x; <
=>= ?
x@ A
.A B
ApplicationUserB Q
.Q R
IdR T
==U W
userIdX ^
)^ _
._ `
ToList` f
(f g
)g h
;h i
List 
< 
OrderHistoryVM 
>  
userListOfOrders! 1
=2 3
new4 7
List8 <
<< =
OrderHistoryVM= K
>K L
(L M
)M N
;N O
if 
( 
listOfOrders 
. 
Count "
># $
$num% &
)& '
{ 
foreach 
( 
var 
item !
in" $
listOfOrders% 1
)1 2
{ 
OrderHistoryVM "
orderHistory# /
=0 1
new2 5
OrderHistoryVM6 D
(D E
)E F
;F G
orderHistory  
.  !
OrderId! (
=) *
item+ /
./ 0
OrderId0 7
;7 8
orderHistory  
.  !
DateOfOrder! ,
=- .
item/ 3
.3 4
DateOfOrder4 ?
;? @
orderHistory  
.  !

TotalPrice! +
=, -
item. 2
.2 3

TotalPrice3 =
;= >
orderHistory  
.  !
OrderConfirmation! 2
=3 4
item5 9
.9 :
OrderConfirmation: K
;K L
userListOfOrders   #
.  # $
Add  $ '
(  ' (
orderHistory  ( 4
)  4 5
;  5 6
var!! 
user!! 
=!! 
_applicationDb!! -
.!!- .
ApplicationUser!!. =
.!!= >
FirstOrDefault!!> L
(!!L M
x!!M N
=>!!O Q
x!!R S
.!!S T
Id!!T V
==!!W Y
userId!!Z `
)!!` a
;!!a b
if"" 
("" 
user"" 
!="" 
null""  $
)""$ %
{## 
orderHistory$$ $
.$$$ %
ApplicationUser$$% 4
.$$4 5
Id$$5 7
=$$8 9
user$$: >
.$$> ?
Id$$? A
;$$A B
orderHistory%% $
.%%$ %
ApplicationUser%%% 4
.%%4 5
	FirstName%%5 >
=%%? @
user%%A E
.%%E F
	FirstName%%F O
;%%O P
orderHistory&& $
.&&$ %
ApplicationUser&&% 4
.&&4 5
LastName&&5 =
=&&> ?
user&&@ D
.&&D E
LastName&&E M
;&&M N
orderHistory'' $
.''$ %
ApplicationUser''% 4
.''4 5

BuildingNo''5 ?
=''@ A
user''B F
.''F G

BuildingNo''G Q
;''Q R
orderHistory(( $
.(($ %
ApplicationUser((% 4
.((4 5
City((5 9
=((: ;
user((< @
.((@ A
City((A E
;((E F
orderHistory)) $
.))$ %
ApplicationUser))% 4
.))4 5
ZipCode))5 <
=))= >
user))? C
.))C D
ZipCode))D K
;))K L
orderHistory** $
.**$ %
ApplicationUser**% 4
.**4 5
PhoneNumber**5 @
=**A B
user**C G
.**G H
PhoneNumber**H S
;**S T
}++ 
}-- 
}.. 
return// 
userListOfOrders// #
;//# $
}00 	
}11 
}22 ¿π
RC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Services\ProductService.cs
	namespace

 	
LolipopSquare


 
.

 
Services

  
{ 
public 

class 
ProductService 
:  !
IProductService" 1
{ 
private 
readonly  
ApplicationDbContext -

_dbContext. 8
;8 9
public 
ProductService 
(  
ApplicationDbContext 2
	dbContext3 <
)< =
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
AllProductsVM 
GetAllProducts +
(+ ,
int, /
pageSize0 8
,8 9
int: =

actualPage> H
,H I
stringJ P
searchQ W
,W X
stringY _
category` h
)h i
{ 	
List 
< 
Product 
> 
products "
;" #
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
category& .
). /
)/ 0
{ 
products 
= 

_dbContext %
.% &
Products& .
.. /
Include/ 6
(6 7
product7 >
=>? A
productB I
.I J
ImagesJ P
)P Q
.Q R
IncludeR Y
(Y Z
yZ [
=>\ ^
y_ `
.` a
Categorya i
)i j
.j k
Wherek p
(p q
xq r
=>s u
xv w
.w x
Namex |
.| }
ToLower	} Ñ
(
Ñ Ö
)
Ö Ü
.
Ü á

StartsWith
á ë
(
ë í
search
í ò
.
ò ô
ToLower
ô †
(
† °
)
° ¢
)
¢ £
)
£ §
.
§ •
Where
• ™
(
™ ´
x
´ ¨
=>
≠ Ø
x
∞ ±
.
± ≤
Category
≤ ∫
.
∫ ª
Name
ª ø
==
¿ ¬
category
√ À
)
À Ã
.
Ã Õ
ToList
Õ ”
(
” ‘
)
‘ ’
;
’ ÷
} 
else 
{ 
products 
= 

_dbContext &
.& '
Products' /
./ 0
Include0 7
(7 8
product8 ?
=>@ B
productC J
.J K
ImagesK Q
)Q R
.R S
IncludeS Z
(Z [
y[ \
=>] _
y` a
.a b
Categoryb j
)j k
.k l
Wherel q
(q r
xr s
=>t v
xw x
.x y
Namey }
.} ~
ToLower	~ Ö
(
Ö Ü
)
Ü á
.
á à

StartsWith
à í
(
í ì
search
ì ô
.
ô ö
ToLower
ö °
(
° ¢
)
¢ £
)
£ §
)
§ •
.
• ¶
ToList
¶ ¨
(
¨ ≠
)
≠ Æ
;
Æ Ø
}   
List!! 
<!! 
	ProductVM!! 
>!! 
listOfProducts!! *
=!!+ ,
new!!- 0
List!!1 5
<!!5 6
	ProductVM!!6 ?
>!!? @
(!!@ A
)!!A B
;!!B C
var"" 
productsToDisplay"" !
=""" #
products""$ ,
."", -
Skip""- 1
(""1 2
pageSize""2 :
*""; <
(""= >

actualPage""> H
-""I J
$num""K L
)""L M
)""M N
.""N O
Take""O S
(""S T
pageSize""T \
)""\ ]
;""] ^
foreach## 
(## 
var## 
item## 
in##  
productsToDisplay##! 2
)##2 3
{$$ 
	ProductVM%% 
	productVM%% #
=%%$ %
new%%& )
	ProductVM%%* 3
{&& 
Id'' 
='' 
item'' 
.'' 
Id''  
,''  !
Name(( 
=(( 
item(( 
.((  
Name((  $
,(($ %
Price)) 
=)) 
item))  
.))  !
Price))! &
,))& '
Description** 
=**  !
item**" &
.**& '
Description**' 2
,**2 3
Availability++  
=++! "
item++# '
.++' (
Availability++( 4
,++4 5
Images,, 
=,, 
item,, !
.,,! "
Images,," (
,,,( )
CategoryName--  
=--! "
item--# '
.--' (
Category--( 0
.--0 1
Name--1 5
}.. 
;.. 
listOfProducts// 
.// 
Add// "
(//" #
	productVM//# ,
)//, -
;//- .
}00 
AllProductsVM22 
allProductsVM22 '
=22( )
new22* -
AllProductsVM22. ;
(22; <
)22< =
;22= >
allProductsVM33 
.33 
CurrentPage33 %
=33& '

actualPage33( 2
;332 3
allProductsVM44 
.44 
PageSize44 "
=44# $
pageSize44% -
;44- .
allProductsVM55 
.55 
Search55  
=55! "
search55# )
;55) *
allProductsVM66 
.66 
Products66 "
=66# $
listOfProducts66% 3
;663 4
allProductsVM77 
.77 
Count77 
=77  !
products77" *
.77* +
Count77+ 0
;770 1
return88 
allProductsVM88  
;88  !
}99 	
public;; 
ProductImageVM;; 
GetProductById;; ,
(;;, -
int;;- 0
id;;1 3
);;3 4
{<< 	
var== 
editData== 
=== 

_dbContext== %
.==% &
Products==& .
.==. /
Include==/ 6
(==6 7
x==7 8
=>==8 :
x==: ;
.==; <
Images==< B
)==B C
.==C D
FirstOrDefault==D R
(==R S
x==S T
=>==U W
x==X Y
.==Y Z
Id==Z \
====] _
id==` b
)==b c
;==c d
var>> 

categories>> 
=>> 

_dbContext>> '
.>>' (

Categories>>( 2
.>>2 3
ToList>>3 9
(>>9 :
)>>: ;
;>>; <
ProductImageVM?? 
detailVM?? #
=??$ %
new??& )
(??) *
)??* +
;??+ ,
if@@ 
(@@ 
editData@@ 
!=@@ 
null@@ 
)@@  
{AA 
detailVMBB 
.BB 
IdBB 
=BB 
editDataBB &
.BB& '
IdBB' )
;BB) *
detailVMCC 
.CC 
NameCC 
=CC 
editDataCC  (
.CC( )
NameCC) -
;CC- .
detailVMDD 
.DD 
PriceDD 
=DD  
editDataDD! )
.DD) *
PriceDD* /
;DD/ 0
detailVMEE 
.EE 
DescriptionEE $
=EE% &
editDataEE' /
.EE/ 0
DescriptionEE0 ;
;EE; <
detailVMFF 
.FF 
AvailabilityFF %
=FF& '
editDataFF( 0
.FF0 1
AvailabilityFF1 =
;FF= >
detailVMGG 
.GG 
ImagesGG 
=GG  !
editDataGG" *
.GG* +
ImagesGG+ 1
;GG1 2
detailVMHH 
.HH 
CategoryListHH %
=HH& '

categoriesHH( 2
;HH2 3
}II 
returnJJ 
detailVMJJ 
;JJ 
}KK 	
publicMM 
voidMM 
UpdateProductMM !
(MM! "
ProductImageVMMM" 0
productImageVMMM1 ?
)MM? @
{NN 	
varOO 
productToUpdateOO 
=OO  !

_dbContextOO" ,
.OO, -
ProductsOO- 5
.OO5 6
IncludeOO6 =
(OO= >
xOO> ?
=>OO@ B
xOOC D
.OOD E
ImagesOOE K
)OOK L
.OOL M
FirstOrDefaultOOM [
(OO[ \
xOO\ ]
=>OO^ `
xOOa b
.OOb c
IdOOc e
==OOf h
productImageVMOOi w
.OOw x
IdOOx z
)OOz {
;OO{ |
productToUpdatePP 
.PP 
IdPP 
=PP  
productImageVMPP! /
.PP/ 0
IdPP0 2
;PP2 3
productToUpdateQQ 
.QQ 
NameQQ  
=QQ! "
productImageVMQQ# 1
.QQ1 2
NameQQ2 6
;QQ6 7
productToUpdateRR 
.RR 
PriceRR !
=RR" #
productImageVMRR$ 2
.RR2 3
PriceRR3 8
;RR8 9
productToUpdateSS 
.SS 
DescriptionSS '
=SS( )
productImageVMSS* 8
.SS8 9
DescriptionSS9 D
;SSD E
productToUpdateTT 
.TT 
AvailabilityTT (
=TT) *
productImageVMTT+ 9
.TT9 :
AvailabilityTT: F
;TTF G
productToUpdateUU 
.UU 

CategoryIdUU &
=UU' (
productImageVMUU) 7
.UU7 8
CategoryUU8 @
.UU@ A
IdUUA C
;UUC D
ifWW 
(WW 
productImageVMWW 
.WW 
	NewImagesWW '
!=WW( *
nullWW+ /
)WW/ 0
{XX 
foreachYY 
(YY 
varYY 
itemYY !
inYY" $
productImageVMYY% 3
.YY3 4
	NewImagesYY4 =
)YY= >
{ZZ 
Image[[ 

imageToAdd[[ $
=[[% &
new[[' *
Image[[+ 0
([[0 1
)[[1 2
;[[2 3

imageToAdd\\ 
.\\ 

ImageTitle\\ )
=\\* +
item\\, 0
.\\0 1
FileName\\1 9
;\\9 :
MemoryStream]]  
ms]]! #
=]]$ %
new]]& )
MemoryStream]]* 6
(]]6 7
)]]7 8
;]]8 9
item^^ 
.^^ 
CopyTo^^ 
(^^  
ms^^  "
)^^" #
;^^# $

imageToAdd__ 
.__ 
	ImageData__ (
=__) *
ms__+ -
.__- .
ToArray__. 5
(__5 6
)__6 7
;__7 8
ms`` 
.`` 
Close`` 
(`` 
)`` 
;`` 
msaa 
.aa 
Disposeaa 
(aa 
)aa  
;aa  !
productToUpdatebb #
.bb# $
Imagesbb$ *
.bb* +
Addbb+ .
(bb. /

imageToAddbb/ 9
)bb9 :
;bb: ;
}cc 
}dd 

_dbContextee 
.ee 
SaveChangesee "
(ee" #
)ee# $
;ee$ %
}ff 	
publichh 
AddNewProductVMhh 
GetNewProductVMhh .
(hh. /
)hh/ 0
{ii 	
AddNewProductVMjj 
	productVMjj %
=jj& '
newjj( +
AddNewProductVMjj, ;
(jj; <
)jj< =
;jj= >
	productVMkk 
.kk 
CategoryListkk "
=kk# $

_dbContextkk% /
.kk/ 0

Categorieskk0 :
.kk: ;
ToListkk; A
(kkA B
)kkB C
;kkC D
returnll 
	productVMll 
;ll 
}mm 	
publicoo 
Productoo 
AddNewProductoo $
(oo$ %
AddNewProductVMoo% 4
	productVMoo5 >
)oo> ?
{pp 	
Productqq 

newProductqq 
=qq  
newqq! $
Productqq% ,
{rr 
Namess 
=ss 
	productVMss  
.ss  !
Namess! %
,ss% &
Pricett 
=tt 
	productVMtt !
.tt! "
Pricett" '
,tt' (
Descriptionuu 
=uu 
	productVMuu '
.uu' (
Descriptionuu( 3
,uu3 4
Availabilityvv 
=vv 
	productVMvv (
.vv( )
Availabilityvv) 5
,vv5 6

CategoryIdww 
=ww 
	productVMww &
.ww& '
Categoryww' /
.ww/ 0
Idww0 2
}xx 
;xx 
varzz 
listOfImageszz 
=zz 
newzz "
Listzz# '
<zz' (
Imagezz( -
>zz- .
(zz. /
)zz/ 0
;zz0 1
foreach{{ 
({{ 
var{{ 
image{{ 
in{{ !
	productVM{{" +
.{{+ ,
Images{{, 2
){{2 3
{|| 
Image}} 

imageToAdd}}  
=}}! "
new}}# &
Image}}' ,
(}}, -
)}}- .
;}}. /

imageToAdd~~ 
.~~ 

ImageTitle~~ %
=~~& '
image~~( -
.~~- .
FileName~~. 6
;~~6 7
MemoryStream 
ms 
=  !
new" %
MemoryStream& 2
(2 3
)3 4
;4 5
image
ÄÄ 
.
ÄÄ 
CopyTo
ÄÄ 
(
ÄÄ 
ms
ÄÄ 
)
ÄÄ  
;
ÄÄ  !

imageToAdd
ÅÅ 
.
ÅÅ 
	ImageData
ÅÅ $
=
ÅÅ% &
ms
ÅÅ' )
.
ÅÅ) *
ToArray
ÅÅ* 1
(
ÅÅ1 2
)
ÅÅ2 3
;
ÅÅ3 4
ms
ÇÇ 
.
ÇÇ 
Close
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
ms
ÉÉ 
.
ÉÉ 
Dispose
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
listOfImages
ÑÑ 
.
ÑÑ 
Add
ÑÑ  
(
ÑÑ  !

imageToAdd
ÑÑ! +
)
ÑÑ+ ,
;
ÑÑ, -
}
ÖÖ 

newProduct
ÜÜ 
.
ÜÜ 
Images
ÜÜ 
=
ÜÜ 
listOfImages
ÜÜ  ,
;
ÜÜ, -

_dbContext
àà 
.
àà 
Add
àà 
(
àà 

newProduct
àà %
)
àà% &
;
àà& '

_dbContext
ââ 
.
ââ 
SaveChanges
ââ "
(
ââ" #
)
ââ# $
;
ââ$ %
return
ää 

newProduct
ää 
;
ää 
}
ãã 	
public
çç 
DeleteProductVM
çç %
GetProductByIdForDelete
çç 6
(
çç6 7
int
çç7 :
id
çç; =
)
çç= >
{
éé 	
var
èè 
productToRemove
èè 
=
èè  !

_dbContext
èè" ,
.
èè, -
Products
èè- 5
.
èè5 6
Where
èè6 ;
(
èè; <
x
èè< =
=>
èè> @
x
èèA B
.
èèB C
Id
èèC E
==
èèF H
id
èèI K
)
èèK L
.
èèL M
FirstOrDefault
èèM [
(
èè[ \
)
èè\ ]
;
èè] ^
DeleteProductVM
êê 
	productVM
êê %
=
êê& '
new
êê( +
DeleteProductVM
êê, ;
(
êê; <
)
êê< =
;
êê= >
if
ëë 
(
ëë 
productToRemove
ëë 
!=
ëë !
null
ëë" &
)
ëë& '
{
íí 
	productVM
ìì 
.
ìì 
Id
ìì 
=
ìì 
productToRemove
ìì .
.
ìì. /
Id
ìì/ 1
;
ìì1 2
	productVM
îî 
.
îî 
Name
îî 
=
îî  
productToRemove
îî! 0
.
îî0 1
Name
îî1 5
;
îî5 6
	productVM
ïï 
.
ïï 
Description
ïï %
=
ïï& '
productToRemove
ïï( 7
.
ïï7 8
Description
ïï8 C
;
ïïC D
	productVM
ññ 
.
ññ 
Price
ññ 
=
ññ  !
productToRemove
ññ" 1
.
ññ1 2
Price
ññ2 7
;
ññ7 8
	productVM
óó 
.
óó 
Images
óó  
=
óó! "
productToRemove
óó# 2
.
óó2 3
Images
óó3 9
;
óó9 :
}
òò 
return
ôô 
	productVM
ôô 
;
ôô 
}
öö 	
public
úú 
void
úú 
DeleteProduct
úú !
(
úú! "
int
úú" %
id
úú& (
)
úú( )
{
ùù 	
var
ûû 
productToDelete
ûû 
=
ûû  !

_dbContext
ûû" ,
.
ûû, -
Products
ûû- 5
.
ûû5 6
Where
ûû6 ;
(
ûû; <
x
ûû< =
=>
ûû> @
x
ûûA B
.
ûûB C
Id
ûûC E
==
ûûF H
id
ûûI K
)
ûûK L
.
ûûL M
FirstOrDefault
ûûM [
(
ûû[ \
)
ûû\ ]
;
ûû] ^
var
üü 
imagesToRemove
üü 
=
üü  

_dbContext
üü! +
.
üü+ ,
Images
üü, 2
.
üü2 3
Where
üü3 8
(
üü8 9
x
üü9 :
=>
üü; =
x
üü> ?
.
üü? @
	ProductId
üü@ I
==
üüJ L
id
üüM O
)
üüO P
.
üüP Q
ToList
üüQ W
(
üüW X
)
üüX Y
;
üüY Z
foreach
†† 
(
†† 
var
†† 
item
†† 
in
††  
imagesToRemove
††! /
)
††/ 0
{
°° 

_dbContext
¢¢ 
.
¢¢ 
Remove
¢¢ !
(
¢¢! "
item
¢¢" &
)
¢¢& '
;
¢¢' (
}
££ 

_dbContext
§§ 
.
§§ 
Remove
§§ 
(
§§ 
productToDelete
§§ -
)
§§- .
;
§§. /

_dbContext
•• 
.
•• 
SaveChanges
•• "
(
••" #
)
••# $
;
••$ %
}
¶¶ 	
public
®® 
async
®® 
Task
®® 
<
®® 
ProductDetailsVM
®® *
>
®®* +
GetProductDetails
®®, =
(
®®= >
int
®®> A
id
®®B D
)
®®D E
{
©© 	
var
™™ 
productToDisplay
™™  
=
™™! "

_dbContext
™™# -
.
™™- .
Products
™™. 6
.
™™6 7
Where
™™7 <
(
™™< =
x
™™= >
=>
™™? A
x
™™B C
.
™™C D
Id
™™D F
==
™™G I
id
™™J L
)
™™L M
.
™™M N
FirstOrDefault
™™N \
(
™™\ ]
)
™™] ^
;
™™^ _
var
´´ 
currencyRatesAPI
´´  
=
´´! "
await
´´# (
GetCurrencyRates
´´) 9
(
´´9 :
)
´´: ;
;
´´; <
var
¨¨ 
images
¨¨ 
=
¨¨ 

_dbContext
¨¨ #
.
¨¨# $
Images
¨¨$ *
.
¨¨* +
Where
¨¨+ 0
(
¨¨0 1
x
¨¨1 2
=>
¨¨3 5
x
¨¨6 7
.
¨¨7 8
	ProductId
¨¨8 A
==
¨¨B D
id
¨¨E G
)
¨¨G H
.
¨¨H I
ToList
¨¨I O
(
¨¨O P
)
¨¨P Q
;
¨¨Q R
ProductDetailsVM
≠≠ 
productDetails
≠≠ +
=
≠≠, -
new
≠≠. 1
ProductDetailsVM
≠≠2 B
(
≠≠B C
)
≠≠C D
;
≠≠D E
productDetails
ÆÆ 
.
ÆÆ 
Id
ÆÆ 
=
ÆÆ 
productToDisplay
ÆÆ  0
.
ÆÆ0 1
Id
ÆÆ1 3
;
ÆÆ3 4
productDetails
ØØ 
.
ØØ 
Name
ØØ 
=
ØØ  !
productToDisplay
ØØ" 2
.
ØØ2 3
Name
ØØ3 7
;
ØØ7 8
productDetails
∞∞ 
.
∞∞ 
Description
∞∞ &
=
∞∞' (
productToDisplay
∞∞) 9
.
∞∞9 :
Description
∞∞: E
;
∞∞E F
productDetails
±± 
.
±± 
Price
±±  
=
±±! "
productToDisplay
±±# 3
.
±±3 4
Price
±±4 9
;
±±9 :
productDetails
≤≤ 
.
≤≤ 

PriceInUsd
≤≤ %
=
≤≤& '
productToDisplay
≤≤( 8
.
≤≤8 9
Price
≤≤9 >
*
≤≤? @
(
≤≤A B
decimal
≤≤B I
)
≤≤I J
currencyRatesAPI
≤≤J Z
.
≤≤Z [
Rates
≤≤[ `
.
≤≤` a
USD
≤≤a d
;
≤≤d e
productDetails
≥≥ 
.
≥≥ 

PriceInPLN
≥≥ %
=
≥≥& '
productToDisplay
≥≥( 8
.
≥≥8 9
Price
≥≥9 >
*
≥≥? @
(
≥≥A B
decimal
≥≥B I
)
≥≥I J
currencyRatesAPI
≥≥J Z
.
≥≥Z [
Rates
≥≥[ `
.
≥≥` a
PLN
≥≥a d
;
≥≥d e
productDetails
¥¥ 
.
¥¥ 
Images
¥¥ !
=
¥¥" #
images
¥¥$ *
;
¥¥* +
return
µµ 
productDetails
µµ !
;
µµ! "
}
∂∂ 	
public
∏∏ 
void
∏∏ 
DeleteSingleImg
∏∏ #
(
∏∏# $
int
∏∏$ '
id
∏∏( *
)
∏∏* +
{
ππ 	
var
∫∫ 
imageToRemove
∫∫ 
=
∫∫ 

_dbContext
∫∫  *
.
∫∫* +
Images
∫∫+ 1
.
∫∫1 2
Where
∫∫2 7
(
∫∫7 8
x
∫∫8 9
=>
∫∫: <
x
∫∫= >
.
∫∫> ?
Id
∫∫? A
==
∫∫B D
id
∫∫E G
)
∫∫G H
.
∫∫H I
FirstOrDefault
∫∫I W
(
∫∫W X
)
∫∫X Y
;
∫∫Y Z

_dbContext
ªª 
.
ªª 
Images
ªª 
.
ªª 
Remove
ªª $
(
ªª$ %
imageToRemove
ªª% 2
)
ªª2 3
;
ªª3 4

_dbContext
ºº 
.
ºº 
SaveChanges
ºº "
(
ºº" #
)
ºº# $
;
ºº$ %
}
ΩΩ 	
private
øø 
static
øø 
async
øø 
Task
øø !
<
øø" #
CurrencyAPI
øø# .
>
øø. /
GetCurrencyRates
øø0 @
(
øø@ A
)
øøA B
{
¿¿ 	
using
¡¡ 
var
¡¡ 
client
¡¡ 
=
¡¡ 
new
¡¡ "

HttpClient
¡¡# -
(
¡¡- .
)
¡¡. /
;
¡¡/ 0
var
¬¬ 
url
¬¬ 
=
¬¬ 
$str
¬¬ <
;
¬¬< =!
HttpResponseMessage
√√ 
response
√√  (
=
√√) *
await
√√+ 0
client
√√1 7
.
√√7 8
GetAsync
√√8 @
(
√√@ A
url
√√A D
)
√√D E
;
√√E F
response
ƒƒ 
.
ƒƒ %
EnsureSuccessStatusCode
ƒƒ ,
(
ƒƒ, -
)
ƒƒ- .
;
ƒƒ. /
var
≈≈ 
jsonResp
≈≈ 
=
≈≈ 
await
≈≈  
response
≈≈! )
.
≈≈) *
Content
≈≈* 1
.
≈≈1 2
ReadAsStringAsync
≈≈2 C
(
≈≈C D
)
≈≈D E
;
≈≈E F
CurrencyAPI
∆∆ 
rates
∆∆ 
=
∆∆ 
JsonConvert
∆∆  +
.
∆∆+ ,
DeserializeObject
∆∆, =
<
∆∆= >
CurrencyAPI
∆∆> I
>
∆∆I J
(
∆∆J K
jsonResp
∆∆K S
)
∆∆S T
;
∆∆T U
return
«« 
rates
«« 
;
«« 
}
»» 	
}
…… 
}   ΩQ
WC:\Users\paull\source\repos\LolipopSquare\LolipopSquare\Services\ShoppingCartService.cs
	namespace 	
LolipopSquare
 
. 
Services  
{		 
public

 

class

 
ShoppingCartService

 $
:

% & 
IShoppingCartService

' ;
{ 
private 
readonly  
ApplicationDbContext -

_dbContext. 8
;8 9
public 
ShoppingCartService "
(" # 
ApplicationDbContext# 7
	dbContext8 A
)A B
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
ShoppingCartItem 

GetProduct  *
(* +
int+ .
id/ 1
)1 2
{ 	
var 
product 
= 

_dbContext $
.$ %
Products% -
.- .
Where. 3
(3 4
x4 5
=>6 8
x9 :
.: ;
Id; =
==> @
idA C
)C D
.D E
FirstOrDefaultE S
(S T
)T U
;U V
ShoppingCartItem 
shoppingCartItem -
=. /
new0 3
ShoppingCartItem4 D
(D E
)E F
;F G
if 
( 
product 
!= 
null 
) 
{ 
shoppingCartItem  
.  !
	ProductId! *
=+ ,
product- 4
.4 5
Id5 7
;7 8
shoppingCartItem  
.  !
ProductName! ,
=- .
product/ 6
.6 7
Name7 ;
;; <
shoppingCartItem  
.  !
Price! &
=' (
product) 0
.0 1
Price1 6
;6 7
} 
return 
shoppingCartItem #
;# $
} 	
public 
OrderSummaryVM 
AddOrder &
(& '
List' +
<+ ,
ShoppingCartItem, <
>< =
shoppingCartItems> O
,O P
stringQ W
userIdX ^
)^ _
{   	
ProductOrder!! 
productOrder!! %
=!!& '
new!!( +
ProductOrder!!, 8
(!!8 9
)!!9 :
;!!: ;
Order"" 
order"" 
="" 
new"" 
Order"" #
{## 
DateOfOrder$$ 
=$$ 
DateTime$$ &
.$$& '
Now$$' *
}%% 
;%% 
var&& 
user&& 
=&& 

_dbContext&& !
.&&! "
ApplicationUser&&" 1
.&&1 2
Where&&2 7
(&&7 8
x&&8 9
=>&&: <
x&&= >
.&&> ?
Id&&? A
==&&B D
userId&&E K
)&&K L
.&&L M
FirstOrDefault&&M [
(&&[ \
)&&\ ]
;&&] ^
if'' 
('' 
user'' 
!='' 
null'' 
)'' 
{(( 
order)) 
.)) 
ApplicationUser)) %
=))& '
user))( ,
;)), -
}** 
var,, 
orderobj,, 
=,, 

_dbContext,, %
.,,% &
Add,,& )
(,,) *
order,,* /
),,/ 0
;,,0 1

_dbContext-- 
.-- 
SaveChanges-- "
(--" #
)--# $
;--$ %
var.. 
orderId.. 
=.. 
orderobj.. "
..." #
CurrentValues..# 0
[..0 1
$str..1 :
]..: ;
;..; <
if// 
(// 
orderId// 
!=// 
null// 
)// 
{00 
productOrder11 
.11 
OrderID11 $
=11% &
(11' (
int11( +
)11+ ,
orderId11, 3
;113 4
}22 
else33 
{44 
throw55 
new55 
	Exception55 #
(55# $
$str55$ <
)55< =
;55= >
}66 
foreach88 
(88 
var88 
item88 
in88  
shoppingCartItems88! 2
)882 3
{99 
productOrder:: 
.:: 
	ProductId:: &
=::' (
item::) -
.::- .
	ProductId::. 7
;::7 8
var;; 
product;; 
=;; 

_dbContext;; (
.;;( )
Products;;) 1
.;;1 2
Where;;2 7
(;;7 8
x;;8 9
=>;;: <
x;;= >
.;;> ?
Id;;? A
==;;B D
item;;E I
.;;I J
	ProductId;;J S
);;S T
.;;T U
FirstOrDefault;;U c
(;;c d
);;d e
;;;e f
if<< 
(<< 
product<< 
!=<< 
null<< "
)<<" #
{== 
productOrder>>  
.>>  !
Product>>! (
=>>) *
product>>+ 2
;>>2 3
productOrder??  
.??  !
Product??! (
.??( )
Name??) -
=??. /
item??0 4
.??4 5
ProductName??5 @
;??@ A
productOrder@@  
.@@  !
Product@@! (
.@@( )
Price@@) .
=@@/ 0
item@@1 5
.@@5 6
Price@@6 ;
;@@; <
orderAA 
.AA 

TotalPriceAA $
+=AA% '
itemAA( ,
.AA, -
PriceAA- 2
*AA3 4
itemAA5 9
.AA9 :
QuantityAA: B
;AAB C

_dbContextBB 
.BB 
AddBB "
(BB" #
productOrderBB# /
)BB/ 0
;BB0 1

_dbContextCC 
.CC 
SaveChangesCC *
(CC* +
)CC+ ,
;CC, -
}DD 
}EE 
OrderSummaryVMGG 
vmGG 
=GG 
newGG  #
(GG# $
)GG$ %
;GG% &
vmHH 
.HH 
OrderIdHH 
=HH 
(HH 
intHH 
)HH 
orderIdHH %
;HH% &
vmII 
.II 
DateOfOrderII 
=II 
orderII "
.II" #
DateOfOrderII# .
;II. /
vmJJ 
.JJ 

TotalPriceJJ 
=JJ 
orderJJ !
.JJ! "

TotalPriceJJ" ,
;JJ, -
vmKK 
.KK 
ShoppingCartItemsKK  
=KK! "
shoppingCartItemsKK# 4
;KK4 5
vmLL 
.LL 
ApplicationUserLL 
=LL  
orderLL! &
.LL& '
ApplicationUserLL' 6
;LL6 7
returnMM 
vmMM 
;MM 
}NN 	
publicPP 
OrderPP 
AddDeliveryDataPP $
(PP$ %
stringPP% +
userIdPP, 2
,PP2 3
OrderSummaryVMPP4 B
orderSummaryVMPPC Q
)PPQ R
{QQ 	
varRR 
userRR 
=RR 

_dbContextRR !
.RR! "
ApplicationUserRR" 1
.RR1 2
WhereRR2 7
(RR7 8
xRR8 9
=>RR: <
xRR= >
.RR> ?
IdRR? A
==RRB D
userIdRRE K
)RRK L
.RRL M
FirstOrDefaultRRM [
(RR[ \
)RR\ ]
;RR] ^
varSS 
orderSS 
=SS 

_dbContextSS "
.SS" #
OrdersSS# )
.SS) *
WhereSS* /
(SS/ 0
xSS0 1
=>SS2 4
xSS5 6
.SS6 7
OrderIdSS7 >
==SS? A
orderSummaryVMSSB P
.SSP Q
OrderIdSSQ X
)SSX Y
.SSY Z
IncludeSSZ a
(SSa b
ySSb c
=>SSd f
ySSg h
.SSh i
ApplicationUserSSi x
)SSx y
.SSy z
WhereSSz 
(	SS Ä
z
SSÄ Å
=>
SSÇ Ñ
z
SSÖ Ü
.
SSÜ á
ApplicationUser
SSá ñ
.
SSñ ó
Id
SSó ô
==
SSö ú
userId
SSù £
)
SS£ §
.
SS§ •
FirstOrDefault
SS• ≥
(
SS≥ ¥
)
SS¥ µ
;
SSµ ∂
orderTT 
.TT 
OrderConfirmationTT #
=TT$ %
trueTT& *
;TT* +
userUU 
.UU 
	FirstNameUU 
=UU 
orderSummaryVMUU +
.UU+ ,
ApplicationUserUU, ;
.UU; <
	FirstNameUU< E
;UUE F
userVV 
.VV 
LastNameVV 
=VV 
orderSummaryVMVV *
.VV* +
ApplicationUserVV+ :
.VV: ;
LastNameVV; C
;VVC D
userWW 
.WW 
LastNameWW 
=WW 
orderSummaryVMWW *
.WW* +
ApplicationUserWW+ :
.WW: ;
LastNameWW; C
;WWC D
userXX 
.XX 

BuildingNoXX 
=XX 
orderSummaryVMXX ,
.XX, -
ApplicationUserXX- <
.XX< =

BuildingNoXX= G
;XXG H
userYY 
.YY 
StreetYY 
=YY 
orderSummaryVMYY (
.YY( )
ApplicationUserYY) 8
.YY8 9
StreetYY9 ?
;YY? @
userZZ 
.ZZ 
CityZZ 
=ZZ 
orderSummaryVMZZ &
.ZZ& '
ApplicationUserZZ' 6
.ZZ6 7
CityZZ7 ;
;ZZ; <
user[[ 
.[[ 
ZipCode[[ 
=[[ 
orderSummaryVM[[ )
.[[) *
ApplicationUser[[* 9
.[[9 :
ZipCode[[: A
;[[A B
user\\ 
.\\ 
PhoneNumber\\ 
=\\ 
orderSummaryVM\\ -
.\\- .
ApplicationUser\\. =
.\\= >
PhoneNumber\\> I
;\\I J
user]] 
.]] 
Email]] 
=]] 
orderSummaryVM]] '
.]]' (
ApplicationUser]]( 7
.]]7 8
Email]]8 =
;]]= >

_dbContext^^ 
.^^ 
SaveChanges^^ "
(^^" #
)^^# $
;^^$ %
return__ 
order__ 
;__ 
}`` 	
}aa 
}bb 