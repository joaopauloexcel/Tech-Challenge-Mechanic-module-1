ı	
ÄC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Auth\Request\LoginRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Auth$ (
.( )
Request) 0
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
LoginRequestDto

  
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
} 
} «
ÇC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Auth\Response\LoginResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Auth$ (
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
LoginResponseDto		 !
{

 
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
} 
} ˇ
ÉC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Cliente\Params\ClienteParamsDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Cliente$ +
.+ ,
Params, 2
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
ClienteParamsDto		 !
{

 
public 
string 
? 
CpfCnpj 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
string/ 5
.5 6
Empty6 ;
;; <
} 
} ﬁ
éC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Cliente\Request\AdicionarClienteRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Cliente$ +
.+ ,
Request, 3
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 &
AdicionarClienteRequestDto

 +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 6
)6 7
]7 8
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
public 
string 
CpfCnpj 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
public 
string 
	Telefone1 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public!! 
string!! 
?!! 
	Telefone2!!  
{!!! "
get!!# &
;!!& '
set!!( +
;!!+ ,
}!!- .
public&& 
string&& 
?&& 
Email&& 
{&& 
get&& "
;&&" #
set&&$ '
;&&' (
}&&) *
}'' 
}(( ﬁ
éC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Cliente\Request\AtualizarClienteRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Cliente$ +
.+ ,
Request, 3
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 &
AtualizarClienteRequestDto

 +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 6
)6 7
]7 8
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
public 
string 
CpfCnpj 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
public 
string 
	Telefone1 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public!! 
string!! 
?!! 
	Telefone2!!  
{!!! "
get!!# &
;!!& '
set!!( +
;!!+ ,
}!!- .
public&& 
string&& 
?&& 
Email&& 
{&& 
get&& "
;&&" #
set&&$ '
;&&' (
}&&) *
}'' 
}(( ”
áC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Cliente\Response\ClienteResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Cliente$ +
.+ ,
Response, 4
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
ClienteResponseDto		 #
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 
string 
CpfCnpj 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
public 
string 
	Telefone1 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public"" 
string"" 
?"" 
	Telefone2""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
public'' 
string'' 
?'' 
Email'' 
{'' 
get'' "
;''" #
set''$ '
;''' (
}'') *
public,, 
bool,, 
Ativo,, 
{,, 
get,, 
;,,  
set,,! $
;,,$ %
},,& '
}-- 
}.. Ã	
ìC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Params\ListarOrdemServicoParamsDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Params1 7
{ 
[

 #
ExcludeFromCodeCoverage

 
]

 
public 

class '
ListarOrdemServicoParamsDto ,
{ 
public 
int 
? 
OsId 
{ 
get 
; 
set  #
;# $
}% &
public 
StatusOrdemServico !
?! "
Status# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
? 
CpfCnpj 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
? 
Placa 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} °
ëC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Request\CriarOrcamentoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Request1 8
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 $
CriarOrcamentoRequestDto

 )
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! H
)H I
]I J
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
[ 	
Required	 
( 
ErrorMessage 
=  
$str! C
)C D
]D E
public 
List 
< &
ServicoOrcamentoRequestDto .
>. /
ServicosOrcamentoOS0 C
{D E
getF I
;I J
setK N
;N O
}P Q
=R S
newT W
(W X
)X Y
;Y Z
public 
List 
< &
ProdutoOrcamentoRequestDto .
>. /
ProdutosOrcamentoOS0 C
{D E
getF I
;I J
setK N
;N O
}P Q
=R S
newT W
(W X
)X Y
;Y Z
public   
string   
?   
observacaoMecanico   )
{  * +
get  , /
;  / 0
set  1 4
;  4 5
}  6 7
=  8 9
string  : @
.  @ A
Empty  A F
;  F G
}!! 
}"" Í
îC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Request\CriarOrdemServicoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Request1 8
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 '
CriarOrdemServicoRequestDto

 ,
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
public 
string 
Titulo 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
public 
int 
	ClienteId 
{ 
get "
;" #
set$ '
;' (
}) *
[!! 	
Required!!	 
(!! 
ErrorMessage!! 
=!!  
$str!!! 8
)!!8 9
]!!9 :
public"" 
int"" 
	VeiculoId"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
}## 
}$$ «
ìC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Request\DecisaoOrcamentoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Request1 8
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 &
DecisaoOrcamentoRequestDto

 +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! K
)K L
]L M
public 
bool 
Aprovar 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ‘
ïC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Request\ExecutarServicoLogRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Request1 8
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 (
ExecutarServicoLogRequestDto

 -
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! @
)@ A
]A B
public 
StatusServicoLog 
Acao  $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ¡
ìC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Request\ProdutoOrcamentoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Request1 8
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 &
ProdutoOrcamentoRequestDto

 +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! <
)< =
]= >
public 
int 
ProdutoIdOrcamento %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
Required	 
( 
ErrorMessage 
=  
$str! V
)V W
]W X
public 
int 
QtdProdutoOrcamento &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Required	 
( 
ErrorMessage 
=  
$str! Z
)Z [
][ \
public 
decimal )
PrecoUnitarioProdutoOrcamento 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} à	
ìC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Request\ServicoOrcamentoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Request1 8
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 &
ServicoOrcamentoRequestDto

 +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! <
)< =
]= >
public 
int 
ServicoIdOrcamento %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
Required	 
( 
ErrorMessage 
=  
$str! R
)R S
]S T
public 
decimal !
PrecoServicoOrcamento ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} º
öC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Response\OrdemServicoOrcamentoResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Response1 9
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 ,
 OrdemServicoOrcamentoResponseDto		 1
{

 
public 
int 
OSOrcamentoId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public 
string 
? 
ObservacaoMecanico )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DateTime 
? "
DataAprovacaoOrcamento /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public"" 
List"" 
<"" *
OrdemServicoServicoResponseDto"" 2
>""2 3
ServicosOrcamentoOS""4 G
{""H I
get""J M
;""M N
set""O R
;""R S
}""T U
=""V W
new""X [
(""[ \
)""\ ]
;""] ^
public'' 
List'' 
<'' *
OrdemServicoProdutoResponseDto'' 2
>''2 3
ProdutosOrcamentoOS''4 G
{''H I
get''J M
;''M N
set''O R
;''R S
}''T U
=''V W
new''X [
(''[ \
)''\ ]
;''] ^
public,, 
decimal,, 

PrecoTotal,, !
{,," #
get,,$ '
;,,' (
set,,) ,
;,,, -
},,. /
public11 
string11 
StatusOrcamento11 %
{11& '
get11( +
;11+ ,
set11- 0
;110 1
}112 3
=114 5
string116 <
.11< =
Empty11= B
;11B C
}22 
}33 ∑
òC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Response\OrdemServicoProdutoResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Response1 9
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 *
OrdemServicoProdutoResponseDto		 /
{

 
public 
int 
ProdutoOrcadoId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
SkuProdutoOrcado &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
string7 =
.= >
Empty> C
;C D
public 
string "
DescricaoProdutoOrcado ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
string= C
.C D
EmptyD I
;I J
public 
int 
QtdProdutoOrcado #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public!! 
decimal!! &
PrecoUnitarioProdutoOrcado!! 1
{!!2 3
get!!4 7
;!!7 8
set!!9 <
;!!< =
}!!> ?
public&& 
decimal&& 
PrecoTotalProduto&& (
{&&) *
get&&+ .
;&&. /
set&&0 3
;&&3 4
}&&5 6
}'' 
}(( ∑'
ëC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Response\OrdemServicoResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Response1 9
;9 :
[ #
ExcludeFromCodeCoverage 
] 
public		 
class		 #
OrdemServicoResponseDto		 $
{

 
public 

int 
OrdensServicoId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 

string 
TituloOS 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 

string 
StatusOS 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 

string 
DescricaoOS 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
public"" 

DateTime"" 
DataCriacaoOS"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
public'' 

DateTime'' 
?'' !
DataInicioDiagnostico'' *
{''+ ,
get''- 0
;''0 1
set''2 5
;''5 6
}''7 8
public,, 

DateTime,, 
?,, 
DataInicioExecucao,, '
{,,( )
get,,* -
;,,- .
set,,/ 2
;,,2 3
},,4 5
public11 

DateTime11 
?11 
DataFinalizacao11 $
{11% &
get11' *
;11* +
set11, /
;11/ 0
}111 2
public66 

DateTime66 
?66 
DataEntrega66  
{66! "
get66# &
;66& '
set66( +
;66+ ,
}66- .
public;; 

DateTime;; 
?;; 
DataCancelamento;; %
{;;& '
get;;( +
;;;+ ,
set;;- 0
;;;0 1
};;2 3
public@@ 

string@@ 
?@@ 
NomeCliente@@ 
{@@  
get@@! $
;@@$ %
set@@& )
;@@) *
}@@+ ,
publicEE 

stringEE 
CpfCnpjClienteEE  
{EE! "
getEE# &
;EE& '
setEE( +
;EE+ ,
}EE- .
=EE/ 0
stringEE1 7
.EE7 8
EmptyEE8 =
;EE= >
publicJJ 

stringJJ 
PlacaVeiculoJJ 
{JJ  
getJJ! $
;JJ$ %
setJJ& )
;JJ) *
}JJ+ ,
=JJ- .
stringJJ/ 5
.JJ5 6
EmptyJJ6 ;
;JJ; <
publicOO 

stringOO 
?OO 
MarcaVeiculoOO 
{OO  !
getOO" %
;OO% &
setOO' *
;OO* +
}OO, -
publicTT 

stringTT 
?TT 
ModeloVeiculoTT  
{TT! "
getTT# &
;TT& '
setTT( +
;TT+ ,
}TT- .
publicYY 

intYY 
?YY 

AnoVeiculoYY 
{YY 
getYY  
;YY  !
setYY" %
;YY% &
}YY' (
public^^ 

bool^^ #
PossuiOrcamentoPendente^^ '
{^^( )
get^^* -
;^^- .
set^^/ 2
;^^2 3
}^^4 5
publiccc 

boolcc #
PossuiOrcamentoAprovadocc '
{cc( )
getcc* -
;cc- .
setcc/ 2
;cc2 3
}cc4 5
publichh 

stringhh 
PublicTokenhh 
{hh 
gethh  #
;hh# $
sethh% (
;hh( )
}hh* +
=hh, -
stringhh. 4
.hh4 5
Emptyhh5 :
;hh: ;
publicmm 

Listmm 
<mm ,
 OrdemServicoOrcamentoResponseDtomm 0
>mm0 1

Orcamentosmm2 <
{mm= >
getmm? B
;mmB C
setmmD G
;mmG H
}mmI J
=mmK L
newmmM P
(mmP Q
)mmQ R
;mmR S
publicrr 

decimalrr 
PrecoTotalAprovadorr %
{rr& '
getrr( +
;rr+ ,
setrr- 0
;rr0 1
}rr2 3
publicww 

decimalww 
PrecoTotalPendenteww %
{ww& '
getww( +
;ww+ ,
setww- 0
;ww0 1
}ww2 3
public|| 

decimal|| 
PrecoTotalGeral|| "
{||# $
get||% (
;||( )
set||* -
;||- .
}||/ 0
}}} Ë

òC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Response\OrdemServicoServicoResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Response1 9
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 *
OrdemServicoServicoResponseDto		 /
{

 
public 
int 
ServicoOrcadoId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
SkuServicoOrcado &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
string7 =
.= >
Empty> C
;C D
public 
string "
DescricaoServicoOrcado ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
string= C
.C D
EmptyD I
;I J
public 
decimal 
PrecoServicoOrcado )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} ¬
òC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Response\RelatorioTempoMedioResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Response1 9
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 *
RelatorioTempoMedioResponseDto		 /
{

 
public 
List 
< (
TempoMedioServicoResponseDto 0
>0 1

PorServico2 <
{= >
get? B
;B C
setD G
;G H
}I J
=K L
[M N
]N O
;O P
public #
TempoMedioOSResponseDto &
PorOS' ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
=; <
new= @
(@ A
)A B
;B C
} 
} ’
ëC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Response\TempoMedioOSResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Response1 9
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 #
TempoMedioOSResponseDto		 (
{

 
public 
double 
MediaMinutos "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
TotalOS 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ’
ñC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\OrdemServico\Response\TempoMedioServicoResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
OrdemServico$ 0
.0 1
Response1 9
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 (
TempoMedioServicoResponseDto		 -
{

 
public 
string 
Servico 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
public 
double 
MediaMinutos "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
TotalExecucoes !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ˚
ÉC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Produto\Params\ProdutoParamsDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Produto$ +
.+ ,
Params, 2
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
ProdutoParamsDto

 !
{ 
public 
string 
? 
Sku 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
} 
} ¿
éC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Produto\Request\AdicionarProdutoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Produto$ +
.+ ,
Request, 3
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 &
AdicionarProdutoRequestDto

 +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 5
)5 6
]6 7
public 
string 
Sku 
{ 
get 
;  
set! $
;$ %
}& '
=( )
string* 0
.0 1
Empty1 6
;6 7
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
[ 	
Required	 
( 
ErrorMessage 
=  
$str! <
)< =
]= >
public 
decimal 

PrecoCusto !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
( 
ErrorMessage 
=  
$str! <
)< =
]= >
public 
decimal 

PrecoVenda !
{" #
get$ '
;' (
set) ,
;, -
}. /
[## 	
Required##	 
(## 
ErrorMessage## 
=##  
$str##! A
)##A B
]##B C
public$$ 
int$$ 
QuantidadeTotal$$ "
{$$# $
get$$% (
;$$( )
set$$* -
;$$- .
}$$/ 0
[(( 	
Required((	 
((( 
ErrorMessage(( 
=((  
$str((! B
)((B C
]((C D
public)) 
int)) 
QuantidadeMinima)) #
{))$ %
get))& )
;))) *
set))+ .
;)). /
}))0 1
}** 
}++ ∑
ïC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Produto\Request\AtualizarEstoqueProdutoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Produto$ +
.+ ,
Request, 3
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class -
!AtualizarEstoqueProdutoRequestDto 2
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! F
)F G
]G H
public 
int  
QuantidadeAdicionada '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	
Required	 
( 
ErrorMessage 
=  
$str! @
)@ A
]A B
public 
decimal 
NovoPrecoCusto %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
Required	 
( 
ErrorMessage 
=  
$str! @
)@ A
]A B
public 
decimal 
NovoPrecoVenda %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} õ
éC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Produto\Request\AtualizarProdutoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Produto$ +
.+ ,
Request, 3
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 &
AtualizarProdutoRequestDto

 +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 5
)5 6
]6 7
public 
string 
Sku 
{ 
get 
;  
set! $
;$ %
}& '
=( )
string* 0
.0 1
Empty1 6
;6 7
public 
string 
? 
	Descricao  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
public 
decimal 
? 

PrecoCusto "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
decimal 
? 

PrecoVenda "
{# $
get% (
;( )
set* -
;- .
}/ 0
public   
int   
?   
QuantidadeMinima   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
}!! 
}"" ≤
áC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Produto\Response\ProdutoResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Produto$ +
.+ ,
Response, 4
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
ProdutoResponseDto		 #
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Sku 
{ 
get 
;  
set! $
;$ %
}& '
=( )
string* 0
.0 1
Empty1 6
;6 7
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public 
decimal 

PrecoCusto !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 

PrecoVenda !
{" #
get$ '
;' (
set) ,
;, -
}. /
public"" 
int"" 
QuantidadeTotal"" "
{""# $
get""% (
;""( )
set""* -
;""- .
}""/ 0
public&& 
int&& 
QuantidadeReservada&& &
{&&' (
get&&) ,
;&&, -
set&&. 1
;&&1 2
}&&3 4
public** 
int** 
QuantidadeMinima** #
{**$ %
get**& )
;**) *
set**+ .
;**. /
}**0 1
public.. 
bool.. 
Ativo.. 
{.. 
get.. 
;..  
set..! $
;..$ %
}..& '
}// 
}00 ˚
ÉC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Servico\Params\ServicoParamsDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Servico$ +
.+ ,
Params, 2
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
ServicoParamsDto		 !
{

 
public 
string 
? 
Sku 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
} 
} ≠
áC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Servico\Request\AdicionarServicoDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Servico$ +
.+ ,
Request, 3
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 &
AdicionarServicoRequestDto

 +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 5
)5 6
]6 7
public 
string 
Sku 
{ 
get 
;  
set! $
;$ %
}& '
=( )
string* 0
.0 1
Empty1 6
;6 7
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
public 
decimal 
Preco 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ∏

éC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Servico\Request\AtualizarServicoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Servico$ +
.+ ,
Request, 3
{ 
[

 #
ExcludeFromCodeCoverage

 
]

 
public 

class &
AtualizarServicoRequestDto +
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 5
)5 6
]6 7
public 
string 
Sku 
{ 
get 
;  
set! $
;$ %
}& '
=( )
string* 0
.0 1
Empty1 6
;6 7
public 
string 
? 
	Descricao  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
public 
decimal 
? 
Preco 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ©
áC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Servico\Response\ServicoResponseDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Servico$ +
.+ ,
Response, 4
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
ServicoResponseDto		 #
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Sku 
{ 
get 
;  
set! $
;$ %
}& '
=( )
string* 0
.0 1
Empty1 6
;6 7
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
public 
decimal 
Preco 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Ativo 
{ 
get 
;  
set! $
;$ %
}& '
} 
}   ˝
ÉC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Veiculo\Params\VeiculoParamsDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Veiculo$ +
.+ ,
Params, 2
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
VeiculoParamsDto		 !
{

 
public 
string 
? 
Placa 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
} 
} Œ
éC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Veiculo\Request\AdicionarVeiculoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Veiculo$ +
.+ ,
Request, 3
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 &
AdicionarVeiculoRequestDto		 +
{

 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
public 
int 
	ClienteId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
public 
string 
Placa 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
public 
string 
Marca 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
public 
string 
Modelo 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
["" 	
Required""	 
("" 
ErrorMessage"" 
=""  
$str""! 5
)""5 6
]""6 7
public## 
int## 
Ano## 
{## 
get## 
;## 
set## !
;##! "
}### $
}$$ 
}%% ø
éC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Veiculo\Request\AtualizarVeiculoRequestDto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
DTOs #
.# $
Veiculo$ +
.+ ,
Request, 3
{ 
public 

class &
AtualizarVeiculoRequestDto +
{		 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
public 
int 
	ClienteId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
Placa 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
string 
? 
Marca 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
string 
? 
Modelo 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
? 
Ano 
{ 
get 
; 
set "
;" #
}$ %
} 
}   ı
áC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\DTOs\Veiculo\Response\VeiculoResponseDto.cs
	namespace 
Mechanic 
. 
Application "
." #
DTOs# '
.' (
Veiculo( /
./ 0
Response0 8
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
VeiculoResponseDto		 #
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
	ClienteId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Placa 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
public 
string 
Marca 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
public 
string 
? 
Modelo 
{ 
get  #
;# $
set% (
;( )
}* +
public"" 
int"" 
?"" 
Ano"" 
{"" 
get"" 
;"" 
set"" "
;""" #
}""$ %
public&& 
bool&& 
Ativo&& 
{&& 
get&& 
;&&  
set&&! $
;&&$ %
}&&& '
}'' 
}(( §
vC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Enums\StatusItemProduto.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Enums $
{ 
public 

enum 
StatusItemProduto !
{ 
[ 	
Description	 
( 
$str  
)  !
]! "
	Reservado 
= 
$num 
, 
[

 	
Description

	 
(

 
$str

 !
)

! "
]

" #

Confirmado 
, 
[ 	
Description	 
( 
$str  
)  !
]! "
	Cancelado 
} 
} ù
tC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Enums\StatusOrcamento.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Enums $
{ 
public 

enum 
StatusOrcamento 
{ 
[ 	
Description	 
( 
$str 
)  
]  !
Pendente 
= 
$num 
, 
[

 	
Description

	 
(

 
$str

 
)

  
]

  !
Aprovado 
, 
[ 	
Description	 
( 
$str  
)  !
]! "
	Reprovado 
} 
} ﬂ

wC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Enums\StatusOrdemServico.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Enums $
{ 
public 

enum 
StatusOrdemServico "
{ 
[ 	
Description	 
( 
$str 
)  
]  !
Recebida 
= 
$num 
, 
[

 	
Description

	 
(

 
$str

 %
)

% &
]

& '
EmDiagnostico 
, 
[ 	
Description	 
( 
$str #
)# $
]$ %
EmAprovacao 
, 
[ 	
Description	 
( 
$str  
)  !
]! "
	Cancelada 
, 
[ 	
Description	 
( 
$str "
)" #
]# $

EmExecucao 
, 
[ 	
Description	 
( 
$str !
)! "
]" #

Finalizada 
, 
[ 	
Description	 
( 
$str 
)  
]  !
Entregue 
} 
} õ
uC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Enums\StatusServicoLog.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Enums $
{ 
public 

enum 
StatusServicoLog  
{ 
[ 	
Description	 
( 
$str 
) 
]  
Iniciar		 
=		 
$num		 
,		 
[ 	
Description	 
( 
$str 
) 
] 
Pausar 
, 
[ 	
Description	 
( 
$str 
)  
]  !
Terminar 
} 
} µ
sC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Services\AuthService.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Services '
{		 
public

 

class

 
AuthService

 
{ 
private 
readonly 
IConfiguration '
_config( /
;/ 0
public 
AuthService 
( 
IConfiguration )
config* 0
)0 1
{ 	
_config 
= 
config 
; 
} 	
public 
LoginResponseDto 
?  
Login! &
(& '
LoginRequestDto' 6
dto7 :
): ;
{ 	
if 
( 
dto 
. 
Username 
!= 
$str  '
||( *
dto+ .
.. /
Password/ 7
!=8 :
$str; C
)C D
return 
null 
; 
var 
jwtSettings 
= 
_config %
.% &

GetSection& 0
(0 1
$str1 6
)6 7
;7 8
var 
key 
= 
Encoding 
. 
UTF8 #
.# $
GetBytes$ ,
(, -
jwtSettings- 8
[8 9
$str9 >
]> ?
!? @
)@ A
;A B
var 
claims 
= 
new 
[ 
] 
{ 
new 
Claim 
( 

ClaimTypes $
.$ %
Name% )
,) *
dto+ .
.. /
Username/ 7
)7 8
,8 9
new 
Claim 
( 

ClaimTypes $
.$ %
Role% )
,) *
$str+ 2
)2 3
} 
; 
var!! 
token!! 
=!! 
new!! 
JwtSecurityToken!! ,
(!!, -
issuer"" 
:"" 
jwtSettings"" #
[""# $
$str""$ ,
]"", -
,""- .
audience## 
:## 
jwtSettings## %
[##% &
$str##& 0
]##0 1
,##1 2
claims$$ 
:$$ 
claims$$ 
,$$ 
expires%% 
:%% 
DateTime%% !
.%%! "
UtcNow%%" (
.%%( )
AddHours%%) 1
(%%1 2
$num%%2 3
)%%3 4
,%%4 5
signingCredentials&& "
:&&" #
new&&$ '
SigningCredentials&&( :
(&&: ;
new''  
SymmetricSecurityKey'' ,
('', -
key''- 0
)''0 1
,''1 2
SecurityAlgorithms(( &
.((& '

HmacSha256((' 1
))) 
)** 
;** 
var,, 
tokenString,, 
=,, 
new,, !#
JwtSecurityTokenHandler,," 9
(,,9 :
),,: ;
.,,; <

WriteToken,,< F
(,,F G
token,,G L
),,L M
;,,M N
return.. 
new.. 
LoginResponseDto.. '
{// 
Token00 
=00 
tokenString00 #
}11 
;11 
}22 	
}33 
}44 òD
vC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Services\ClienteService.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Services '
{ 
public		 

class		 
ClienteService		 
{

 
private 
readonly 
IClienteRepository +
_repository, 7
;7 8
public 
ClienteService 
( 
IClienteRepository 0

repository1 ;
); <
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
List 
< 
ClienteResponseDto 1
>1 2
>2 3
ListarTodos4 ?
(? @
ClienteParamsDto@ P
?P Q
dtoR U
)U V
{ 	
var 
clientes 
= 
await  
_repository! ,
., -
ListarTodosAsync- =
(= >
dto> A
?A B
.B C
CpfCnpjC J
)J K
;K L
return 
clientes 
. 
Select "
(" #
c# $
=>% '
new( +
ClienteResponseDto, >
{ 
Id 
= 
c 
. 
Id 
, 
Nome 
= 
c 
. 
Nome 
, 
CpfCnpj 
= 
c 
. 
CpfCnpj #
.# $
Value$ )
,) *
	Telefone1 
= 
c 
. 
	Telefone1 '
,' (
	Telefone2 
= 
c 
. 
	Telefone2 '
,' (
Email 
= 
c 
. 
Email 
,  
Ativo 
= 
c 
. 
Ativo 
} 
) 
. 
ToList 
( 
) 
; 
}   	
public"" 
async"" 
Task"" 
<"" 
ClienteResponseDto"" ,
?"", -
>""- .
ListarPorId""/ :
("": ;
int""; >
id""? A
)""A B
{## 	
var$$ 
c$$ 
=$$ 
await$$ 
_repository$$ %
.$$% &
ListarPorIdAsync$$& 6
($$6 7
id$$7 9
)$$9 :
;$$: ;
if%% 
(%% 
c%% 
is%% 
null%% 
)%% 
return%% !
null%%" &
;%%& '
return'' 
new'' 
ClienteResponseDto'' )
{(( 
Id)) 
=)) 
c)) 
.)) 
Id)) 
,)) 
Nome** 
=** 
c** 
.** 
Nome** 
,** 
CpfCnpj++ 
=++ 
c++ 
.++ 
CpfCnpj++ #
.++# $
Value++$ )
,++) *
	Telefone1,, 
=,, 
c,, 
.,, 
	Telefone1,, '
,,,' (
	Telefone2-- 
=-- 
c-- 
.-- 
	Telefone2-- '
,--' (
Email.. 
=.. 
c.. 
... 
Email.. 
,..  
Ativo// 
=// 
c// 
.// 
Ativo// 
}00 
;00 
}11 	
public33 
async33 
Task33 
<33 
int33 
>33 
Criar33 $
(33$ %&
AdicionarClienteRequestDto33% ?
dto33@ C
)33C D
{44 	
var66 
existe66 
=66 
await66 
_repository66 *
.66* +
ExisteCpfCnpjAsync66+ =
(66= >
dto66> A
.66A B
CpfCnpj66B I
)66I J
;66J K
if88 
(88 
existe88 
)88 
throw99 
new99 
	Exception99 #
(99# $
$str99$ <
)99< =
;99= >
var<< 
cliente<< 
=<< 
new<< 
Cliente<< %
{== 
Nome>> 
=>> 
dto>> 
.>> 
Nome>> 
,>>  
	Telefone1?? 
=?? 
dto?? 
.??  
	Telefone1??  )
,??) *
	Telefone2@@ 
=@@ 
dto@@ 
.@@  
	Telefone2@@  )
??@@* ,
string@@- 3
.@@3 4
Empty@@4 9
,@@9 :
EmailAA 
=AA 
dtoAA 
.AA 
EmailAA !
??AA" $
stringAA% +
.AA+ ,
EmptyAA, 1
,AA1 2
AtivoBB 
=BB 
trueBB 
}CC 
;CC 
clienteEE 
.EE 
SetDocumentEE 
(EE  
dtoEE  #
.EE# $
CpfCnpjEE$ +
)EE+ ,
;EE, -
awaitGG 
_repositoryGG 
.GG 
AdicionarAsyncGG ,
(GG, -
clienteGG- 4
)GG4 5
;GG5 6
returnII 
clienteII 
.II 
IdII 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
boolLL 
>LL 
	AtualizarLL  )
(LL) *
intLL* -
idLL. 0
,LL0 1&
AtualizarClienteRequestDtoLL2 L
dtoLLM P
)LLP Q
{MM 	
varNN 
clienteNN 
=NN 
awaitNN 
_repositoryNN  +
.NN+ ,
ListarPorIdAsyncNN, <
(NN< =
idNN= ?
)NN? @
;NN@ A
ifOO 
(OO 
clienteOO 
isOO 
nullOO 
)OO  
returnOO! '
falseOO( -
;OO- .
clienteQQ 
.QQ 
NomeQQ 
=QQ 
dtoQQ 
.QQ 
NomeQQ #
;QQ# $
ifSS 
(SS 
!SS 
stringSS 
.SS 
IsNullOrWhiteSpaceSS *
(SS* +
dtoSS+ .
.SS. /
	Telefone1SS/ 8
)SS8 9
)SS9 :
clienteTT 
.TT 
	Telefone1TT !
=TT" #
dtoTT$ '
.TT' (
	Telefone1TT( 1
;TT1 2
ifVV 
(VV 
dtoVV 
.VV 
	Telefone2VV 
isVV  
notVV! $
nullVV% )
)VV) *
clienteWW 
.WW 
	Telefone2WW !
=WW" #
dtoWW$ '
.WW' (
	Telefone2WW( 1
;WW1 2
ifYY 
(YY 
dtoYY 
.YY 
EmailYY 
isYY 
notYY  
nullYY! %
)YY% &
clienteZZ 
.ZZ 
EmailZZ 
=ZZ 
dtoZZ  #
.ZZ# $
EmailZZ$ )
;ZZ) *
if\\ 
(\\ 
!\\ 
string\\ 
.\\ 
IsNullOrWhiteSpace\\ *
(\\* +
dto\\+ .
.\\. /
CpfCnpj\\/ 6
)\\6 7
)\\7 8
cliente]] 
.]] 
SetDocument]] #
(]]# $
dto]]$ '
.]]' (
CpfCnpj]]( /
)]]/ 0
;]]0 1
await__ 
_repository__ 
.__ 
AtualizarAsync__ ,
(__, -
cliente__- 4
)__4 5
;__5 6
returnaa 
trueaa 
;aa 
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
booldd 
>dd 
Deletardd  '
(dd' (
intdd( +
iddd, .
)dd. /
{ee 	
varff 
clienteff 
=ff 
awaitff 
_repositoryff  +
.ff+ ,
ListarPorIdAsyncff, <
(ff< =
idff= ?
)ff? @
;ff@ A
ifgg 
(gg 
clientegg 
isgg 
nullgg 
)gg  
returngg! '
falsegg( -
;gg- .
clienteii 
.ii 
Ativoii 
=ii 
falseii !
;ii! "
awaitkk 
_repositorykk 
.kk 
AtualizarAsynckk ,
(kk, -
clientekk- 4
)kk4 5
;kk5 6
returnmm 
truemm 
;mm 
}nn 	
}oo 
}pp ’∫
{C:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Services\OrdemServicoService.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Services '
{		 
public

 

class

 
OrdemServicoService

 $
:

% & 
IOrdemServicoService

' ;
{ 
private 
readonly #
IOrdemServicoRepository 0
_osRepo1 8
;8 9
private 
readonly 
IProdutoRepository +
_produtoRepo, 8
;8 9
private 
readonly ,
 IOrdemServicoOrcamentoRepository 9
_orcRepo: B
;B C
private 
readonly *
IOrdemServicoProdutoRepository 7
_osProdRepo8 C
;C D
private 
readonly *
IOrdemServicoServicoRepository 7
_osServRepo8 C
;C D
private 
readonly 
IUnitOfWork $
_uow% )
;) *
private 
readonly -
!IOrdemServicoServicoLogRepository :

_osLogRepo; E
;E F
public 
OrdemServicoService "
(" ##
IOrdemServicoRepository #
osRepo$ *
,* +
IProdutoRepository 
produtoRepo *
,* +,
 IOrdemServicoOrcamentoRepository ,
orcRepo- 4
,4 5*
IOrdemServicoProdutoRepository *

osProdRepo+ 5
,5 6*
IOrdemServicoServicoRepository *

osServRepo+ 5
,5 6-
!IOrdemServicoServicoLogRepository -
	osLogRepo. 7
,7 8
IUnitOfWork 
uow 
) 
{ 	
_osRepo 
= 
osRepo 
; 
_produtoRepo 
= 
produtoRepo &
;& '
_orcRepo 
= 
orcRepo 
; 
_osProdRepo   
=   

osProdRepo   $
;  $ %
_osServRepo!! 
=!! 

osServRepo!! $
;!!$ %

_osLogRepo"" 
="" 
	osLogRepo"" "
;""" #
_uow## 
=## 
uow## 
;## 
}$$ 	
private&& #
OrdemServicoResponseDto&& '
MapToDto&&( 0
(&&0 1
OrdemServico&&1 =
os&&> @
)&&@ A
{'' 	
var(( 

orcamentos(( 
=(( 
os(( 
.((  

Orcamentos((  *
.((* +
Select((+ 1
(((1 2
o((2 3
=>((4 6
{)) 
var** 
totalProdutos** !
=**" #
o**$ %
.**% &
Produtos**& .
.**. /
Sum**/ 2
(**2 3
p**3 4
=>**5 7
p**8 9
.**9 :

Quantidade**: D
***E F
p**G H
.**H I
PrecoPraticado**I W
)**W X
;**X Y
var++ 
totalServicos++ !
=++" #
o++$ %
.++% &
Servicos++& .
.++. /
Sum++/ 2
(++2 3
s++3 4
=>++5 7
s++8 9
.++9 :
PrecoPraticado++: H
)++H I
;++I J
return-- 
new-- ,
 OrdemServicoOrcamentoResponseDto-- ;
{.. 
OSOrcamentoId// !
=//" #
o//$ %
.//% &
Id//& (
,//( )
	Descricao00 
=00 
o00  !
.00! "
	Descricao00" +
,00+ ,
StatusOrcamento11 #
=11$ %
o11& '
.11' (
StatusOrcamento11( 7
.117 8
ToString118 @
(11@ A
)11A B
,11B C

PrecoTotal22 
=22  
totalProdutos22! .
+22/ 0
totalServicos221 >
,22> ?
ServicosOrcamentoOS44 '
=44( )
o44* +
.44+ ,
Servicos44, 4
.444 5
Select445 ;
(44; <
s44< =
=>44> @
new44A D*
OrdemServicoServicoResponseDto44E c
{55 
ServicoOrcadoId66 '
=66( )
s66* +
.66+ ,
	ServicoId66, 5
,665 6
SkuServicoOrcado77 (
=77) *
s77+ ,
.77, -
Servico77- 4
.774 5
Sku775 8
,778 9"
DescricaoServicoOrcado88 .
=88/ 0
s881 2
.882 3
Servico883 :
.88: ;
	Descricao88; D
,88D E
PrecoServicoOrcado99 *
=99+ ,
s99- .
.99. /
PrecoPraticado99/ =
}:: 
):: 
.:: 
ToList:: 
(:: 
):: 
,::  
ProdutosOrcamentoOS<< '
=<<( )
o<<* +
.<<+ ,
Produtos<<, 4
.<<4 5
Select<<5 ;
(<<; <
p<<< =
=><<> @
new<<A D*
OrdemServicoProdutoResponseDto<<E c
{== 
ProdutoOrcadoId>> '
=>>( )
p>>* +
.>>+ ,
	ProdutoId>>, 5
,>>5 6
SkuProdutoOrcado?? (
=??) *
p??+ ,
.??, -
Produto??- 4
.??4 5
Sku??5 8
,??8 9
QtdProdutoOrcado@@ (
=@@) *
p@@+ ,
.@@, -

Quantidade@@- 7
,@@7 8&
PrecoUnitarioProdutoOrcadoAA 2
=AA3 4
pAA5 6
.AA6 7
PrecoPraticadoAA7 E
,AAE F
PrecoTotalProdutoBB )
=BB* +
pBB, -
.BB- .

QuantidadeBB. 8
*BB9 :
pBB; <
.BB< =
PrecoPraticadoBB= K
}CC 
)CC 
.CC 
ToListCC 
(CC 
)CC 
}DD 
;DD 
}EE 
)EE 
.EE 
ToListEE 
(EE 
)EE 
;EE 
varGG 
precoAprovadoGG 
=GG 
osGG  "
.GG" #

OrcamentosGG# -
.HH 
WhereHH 
(HH 
oHH 
=>HH 
oHH 
.HH 
StatusOrcamentoHH -
==HH. 0
StatusOrcamentoHH1 @
.HH@ A
AprovadoHHA I
)HHI J
.II 
SumII 
(II 
oII 
=>II 
oII 
.II 
ProdutosII $
.II$ %
SumII% (
(II( )
pII) *
=>II+ -
pII. /
.II/ 0

QuantidadeII0 :
*II; <
pII= >
.II> ?
PrecoPraticadoII? M
)IIM N
+JJ 
oJJ 
.JJ 
ServicosJJ #
.JJ# $
SumJJ$ '
(JJ' (
sJJ( )
=>JJ* ,
sJJ- .
.JJ. /
PrecoPraticadoJJ/ =
)JJ= >
)JJ> ?
;JJ? @
varLL 
precoPendenteLL 
=LL 
osLL  "
.LL" #

OrcamentosLL# -
.MM 
WhereMM 
(MM 
oMM 
=>MM 
oMM 
.MM 
StatusOrcamentoMM -
==MM. 0
StatusOrcamentoMM1 @
.MM@ A
PendenteMMA I
)MMI J
.NN 
SumNN 
(NN 
oNN 
=>NN 
oNN 
.NN 
ProdutosNN $
.NN$ %
SumNN% (
(NN( )
pNN) *
=>NN+ -
pNN. /
.NN/ 0

QuantidadeNN0 :
*NN; <
pNN= >
.NN> ?
PrecoPraticadoNN? M
)NNM N
+OO 
oOO 
.OO 
ServicosOO #
.OO# $
SumOO$ '
(OO' (
sOO( )
=>OO* ,
sOO- .
.OO. /
PrecoPraticadoOO/ =
)OO= >
)OO> ?
;OO? @
returnQQ 
newQQ #
OrdemServicoResponseDtoQQ .
{RR 
OrdensServicoIdSS 
=SS  !
osSS" $
.SS$ %
IdSS% '
,SS' (
TituloOSTT 
=TT 
osTT 
.TT 
TituloTT $
,TT$ %
StatusOSUU 
=UU 
osUU 
.UU 
StatusUU $
.UU$ %
ToStringUU% -
(UU- .
)UU. /
,UU/ 0
DescricaoOSVV 
=VV 
osVV  
.VV  !
	DescricaoVV! *
,VV* +
DataCriacaoOSWW 
=WW 
osWW  "
.WW" #
DataCriacaoWW# .
,WW. /!
DataInicioDiagnosticoXX %
=XX& '
osXX( *
.XX* +!
DataInicioDiagnosticoXX+ @
,XX@ A
DataInicioExecucaoYY "
=YY# $
osYY% '
.YY' (
DataInicioExecucaoYY( :
,YY: ;
DataFinalizacaoZZ 
=ZZ  !
osZZ" $
.ZZ$ %
DataFinalizacaoZZ% 4
,ZZ4 5
DataEntrega[[ 
=[[ 
os[[  
.[[  !
DataEntrega[[! ,
,[[, -
DataCancelamento\\  
=\\! "
os\\# %
.\\% &
DataCancelamento\\& 6
,\\6 7
NomeCliente^^ 
=^^ 
os^^  
.^^  !
Cliente^^! (
?^^( )
.^^) *
Nome^^* .
,^^. /
CpfCnpjCliente__ 
=__  
os__! #
.__# $
Cliente__$ +
!__+ ,
.__, -
CpfCnpj__- 4
.__4 5
Value__5 :
,__: ;
PlacaVeiculoaa 
=aa 
osaa !
.aa! "
Veiculoaa" )
.aa) *
Placaaa* /
,aa/ 0
MarcaVeiculobb 
=bb 
osbb !
.bb! "
Veiculobb" )
?bb) *
.bb* +
Marcabb+ 0
,bb0 1
ModeloVeiculocc 
=cc 
oscc  "
.cc" #
Veiculocc# *
?cc* +
.cc+ ,
Modelocc, 2
,cc2 3

AnoVeiculodd 
=dd 
osdd 
.dd  
Veiculodd  '
?dd' (
.dd( )
Anodd) ,
,dd, -#
PossuiOrcamentoPendenteff '
=ff( )
osff* ,
.ff, -

Orcamentosff- 7
.ff7 8
Anyff8 ;
(ff; <
off< =
=>ff> @
offA B
.ffB C
StatusOrcamentoffC R
==ffS U
StatusOrcamentoffV e
.ffe f
Pendentefff n
)ffn o
,ffo p#
PossuiOrcamentoAprovadogg '
=gg( )
osgg* ,
.gg, -

Orcamentosgg- 7
.gg7 8
Anygg8 ;
(gg; <
ogg< =
=>gg> @
oggA B
.ggB C
StatusOrcamentoggC R
==ggS U
StatusOrcamentoggV e
.gge f
Aprovadoggf n
)ggn o
,ggo p
PublicTokenii 
=ii 
osii  
.ii  !

PublicHashii! +
,ii+ ,

Orcamentoskk 
=kk 

orcamentoskk '
,kk' (
PrecoTotalAprovadomm "
=mm# $
precoAprovadomm% 2
,mm2 3
PrecoTotalPendentenn "
=nn# $
precoPendentenn% 2
,nn2 3
PrecoTotalGeraloo 
=oo  !
precoAprovadooo" /
+oo0 1
precoPendenteoo2 ?
}pp 
;pp 
}qq 	
publicss 
asyncss 
Taskss 
<ss 
intss 
>ss 
AdicionarOSAsyncss /
(ss/ 0'
CriarOrdemServicoRequestDtoss0 K
dtossL O
)ssO P
{tt 	
varuu 
osuu 
=uu 
newuu 
OrdemServicouu %
{vv 
Tituloww 
=ww 
dtoww 
.ww 
Tituloww #
,ww# $
	Descricaoxx 
=xx 
dtoxx 
.xx  
	Descricaoxx  )
,xx) *
	ClienteIdyy 
=yy 
dtoyy 
.yy  
	ClienteIdyy  )
,yy) *
	VeiculoIdzz 
=zz 
dtozz 
.zz  
	VeiculoIdzz  )
,zz) *
Status{{ 
={{ 
StatusOrdemServico{{ +
.{{+ ,
Recebida{{, 4
,{{4 5
DataCriacao|| 
=|| 
DateTime|| &
.||& '
UtcNow||' -
,||- .

PublicHash~~ 
=~~ 
Guid~~ !
.~~! "
NewGuid~~" )
(~~) *
)~~* +
.~~+ ,
ToString~~, 4
(~~4 5
$str~~5 8
)~~8 9
} 
; 
await
ÅÅ 
_osRepo
ÅÅ 
.
ÅÅ 
AdicionarAsync
ÅÅ (
(
ÅÅ( )
os
ÅÅ) +
)
ÅÅ+ ,
;
ÅÅ, -
await
ÇÇ 
_osRepo
ÇÇ 
.
ÇÇ 
SalvarAsync
ÇÇ %
(
ÇÇ% &
)
ÇÇ& '
;
ÇÇ' (
return
ÑÑ 
os
ÑÑ 
.
ÑÑ 
Id
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
public
áá 
async
áá 
Task
áá 
<
áá 
List
áá 
<
áá %
OrdemServicoResponseDto
áá 6
>
áá6 7
>
áá7 8
ListarTodosAsync
áá9 I
(
ááI J)
ListarOrdemServicoParamsDto
ááJ e
dto
ááf i
)
áái j
{
àà 	
var
ââ 
lista
ââ 
=
ââ 
await
ââ 
_osRepo
ââ %
.
ââ% &
ListarAsync
ââ& 1
(
ââ1 2
dto
ââ2 5
)
ââ5 6
;
ââ6 7
return
ãã 
lista
ãã 
.
ãã 
Select
ãã 
(
ãã  
MapToDto
ãã  (
)
ãã( )
.
ãã) *
ToList
ãã* 0
(
ãã0 1
)
ãã1 2
;
ãã2 3
}
åå 	
public
éé 
async
éé 
Task
éé 
<
éé %
OrdemServicoResponseDto
éé 1
?
éé1 2
>
éé2 3
ListarPorIdAsync
éé4 D
(
ééD E
int
ééE H
id
ééI K
)
ééK L
{
èè 	
var
êê 
os
êê 
=
êê 
await
êê 
_osRepo
êê "
.
êê" #
ObterPorIdAsync
êê# 2
(
êê2 3
id
êê3 5
)
êê5 6
;
êê6 7
return
íí 
os
íí 
is
íí 
null
íí 
?
íí 
null
íí  $
:
íí% &
MapToDto
íí' /
(
íí/ 0
os
íí0 2
)
íí2 3
;
íí3 4
}
ìì 	
private
ïï 
static
ïï 
bool
ïï 

SafeEquals
ïï &
(
ïï& '
string
ïï' -
a
ïï. /
,
ïï/ 0
string
ïï1 7
b
ïï8 9
)
ïï9 :
{
ññ 	
if
óó 
(
óó 
a
óó 
.
óó 
Length
óó 
!=
óó 
b
óó 
.
óó 
Length
óó $
)
óó$ %
return
óó& ,
false
óó- 2
;
óó2 3
var
ôô 
result
ôô 
=
ôô 
$num
ôô 
;
ôô 
for
öö 
(
öö 
int
öö 
i
öö 
=
öö 
$num
öö 
;
öö 
i
öö 
<
öö 
a
öö  !
.
öö! "
Length
öö" (
;
öö( )
i
öö* +
++
öö+ -
)
öö- .
result
õõ 
|=
õõ 
a
õõ 
[
õõ 
i
õõ 
]
õõ 
^
õõ  
b
õõ! "
[
õõ" #
i
õõ# $
]
õõ$ %
;
õõ% &
return
ùù 
result
ùù 
==
ùù 
$num
ùù 
;
ùù 
}
ûû 	
public
†† 
async
†† 
Task
†† 
<
†† %
OrdemServicoResponseDto
†† 1
?
††1 2
>
††2 3'
ListarPorHashExternoAsync
††4 M
(
††M N
string
††N T
hashExterno
††U `
,
††` a
string
††b h
docFinal
††i q
)
††q r
{
°° 	
if
¢¢ 
(
¢¢ 
string
¢¢ 
.
¢¢  
IsNullOrWhiteSpace
¢¢ )
(
¢¢) *
docFinal
¢¢* 2
)
¢¢2 3
||
¢¢4 6
docFinal
¢¢7 ?
.
¢¢? @
Length
¢¢@ F
!=
¢¢G I
$num
¢¢J K
)
¢¢K L
return
££ 
null
££ 
;
££ 
var
•• 
os
•• 
=
•• 
await
•• 
_osRepo
•• "
.
••" #"
ObterPorComHashAsync
••# 7
(
••7 8
hashExterno
••8 C
)
••C D
;
••D E
if
ßß 
(
ßß 
os
ßß 
is
ßß 
null
ßß 
)
ßß 
return
®® 
null
®® 
;
®® 
var
™™ 
	documento
™™ 
=
™™ 
os
™™ 
.
™™ 
Cliente
™™ &
.
™™& '
CpfCnpj
™™' .
.
™™. /
Value
™™/ 4
;
™™4 5
if
¨¨ 
(
¨¨ 
string
¨¨ 
.
¨¨ 
IsNullOrEmpty
¨¨ $
(
¨¨$ %
	documento
¨¨% .
)
¨¨. /
||
¨¨0 2
	documento
¨¨3 <
.
¨¨< =
Length
¨¨= C
<
¨¨D E
$num
¨¨F G
)
¨¨G H
return
≠≠ 
null
≠≠ 
;
≠≠ 
var
ØØ 
ultimosDigitos
ØØ 
=
ØØ  
	documento
ØØ! *
[
ØØ* +
^
ØØ+ ,
$num
ØØ, -
..
ØØ- /
]
ØØ/ 0
;
ØØ0 1
if
±± 
(
±± 
ultimosDigitos
±± 
!=
±± !
docFinal
±±" *
)
±±* +
return
≤≤ 
null
≤≤ 
;
≤≤ 
if
¥¥ 
(
¥¥ 
!
¥¥ 

SafeEquals
¥¥ 
(
¥¥ 
ultimosDigitos
¥¥ *
,
¥¥* +
docFinal
¥¥, 4
)
¥¥4 5
)
¥¥5 6
return
µµ 
null
µµ 
;
µµ 
return
∑∑ 
MapToDto
∑∑ 
(
∑∑ 
os
∑∑ 
)
∑∑ 
;
∑∑  
}
∏∏ 	
public
∫∫ 
async
∫∫ 
Task
∫∫ %
IniciarDiagnosticoAsync
∫∫ 1
(
∫∫1 2
int
∫∫2 5
osId
∫∫6 :
)
∫∫: ;
{
ªª 	
var
ºº 
os
ºº 
=
ºº 
await
ºº 
_osRepo
ºº "
.
ºº" #
ObterPorIdAsync
ºº# 2
(
ºº2 3
osId
ºº3 7
)
ºº7 8
;
ºº8 9
if
ææ 
(
ææ 
os
ææ 
is
ææ 
null
ææ 
)
ææ 
throw
øø 
new
øø 
	Exception
øø #
(
øø# $
$str
øø$ F
)
øøF G
;
øøG H
if
¡¡ 
(
¡¡ 
os
¡¡ 
.
¡¡ 
Status
¡¡ 
!=
¡¡  
StatusOrdemServico
¡¡ /
.
¡¡/ 0
Recebida
¡¡0 8
)
¡¡8 9
throw
¬¬ 
new
¬¬ 
	Exception
¬¬ #
(
¬¬# $
$str
¬¬$ `
)
¬¬` a
;
¬¬a b
os
ƒƒ 
.
ƒƒ 
Status
ƒƒ 
=
ƒƒ  
StatusOrdemServico
ƒƒ *
.
ƒƒ* +
EmDiagnostico
ƒƒ+ 8
;
ƒƒ8 9
os
≈≈ 
.
≈≈ #
DataInicioDiagnostico
≈≈ $
=
≈≈% &
DateTime
≈≈' /
.
≈≈/ 0
UtcNow
≈≈0 6
;
≈≈6 7
await
«« 
_osRepo
«« 
.
«« 
AtualizarAsync
«« (
(
««( )
os
««) +
)
««+ ,
;
««, -
await
»» 
_osRepo
»» 
.
»» 
SalvarAsync
»» %
(
»»% &
)
»»& '
;
»»' (
}
…… 	
public
ÀÀ 
async
ÀÀ 
Task
ÀÀ "
EnviarOrcamentoAsync
ÀÀ .
(
ÀÀ. /
int
ÀÀ/ 2
osId
ÀÀ3 7
,
ÀÀ7 8&
CriarOrcamentoRequestDto
ÀÀ9 Q
dto
ÀÀR U
)
ÀÀU V
{
ÃÃ 	
await
ÕÕ 
_uow
ÕÕ 
.
ÕÕ #
BeginTransactionAsync
ÕÕ ,
(
ÕÕ, -
)
ÕÕ- .
;
ÕÕ. /
try
œœ 
{
–– 
var
—— 
os
—— 
=
—— 
await
—— 
_osRepo
—— &
.
——& '
ObterPorIdAsync
——' 6
(
——6 7
osId
——7 ;
)
——; <
;
——< =
if
”” 
(
”” 
os
”” 
is
”” 
null
”” 
)
”” 
throw
‘‘ 
new
‘‘ 
	Exception
‘‘ '
(
‘‘' (
$str
‘‘( <
)
‘‘< =
;
‘‘= >
if
÷÷ 
(
÷÷ 
os
÷÷ 
.
÷÷ 
Status
÷÷ 
!=
÷÷   
StatusOrdemServico
÷÷! 3
.
÷÷3 4
EmDiagnostico
÷÷4 A
&&
÷÷B D
os
◊◊ 
.
◊◊ 
Status
◊◊ 
!=
◊◊   
StatusOrdemServico
◊◊! 3
.
◊◊3 4
EmAprovacao
◊◊4 ?
&&
◊◊@ B
os
ÿÿ 
.
ÿÿ 
Status
ÿÿ 
!=
ÿÿ   
StatusOrdemServico
ÿÿ! 3
.
ÿÿ3 4

EmExecucao
ÿÿ4 >
)
ÿÿ> ?
throw
ŸŸ 
new
ŸŸ 
	Exception
ŸŸ '
(
ŸŸ' (
$str
ŸŸ( :
)
ŸŸ: ;
;
ŸŸ; <
var
€€ 
	orcamento
€€ 
=
€€ 
new
€€  ##
OrdemServicoOrcamento
€€$ 9
{
‹‹ 
OSId
›› 
=
›› 
os
›› 
.
›› 
Id
››  
,
››  !
	Descricao
ﬁﬁ 
=
ﬁﬁ 
dto
ﬁﬁ  #
.
ﬁﬁ# $
	Descricao
ﬁﬁ$ -
,
ﬁﬁ- .
StatusOrcamento
ﬂﬂ #
=
ﬂﬂ$ %
StatusOrcamento
ﬂﬂ& 5
.
ﬂﬂ5 6
Pendente
ﬂﬂ6 >
,
ﬂﬂ> ?
DataCriacao
‡‡ 
=
‡‡  !
DateTime
‡‡" *
.
‡‡* +
UtcNow
‡‡+ 1
}
·· 
;
·· 
await
„„ 
_orcRepo
„„ 
.
„„ 
AdicionarAsync
„„ -
(
„„- .
	orcamento
„„. 7
)
„„7 8
;
„„8 9
await
‰‰ 
_osRepo
‰‰ 
.
‰‰ 
SalvarAsync
‰‰ )
(
‰‰) *
)
‰‰* +
;
‰‰+ ,
os
ÊÊ 
.
ÊÊ 

Orcamentos
ÊÊ 
??=
ÊÊ !
new
ÊÊ" %
List
ÊÊ& *
<
ÊÊ* +#
OrdemServicoOrcamento
ÊÊ+ @
>
ÊÊ@ A
(
ÊÊA B
)
ÊÊB C
;
ÊÊC D
os
ÁÁ 
.
ÁÁ 

Orcamentos
ÁÁ 
.
ÁÁ 
Add
ÁÁ !
(
ÁÁ! "
	orcamento
ÁÁ" +
)
ÁÁ+ ,
;
ÁÁ, -
if
ÈÈ 
(
ÈÈ 
os
ÈÈ 
.
ÈÈ 
Status
ÈÈ 
==
ÈÈ   
StatusOrdemServico
ÈÈ! 3
.
ÈÈ3 4
EmDiagnostico
ÈÈ4 A
)
ÈÈA B
{
ÍÍ 
os
ÎÎ 
.
ÎÎ 
Status
ÎÎ 
=
ÎÎ  
StatusOrdemServico
ÎÎ  2
.
ÎÎ2 3
EmAprovacao
ÎÎ3 >
;
ÎÎ> ?
os
ÏÏ 
.
ÏÏ  
DataFimDiagnostico
ÏÏ )
=
ÏÏ* +
DateTime
ÏÏ, 4
.
ÏÏ4 5
UtcNow
ÏÏ5 ;
;
ÏÏ; <
}
ÌÌ 
foreach
ÔÔ 
(
ÔÔ 
var
ÔÔ 
prod
ÔÔ !
in
ÔÔ" $
dto
ÔÔ% (
.
ÔÔ( )!
ProdutosOrcamentoOS
ÔÔ) <
)
ÔÔ< =
{
 
var
ÒÒ 
produto
ÒÒ 
=
ÒÒ  !
await
ÒÒ" '
_produtoRepo
ÒÒ( 4
.
ÒÒ4 5
ListarPorIdAsync
ÒÒ5 E
(
ÒÒE F
prod
ÒÒF J
.
ÒÒJ K 
ProdutoIdOrcamento
ÒÒK ]
)
ÒÒ] ^
;
ÒÒ^ _
if
ÛÛ 
(
ÛÛ 
produto
ÛÛ 
is
ÛÛ  "
null
ÛÛ# '
)
ÛÛ' (
throw
ÙÙ 
new
ÙÙ !
	Exception
ÙÙ" +
(
ÙÙ+ ,
$str
ÙÙ, E
)
ÙÙE F
;
ÙÙF G
var
ˆˆ 

disponivel
ˆˆ "
=
ˆˆ# $
produto
ˆˆ% ,
.
ˆˆ, -
QuantidadeTotal
ˆˆ- <
-
ˆˆ= >
produto
ˆˆ? F
.
ˆˆF G!
QuantidadeReservada
ˆˆG Z
;
ˆˆZ [
if
¯¯ 
(
¯¯ 
prod
¯¯ 
.
¯¯ !
QtdProdutoOrcamento
¯¯ 0
>
¯¯1 2

disponivel
¯¯3 =
)
¯¯= >
throw
˘˘ 
new
˘˘ !
	Exception
˘˘" +
(
˘˘+ ,
$str
˘˘, C
)
˘˘C D
;
˘˘D E
produto
˚˚ 
.
˚˚ !
QuantidadeReservada
˚˚ /
+=
˚˚0 2
prod
˚˚3 7
.
˚˚7 8!
QtdProdutoOrcamento
˚˚8 K
;
˚˚K L
await
˝˝ 
_produtoRepo
˝˝ &
.
˝˝& '
AtualizarAsync
˝˝' 5
(
˝˝5 6
produto
˝˝6 =
)
˝˝= >
;
˝˝> ?
var
ˇˇ 
produtoEntity
ˇˇ %
=
ˇˇ& '
new
ˇˇ( +!
OrdemServicoProduto
ˇˇ, ?
{
ÄÄ 
OSId
ÅÅ 
=
ÅÅ 
os
ÅÅ !
.
ÅÅ! "
Id
ÅÅ" $
,
ÅÅ$ %
OSOrcamentoId
ÇÇ %
=
ÇÇ& '
	orcamento
ÇÇ( 1
.
ÇÇ1 2
Id
ÇÇ2 4
,
ÇÇ4 5
	ProdutoId
ÉÉ !
=
ÉÉ" #
prod
ÉÉ$ (
.
ÉÉ( ) 
ProdutoIdOrcamento
ÉÉ) ;
,
ÉÉ; <

Quantidade
ÑÑ "
=
ÑÑ# $
prod
ÑÑ% )
.
ÑÑ) *!
QtdProdutoOrcamento
ÑÑ* =
,
ÑÑ= >
PrecoPraticado
ÖÖ &
=
ÖÖ' (
prod
ÖÖ) -
.
ÖÖ- .+
PrecoUnitarioProdutoOrcamento
ÖÖ. K
,
ÖÖK L

StatusItem
ÜÜ "
=
ÜÜ# $
StatusItemProduto
ÜÜ% 6
.
ÜÜ6 7
	Reservado
ÜÜ7 @
}
áá 
;
áá 
await
ââ 
_osProdRepo
ââ %
.
ââ% &
AdicionarAsync
ââ& 4
(
ââ4 5
produtoEntity
ââ5 B
)
ââB C
;
ââC D
	orcamento
ãã 
.
ãã 
Produtos
ãã &
??=
ãã' *
new
ãã+ .
List
ãã/ 3
<
ãã3 4!
OrdemServicoProduto
ãã4 G
>
ããG H
(
ããH I
)
ããI J
;
ããJ K
	orcamento
åå 
.
åå 
Produtos
åå &
.
åå& '
Add
åå' *
(
åå* +
produtoEntity
åå+ 8
)
åå8 9
;
åå9 :
}
çç 
foreach
èè 
(
èè 
var
èè 
serv
èè !
in
èè" $
dto
èè% (
.
èè( )!
ServicosOrcamentoOS
èè) <
)
èè< =
{
êê 
var
ëë 
servicoEntity
ëë %
=
ëë& '
new
ëë( +!
OrdemServicoServico
ëë, ?
{
íí 
OSId
ìì 
=
ìì 
os
ìì !
.
ìì! "
Id
ìì" $
,
ìì$ %
OSOrcamentoId
îî %
=
îî& '
	orcamento
îî( 1
.
îî1 2
Id
îî2 4
,
îî4 5
	ServicoId
ïï !
=
ïï" #
serv
ïï$ (
.
ïï( ) 
ServicoIdOrcamento
ïï) ;
,
ïï; <
PrecoPraticado
ññ &
=
ññ' (
serv
ññ) -
.
ññ- .#
PrecoServicoOrcamento
ññ. C
}
óó 
;
óó 
await
ôô 
_osServRepo
ôô %
.
ôô% &
AdicionarAsync
ôô& 4
(
ôô4 5
servicoEntity
ôô5 B
)
ôôB C
;
ôôC D
	orcamento
õõ 
.
õõ 
Servicos
õõ &
??=
õõ' *
new
õõ+ .
List
õõ/ 3
<
õõ3 4!
OrdemServicoServico
õõ4 G
>
õõG H
(
õõH I
)
õõI J
;
õõJ K
	orcamento
úú 
.
úú 
Servicos
úú &
.
úú& '
Add
úú' *
(
úú* +
servicoEntity
úú+ 8
)
úú8 9
;
úú9 :
}
ùù 
await
üü 
_osRepo
üü 
.
üü 
AtualizarAsync
üü ,
(
üü, -
os
üü- /
)
üü/ 0
;
üü0 1
await
°° 
_uow
°° 
.
°° 
CommitAsync
°° &
(
°°& '
)
°°' (
;
°°( )
}
¢¢ 
catch
££ 
{
§§ 
await
•• 
_uow
•• 
.
•• 
RollbackAsync
•• (
(
••( )
)
••) *
;
••* +
throw
¶¶ 
;
¶¶ 
}
ßß 
}
®® 	
public
©© 
async
©© 
Task
©© 1
#DecidirOrcamentoPorHashExternoAsync
©© =
(
©©= >
string
™™ 
hashExterno
™™ 
,
™™ 
string
´´ 
docFinal
´´ 
,
´´ 
int
¨¨ 
orcamentoId
¨¨ 
,
¨¨ (
DecisaoOrcamentoRequestDto
≠≠ &
dto
≠≠' *
)
≠≠* +
{
ÆÆ 	
await
ØØ 
_uow
ØØ 
.
ØØ #
BeginTransactionAsync
ØØ ,
(
ØØ, -
)
ØØ- .
;
ØØ. /
try
±± 
{
≤≤ 
docFinal
≥≥ 
=
≥≥ 
new
≥≥ 
string
≥≥ %
(
≥≥% &
docFinal
≥≥& .
.
≥≥. /
Where
≥≥/ 4
(
≥≥4 5
char
≥≥5 9
.
≥≥9 :
IsDigit
≥≥: A
)
≥≥A B
.
≥≥B C
ToArray
≥≥C J
(
≥≥J K
)
≥≥K L
)
≥≥L M
;
≥≥M N
if
µµ 
(
µµ 
docFinal
µµ 
.
µµ 
Length
µµ #
!=
µµ$ &
$num
µµ' (
)
µµ( )
throw
∂∂ 
new
∂∂ 
	Exception
∂∂ '
(
∂∂' (
$str
∂∂( I
)
∂∂I J
;
∂∂J K
var
∏∏ 
os
∏∏ 
=
∏∏ 
await
∏∏ 
_osRepo
∏∏ &
.
∏∏& '"
ObterPorComHashAsync
∏∏' ;
(
∏∏; <
hashExterno
∏∏< G
)
∏∏G H
;
∏∏H I
if
∫∫ 
(
∫∫ 
os
∫∫ 
is
∫∫ 
null
∫∫ 
)
∫∫ 
throw
ªª 
new
ªª 
	Exception
ªª '
(
ªª' (
$str
ªª( I
)
ªªI J
;
ªªJ K
var
ΩΩ 
	documento
ΩΩ 
=
ΩΩ 
os
ΩΩ  "
.
ΩΩ" #
Cliente
ΩΩ# *
?
ΩΩ* +
.
ΩΩ+ ,
CpfCnpj
ΩΩ, 3
?
ΩΩ3 4
.
ΩΩ4 5
Value
ΩΩ5 :
;
ΩΩ: ;
if
øø 
(
øø 
string
øø 
.
øø 
IsNullOrEmpty
øø (
(
øø( )
	documento
øø) 2
)
øø2 3
||
øø4 6
	documento
øø7 @
.
øø@ A
Length
øøA G
<
øøH I
$num
øøJ K
)
øøK L
throw
¿¿ 
new
¿¿ 
	Exception
¿¿ '
(
¿¿' (
$str
¿¿( I
)
¿¿I J
;
¿¿J K
var
¬¬ 
ultimosDigitos
¬¬ "
=
¬¬# $
	documento
¬¬% .
[
¬¬. /
^
¬¬/ 0
$num
¬¬0 1
..
¬¬1 3
]
¬¬3 4
;
¬¬4 5
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 

SafeEquals
ƒƒ 
(
ƒƒ  
ultimosDigitos
ƒƒ  .
,
ƒƒ. /
docFinal
ƒƒ0 8
)
ƒƒ8 9
)
ƒƒ9 :
throw
≈≈ 
new
≈≈ 
	Exception
≈≈ '
(
≈≈' (
$str
≈≈( I
)
≈≈I J
;
≈≈J K
var
«« 
	orcamento
«« 
=
«« 
await
««  %
_orcRepo
««& .
.
««. /
ObterPorIdAsync
««/ >
(
««> ?
orcamentoId
««? J
)
««J K
;
««K L
if
…… 
(
…… 
	orcamento
…… 
is
……  
null
……! %
||
……& (
	orcamento
……) 2
.
……2 3
OSId
……3 7
!=
……8 :
os
……; =
.
……= >
Id
……> @
)
……@ A
throw
   
new
   
	Exception
   '
(
  ' (
$str
  ( I
)
  I J
;
  J K
if
ÃÃ 
(
ÃÃ 
	orcamento
ÃÃ 
.
ÃÃ 
StatusOrcamento
ÃÃ -
!=
ÃÃ. 0
StatusOrcamento
ÃÃ1 @
.
ÃÃ@ A
Pendente
ÃÃA I
)
ÃÃI J
throw
ÕÕ 
new
ÕÕ 
	Exception
ÕÕ '
(
ÕÕ' (
$str
ÕÕ( K
)
ÕÕK L
;
ÕÕL M
var
œœ !
produtosDoOrcamento
œœ '
=
œœ( )
await
œœ* /
_osProdRepo
œœ0 ;
.
œœ; <'
ListarPorOrcamentoIdAsync
œœ< U
(
œœU V
orcamentoId
œœV a
)
œœa b
;
œœb c
if
—— 
(
—— 
dto
—— 
.
—— 
Aprovar
—— 
)
——  
{
““ 
	orcamento
”” 
.
”” 
StatusOrcamento
”” -
=
””. /
StatusOrcamento
””0 ?
.
””? @
Aprovado
””@ H
;
””H I
	orcamento
‘‘ 
.
‘‘ $
DataAprovacaoOrcamento
‘‘ 4
=
‘‘5 6
DateTime
‘‘7 ?
.
‘‘? @
UtcNow
‘‘@ F
;
‘‘F G
if
÷÷ 
(
÷÷ 
os
÷÷ 
.
÷÷ 
Status
÷÷ !
==
÷÷" $ 
StatusOrdemServico
÷÷% 7
.
÷÷7 8
EmAprovacao
÷÷8 C
)
÷÷C D
{
◊◊ 
os
ÿÿ 
.
ÿÿ 
Status
ÿÿ !
=
ÿÿ" # 
StatusOrdemServico
ÿÿ$ 6
.
ÿÿ6 7

EmExecucao
ÿÿ7 A
;
ÿÿA B
os
ŸŸ 
.
ŸŸ  
DataInicioExecucao
ŸŸ -
=
ŸŸ. /
DateTime
ŸŸ0 8
.
ŸŸ8 9
UtcNow
ŸŸ9 ?
;
ŸŸ? @
}
⁄⁄ 
foreach
‹‹ 
(
‹‹ 
var
‹‹  
itemOS
‹‹! '
in
‹‹( *!
produtosDoOrcamento
‹‹+ >
)
‹‹> ?
{
›› 
itemOS
ﬁﬁ 
.
ﬁﬁ 

StatusItem
ﬁﬁ )
=
ﬁﬁ* +
StatusItemProduto
ﬁﬁ, =
.
ﬁﬁ= >

Confirmado
ﬁﬁ> H
;
ﬁﬁH I
await
ﬂﬂ 
_osProdRepo
ﬂﬂ )
.
ﬂﬂ) *
AtualizarAsync
ﬂﬂ* 8
(
ﬂﬂ8 9
itemOS
ﬂﬂ9 ?
)
ﬂﬂ? @
;
ﬂﬂ@ A
var
·· 
produto
·· #
=
··$ %
await
··& +
_produtoRepo
··, 8
.
··8 9
ListarPorIdAsync
··9 I
(
··I J
itemOS
··J P
.
··P Q
	ProdutoId
··Q Z
)
··Z [
;
··[ \
if
‚‚ 
(
‚‚ 
produto
‚‚ #
!=
‚‚$ &
null
‚‚' +
)
‚‚+ ,
{
„„ 
if
‰‰ 
(
‰‰  
produto
‰‰  '
.
‰‰' (
QuantidadeTotal
‰‰( 7
<
‰‰8 9
itemOS
‰‰: @
.
‰‰@ A

Quantidade
‰‰A K
)
‰‰K L
throw
ÂÂ  %
new
ÂÂ& )
	Exception
ÂÂ* 3
(
ÂÂ3 4
$str
ÂÂ4 K
)
ÂÂK L
;
ÂÂL M
produto
ÁÁ #
.
ÁÁ# $
QuantidadeTotal
ÁÁ$ 3
-=
ÁÁ4 6
itemOS
ÁÁ7 =
.
ÁÁ= >

Quantidade
ÁÁ> H
;
ÁÁH I
produto
ËË #
.
ËË# $!
QuantidadeReservada
ËË$ 7
-=
ËË8 :
itemOS
ËË; A
.
ËËA B

Quantidade
ËËB L
;
ËËL M
await
ÍÍ !
_produtoRepo
ÍÍ" .
.
ÍÍ. /
AtualizarAsync
ÍÍ/ =
(
ÍÍ= >
produto
ÍÍ> E
)
ÍÍE F
;
ÍÍF G
}
ÎÎ 
}
ÏÏ 
}
ÌÌ 
else
ÓÓ 
{
ÔÔ 
	orcamento
 
.
 
StatusOrcamento
 -
=
. /
StatusOrcamento
0 ?
.
? @
	Reprovado
@ I
;
I J
foreach
ÚÚ 
(
ÚÚ 
var
ÚÚ  
itemOS
ÚÚ! '
in
ÚÚ( *!
produtosDoOrcamento
ÚÚ+ >
)
ÚÚ> ?
{
ÛÛ 
itemOS
ÙÙ 
.
ÙÙ 

StatusItem
ÙÙ )
=
ÙÙ* +
StatusItemProduto
ÙÙ, =
.
ÙÙ= >
	Cancelado
ÙÙ> G
;
ÙÙG H
await
ıı 
_osProdRepo
ıı )
.
ıı) *
AtualizarAsync
ıı* 8
(
ıı8 9
itemOS
ıı9 ?
)
ıı? @
;
ıı@ A
var
˜˜ 
produto
˜˜ #
=
˜˜$ %
await
˜˜& +
_produtoRepo
˜˜, 8
.
˜˜8 9
ListarPorIdAsync
˜˜9 I
(
˜˜I J
itemOS
˜˜J P
.
˜˜P Q
	ProdutoId
˜˜Q Z
)
˜˜Z [
;
˜˜[ \
if
¯¯ 
(
¯¯ 
produto
¯¯ #
!=
¯¯$ &
null
¯¯' +
)
¯¯+ ,
{
˘˘ 
produto
˙˙ #
.
˙˙# $!
QuantidadeReservada
˙˙$ 7
-=
˙˙8 :
itemOS
˙˙; A
.
˙˙A B

Quantidade
˙˙B L
;
˙˙L M
await
˚˚ !
_produtoRepo
˚˚" .
.
˚˚. /
AtualizarAsync
˚˚/ =
(
˚˚= >
produto
˚˚> E
)
˚˚E F
;
˚˚F G
}
¸¸ 
}
˝˝ 
}
˛˛ 
await
ÄÄ 
_orcRepo
ÄÄ 
.
ÄÄ 
AtualizarAsync
ÄÄ -
(
ÄÄ- .
	orcamento
ÄÄ. 7
)
ÄÄ7 8
;
ÄÄ8 9
await
ÅÅ 
_osRepo
ÅÅ 
.
ÅÅ 
AtualizarAsync
ÅÅ ,
(
ÅÅ, -
os
ÅÅ- /
)
ÅÅ/ 0
;
ÅÅ0 1
await
ÉÉ 
_uow
ÉÉ 
.
ÉÉ 
CommitAsync
ÉÉ &
(
ÉÉ& '
)
ÉÉ' (
;
ÉÉ( )
}
ÑÑ 
catch
ÖÖ 
{
ÜÜ 
await
áá 
_uow
áá 
.
áá 
RollbackAsync
áá (
(
áá( )
)
áá) *
;
áá* +
throw
àà 
;
àà 
}
ââ 
}
ää 	
public
åå 
async
åå 
Task
åå %
ExecutarServicoLogAsync
åå 1
(
åå1 2
int
åå2 5
osId
åå6 :
,
åå: ;
int
åå< ?
orcId
åå@ E
,
ååE F
int
ååG J
servId
ååK Q
,
ååQ R*
ExecutarServicoLogRequestDto
ååS o
dto
ååp s
)
åås t
{
çç 	
var
éé 
os
éé 
=
éé 
await
éé 
_osRepo
éé "
.
éé" ##
ObterComServicosAsync
éé# 8
(
éé8 9
osId
éé9 =
)
éé= >
??
èè 
throw
èè 
new
èè 
	Exception
èè &
(
èè& '
$str
èè' :
)
èè: ;
;
èè; <
if
ëë 
(
ëë 
os
ëë 
.
ëë 
Status
ëë 
!=
ëë  
StatusOrdemServico
ëë /
.
ëë/ 0

EmExecucao
ëë0 :
)
ëë: ;
throw
íí 
new
íí 
	Exception
íí #
(
íí# $
$str
íí$ =
)
íí= >
;
íí> ?
var
îî 
servico
îî 
=
îî 
os
îî 
.
îî 
Servicos
îî %
.
ïï 
FirstOrDefault
ïï 
(
ïï  
s
ïï  !
=>
ïï" $
s
ïï% &
.
ïï& '
Id
ïï' )
==
ïï* ,
servId
ïï- 3
)
ïï3 4
??
ññ 
throw
ññ 
new
ññ 
	Exception
ññ &
(
ññ& '
$str
ññ' ?
)
ññ? @
;
ññ@ A
var
òò 
	ultimoLog
òò 
=
òò 
servico
òò #
.
òò# $
Logs
òò$ (
.
ôô 
OrderByDescending
ôô "
(
ôô" #
l
ôô# $
=>
ôô% '
l
ôô( )
.
ôô) *
DataCriacao
ôô* 5
)
ôô5 6
.
öö 
FirstOrDefault
öö 
(
öö  
)
öö  !
;
öö! "
var
úú 

ultimaAcao
úú 
=
úú 
	ultimoLog
úú &
?
úú& '
.
úú' (
AcaoLog
úú( /
;
úú/ 0
var
ûû 
podeExecutar
ûû 
=
ûû 
dto
ûû "
.
ûû" #
Acao
ûû# '
switch
ûû( .
{
üü 
StatusServicoLog
††  
.
††  !
Iniciar
††! (
=>
††) +

ultimaAcao
°° 
!=
°° !
StatusServicoLog
°°" 2
.
°°2 3
Iniciar
°°3 :
,
°°: ;
StatusServicoLog
££  
.
££  !
Pausar
££! '
=>
££( *

ultimaAcao
§§ 
==
§§ !
StatusServicoLog
§§" 2
.
§§2 3
Iniciar
§§3 :
,
§§: ;
StatusServicoLog
¶¶  
.
¶¶  !
Terminar
¶¶! )
=>
¶¶* ,

ultimaAcao
ßß 
==
ßß !
StatusServicoLog
ßß" 2
.
ßß2 3
Iniciar
ßß3 :
||
ßß; =

ultimaAcao
®® 
==
®® !
StatusServicoLog
®®" 2
.
®®2 3
Pausar
®®3 9
,
®®9 :
_
™™ 
=>
™™ 
false
™™ 
}
´´ 
;
´´ 
System
≠≠ 
.
≠≠ 
Diagnostics
≠≠ 
.
≠≠ 
Debug
≠≠ $
.
≠≠$ %
	WriteLine
≠≠% .
(
≠≠. /
$"
≠≠/ 1
$str
≠≠1 @
{
≠≠@ A
podeExecutar
≠≠A M
}
≠≠M N
"
≠≠N O
)
≠≠O P
;
≠≠P Q
if
ØØ 
(
ØØ 
!
ØØ 
podeExecutar
ØØ 
)
ØØ 
throw
∞∞ 
new
∞∞ 
	Exception
∞∞ #
(
∞∞# $
$"
∞∞$ &
$str
∞∞& T
{
∞∞T U

ultimaAcao
∞∞U _
}
∞∞_ `
"
∞∞` a
)
∞∞a b
;
∞∞b c
try
≤≤ 
{
≥≥ 
var
¥¥ 
novoLog
¥¥ 
=
¥¥ 
new
¥¥ !$
OrdemServicoServicoLog
¥¥" 8
{
µµ 
OSId
∂∂ 
=
∂∂ 
os
∂∂ 
.
∂∂ 
Id
∂∂  
,
∂∂  !
OSServicoId
∑∑ 
=
∑∑  !
servico
∑∑" )
.
∑∑) *
Id
∑∑* ,
,
∑∑, -
AcaoLog
∏∏ 
=
∏∏ 
dto
∏∏ !
.
∏∏! "
Acao
∏∏" &
,
∏∏& '
DataCriacao
ππ 
=
ππ  !
DateTime
ππ" *
.
ππ* +
UtcNow
ππ+ 1
}
∫∫ 
;
∫∫ 
await
ºº 

_osLogRepo
ºº  
.
ºº  !
AdicionarAsync
ºº! /
(
ºº/ 0
novoLog
ºº0 7
)
ºº7 8
;
ºº8 9
await
ææ 
_uow
ææ 
.
ææ 
CommitAsync
ææ &
(
ææ& '
)
ææ' (
;
ææ( )
}
øø 
catch
¿¿ 
(
¿¿ 
	Exception
¿¿ 
ex
¿¿ 
)
¿¿  
{
¡¡ 
System
¬¬ 
.
¬¬ 
Diagnostics
¬¬ "
.
¬¬" #
Debug
¬¬# (
.
¬¬( )
	WriteLine
¬¬) 2
(
¬¬2 3
$str
¬¬3 ?
)
¬¬? @
;
¬¬@ A
System
√√ 
.
√√ 
Diagnostics
√√ "
.
√√" #
Debug
√√# (
.
√√( )
	WriteLine
√√) 2
(
√√2 3
ex
√√3 5
.
√√5 6
ToString
√√6 >
(
√√> ?
)
√√? @
)
√√@ A
;
√√A B
throw
ƒƒ 
;
ƒƒ 
}
≈≈ 
}
∆∆ 	
public
»» 
async
»» 
Task
»» 
CancelarOSAsync
»» )
(
»») *
int
»»* -
osId
»». 2
)
»»2 3
{
…… 	
var
   
os
   
=
   
await
   
_osRepo
   "
.
  " #
ObterPorIdAsync
  # 2
(
  2 3
osId
  3 7
)
  7 8
??
ÀÀ 
throw
ÀÀ 
new
ÀÀ 
	Exception
ÀÀ &
(
ÀÀ& '
$str
ÀÀ' :
)
ÀÀ: ;
;
ÀÀ; <
if
ÕÕ 
(
ÕÕ 
os
ÕÕ 
.
ÕÕ 
Status
ÕÕ 
is
ÕÕ 
not
ÕÕ  
(
ÕÕ! " 
StatusOrdemServico
ŒŒ "
.
ŒŒ" #
Recebida
ŒŒ# +
or
ŒŒ, . 
StatusOrdemServico
œœ "
.
œœ" #
EmDiagnostico
œœ# 0
or
œœ1 3 
StatusOrdemServico
–– "
.
––" #
EmAprovacao
––# .
)
––. /
)
––/ 0
throw
—— 
new
—— 
	Exception
—— #
(
——# $
$str
——$ O
)
——O P
;
——P Q
os
”” 
.
”” 
Status
”” 
=
””  
StatusOrdemServico
”” *
.
””* +
	Cancelada
””+ 4
;
””4 5
os
‘‘ 
.
‘‘ 
DataCancelamento
‘‘ 
=
‘‘  !
DateTime
‘‘" *
.
‘‘* +
UtcNow
‘‘+ 1
;
‘‘1 2
await
÷÷ 
_uow
÷÷ 
.
÷÷ 
CommitAsync
÷÷ "
(
÷÷" #
)
÷÷# $
;
÷÷$ %
}
◊◊ 	
public
ŸŸ 
async
ŸŸ 
Task
ŸŸ 
FinalizarOSAsync
ŸŸ *
(
ŸŸ* +
int
ŸŸ+ .
osId
ŸŸ/ 3
)
ŸŸ3 4
{
⁄⁄ 	
var
€€ 
os
€€ 
=
€€ 
await
€€ 
_osRepo
€€ "
.
€€" ##
ObterComServicosAsync
€€# 8
(
€€8 9
osId
€€9 =
)
€€= >
??
‹‹ 
throw
‹‹ 
new
‹‹ 
	Exception
‹‹ &
(
‹‹& '
$str
‹‹' :
)
‹‹: ;
;
‹‹; <
if
ﬁﬁ 
(
ﬁﬁ 
os
ﬁﬁ 
.
ﬁﬁ 
Status
ﬁﬁ 
!=
ﬁﬁ  
StatusOrdemServico
ﬁﬁ /
.
ﬁﬁ/ 0

EmExecucao
ﬁﬁ0 :
)
ﬁﬁ: ;
throw
ﬂﬂ 
new
ﬂﬂ 
	Exception
ﬂﬂ #
(
ﬂﬂ# $
$str
ﬂﬂ$ K
)
ﬂﬂK L
;
ﬂﬂL M
if
·· 
(
·· 
os
·· 
.
·· %
PossuiOrcamentoPendente
·· *
)
··* +
throw
‚‚ 
new
‚‚ 
	Exception
‚‚ #
(
‚‚# $
$str
‚‚$ X
)
‚‚X Y
;
‚‚Y Z
var
‰‰ 
todosFinalizados
‰‰  
=
‰‰! "
os
‰‰# %
.
‰‰% &
Servicos
‰‰& .
.
‰‰. /
All
‰‰/ 2
(
‰‰2 3
s
‰‰3 4
=>
‰‰5 7
s
ÂÂ 
.
ÂÂ 
Logs
ÂÂ 
.
ÂÂ 
Any
ÂÂ 
(
ÂÂ 
l
ÂÂ 
=>
ÂÂ 
l
ÂÂ  !
.
ÂÂ! "
AcaoLog
ÂÂ" )
==
ÂÂ* ,
StatusServicoLog
ÂÂ- =
.
ÂÂ= >
Terminar
ÂÂ> F
)
ÂÂF G
)
ÊÊ 
;
ÊÊ 
if
ËË 
(
ËË 
!
ËË 
todosFinalizados
ËË !
)
ËË! "
throw
ÈÈ 
new
ÈÈ 
	Exception
ÈÈ #
(
ÈÈ# $
$str
ÈÈ$ F
)
ÈÈF G
;
ÈÈG H
os
ÎÎ 
.
ÎÎ 
Status
ÎÎ 
=
ÎÎ  
StatusOrdemServico
ÎÎ *
.
ÎÎ* +

Finalizada
ÎÎ+ 5
;
ÎÎ5 6
os
ÏÏ 
.
ÏÏ 
DataFinalizacao
ÏÏ 
=
ÏÏ  
DateTime
ÏÏ! )
.
ÏÏ) *
UtcNow
ÏÏ* 0
;
ÏÏ0 1
await
ÓÓ 
_osRepo
ÓÓ 
.
ÓÓ 
AtualizarAsync
ÓÓ (
(
ÓÓ( )
os
ÓÓ) +
)
ÓÓ+ ,
;
ÓÓ, -
await
ÔÔ 
_uow
ÔÔ 
.
ÔÔ 
CommitAsync
ÔÔ "
(
ÔÔ" #
)
ÔÔ# $
;
ÔÔ$ %
}
 	
public
ÚÚ 
async
ÚÚ 
Task
ÚÚ 
EntregarOSAsync
ÚÚ )
(
ÚÚ) *
int
ÚÚ* -
osId
ÚÚ. 2
)
ÚÚ2 3
{
ÛÛ 	
var
ÙÙ 
os
ÙÙ 
=
ÙÙ 
await
ÙÙ 
_osRepo
ÙÙ "
.
ÙÙ" #
ObterPorIdAsync
ÙÙ# 2
(
ÙÙ2 3
osId
ÙÙ3 7
)
ÙÙ7 8
??
ıı 
throw
ıı 
new
ıı 
	Exception
ıı &
(
ıı& '
$str
ıı' :
)
ıı: ;
;
ıı; <
if
˜˜ 
(
˜˜ 
os
˜˜ 
.
˜˜ 
Status
˜˜ 
!=
˜˜  
StatusOrdemServico
˜˜ /
.
˜˜/ 0

Finalizada
˜˜0 :
)
˜˜: ;
throw
¯¯ 
new
¯¯ 
	Exception
¯¯ #
(
¯¯# $
$str
¯¯$ N
)
¯¯N O
;
¯¯O P
os
˙˙ 
.
˙˙ 
Status
˙˙ 
=
˙˙  
StatusOrdemServico
˙˙ *
.
˙˙* +
Entregue
˙˙+ 3
;
˙˙3 4
os
˚˚ 
.
˚˚ 
DataEntrega
˚˚ 
=
˚˚ 
DateTime
˚˚ %
.
˚˚% &
UtcNow
˚˚& ,
;
˚˚, -
await
˝˝ 
_osRepo
˝˝ 
.
˝˝ 
AtualizarAsync
˝˝ (
(
˝˝( )
os
˝˝) +
)
˝˝+ ,
;
˝˝, -
await
˛˛ 
_uow
˛˛ 
.
˛˛ 
CommitAsync
˛˛ "
(
˛˛" #
)
˛˛# $
;
˛˛$ %
}
ˇˇ 	
private
ÅÅ 
List
ÅÅ 
<
ÅÅ *
TempoMedioServicoResponseDto
ÅÅ 1
>
ÅÅ1 2*
CalcularTempoMedioPorServico
ÅÅ3 O
(
ÅÅO P
List
ÅÅP T
<
ÅÅT U$
OrdemServicoServicoLog
ÅÅU k
>
ÅÅk l
logs
ÅÅm q
)
ÅÅq r
{
ÇÇ 	
var
ÉÉ 
result
ÉÉ 
=
ÉÉ 
new
ÉÉ 
List
ÉÉ !
<
ÉÉ! "*
TempoMedioServicoResponseDto
ÉÉ" >
>
ÉÉ> ?
(
ÉÉ? @
)
ÉÉ@ A
;
ÉÉA B
var
ÖÖ 
logsAgrupados
ÖÖ 
=
ÖÖ 
logs
ÖÖ  $
.
ÜÜ 
GroupBy
ÜÜ 
(
ÜÜ 
l
ÜÜ 
=>
ÜÜ 
l
ÜÜ 
.
ÜÜ  
OSServicoId
ÜÜ  +
)
ÜÜ+ ,
;
ÜÜ, -
foreach
àà 
(
àà 
var
àà 
grupo
àà 
in
àà !
logsAgrupados
àà" /
)
àà/ 0
{
ââ 
var
ää 
	ordenados
ää 
=
ää 
grupo
ää  %
.
ãã 
OrderBy
ãã 
(
ãã 
x
ãã 
=>
ãã !
x
ãã" #
.
ãã# $
DataCriacao
ãã$ /
)
ãã/ 0
.
åå 
ToList
åå 
(
åå 
)
åå 
;
åå 
var
éé 
pares
éé 
=
éé 
new
éé 
List
éé  $
<
éé$ %
double
éé% +
>
éé+ ,
(
éé, -
)
éé- .
;
éé. /
for
êê 
(
êê 
int
êê 
i
êê 
=
êê 
$num
êê 
;
êê 
i
êê  !
<
êê" #
	ordenados
êê$ -
.
êê- .
Count
êê. 3
;
êê3 4
i
êê5 6
++
êê6 8
)
êê8 9
{
ëë 
if
íí 
(
íí 
	ordenados
íí !
[
íí! "
i
íí" #
]
íí# $
.
íí$ %
AcaoLog
íí% ,
!=
íí- /
StatusServicoLog
íí0 @
.
íí@ A
Iniciar
ííA H
)
ííH I
continue
ìì  
;
ìì  !
var
ïï 
inicio
ïï 
=
ïï  
	ordenados
ïï! *
[
ïï* +
i
ïï+ ,
]
ïï, -
.
ïï- .
DataCriacao
ïï. 9
;
ïï9 :
var
óó 
fim
óó 
=
óó 
	ordenados
óó '
.
òò 
Skip
òò 
(
òò 
i
òò 
+
òò  !
$num
òò" #
)
òò# $
.
ôô 
FirstOrDefault
ôô '
(
ôô' (
x
ôô( )
=>
ôô* ,
x
öö 
.
öö 
AcaoLog
öö %
==
öö& (
StatusServicoLog
öö) 9
.
öö9 :
Pausar
öö: @
||
ööA C
x
õõ 
.
õõ 
AcaoLog
õõ %
==
õõ& (
StatusServicoLog
õõ) 9
.
õõ9 :
Terminar
õõ: B
)
õõB C
;
õõC D
if
ùù 
(
ùù 
fim
ùù 
is
ùù 
null
ùù #
)
ùù# $
continue
ûû  
;
ûû  !
var
†† 
minutos
†† 
=
††  !
(
††" #
fim
††# &
.
††& '
DataCriacao
††' 2
-
††3 4
inicio
††5 ;
)
††; <
.
††< =
TotalMinutes
††= I
;
††I J
pares
°° 
.
°° 
Add
°° 
(
°° 
minutos
°° %
)
°°% &
;
°°& '
}
¢¢ 
var
§§ 
servico
§§ 
=
§§ 
grupo
§§ #
.
§§# $
First
§§$ )
(
§§) *
)
§§* +
.
§§+ ,!
OrdemServicoServico
§§, ?
.
§§? @
Servico
§§@ G
;
§§G H
result
¶¶ 
.
¶¶ 
Add
¶¶ 
(
¶¶ 
new
¶¶ *
TempoMedioServicoResponseDto
¶¶ ;
{
ßß 
Servico
®® 
=
®® 
servico
®® %
.
®®% &
	Descricao
®®& /
,
®®/ 0
MediaMinutos
©©  
=
©©! "
pares
©©# (
.
©©( )
Count
©©) .
==
©©/ 1
$num
©©2 3
?
©©4 5
$num
©©6 7
:
©©8 9
pares
©©: ?
.
©©? @
Average
©©@ G
(
©©G H
)
©©H I
,
©©I J
TotalExecucoes
™™ "
=
™™# $
pares
™™% *
.
™™* +
Count
™™+ 0
}
´´ 
)
´´ 
;
´´ 
}
¨¨ 
return
ÆÆ 
result
ÆÆ 
;
ÆÆ 
}
ØØ 	
private
±± 
async
±± 
Task
±± 
<
±± %
TempoMedioOSResponseDto
±± 2
>
±±2 3*
CalcularTempoMedioPorOSAsync
±±4 P
(
±±P Q
)
±±Q R
{
≤≤ 	
var
≥≥ 
osList
≥≥ 
=
≥≥ 
await
≥≥ 
_osRepo
≥≥ &
.
≥≥& '#
ObterFinalizadasAsync
≥≥' <
(
≥≥< =
)
≥≥= >
;
≥≥> ?
var
µµ 
tempos
µµ 
=
µµ 
osList
µµ 
.
∂∂ 
Where
∂∂ 
(
∂∂ 
x
∂∂ 
=>
∂∂ 
x
∂∂ 
.
∂∂ 
DataFinalizacao
∂∂ -
!=
∂∂. 0
null
∂∂1 5
)
∂∂5 6
.
∑∑ 
Select
∑∑ 
(
∑∑ 
x
∑∑ 
=>
∑∑ 
(
∑∑ 
x
∑∑ 
.
∑∑  
DataFinalizacao
∑∑  /
!
∑∑/ 0
.
∑∑0 1
Value
∑∑1 6
-
∑∑7 8
x
∑∑9 :
.
∑∑: ;
DataCriacao
∑∑; F
)
∑∑F G
.
∑∑G H
TotalMinutes
∑∑H T
)
∑∑T U
.
∏∏ 
ToList
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏ 
return
∫∫ 
new
∫∫ %
TempoMedioOSResponseDto
∫∫ .
{
ªª 
MediaMinutos
ºº 
=
ºº 
tempos
ºº %
.
ºº% &
Count
ºº& +
==
ºº, .
$num
ºº/ 0
?
ºº1 2
$num
ºº3 4
:
ºº5 6
tempos
ºº7 =
.
ºº= >
Average
ºº> E
(
ººE F
)
ººF G
,
ººG H
TotalOS
ΩΩ 
=
ΩΩ 
tempos
ΩΩ  
.
ΩΩ  !
Count
ΩΩ! &
}
ææ 
;
ææ 
}
øø 	
public
¡¡ 
async
¡¡ 
Task
¡¡ 
<
¡¡ ,
RelatorioTempoMedioResponseDto
¡¡ 8
>
¡¡8 9(
GetTempoMedioExecucaoAsync
¡¡: T
(
¡¡T U
)
¡¡U V
{
¬¬ 	
var
√√ 
logs
√√ 
=
√√ 
await
√√ 

_osLogRepo
√√ '
.
√√' ($
ObterLogsServicosAsync
√√( >
(
√√> ?
)
√√? @
;
√√@ A
var
≈≈ 

porServico
≈≈ 
=
≈≈ *
CalcularTempoMedioPorServico
≈≈ 9
(
≈≈9 :
logs
≈≈: >
)
≈≈> ?
;
≈≈? @
var
∆∆ 
porOS
∆∆ 
=
∆∆ 
await
∆∆ *
CalcularTempoMedioPorOSAsync
∆∆ :
(
∆∆: ;
)
∆∆; <
;
∆∆< =
return
»» 
new
»» ,
RelatorioTempoMedioResponseDto
»» 5
{
…… 

PorServico
   
=
   

porServico
   '
,
  ' (
PorOS
ÀÀ 
=
ÀÀ 
porOS
ÀÀ 
}
ÃÃ 
;
ÃÃ 
}
ÕÕ 	
}
ŒŒ 
}œœ —\
vC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Services\ProdutoService.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Services '
{ 
public		 

class		 
ProdutoService		 
{

 
private 
readonly 
IProdutoRepository +
_repository, 7
;7 8
public 
ProdutoService 
( 
IProdutoRepository 0

repository1 ;
); <
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
List 
< 
ProdutoResponseDto 1
>1 2
>2 3
ListarTodos4 ?
(? @
ProdutoParamsDto@ P
?P Q
dtoR U
)U V
{ 	
var 
produtos 
= 
await  
_repository! ,
., -
ListarTodosAsync- =
(= >
dto> A
?A B
.B C
SkuC F
)F G
;G H
return 
produtos 
. 
Select "
(" #
p# $
=>% '
new( +
ProdutoResponseDto, >
{ 
Id 
= 
p 
. 
Id 
, 
Sku 
= 
p 
. 
Sku 
, 
	Descricao 
= 
p 
. 
	Descricao '
,' (

PrecoCusto 
= 
p 
. 

PrecoCusto )
,) *

PrecoVenda 
= 
p 
. 

PrecoVenda )
,) *
QuantidadeTotal 
=  !
p" #
.# $
QuantidadeTotal$ 3
,3 4
QuantidadeReservada #
=$ %
p& '
.' (
QuantidadeReservada( ;
,; <
QuantidadeMinima  
=! "
p# $
.$ %
QuantidadeMinima% 5
,5 6
Ativo   
=   
p   
.   
Ativo   
}!! 
)!! 
.!! 
ToList!! 
(!! 
)!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
ProdutoResponseDto$$ ,
?$$, -
>$$- .
ListarPorId$$/ :
($$: ;
int$$; >
id$$? A
)$$A B
{%% 	
var&& 
p&& 
=&& 
await&& 
_repository&& %
.&&% &
ListarPorIdAsync&&& 6
(&&6 7
id&&7 9
)&&9 :
;&&: ;
if'' 
('' 
p'' 
is'' 
null'' 
)'' 
return'' !
null''" &
;''& '
return)) 
new)) 
ProdutoResponseDto)) )
{** 
Id++ 
=++ 
p++ 
.++ 
Id++ 
,++ 
Sku,, 
=,, 
p,, 
.,, 
Sku,, 
,,, 
	Descricao-- 
=-- 
p-- 
.-- 
	Descricao-- '
,--' (

PrecoCusto.. 
=.. 
p.. 
... 

PrecoCusto.. )
,..) *

PrecoVenda// 
=// 
p// 
.// 

PrecoVenda// )
,//) *
QuantidadeTotal00 
=00  !
p00" #
.00# $
QuantidadeTotal00$ 3
,003 4
QuantidadeReservada11 #
=11$ %
p11& '
.11' (
QuantidadeReservada11( ;
,11; <
QuantidadeMinima22  
=22! "
p22# $
.22$ %
QuantidadeMinima22% 5
,225 6
Ativo33 
=33 
p33 
.33 
Ativo33 
}44 
;44 
}55 	
public77 
async77 
Task77 
<77 
int77 
>77 
Criar77 $
(77$ %&
AdicionarProdutoRequestDto77% ?
dto77@ C
)77C D
{88 	
var99 
	existeSku99 
=99 
await99 !
_repository99" -
.99- .
ExisteSkuAsync99. <
(99< =
dto99= @
.99@ A
Sku99A D
)99D E
;99E F
if;; 
(;; 
	existeSku;; 
);; 
throw<< 
new<< 
	Exception<< #
(<<# $
$str<<$ 7
)<<7 8
;<<8 9
var>> 
produto>> 
=>> 
new>> 
Produto>> %
{?? 
Sku@@ 
=@@ 
dto@@ 
.@@ 
Sku@@ 
,@@ 
	DescricaoAA 
=AA 
dtoAA 
.AA  
	DescricaoAA  )
,AA) *

PrecoCustoBB 
=BB 
dtoBB  
.BB  !

PrecoCustoBB! +
,BB+ ,

PrecoVendaCC 
=CC 
dtoCC  
.CC  !

PrecoVendaCC! +
,CC+ ,
QuantidadeTotalDD 
=DD  !
dtoDD" %
.DD% &
QuantidadeTotalDD& 5
,DD5 6
QuantidadeReservadaEE #
=EE$ %
$numEE& '
,EE' (
QuantidadeMinimaFF  
=FF! "
dtoFF# &
.FF& '
QuantidadeMinimaFF' 7
,FF7 8
AtivoGG 
=GG 
trueGG 
}HH 
;HH 
awaitJJ 
_repositoryJJ 
.JJ 
AdicionarAsyncJJ ,
(JJ, -
produtoJJ- 4
)JJ4 5
;JJ5 6
returnLL 
produtoLL 
.LL 
IdLL 
;LL 
}MM 	
publicOO 
asyncOO 
TaskOO 
<OO 
boolOO 
>OO 
	AtualizarOO  )
(OO) *
intOO* -
idOO. 0
,OO0 1&
AtualizarProdutoRequestDtoOO2 L
dtoOOM P
)OOP Q
{PP 	
varQQ 
produtoQQ 
=QQ 
awaitQQ 
_repositoryQQ  +
.QQ+ ,
ListarPorIdAsyncQQ, <
(QQ< =
idQQ= ?
)QQ? @
;QQ@ A
ifRR 
(RR 
produtoRR 
isRR 
nullRR 
)RR  
returnRR! '
falseRR( -
;RR- .
ifTT 
(TT 
!TT 
stringTT 
.TT 
IsNullOrWhiteSpaceTT *
(TT* +
dtoTT+ .
.TT. /
SkuTT/ 2
)TT2 3
&&TT4 6
dtoTT7 :
.TT: ;
SkuTT; >
!=TT? A
produtoTTB I
.TTI J
SkuTTJ M
)TTM N
{UU 
varVV 
	existeSkuVV 
=VV 
awaitVV  %
_repositoryVV& 1
.VV1 2
ExisteSkuAsyncVV2 @
(VV@ A
dtoVVA D
.VVD E
SkuVVE H
)VVH I
;VVI J
ifWW 
(WW 
	existeSkuWW 
)WW 
throwXX 
newXX 
	ExceptionXX '
(XX' (
$strXX( ;
)XX; <
;XX< =
produtoZZ 
.ZZ 
SkuZZ 
=ZZ 
dtoZZ !
.ZZ! "
SkuZZ" %
;ZZ% &
}[[ 
if]] 
(]] 
!]] 
string]] 
.]] 
IsNullOrWhiteSpace]] *
(]]* +
dto]]+ .
.]]. /
	Descricao]]/ 8
)]]8 9
)]]9 :
produto^^ 
.^^ 
	Descricao^^ !
=^^" #
dto^^$ '
.^^' (
	Descricao^^( 1
;^^1 2
if`` 
(`` 
dto`` 
.`` 

PrecoCusto`` 
is`` !
not``" %
null``& *
)``* +
produtoaa 
.aa 

PrecoCustoaa "
=aa# $
(aa% &
decimalaa& -
)aa- .
dtoaa. 1
.aa1 2

PrecoCustoaa2 <
;aa< =
ifcc 
(cc 
dtocc 
.cc 

PrecoVendacc 
iscc !
notcc" %
nullcc& *
)cc* +
produtodd 
.dd 

PrecoVendadd "
=dd# $
(dd% &
decimaldd& -
)dd- .
dtodd. 1
.dd1 2

PrecoVendadd2 <
;dd< =
ifff 
(ff 
dtoff 
.ff 
QuantidadeMinimaff $
isff% '
notff( +
nullff, 0
)ff0 1
produtogg 
.gg 
QuantidadeMinimagg (
=gg) *
(gg+ ,
intgg, /
)gg/ 0
dtogg0 3
.gg3 4
QuantidadeMinimagg4 D
;ggD E
awaitii 
_repositoryii 
.ii 
AtualizarAsyncii ,
(ii, -
produtoii- 4
)ii4 5
;ii5 6
returnkk 
truekk 
;kk 
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn 
boolnn 
>nn 
AtualizarEstoquenn  0
(nn0 1
intnn1 4
idnn5 7
,nn7 8-
!AtualizarEstoqueProdutoRequestDtonn9 Z
dtonn[ ^
)nn^ _
{oo 	
varpp 
produtopp 
=pp 
awaitpp 
_repositorypp  +
.pp+ ,
ListarPorIdAsyncpp, <
(pp< =
idpp= ?
)pp? @
;pp@ A
ifqq 
(qq 
produtoqq 
isqq 
nullqq 
)qq  
returnqq! '
falseqq( -
;qq- .
produtoss 
.ss 
QuantidadeTotalss #
+=ss$ &
dtoss' *
.ss* + 
QuantidadeAdicionadass+ ?
;ss? @
ifuu 
(uu 
dtouu 
.uu 
NovoPrecoCustouu "
>uu# $
$numuu% &
)uu& '
produtovv 
.vv 

PrecoCustovv "
=vv# $
dtovv% (
.vv( )
NovoPrecoCustovv) 7
;vv7 8
ifxx 
(xx 
dtoxx 
.xx 
NovoPrecoVendaxx "
>xx# $
$numxx% &
)xx& '
produtoyy 
.yy 

PrecoVendayy "
=yy# $
dtoyy% (
.yy( )
NovoPrecoVendayy) 7
;yy7 8
await{{ 
_repository{{ 
.{{ 
AtualizarAsync{{ ,
({{, -
produto{{- 4
){{4 5
;{{5 6
return}} 
true}} 
;}} 
}~~ 	
public
ÄÄ 
async
ÄÄ 
Task
ÄÄ 
<
ÄÄ 
bool
ÄÄ 
>
ÄÄ 
Deletar
ÄÄ  '
(
ÄÄ' (
int
ÄÄ( +
id
ÄÄ, .
)
ÄÄ. /
{
ÅÅ 	
var
ÇÇ 
produto
ÇÇ 
=
ÇÇ 
await
ÇÇ 
_repository
ÇÇ  +
.
ÇÇ+ ,
ListarPorIdAsync
ÇÇ, <
(
ÇÇ< =
id
ÇÇ= ?
)
ÇÇ? @
;
ÇÇ@ A
if
ÉÉ 
(
ÉÉ 
produto
ÉÉ 
is
ÉÉ 
null
ÉÉ 
)
ÉÉ  
return
ÉÉ! '
false
ÉÉ( -
;
ÉÉ- .
produto
ÖÖ 
.
ÖÖ 
Ativo
ÖÖ 
=
ÖÖ 
false
ÖÖ !
;
ÖÖ! "
await
áá 
_repository
áá 
.
áá 
AtualizarAsync
áá ,
(
áá, -
produto
áá- 4
)
áá4 5
;
áá5 6
return
ââ 
true
ââ 
;
ââ 
}
ää 	
}
ãã 
}åå É>
vC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Services\ServicoService.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Services '
{ 
public		 

class		 
ServicoService		 
{

 
private 
readonly 
IServicoRepository +
_repository, 7
;7 8
public 
ServicoService 
( 
IServicoRepository 0

repository1 ;
); <
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
List 
< 
ServicoResponseDto 1
>1 2
>2 3
ListarTodos4 ?
(? @
ServicoParamsDto@ P
?P Q
dtoR U
)U V
{ 	
var 
servicos 
= 
await  
_repository! ,
., -
ListarTodosAsync- =
(= >
dto> A
?A B
.B C
SkuC F
)F G
;G H
return 
servicos 
. 
Select "
(" #
s# $
=>% '
new( +
ServicoResponseDto, >
{ 
Id 
= 
s 
. 
Id 
, 
Sku 
= 
s 
. 
Sku 
, 
	Descricao 
= 
s 
. 
	Descricao '
,' (
Preco 
= 
s 
. 
Preco 
,  
Ativo 
= 
s 
. 
Ativo 
} 
) 
. 
ToList 
( 
) 
; 
} 	
public   
async   
Task   
<   
ServicoResponseDto   ,
?  , -
>  - .
ListarPorId  / :
(  : ;
int  ; >
id  ? A
)  A B
{!! 	
var"" 
s"" 
="" 
await"" 
_repository"" %
.""% &
ListarPorIdAsync""& 6
(""6 7
id""7 9
)""9 :
;"": ;
if## 
(## 
s## 
is## 
null## 
)## 
return## !
null##" &
;##& '
return%% 
new%% 
ServicoResponseDto%% )
{&& 
Id'' 
='' 
s'' 
.'' 
Id'' 
,'' 
Sku(( 
=(( 
s(( 
.(( 
Sku(( 
,(( 
	Descricao)) 
=)) 
s)) 
.)) 
	Descricao)) '
,))' (
Preco** 
=** 
s** 
.** 
Preco** 
,**  
Ativo++ 
=++ 
s++ 
.++ 
Ativo++ 
},, 
;,, 
}-- 	
public// 
async// 
Task// 
<// 
int// 
>// 
Criar// $
(//$ %&
AdicionarServicoRequestDto//% ?
dto//@ C
)//C D
{00 	
var11 
	existeSku11 
=11 
await11 !
_repository11" -
.11- .
ExisteSkuAsync11. <
(11< =
dto11= @
.11@ A
Sku11A D
)11D E
;11E F
if33 
(33 
	existeSku33 
)33 
throw44 
new44 
	Exception44 #
(44# $
$str44$ 7
)447 8
;448 9
var66 
servico66 
=66 
new66 
Servico66 %
{77 
Sku88 
=88 
dto88 
.88 
Sku88 
,88 
	Descricao99 
=99 
dto99 
.99  
	Descricao99  )
,99) *
Preco:: 
=:: 
dto:: 
.:: 
Preco:: !
};; 
;;; 
await== 
_repository== 
.== 
AdicionarAsync== ,
(==, -
servico==- 4
)==4 5
;==5 6
return?? 
servico?? 
.?? 
Id?? 
;?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
boolBB 
>BB 
	AtualizarBB  )
(BB) *
intBB* -
idBB. 0
,BB0 1&
AtualizarServicoRequestDtoBB2 L
dtoBBM P
)BBP Q
{CC 	
varDD 
servicoDD 
=DD 
awaitDD 
_repositoryDD  +
.DD+ ,
ListarPorIdAsyncDD, <
(DD< =
idDD= ?
)DD? @
;DD@ A
ifEE 
(EE 
servicoEE 
isEE 
nullEE 
)EE  
returnEE! '
falseEE( -
;EE- .
ifGG 
(GG 
!GG 
stringGG 
.GG 
IsNullOrWhiteSpaceGG *
(GG* +
dtoGG+ .
.GG. /
SkuGG/ 2
)GG2 3
&&GG4 6
dtoGG7 :
.GG: ;
SkuGG; >
!=GG? A
servicoGGB I
.GGI J
SkuGGJ M
)GGM N
{HH 
varII 
	existeSkuII 
=II 
awaitII  %
_repositoryII& 1
.II1 2
ExisteSkuAsyncII2 @
(II@ A
dtoIIA D
.IID E
SkuIIE H
)IIH I
;III J
ifJJ 
(JJ 
	existeSkuJJ 
)JJ 
throwKK 
newKK 
	ExceptionKK '
(KK' (
$strKK( ;
)KK; <
;KK< =
servicoMM 
.MM 
SkuMM 
=MM 
dtoMM !
.MM! "
SkuMM" %
;MM% &
}NN 
ifPP 
(PP 
!PP 
stringPP 
.PP 
IsNullOrWhiteSpacePP *
(PP* +
dtoPP+ .
.PP. /
	DescricaoPP/ 8
)PP8 9
)PP9 :
servicoQQ 
.QQ 
	DescricaoQQ !
=QQ" #
dtoQQ$ '
.QQ' (
	DescricaoQQ( 1
;QQ1 2
ifSS 
(SS 
dtoSS 
.SS 
PrecoSS 
isSS 
notSS  
nullSS! %
)SS% &
servicoTT 
.TT 
PrecoTT 
=TT 
(TT  !
decimalTT! (
)TT( )
dtoTT) ,
.TT, -
PrecoTT- 2
;TT2 3
awaitVV 
_repositoryVV 
.VV 
AtualizarAsyncVV ,
(VV, -
servicoVV- 4
)VV4 5
;VV5 6
returnXX 
trueXX 
;XX 
}YY 	
public[[ 
async[[ 
Task[[ 
<[[ 
bool[[ 
>[[ 
Deletar[[  '
([[' (
int[[( +
id[[, .
)[[. /
{\\ 	
var]] 
servico]] 
=]] 
await]] 
_repository]]  +
.]]+ ,
ListarPorIdAsync]], <
(]]< =
id]]= ?
)]]? @
;]]@ A
if^^ 
(^^ 
servico^^ 
is^^ 
null^^ 
)^^  
return^^! '
false^^( -
;^^- .
servico`` 
.`` 
Ativo`` 
=`` 
false`` !
;``! "
awaitbb 
_repositorybb 
.bb 
AtualizarAsyncbb ,
(bb, -
servicobb- 4
)bb4 5
;bb5 6
returndd 
truedd 
;dd 
}ee 	
}ff 
}gg ÈO
vC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Application\Services\VeiculoService.cs
	namespace 	
Mechanic
 
. 
Application 
. 
Services '
{		 
public

 

class

 
VeiculoService

 
{ 
private 
readonly 
IVeiculoRepository +
_repository, 7
;7 8
public 
VeiculoService 
( 
IVeiculoRepository 0

repository1 ;
); <
{ 	
_repository 
= 

repository $
;$ %
} 	
public 
async 
Task 
< 
List 
< 
VeiculoResponseDto 1
>1 2
>2 3
ListarTodos4 ?
(? @
VeiculoParamsDto@ P
?P Q
dtoR U
)U V
{ 	
var 
veiculos 
= 
await  
_repository! ,
., -
ListarTodosAsync- =
(= >
dto> A
?A B
.B C
PlacaC H
)H I
;I J
return 
veiculos 
. 
Select "
(" #
v# $
=>% '
new( +
VeiculoResponseDto, >
{ 
Id 
= 
v 
. 
Id 
, 
	ClienteId 
= 
v 
. 
	ClienteId '
,' (
Placa 
= 
v 
. 
Placa 
,  
Marca 
= 
v 
. 
Marca 
,  
Modelo 
= 
v 
. 
Modelo !
,! "
Ano 
= 
v 
. 
Ano 
, 
Ativo 
= 
v 
. 
Ativo 
}   
)   
.   
ToList   
(   
)   
;   
}!! 	
public## 
async## 
Task## 
<## 
VeiculoResponseDto## ,
?##, -
>##- .
ListarPorId##/ :
(##: ;
int##; >
id##? A
)##A B
{$$ 	
var%% 
v%% 
=%% 
await%% 
_repository%% %
.%%% &
ListarPorIdAsync%%& 6
(%%6 7
id%%7 9
)%%9 :
;%%: ;
if&& 
(&& 
v&& 
is&& 
null&& 
)&& 
return&& !
null&&" &
;&&& '
return(( 
new(( 
VeiculoResponseDto(( )
{)) 
Id** 
=** 
v** 
.** 
Id** 
,** 
	ClienteId++ 
=++ 
v++ 
.++ 
	ClienteId++ '
,++' (
Placa,, 
=,, 
v,, 
.,, 
Placa,, 
,,,  
Marca-- 
=-- 
v-- 
.-- 
Marca-- 
,--  
Modelo.. 
=.. 
v.. 
... 
Modelo.. !
,..! "
Ano// 
=// 
v// 
.// 
Ano// 
,// 
Ativo00 
=00 
v00 
.00 
Ativo00 
}11 
;11 
}22 	
public44 
async44 
Task44 
<44 
int44 
>44 
Criar44 $
(44$ %&
AdicionarVeiculoRequestDto44% ?
dto44@ C
)44C D
{55 	
if66 
(66 
!66 
Placas66 
.66 
EhValida66  
(66  !
dto66! $
.66$ %
Placa66% *
)66* +
)66+ ,
throw77 
new77 
	Exception77 #
(77# $
$str77$ 4
)774 5
;775 6
var99 
existePlaca99 
=99 
await99 #
_repository99$ /
.99/ 0
ExistePlacaAsync990 @
(99@ A
dto99A D
.99D E
Placa99E J
)99J K
;99K L
if;; 
(;; 
existePlaca;; 
);; 
throw<< 
new<< 
	Exception<< #
(<<# $
$str<<$ 9
)<<9 :
;<<: ;
var>> 
clienteExiste>> 
=>> 
await>>  %
_repository>>& 1
.>>1 2
ClienteExisteAsync>>2 D
(>>D E
dto>>E H
.>>H I
	ClienteId>>I R
)>>R S
;>>S T
if@@ 
(@@ 
!@@ 
clienteExiste@@ 
)@@ 
throwAA 
newAA 
	ExceptionAA #
(AA# $
$strAA$ <
)AA< =
;AA= >
varCC 
veiculoCC 
=CC 
newCC 
VeiculoCC %
{DD 
	ClienteIdEE 
=EE 
dtoEE 
.EE  
	ClienteIdEE  )
,EE) *
PlacaFF 
=FF 
dtoFF 
.FF 
PlacaFF !
,FF! "
MarcaGG 
=GG 
dtoGG 
.GG 
MarcaGG !
,GG! "
ModeloHH 
=HH 
dtoHH 
.HH 
ModeloHH #
,HH# $
AnoII 
=II 
dtoII 
.II 
AnoII 
,II 
}JJ 
;JJ 
awaitLL 
_repositoryLL 
.LL 
AdicionarAsyncLL ,
(LL, -
veiculoLL- 4
)LL4 5
;LL5 6
returnNN 
veiculoNN 
.NN 
IdNN 
;NN 
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
boolQQ 
>QQ 
	AtualizarQQ  )
(QQ) *
intQQ* -
idQQ. 0
,QQ0 1&
AtualizarVeiculoRequestDtoQQ2 L
dtoQQM P
)QQP Q
{RR 	
varSS 
veiculoSS 
=SS 
awaitSS 
_repositorySS  +
.SS+ ,
ListarPorIdAsyncSS, <
(SS< =
idSS= ?
)SS? @
;SS@ A
ifTT 
(TT 
veiculoTT 
isTT 
nullTT 
)TT  
returnTT! '
falseTT( -
;TT- .
ifVV 
(VV 
dtoVV 
.VV 
	ClienteIdVV 
>VV 
$numVV  !
)VV! "
veiculoWW 
.WW 
	ClienteIdWW !
=WW" #
dtoWW$ '
.WW' (
	ClienteIdWW( 1
;WW1 2
ifYY 
(YY 
!YY 
stringYY 
.YY 
IsNullOrWhiteSpaceYY *
(YY* +
dtoYY+ .
.YY. /
PlacaYY/ 4
)YY4 5
)YY5 6
{ZZ 
if[[ 
([[ 
![[ 
Placas[[ 
.[[ 
EhValida[[ $
([[$ %
dto[[% (
.[[( )
Placa[[) .
)[[. /
)[[/ 0
throw\\ 
new\\ 
	Exception\\ '
(\\' (
$str\\( 8
)\\8 9
;\\9 :
var^^ 
existe^^ 
=^^ 
await^^ "
_repository^^# .
.^^. /
ExistePlacaAsync^^/ ?
(^^? @
dto^^@ C
.^^C D
Placa^^D I
)^^I J
;^^J K
if`` 
(`` 
existe`` 
&&`` 
dto`` !
.``! "
Placa``" '
!=``( *
veiculo``+ 2
.``2 3
Placa``3 8
)``8 9
throwaa 
newaa 
	Exceptionaa '
(aa' (
$straa( =
)aa= >
;aa> ?
veiculocc 
.cc 
Placacc 
=cc 
dtocc  #
.cc# $
Placacc$ )
;cc) *
}dd 
ifff 
(ff 
!ff 
stringff 
.ff 
IsNullOrWhiteSpaceff *
(ff* +
dtoff+ .
.ff. /
Marcaff/ 4
)ff4 5
)ff5 6
veiculogg 
.gg 
Marcagg 
=gg 
dtogg  #
.gg# $
Marcagg$ )
;gg) *
ifii 
(ii 
dtoii 
.ii 
Modeloii 
isii 
notii !
nullii" &
)ii& '
veiculojj 
.jj 
Modelojj 
=jj  
dtojj! $
.jj$ %
Modelojj% +
;jj+ ,
ifll 
(ll 
dtoll 
.ll 
Anoll 
isll 
notll 
nullll #
)ll# $
veiculomm 
.mm 
Anomm 
=mm 
(mm 
intmm "
)mm" #
dtomm# &
.mm& '
Anomm' *
;mm* +
awaitoo 
_repositoryoo 
.oo 
AtualizarAsyncoo ,
(oo, -
veiculooo- 4
)oo4 5
;oo5 6
returnqq 
trueqq 
;qq 
}rr 	
publictt 
asynctt 
Tasktt 
<tt 
booltt 
>tt 
Deletartt  '
(tt' (
inttt( +
idtt, .
)tt. /
{uu 	
varvv 
veiculovv 
=vv 
awaitvv 
_repositoryvv  +
.vv+ ,
ListarPorIdAsyncvv, <
(vv< =
idvv= ?
)vv? @
;vv@ A
ifww 
(ww 
veiculoww 
isww 
nullww 
)ww  
returnww! '
falseww( -
;ww- .
veiculoyy 
.yy 
Ativoyy 
=yy 
falseyy !
;yy! "
await{{ 
_repository{{ 
.{{ 
AtualizarAsync{{ ,
({{, -
veiculo{{- 4
){{4 5
;{{5 6
return}} 
true}} 
;}} 
}~~ 	
} 
}ÄÄ Ô
jC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Entities\Cliente.cs
	namespace 	
Mechanic
 
. 
Domain 
. 
Entities "
{ 
public 

class 
Cliente 
{ 
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
,

 
	MaxLength

 
(

 
$num

 
,

  
ErrorMessage

! -
=

. /
$str

0 Z
)

Z [
]

[ \
public 
string 
Nome 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
[ 	
Required	 
, 
	MaxLength 
( 
$num 
,  
ErrorMessage! -
=. /
$str0 ^
)^ _
]_ `
public 

Documentos 
CpfCnpj !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
=8 9
null: >
!> ?
;? @
[ 	
Required	 
, 
	MaxLength 
( 
$num 
,  
ErrorMessage! -
=. /
$str0 ^
)^ _
]_ `
public 
string 
	Telefone1 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& T
)T U
]U V
public 
string 
	Telefone2 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& Q
)Q R
]R S
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
public 
bool 
Ativo 
{ 
get 
;  
set! $
;$ %
}& '
=( )
true* .
;. /
public 
DateTime 
DataCriacao #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
DateTime4 <
.< =
Now= @
;@ A
public 
void 
SetDocument 
(  
string  &
cpfCnpj' .
). /
{ 	
CpfCnpj   
=   

Documentos    
.    !
Create  ! '
(  ' (
cpfCnpj  ( /
)  / 0
;  0 1
}!! 	
}"" 
}## ª0
oC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Entities\OrdemServico.cs
	namespace 	
Mechanic
 
. 
Domain 
. 
Entities "
;" #
[ 
Table 
( 
$str 
) 
] 
public 
class 
OrdemServico 
{		 
[

 
Key

 
]

 	
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
[ 
Required 
] 
[ 
	MaxLength 
( 
$num 
) 
] 
public 

string 
Titulo 
{ 
get 
; 
set  #
;# $
}% &
=' (
string) /
./ 0
Empty0 5
;5 6
[ 
Required 
] 
public 

StatusOrdemServico 
Status $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 
Required 
] 
[ 
	MaxLength 
( 
$num 
) 
] 
public 

string 
	Descricao 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
[ 
Required 
] 
public 

int 
	ClienteId 
{ 
get 
; 
set  #
;# $
}% &
public 

Cliente 
Cliente 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
[ 
Required 
] 
public 

int 
	VeiculoId 
{ 
get 
; 
set  #
;# $
}% &
public   

Veiculo   
Veiculo   
{   
get    
;    !
set  " %
;  % &
}  ' (
=  ) *
null  + /
!  / 0
;  0 1
public"" 

DateTime"" 
DataCriacao"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
="". /
DateTime""0 8
.""8 9
UtcNow""9 ?
;""? @
public$$ 

bool$$ #
PossuiOrcamentoPendente$$ '
{$$( )
get$$* -
;$$- .
set$$/ 2
;$$2 3
}$$4 5
=$$6 7
false$$8 =
;$$= >
public&& 

bool&& #
PossuiOrcamentoAprovado&& '
{&&( )
get&&* -
;&&- .
set&&/ 2
;&&2 3
}&&4 5
=&&6 7
false&&8 =
;&&= >
public)) 

string)) 

PublicHash)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
=))+ ,
string))- 3
.))3 4
Empty))4 9
;))9 :
public++ 

DateTime++ 
?++ !
DataInicioDiagnostico++ *
{+++ ,
get++- 0
;++0 1
set++2 5
;++5 6
}++7 8
public-- 

DateTime-- 
?-- 
DataFimDiagnostico-- '
{--( )
get--* -
;--- .
set--/ 2
;--2 3
}--4 5
public// 

DateTime// 
?// 
DataAprovacao// "
{//# $
get//% (
;//( )
set//* -
;//- .
}/// 0
public11 

DateTime11 
?11 
DataInicioExecucao11 '
{11( )
get11* -
;11- .
set11/ 2
;112 3
}114 5
public33 

DateTime33 
?33 
DataFinalizacao33 $
{33% &
get33' *
;33* +
set33, /
;33/ 0
}331 2
public55 

DateTime55 
?55 
DataEntrega55  
{55! "
get55# &
;55& '
set55( +
;55+ ,
}55- .
public77 

DateTime77 
?77 
DataCancelamento77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
public99 

ICollection99 
<99 !
OrdemServicoOrcamento99 ,
>99, -

Orcamentos99. 8
{999 :
get99; >
;99> ?
set99@ C
;99C D
}99E F
=99G H
new99I L
List99M Q
<99Q R!
OrdemServicoOrcamento99R g
>99g h
(99h i
)99i j
;99j k
public;; 

ICollection;; 
<;; 
OrdemServicoProduto;; *
>;;* +
Produtos;;, 4
{;;5 6
get;;7 :
;;;: ;
set;;< ?
;;;? @
};;A B
=;;C D
new;;E H
List;;I M
<;;M N
OrdemServicoProduto;;N a
>;;a b
(;;b c
);;c d
;;;d e
public== 

ICollection== 
<== 
OrdemServicoServico== *
>==* +
Servicos==, 4
{==5 6
get==7 :
;==: ;
set==< ?
;==? @
}==A B
===C D
new==E H
List==I M
<==M N
OrdemServicoServico==N a
>==a b
(==b c
)==c d
;==d e
public?? 

ICollection?? 
<?? "
OrdemServicoServicoLog?? -
>??- .
Logs??/ 3
{??4 5
get??6 9
;??9 :
set??; >
;??> ?
}??@ A
=??B C
new??D G
List??H L
<??L M"
OrdemServicoServicoLog??M c
>??c d
(??d e
)??e f
;??f g
}@@ ˙
xC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Entities\OrdemServicoOrcamento.cs
	namespace 	
Mechanic
 
. 
Domain 
. 
Entities "
;" #
[ 
Table 
( 
$str 
)  
]  !
public 
class !
OrdemServicoOrcamento "
{		 
[

 
Key

 
]

 	
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
[ 
Required 
] 
public 

int 
OSId 
{ 
get 
; 
set 
; 
}  !
[ 

ForeignKey 
( 
$str 
) 
] 
public 

OrdemServico 
OrdemServico $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
[ 
Required 
] 
[ 
	MaxLength 
( 
$num 
) 
] 
public 

string 
	Descricao 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
[ 
Required 
] 
public 

StatusOrcamento 
StatusOrcamento *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 

DateTime 
? "
DataAprovacaoOrcamento +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
[ 
Required 
] 
public 

DateTime 
DataCriacao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
DateTime0 8
.8 9
UtcNow9 ?
;? @
[ 
	MaxLength 
( 
$num 
) 
] 
public   

string   
?   
ObservacaoMecanico   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
public"" 

ICollection"" 
<"" 
OrdemServicoProduto"" *
>""* +
Produtos"", 4
{""5 6
get""7 :
;"": ;
set""< ?
;""? @
}""A B
=""C D
new""E H
List""I M
<""M N
OrdemServicoProduto""N a
>""a b
(""b c
)""c d
;""d e
public$$ 

ICollection$$ 
<$$ 
OrdemServicoServico$$ *
>$$* +
Servicos$$, 4
{$$5 6
get$$7 :
;$$: ;
set$$< ?
;$$? @
}$$A B
=$$C D
new$$E H
List$$I M
<$$M N
OrdemServicoServico$$N a
>$$a b
($$b c
)$$c d
;$$d e
}%% ⁄
vC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Entities\OrdemServicoProduto.cs
	namespace 	
Mechanic
 
. 
Domain 
. 
Entities "
;" #
[ 
Table 
( 
$str 
) 
] 
public 
class 
OrdemServicoProduto  
{		 
[

 
Key

 
]

 	
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
[ 
Required 
] 
public 

int 
OSId 
{ 
get 
; 
set 
; 
}  !
[ 

ForeignKey 
( 
$str 
) 
] 
public 

OrdemServico 
OrdemServico $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 

int 
? 
OSOrcamentoId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 

ForeignKey 
( 
$str 
)  
]  !
public 
!
OrdemServicoOrcamento  
?  !
	Orcamento" +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
[ 
Required 
] 
public 

int 
	ProdutoId 
{ 
get 
; 
set  #
;# $
}% &
[ 

ForeignKey 
( 
$str 
) 
] 
public 

Produto 
Produto 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 

int 

Quantidade 
{ 
get 
;  
set! $
;$ %
}& '
[ 
Column 
( 
TypeName 
= 
$str &
)& '
]' (
public 

decimal 
PrecoPraticado !
{" #
get$ '
;' (
set) ,
;, -
}. /
public   

StatusItemProduto   

StatusItem   '
{  ( )
get  * -
;  - .
set  / 2
;  2 3
}  4 5
}!! ñ
vC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Entities\OrdemServicoServico.cs
	namespace 	
Mechanic
 
. 
Domain 
. 
Entities "
;" #
[ 
Table 
( 
$str 
) 
] 
public 
class 
OrdemServicoServico  
{ 
[		 
Key		 
]		 	
public

 

int

 
Id

 
{

 
get

 
;

 
set

 
;

 
}

 
[ 
Required 
] 
public 

int 
OSId 
{ 
get 
; 
set 
; 
}  !
[ 

ForeignKey 
( 
$str 
) 
] 
public 

OrdemServico 
OrdemServico $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 

int 
? 
OSOrcamentoId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 

ForeignKey 
( 
$str 
)  
]  !
public 
!
OrdemServicoOrcamento  
?  !
	Orcamento" +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
[ 
Required 
] 
public 

int 
	ServicoId 
{ 
get 
; 
set  #
;# $
}% &
[ 

ForeignKey 
( 
$str 
) 
] 
public 

Servico 
Servico 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
[ 
Column 
( 
TypeName 
= 
$str &
)& '
]' (
public 

decimal 
PrecoPraticado !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

ICollection 
< "
OrdemServicoServicoLog -
>- .
Logs/ 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
=B C
newD G
ListH L
<L M"
OrdemServicoServicoLogM c
>c d
(d e
)e f
;f g
} √
yC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Entities\OrdemServicoServicoLog.cs
	namespace 	
Mechanic
 
. 
Domain 
. 
Entities "
;" #
[ 
Table 
( 
$str  
)  !
]! "
public 
class "
OrdemServicoServicoLog #
{		 
[

 
Key

 
]

 	
public 

int 
Id 
{ 
get 
; 
set 
; 
} 
[ 
Required 
] 
public 

int 
OSId 
{ 
get 
; 
set 
; 
}  !
[ 

ForeignKey 
( 
$str 
) 
] 
public 

OrdemServico 
OrdemServico $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
[ 
Required 
] 
public 

int 
OSServicoId 
{ 
get  
;  !
set" %
;% &
}' (
[ 

ForeignKey 
( 
$str 
) 
] 
public 

OrdemServicoServico 
OrdemServicoServico 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
nullC G
!G H
;H I
[ 
Required 
] 
public 

StatusServicoLog 
AcaoLog #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 
Required 
] 
public 

DateTime 
DataCriacao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
DateTime0 8
.8 9
UtcNow9 ?
;? @
} ∑
jC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Entities\Produto.cs
	namespace 	
Mechanic
 
. 
Domain 
. 
Entities "
{ 
public 

class 
Produto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
Required			 
]		 
public

 
string

 
Sku

 
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
& '
=

( )
string

* 0
.

0 1
Empty

1 6
;

6 7
[ 	
Required	 
, 
	MaxLength 
( 
$num 
,  
ErrorMessage! -
=. /
$str0 _
)_ `
]` a
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
decimal 

PrecoCusto !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
decimal 

PrecoVenda !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage %
=& '
$str( S
)S T
]T U
public 
int 
QuantidadeTotal "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage %
=& '
$str( S
)S T
]T U
public 
int 
QuantidadeReservada &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
Required	 
] 
[ 	
Range	 
( 
$num 
, 
$num 
, 
ErrorMessage %
=& '
$str( S
)S T
]T U
public 
int 
QuantidadeMinima #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public!! 
bool!! 
Ativo!! 
{!! 
get!! 
;!!  
set!!! $
;!!$ %
}!!& '
=!!( )
true!!* .
;!!. /
public## 
DateTime## 
DataCriacao## #
{##$ %
get##& )
;##) *
set##+ .
;##. /
}##0 1
=##2 3
DateTime##4 <
.##< =
Now##= @
;##@ A
}$$ 
}%% ß
jC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Entities\Servico.cs
	namespace 	
Mechanic
 
. 
Domain 
. 
Entities "
{ 
public 

class 
Servico 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
Required			 
]		 
public

 
string

 
Sku

 
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
& '
=

( )
string

* 0
.

0 1
Empty

1 6
;

6 7
[ 	
Required	 
, 
	MaxLength 
( 
$num 
,  
ErrorMessage! -
=. /
$str0 _
)_ `
]` a
public 
string 
	Descricao 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
string0 6
.6 7
Empty7 <
;< =
[ 	
Column	 
( 
TypeName 
= 
$str *
)* +
]+ ,
public 
decimal 
Preco 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Ativo 
{ 
get 
;  
set! $
;$ %
}& '
=( )
true* .
;. /
public 
DateTime 
DataCriacao #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
DateTime4 <
.< =
Now= @
;@ A
} 
} ≠
jC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Entities\Veiculo.cs
	namespace 	
Mechanic
 
. 
Domain 
. 
Entities "
{ 
public 

class 
Veiculo 
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
[		 	
Required			 
]		 
public

 
int

 
	ClienteId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
Cliente 
Cliente 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
[ 	
Required	 
, 
	MaxLength 
( 
$num 
, 
ErrorMessage  ,
=- .
$str/ Y
)Y Z
]Z [
public 
string 
Placa 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
[ 	
Required	 
, 
	MaxLength 
( 
$num 
,  
ErrorMessage! -
=. /
$str0 [
)[ \
]\ ]
public 
string 
Marca 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& R
)R S
]S T
public 
string 
Modelo 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage "
=# $
$str% M
)M N
]N O
public 
int 
Ano 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
Ativo 
{ 
get 
;  
set! $
;$ %
}& '
=( )
true* .
;. /
public 
DateTime 
DataCriacao #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
DateTime4 <
.< =
Now= @
;@ A
} 
} Â

wC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IClienteRepository.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface 
IClienteRepository '
{ 
Task 
< 
List 
< 
Cliente 
> 
> 
ListarTodosAsync ,
(, -
string- 3
?3 4
cpfCnpj5 <
)< =
;= >
Task 
< 
Cliente 
? 
> 
ListarPorIdAsync '
(' (
int( +
id, .
). /
;/ 0
Task		 
AdicionarAsync		 
(		 
Cliente		 #
cliente		$ +
)		+ ,
;		, -
Task

 
AtualizarAsync

 
(

 
Cliente

 #
cliente

$ +
)

+ ,
;

, -
Task 
ExcluirAsync 
( 
int 
id  
)  !
;! "
Task 
< 
bool 
> 
ExisteCpfCnpjAsync %
(% &
string& ,
cpfCnpj- 4
)4 5
;5 6
} 
} ˇ
ÖC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IOrdemServicoOrcamentoRepository.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface ,
 IOrdemServicoOrcamentoRepository 5
{ 
Task 
AdicionarAsync 
( !
OrdemServicoOrcamento 1
entity2 8
)8 9
;9 :
Task		 
<		 !
OrdemServicoOrcamento		 "
?		" #
>		# $
ObterPorIdAsync		% 4
(		4 5
int		5 8
id		9 ;
)		; <
;		< =
Task 
AtualizarAsync 
( !
OrdemServicoOrcamento 1
entity2 8
)8 9
;9 :
} 
} ©
ÉC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IOrdemServicoProdutoRepository.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface *
IOrdemServicoProdutoRepository 3
{ 
Task 
AdicionarAsync 
( 
OrdemServicoProduto /
entity0 6
)6 7
;7 8
Task		 
<		 
List		 
<		 
OrdemServicoProduto		 %
>		% &
>		& '%
ListarPorOrcamentoIdAsync		( A
(		A B
int		B E
orcamentoId		F Q
)		Q R
;		R S
Task 
AtualizarAsync 
( 
OrdemServicoProduto /
entity0 6
)6 7
;7 8
} 
} Ü
|C:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IOrdemServicoRepository.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface #
IOrdemServicoRepository ,
{ 
Task 
AdicionarAsync 
( 
OrdemServico (
os) +
)+ ,
;, -
Task

 
<

 
List

 
<

 
OrdemServico

 
>

 
>

  
ListarAsync

! ,
(

, -'
ListarOrdemServicoParamsDto

- H
dto

I L
)

L M
;

M N
Task 
< 
OrdemServico 
? 
> 
ObterPorIdAsync +
(+ ,
int, /
id0 2
)2 3
;3 4
Task 
< 
OrdemServico 
? 
>  
ObterPorComHashAsync 0
(0 1
string1 7
hashExterno8 C
)C D
;D E
Task 
AtualizarAsync 
( 
OrdemServico (
os) +
)+ ,
;, -
Task 
SalvarAsync 
( 
) 
; 
Task 
< 
OrdemServico 
? 
> !
ObterComServicosAsync 1
(1 2
int2 5
osId6 :
): ;
;; <
Task 
< 
List 
< 
OrdemServico 
> 
>  !
ObterFinalizadasAsync! 6
(6 7
)7 8
;8 9
} 
} ∂
yC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IOrdemServicoService.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
;$ %
public 
	interface  
IOrdemServicoService %
{ 
Task 
< 	
int	 
> 
AdicionarOSAsync 
( '
CriarOrdemServicoRequestDto :
dto; >
)> ?
;? @
Task		 
<		 	
List			 
<		 #
OrdemServicoResponseDto		 %
>		% &
>		& '
ListarTodosAsync		( 8
(		8 9'
ListarOrdemServicoParamsDto		9 T
dto		U X
)		X Y
;		Y Z
Task

 
<

 	#
OrdemServicoResponseDto

	  
?

  !
>

! "
ListarPorIdAsync

# 3
(

3 4
int

4 7
id

8 :
)

: ;
;

; <
Task 
< 	#
OrdemServicoResponseDto	  
?  !
>! "%
ListarPorHashExternoAsync# <
(< =
string= C
hashExternoD O
,O P
stringQ W
docFinalX `
)` a
;a b
Task #
IniciarDiagnosticoAsync	  
(  !
int! $
osId% )
)) *
;* +
Task  
EnviarOrcamentoAsync	 
( 
int !
osId" &
,& '$
CriarOrcamentoRequestDto( @
dtoA D
)D E
;E F
Task /
#DecidirOrcamentoPorHashExternoAsync	 ,
(, -
string- 3
hashExterno4 ?
,? @
stringA G
docFinalH P
,P Q
intR U
orcamentoIdV a
,a b&
DecisaoOrcamentoRequestDtoc }
dto	~ Å
)
Å Ç
;
Ç É
Task #
ExecutarServicoLogAsync	  
(  !
int! $
osId% )
,) *
int+ .
orcId/ 4
,4 5
int6 9
servId: @
,@ A(
ExecutarServicoLogRequestDtoB ^
dto_ b
)b c
;c d
Task 
CancelarOSAsync	 
( 
int 
osId !
)! "
;" #
Task 
FinalizarOSAsync	 
( 
int 
osId "
)" #
;# $
Task 
EntregarOSAsync	 
( 
int 
osId !
)! "
;" #
Task 
< 	*
RelatorioTempoMedioResponseDto	 '
>' (&
GetTempoMedioExecucaoAsync) C
(C D
)D E
;E F
} ı
ÜC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IOrdemServicoServicoLogRepository.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface -
!IOrdemServicoServicoLogRepository 6
{ 
Task 
< 
List 
< "
OrdemServicoServicoLog (
>( )
>) *"
ObterLogsServicosAsync+ A
(A B
)B C
;C D
Task 
AdicionarAsync 
( "
OrdemServicoServicoLog 2
log3 6
)6 7
;7 8
}		 
}

 ö
ÉC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IOrdemServicoServicoRepository.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface *
IOrdemServicoServicoRepository 3
{ 
Task 
AdicionarAsync 
( 
OrdemServicoServico /
entity0 6
)6 7
;7 8
} 
}		 Ÿ

wC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IProdutoRepository.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface 
IProdutoRepository '
{ 
Task 
< 
List 
< 
Produto 
> 
> 
ListarTodosAsync ,
(, -
string- 3
?3 4
sku5 8
)8 9
;9 :
Task 
< 
Produto 
? 
> 
ListarPorIdAsync '
(' (
int( +
id, .
). /
;/ 0
Task		 
AdicionarAsync		 
(		 
Produto		 #
produto		$ +
)		+ ,
;		, -
Task

 
AtualizarAsync

 
(

 
Produto

 #
produto

$ +
)

+ ,
;

, -
Task 
ExcluirAsync 
( 
int 
id  
)  !
;! "
Task 
< 
bool 
> 
ExisteSkuAsync !
(! "
string" (
sku) ,
), -
;- .
} 
} Ÿ

wC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IServicoRepository.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface 
IServicoRepository '
{ 
Task 
< 
List 
< 
Servico 
> 
> 
ListarTodosAsync ,
(, -
string- 3
?3 4
sku5 8
)8 9
;9 :
Task 
< 
Servico 
? 
> 
ListarPorIdAsync '
(' (
int( +
id, .
). /
;/ 0
Task		 
AdicionarAsync		 
(		 
Servico		 #
servico		$ +
)		+ ,
;		, -
Task

 
AtualizarAsync

 
(

 
Servico

 #
servico

$ +
)

+ ,
;

, -
Task 
ExcluirAsync 
( 
int 
id  
)  !
;! "
Task 
< 
bool 
> 
ExisteSkuAsync !
(! "
string" (
sku) ,
), -
;- .
} 
} ˜
pC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IUnitOfWork.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface 
IUnitOfWork  
{ 
Task !
BeginTransactionAsync "
(" #
)# $
;$ %
Task 
CommitAsync 
( 
) 
; 
Task 
RollbackAsync 
( 
) 
; 
} 
}		 ñ
wC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Interfaces\IVeiculoRepository.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Interfaces $
{ 
public 

	interface 
IVeiculoRepository '
{ 
Task 
< 
List 
< 
Veiculo 
> 
> 
ListarTodosAsync ,
(, -
string- 3
?3 4
placa5 :
): ;
;; <
Task 
< 
Veiculo 
? 
> 
ListarPorIdAsync '
(' (
int( +
id, .
). /
;/ 0
Task		 
AdicionarAsync		 
(		 
Veiculo		 #
veiculo		$ +
)		+ ,
;		, -
Task

 
AtualizarAsync

 
(

 
Veiculo

 #
veiculo

$ +
)

+ ,
;

, -
Task 
ExcluirAsync 
( 
int 
id  
)  !
;! "
Task 
< 
bool 
> 
ExistePlacaAsync #
(# $
string$ *
placa+ 0
)0 1
;1 2
Task 
< 
bool 
> 
ClienteExisteAsync %
(% &
int& )
	clienteId* 3
)3 4
;4 5
} 
} ˙V
oC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Validacoes\Documentos.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Validacoes $
{ 
public 

class 

Documentos 
{ 
public 
string 
Value 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
=2 3
default4 ;
!; <
;< =
private		 

Documentos		 
(		 
)		 
{		 
}		  
private 

Documentos 
( 
string !
value" '
)' (
{ 	
Value 
= 
value 
; 
} 	
public 
static 

Documentos  
Create! '
(' (
string( .
value/ 4
)4 5
{ 	
value 
= 

RemoveMask 
( 
value $
)$ %
;% &
if 
( 
IsCpf 
( 
value 
) 
&& 
ValidateCpf  +
(+ ,
value, 1
)1 2
)2 3
return 
new 

Documentos %
(% &
value& +
)+ ,
;, -
if 
( 
IsCnpj 
( 
value 
) 
&&  
ValidateCnpj! -
(- .
value. 3
)3 4
)4 5
return 
new 

Documentos %
(% &
value& +
)+ ,
;, -
throw 
new 
ArgumentException '
(' (
$str( <
)< =
;= >
} 	
public 
override 
string 
ToString '
(' (
)( )
=>* ,
Value- 2
;2 3
private 
static 
string 

RemoveMask (
(( )
string) /
value0 5
)5 6
{   	
if!! 
(!! 
string!! 
.!! 
IsNullOrWhiteSpace!! )
(!!) *
value!!* /
)!!/ 0
)!!0 1
return"" 
string"" 
."" 
Empty"" #
;""# $
return$$ 
Regex$$ 
.$$ 
Replace$$  
($$  !
value%% 
,%% 
$str&& 
,&& 
$str'' 
,'' 
RegexOptions(( 
.(( 
None(( !
,((! "
TimeSpan)) 
.)) 
FromMilliseconds)) )
())) *
$num))* -
)))- .
)** 
;** 
}++ 	
private-- 
static-- 
bool-- 
IsCpf-- !
(--! "
string--" (
value--) .
)--. /
=>.. 
value.. 
... 
Length.. 
==.. 
$num.. !
;..! "
private00 
static00 
bool00 
IsCnpj00 "
(00" #
string00# )
value00* /
)00/ 0
=>11 
value11 
.11 
Length11 
==11 
$num11 !
;11! "
private33 
static33 
bool33 
ValidateCpf33 '
(33' (
string33( .
cpf33/ 2
)332 3
{44 	
if55 
(55 
cpf55 
.55 
All55 
(55 
c55 
=>55 
c55 
==55 !
cpf55" %
[55% &
$num55& '
]55' (
)55( )
)55) *
return55+ 1
false552 7
;557 8
int77 
[77 
]77 
mult177 
=77 
{77 
$num77 
,77 
$num77  !
,77! "
$num77# $
,77$ %
$num77& '
,77' (
$num77) *
,77* +
$num77, -
,77- .
$num77/ 0
,770 1
$num772 3
,773 4
$num775 6
}777 8
;778 9
int88 
[88 
]88 
mult288 
=88 
{88 
$num88 
,88 
$num88  "
,88" #
$num88$ %
,88% &
$num88' (
,88( )
$num88* +
,88+ ,
$num88- .
,88. /
$num880 1
,881 2
$num883 4
,884 5
$num886 7
,887 8
$num889 :
}88; <
;88< =
string:: 
tempCpf:: 
=:: 
cpf::  
[::  !
..::! #
$num::# $
]::$ %
;::% &
int;; 
sum;; 
=;; 
$num;; 
;;; 
for== 
(== 
int== 
i== 
=== 
$num== 
;== 
i== 
<== 
$num==  !
;==! "
i==# $
++==$ &
)==& '
sum>> 
+=>> 
(>> 
tempCpf>> 
[>>  
i>>  !
]>>! "
->># $
$char>>% (
)>>( )
*>>* +
mult1>>, 1
[>>1 2
i>>2 3
]>>3 4
;>>4 5
int@@ 
rest@@ 
=@@ 
sum@@ 
%@@ 
$num@@ 
;@@  
restAA 
=AA 
restAA 
<AA 
$numAA 
?AA 
$numAA 
:AA  !
$numAA" $
-AA% &
restAA' +
;AA+ ,
stringCC 
digitCC 
=CC 
restCC 
.CC  
ToStringCC  (
(CC( )
)CC) *
;CC* +
tempCpfDD 
+=DD 
digitDD 
;DD 
sumFF 
=FF 
$numFF 
;FF 
forHH 
(HH 
intHH 
iHH 
=HH 
$numHH 
;HH 
iHH 
<HH 
$numHH  "
;HH" #
iHH$ %
++HH% '
)HH' (
sumII 
+=II 
(II 
tempCpfII 
[II  
iII  !
]II! "
-II# $
$charII% (
)II( )
*II* +
mult2II, 1
[II1 2
iII2 3
]II3 4
;II4 5
restKK 
=KK 
sumKK 
%KK 
$numKK 
;KK 
restLL 
=LL 
restLL 
<LL 
$numLL 
?LL 
$numLL 
:LL  !
$numLL" $
-LL% &
restLL' +
;LL+ ,
digitNN 
+=NN 
restNN 
.NN 
ToStringNN "
(NN" #
)NN# $
;NN$ %
returnPP 
cpfPP 
.PP 
EndsWithPP 
(PP  
digitPP  %
)PP% &
;PP& '
}QQ 	
privateSS 
staticSS 
boolSS 
ValidateCnpjSS (
(SS( )
stringSS) /
cnpjSS0 4
)SS4 5
{TT 	
ifUU 
(UU 
cnpjUU 
.UU 
AllUU 
(UU 
cUU 
=>UU 
cUU 
==UU  "
cnpjUU# '
[UU' (
$numUU( )
]UU) *
)UU* +
)UU+ ,
returnUU- 3
falseUU4 9
;UU9 :
intWW 
[WW 
]WW 
mult1WW 
=WW 
{WW 
$numWW 
,WW 
$numWW  
,WW  !
$numWW" #
,WW# $
$numWW% &
,WW& '
$numWW( )
,WW) *
$numWW+ ,
,WW, -
$numWW. /
,WW/ 0
$numWW1 2
,WW2 3
$numWW4 5
,WW5 6
$numWW7 8
,WW8 9
$numWW: ;
,WW; <
$numWW= >
}WW? @
;WW@ A
intXX 
[XX 
]XX 
mult2XX 
=XX 
{XX 
$numXX 
,XX 
$numXX  
,XX  !
$numXX" #
,XX# $
$numXX% &
,XX& '
$numXX( )
,XX) *
$numXX+ ,
,XX, -
$numXX. /
,XX/ 0
$numXX1 2
,XX2 3
$numXX4 5
,XX5 6
$numXX7 8
,XX8 9
$numXX: ;
,XX; <
$numXX= >
,XX> ?
$numXX@ A
}XXB C
;XXC D
stringZZ 
tempZZ 
=ZZ 
cnpjZZ 
[ZZ 
..ZZ !
$numZZ! #
]ZZ# $
;ZZ$ %
int[[ 
sum[[ 
=[[ 
$num[[ 
;[[ 
for]] 
(]] 
int]] 
i]] 
=]] 
$num]] 
;]] 
i]] 
<]] 
$num]]  "
;]]" #
i]]$ %
++]]% '
)]]' (
sum^^ 
+=^^ 
(^^ 
temp^^ 
[^^ 
i^^ 
]^^ 
-^^  !
$char^^" %
)^^% &
*^^' (
mult1^^) .
[^^. /
i^^/ 0
]^^0 1
;^^1 2
int`` 
rest`` 
=`` 
sum`` 
%`` 
$num`` 
;``  
restaa 
=aa 
restaa 
<aa 
$numaa 
?aa 
$numaa 
:aa  !
$numaa" $
-aa% &
restaa' +
;aa+ ,
stringcc 
digitcc 
=cc 
restcc 
.cc  
ToStringcc  (
(cc( )
)cc) *
;cc* +
tempdd 
+=dd 
digitdd 
;dd 
sumff 
=ff 
$numff 
;ff 
forhh 
(hh 
inthh 
ihh 
=hh 
$numhh 
;hh 
ihh 
<hh 
$numhh  "
;hh" #
ihh$ %
++hh% '
)hh' (
sumii 
+=ii 
(ii 
tempii 
[ii 
iii 
]ii 
-ii  !
$charii" %
)ii% &
*ii' (
mult2ii) .
[ii. /
iii/ 0
]ii0 1
;ii1 2
restkk 
=kk 
sumkk 
%kk 
$numkk 
;kk 
restll 
=ll 
restll 
<ll 
$numll 
?ll 
$numll 
:ll  !
$numll" $
-ll% &
restll' +
;ll+ ,
digitnn 
+=nn 
restnn 
.nn 
ToStringnn "
(nn" #
)nn# $
;nn$ %
returnpp 
cnpjpp 
.pp 
EndsWithpp  
(pp  !
digitpp! &
)pp& '
;pp' (
}qq 	
}rr 
}ss ≥
kC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Domain\Validacoes\Placas.cs
	namespace 	
Mechanic
 
. 
Domain 
. 

Validacoes $
{ 
public 

static 
class 
Placas 
{ 
private 
static 
readonly 
Regex  %

PlacaRegex& 0
=1 2
new 

(
 
$str		 -
,		- .
RegexOptions

 
.

 
Compiled

  
,

  !
TimeSpan 
. 
FromMilliseconds $
($ %
$num% (
)( )
) 
; 	
public 
static 
bool 
EhValida #
(# $
string$ *
placa+ 0
)0 1
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
placa* /
)/ 0
)0 1
return 
false 
; 
var 
normalizada 
= 
placa #
. 
Replace 
( 
$str 
, 
$str  
)  !
. 
Replace 
( 
$str 
, 
$str  
)  !
. 
ToUpperInvariant !
(! "
)" #
;# $
return 

PlacaRegex 
. 
IsMatch %
(% &
normalizada& 1
)1 2
;2 3
} 	
} 
} a
_C:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\GlobalUsings.cs‹°
sC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Data\AppDbContext.cs
	namespace 	
Mechanic
 
. 
Data 
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
AppDbContext 
: 
	DbContext  )
{		 
public

 
AppDbContext

 
(

 
DbContextOptions

 ,
<

, -
AppDbContext

- 9
>

9 :
options

; B
)

B C
:

D E
base

F J
(

J K
options

K R
)

R S
{

T U
}

V W
public 
DbSet 
< 
Cliente 
> 
Clientes &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Veiculo 
> 
Veiculos &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Servico 
> 
Servicos &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Produto 
> 
Produtos &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
OrdemServico !
>! "
OrdensServico# 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
DbSet 
< !
OrdemServicoOrcamento *
>* +"
OrdemServicoOrcamentos, B
{C D
getE H
;H I
setJ M
;M N
}O P
public 
DbSet 
< 
OrdemServicoProduto (
>( ) 
OrdemServicoProdutos* >
{? @
getA D
;D E
setF I
;I J
}K L
public 
DbSet 
< 
OrdemServicoServico (
>( ) 
OrdemServicoServicos* >
{? @
getA D
;D E
setF I
;I J
}K L
public 
DbSet 
< "
OrdemServicoServicoLog +
>+ ,#
OrdemServicoServicoLogs- D
{E F
getG J
;J K
setL O
;O P
}Q R
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder   
.   
Entity   
<    
Cliente    '
>  ' (
(  ( )
entity  ) /
=>  0 2
{!! 
entity"" 
."" 
OwnsOne"" 
("" 
c""  
=>""! #
c""$ %
.""% &
CpfCnpj""& -
,""- .
doc""/ 2
=>""3 5
{## 
doc$$ 
.$$ 
Property$$  
($$  !
d$$! "
=>$$# %
d$$& '
.$$' (
Value$$( -
)$$- .
.%% 
HasColumnName%% %
(%%% &
$str%%& /
)%%/ 0
.&& 
HasMaxLength&& $
(&&$ %
$num&&% '
)&&' (
.'' 

IsRequired'' "
(''" #
)''# $
;''$ %
doc)) 
.)) 
HasIndex))  
())  !
d))! "
=>))# %
d))& '
.))' (
Value))( -
)))- .
.)). /
IsUnique))/ 7
())7 8
)))8 9
;))9 :
}** 
)** 
;** 
entity++ 
.++ 

Navigation++ !
(++! "
c++" #
=>++$ &
c++' (
.++( )
CpfCnpj++) 0
)++0 1
.++1 2

IsRequired++2 <
(++< =
)++= >
;++> ?
},, 
),, 
;,, 
modelBuilder.. 
... 
Entity.. 
<..  
Veiculo..  '
>..' (
(..( )
entity..) /
=>..0 2
{// 
entity00 
.00 
HasIndex00 
(00  
v00  !
=>00" $
v00% &
.00& '
Placa00' ,
)00, -
.00- .
IsUnique00. 6
(006 7
)007 8
;008 9
entity11 
.11 
HasOne11 
(11 
v11 
=>11  "
v11# $
.11$ %
Cliente11% ,
)11, -
.22 
WithMany22 
(22  
)22  !
.33 
HasForeignKey33 $
(33$ %
v33% &
=>33' )
v33* +
.33+ ,
	ClienteId33, 5
)335 6
.44 
OnDelete44 
(44  
DeleteBehavior44  .
.44. /
Restrict44/ 7
)447 8
;448 9
}55 
)55 
;55 
modelBuilder77 
.77 
Entity77 
<77  
Servico77  '
>77' (
(77( )
entity77) /
=>770 2
{88 
entity99 
.99 
HasIndex99 
(99  
s99  !
=>99" $
s99% &
.99& '
Sku99' *
)99* +
.99+ ,
IsUnique99, 4
(994 5
)995 6
;996 7
entity:: 
.:: 
Property:: 
(::  
s::  !
=>::" $
s::% &
.::& '
Preco::' ,
)::, -
.;; 
HasPrecision;; #
(;;# $
$num;;$ &
,;;& '
$num;;( )
);;) *
;;;* +
entity<< 
.<< 
Property<< 
(<<  
s<<  !
=><<" $
s<<% &
.<<& '
Sku<<' *
)<<* +
.== 
HasMaxLength== #
(==# $
$num==$ &
)==& '
.>> 

IsRequired>> !
(>>! "
)>>" #
;>># $
}?? 
)?? 
;?? 
modelBuilderAA 
.AA 
EntityAA 
<AA  
ProdutoAA  '
>AA' (
(AA( )
entityAA) /
=>AA0 2
{BB 
entityCC 
.CC 
HasIndexCC 
(CC  
sCC  !
=>CC" $
sCC% &
.CC& '
SkuCC' *
)CC* +
.CC+ ,
IsUniqueCC, 4
(CC4 5
)CC5 6
;CC6 7
entityDD 
.DD 
PropertyDD 
(DD  
sDD  !
=>DD" $
sDD% &
.DD& '

PrecoCustoDD' 1
)DD1 2
.EE 
HasPrecisionEE #
(EE# $
$numEE$ &
,EE& '
$numEE( )
)EE) *
;EE* +
entityFF 
.FF 
PropertyFF 
(FF  
sFF  !
=>FF" $
sFF% &
.FF& '

PrecoVendaFF' 1
)FF1 2
.GG 
HasPrecisionGG  
(GG  !
$numGG! #
,GG# $
$numGG% &
)GG& '
;GG' (
entityHH 
.HH 
PropertyHH 
(HH  
sHH  !
=>HH" $
sHH% &
.HH& '
SkuHH' *
)HH* +
.II 
HasMaxLengthII #
(II# $
$numII$ &
)II& '
.JJ 

IsRequiredJJ !
(JJ! "
)JJ" #
;JJ# $
}KK 
)KK 
;KK 
modelBuilderMM 
.MM 
EntityMM 
<MM  
OrdemServicoMM  ,
>MM, -
(MM- .
entityMM. 4
=>MM5 7
{NN 
entityOO 
.OO 
HasKeyOO 
(OO 
xOO 
=>OO  "
xOO# $
.OO$ %
IdOO% '
)OO' (
;OO( )
entityPP 
.PP 
PropertyPP 
(PP  
xPP  !
=>PP" $
xPP% &
.PP& '
TituloPP' -
)PP- .
.PP. /
HasMaxLengthPP/ ;
(PP; <
$numPP< ?
)PP? @
.PP@ A

IsRequiredPPA K
(PPK L
)PPL M
;PPM N
entityQQ 
.QQ 
PropertyQQ 
(QQ  
xQQ  !
=>QQ" $
xQQ% &
.QQ& '
	DescricaoQQ' 0
)QQ0 1
.QQ1 2
HasMaxLengthQQ2 >
(QQ> ?
$numQQ? C
)QQC D
.QQD E

IsRequiredQQE O
(QQO P
)QQP Q
;QQQ R
entityRR 
.RR 
PropertyRR 
(RR  
xRR  !
=>RR" $
xRR% &
.RR& '
StatusRR' -
)RR- .
.RR. /

IsRequiredRR/ 9
(RR9 :
)RR: ;
;RR; <
entitySS 
.SS 
PropertySS 
(SS  
xSS  !
=>SS" $
xSS% &
.SS& '
DataCriacaoSS' 2
)SS2 3
.SS3 4

IsRequiredSS4 >
(SS> ?
)SS? @
;SS@ A
entityUU 
.UU 
HasOneUU 
(UU 
xUU 
=>UU  "
xUU# $
.UU$ %
ClienteUU% ,
)UU, -
.UU- .
WithManyUU. 6
(UU6 7
)UU7 8
.UU8 9
HasForeignKeyUU9 F
(UUF G
xUUG H
=>UUI K
xUUL M
.UUM N
	ClienteIdUUN W
)UUW X
.UUX Y
OnDeleteUUY a
(UUa b
DeleteBehaviorUUb p
.UUp q
RestrictUUq y
)UUy z
;UUz {
entityVV 
.VV 
HasOneVV 
(VV 
xVV 
=>VV  "
xVV# $
.VV$ %
VeiculoVV% ,
)VV, -
.VV- .
WithManyVV. 6
(VV6 7
)VV7 8
.VV8 9
HasForeignKeyVV9 F
(VVF G
xVVG H
=>VVI K
xVVL M
.VVM N
	VeiculoIdVVN W
)VVW X
.VVX Y
OnDeleteVVY a
(VVa b
DeleteBehaviorVVb p
.VVp q
RestrictVVq y
)VVy z
;VVz {
}WW 
)WW 
;WW 
modelBuilderYY 
.YY 
EntityYY 
<YY  !
OrdemServicoOrcamentoYY  5
>YY5 6
(YY6 7
entityYY7 =
=>YY> @
{ZZ 
entity[[ 
.[[ 
HasKey[[ 
([[ 
x[[ 
=>[[  "
x[[# $
.[[$ %
Id[[% '
)[[' (
;[[( )
entity\\ 
.\\ 
Property\\ 
(\\  
x\\  !
=>\\" $
x\\% &
.\\& '
	Descricao\\' 0
)\\0 1
.\\1 2
HasMaxLength\\2 >
(\\> ?
$num\\? B
)\\B C
.\\C D

IsRequired\\D N
(\\N O
)\\O P
;\\P Q
entity]] 
.]] 
Property]] 
(]]  
x]]  !
=>]]" $
x]]% &
.]]& '
ObservacaoMecanico]]' 9
)]]9 :
.]]: ;
HasMaxLength]]; G
(]]G H
$num]]H L
)]]L M
;]]M N
entity^^ 
.^^ 
Property^^ 
(^^  
x^^  !
=>^^" $
x^^% &
.^^& '
StatusOrcamento^^' 6
)^^6 7
.^^7 8

IsRequired^^8 B
(^^B C
)^^C D
;^^D E
entity__ 
.__ 
Property__ 
(__  
x__  !
=>__" $
x__% &
.__& '
DataCriacao__' 2
)__2 3
.__3 4

IsRequired__4 >
(__> ?
)__? @
;__@ A
entityaa 
.aa 
HasOneaa 
(aa 
xaa 
=>aa  "
xaa# $
.aa$ %
OrdemServicoaa% 1
)aa1 2
.bb 
WithManybb 
(bb 
xbb 
=>bb  "
xbb# $
.bb$ %

Orcamentosbb% /
)bb/ 0
.cc 
HasForeignKeycc "
(cc" #
xcc# $
=>cc% '
xcc( )
.cc) *
OSIdcc* .
)cc. /
.dd 
OnDeletedd 
(dd 
DeleteBehaviordd ,
.dd, -
Cascadedd- 4
)dd4 5
;dd5 6
}ee 
)ee 
;ee 
modelBuildergg 
.gg 
Entitygg 
<gg  
OrdemServicoProdutogg  3
>gg3 4
(gg4 5
entitygg5 ;
=>gg< >
{hh 
entityii 
.ii 
HasKeyii 
(ii 
xii 
=>ii  "
xii# $
.ii$ %
Idii% '
)ii' (
;ii( )
entityjj 
.jj 
Propertyjj 
(jj  
xjj  !
=>jj" $
xjj% &
.jj& '

Quantidadejj' 1
)jj1 2
.jj2 3
HasPrecisionjj3 ?
(jj? @
$numjj@ B
,jjB C
$numjjD E
)jjE F
;jjF G
entitykk 
.kk 
Propertykk 
(kk  
xkk  !
=>kk" $
xkk% &
.kk& '
PrecoPraticadokk' 5
)kk5 6
.kk6 7
HasPrecisionkk7 C
(kkC D
$numkkD F
,kkF G
$numkkH I
)kkI J
;kkJ K
entityll 
.ll 
Propertyll 
(ll  
xll  !
=>ll" $
xll% &
.ll& '

StatusItemll' 1
)ll1 2
.ll2 3

IsRequiredll3 =
(ll= >
)ll> ?
;ll? @
entitynn 
.nn 
HasOnenn 
(nn 
xnn 
=>nn  "
xnn# $
.nn$ %
OrdemServiconn% 1
)nn1 2
.nn2 3
WithManynn3 ;
(nn; <
xnn< =
=>nn> @
xnnA B
.nnB C
ProdutosnnC K
)nnK L
.nnL M
HasForeignKeynnM Z
(nnZ [
xnn[ \
=>nn] _
xnn` a
.nna b
OSIdnnb f
)nnf g
.nng h
OnDeletennh p
(nnp q
DeleteBehaviornnq 
.	nn Ä
Cascade
nnÄ á
)
nná à
;
nnà â
entityoo 
.oo 
HasOneoo 
(oo 
xoo 
=>oo  "
xoo# $
.oo$ %
Produtooo% ,
)oo, -
.oo- .
WithManyoo. 6
(oo6 7
)oo7 8
.oo8 9
HasForeignKeyoo9 F
(ooF G
xooG H
=>ooI K
xooL M
.ooM N
	ProdutoIdooN W
)ooW X
.ooX Y
OnDeleteooY a
(ooa b
DeleteBehavioroob p
.oop q
Restrictooq y
)ooy z
;ooz {
entitypp 
.pp 
HasOnepp 
(pp 
xpp 
=>pp  "
xpp# $
.pp$ %
	Orcamentopp% .
)pp. /
.pp/ 0
WithManypp0 8
(pp8 9
xpp9 :
=>pp; =
xpp> ?
.pp? @
Produtospp@ H
)ppH I
.ppI J
HasForeignKeyppJ W
(ppW X
xppX Y
=>ppZ \
xpp] ^
.pp^ _
OSOrcamentoIdpp_ l
)ppl m
.ppm n
OnDeleteppn v
(ppv w
DeleteBehavior	ppw Ö
.
ppÖ Ü
Restrict
ppÜ é
)
ppé è
;
ppè ê
}qq 
)qq 
;qq 
modelBuilderss 
.ss 
Entityss 
<ss  
OrdemServicoServicoss  3
>ss3 4
(ss4 5
entityss5 ;
=>ss< >
{tt 
entityuu 
.uu 
HasKeyuu 
(uu 
xuu 
=>uu  "
xuu# $
.uu$ %
Iduu% '
)uu' (
;uu( )
entityvv 
.vv 
Propertyvv 
(vv  
xvv  !
=>vv" $
xvv% &
.vv& '
PrecoPraticadovv' 5
)vv5 6
.vv6 7
HasPrecisionvv7 C
(vvC D
$numvvD F
,vvF G
$numvvH I
)vvI J
;vvJ K
entityxx 
.xx 
HasOnexx 
(xx 
xxx 
=>xx  "
xxx# $
.xx$ %
OrdemServicoxx% 1
)xx1 2
.xx2 3
WithManyxx3 ;
(xx; <
xxx< =
=>xx> @
xxxA B
.xxB C
ServicosxxC K
)xxK L
.xxL M
HasForeignKeyxxM Z
(xxZ [
xxx[ \
=>xx] _
xxx` a
.xxa b
OSIdxxb f
)xxf g
.xxg h
OnDeletexxh p
(xxp q
DeleteBehaviorxxq 
.	xx Ä
Cascade
xxÄ á
)
xxá à
;
xxà â
entityyy 
.yy 
HasOneyy 
(yy 
xyy 
=>yy  "
xyy# $
.yy$ %
Servicoyy% ,
)yy, -
.yy- .
WithManyyy. 6
(yy6 7
)yy7 8
.yy8 9
HasForeignKeyyy9 F
(yyF G
xyyG H
=>yyI K
xyyL M
.yyM N
	ServicoIdyyN W
)yyW X
.yyX Y
OnDeleteyyY a
(yya b
DeleteBehavioryyb p
.yyp q
Restrictyyq y
)yyy z
;yyz {
entityzz 
.zz 
HasOnezz 
(zz 
xzz 
=>zz  "
xzz# $
.zz$ %
	Orcamentozz% .
)zz. /
.zz/ 0
WithManyzz0 8
(zz8 9
xzz9 :
=>zz; =
xzz> ?
.zz? @
Servicoszz@ H
)zzH I
.zzI J
HasForeignKeyzzJ W
(zzW X
xzzX Y
=>zzZ \
xzz] ^
.zz^ _
OSOrcamentoIdzz_ l
)zzl m
.zzm n
OnDeletezzn v
(zzv w
DeleteBehavior	zzw Ö
.
zzÖ Ü
Restrict
zzÜ é
)
zzé è
;
zzè ê
}{{ 
){{ 
;{{ 
modelBuilder}} 
.}} 
Entity}} 
<}}  "
OrdemServicoServicoLog}}  6
>}}6 7
(}}7 8
entity}}8 >
=>}}? A
{~~ 
entity 
. 
HasKey 
( 
x 
=>  "
x# $
.$ %
Id% '
)' (
;( )
entity
ÄÄ 
.
ÄÄ 
Property
ÄÄ 
(
ÄÄ  
x
ÄÄ  !
=>
ÄÄ" $
x
ÄÄ% &
.
ÄÄ& '
AcaoLog
ÄÄ' .
)
ÄÄ. /
.
ÄÄ/ 0

IsRequired
ÄÄ0 :
(
ÄÄ: ;
)
ÄÄ; <
;
ÄÄ< =
entity
ÅÅ 
.
ÅÅ 
Property
ÅÅ 
(
ÅÅ  
x
ÅÅ  !
=>
ÅÅ" $
x
ÅÅ% &
.
ÅÅ& '
DataCriacao
ÅÅ' 2
)
ÅÅ2 3
.
ÅÅ3 4

IsRequired
ÅÅ4 >
(
ÅÅ> ?
)
ÅÅ? @
;
ÅÅ@ A
entity
ÉÉ 
.
ÉÉ 
HasOne
ÉÉ 
(
ÉÉ 
x
ÉÉ 
=>
ÉÉ  "
x
ÉÉ# $
.
ÉÉ$ %!
OrdemServicoServico
ÉÉ% 8
)
ÉÉ8 9
.
ÑÑ 
WithMany
ÑÑ 
(
ÑÑ 
x
ÑÑ 
=>
ÑÑ  "
x
ÑÑ# $
.
ÑÑ$ %
Logs
ÑÑ% )
)
ÑÑ) *
.
ÖÖ 
HasForeignKey
ÖÖ "
(
ÖÖ" #
x
ÖÖ# $
=>
ÖÖ% '
x
ÖÖ( )
.
ÖÖ) *
OSServicoId
ÖÖ* 5
)
ÖÖ5 6
.
ÜÜ 
OnDelete
ÜÜ 
(
ÜÜ 
DeleteBehavior
ÜÜ ,
.
ÜÜ, -
Cascade
ÜÜ- 4
)
ÜÜ4 5
;
ÜÜ5 6
entity
àà 
.
àà 
HasOne
àà 
(
àà 
x
àà 
=>
àà  "
x
àà# $
.
àà$ %
OrdemServico
àà% 1
)
àà1 2
.
ââ 
WithMany
ââ 
(
ââ 
x
ââ 
=>
ââ  "
x
ââ# $
.
ââ$ %
Logs
ââ% )
)
ââ) *
.
ää 
HasForeignKey
ää "
(
ää" #
x
ää# $
=>
ää% '
x
ää( )
.
ää) *
OSId
ää* .
)
ää. /
.
ãã 
OnDelete
ãã 
(
ãã 
DeleteBehavior
ãã ,
.
ãã, -
NoAction
ãã- 5
)
ãã5 6
;
ãã6 7
}
åå 
)
åå 
;
åå 
}
éé 	
}
èè 
}ëë ï'
àC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Data\Migrations\20260504215027_Initial.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Data" &
.& '

Migrations' 1
{ 
[

 #
ExcludeFromCodeCoverage

 
]

 
public 

partial 
class 
Initial  
:! "
	Migration# ,
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Nome 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 D
,D E
	maxLengthF O
:O P
$numQ S
,S T
nullableU ]
:] ^
false_ d
)d e
,e f
CpfCnpj 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
type3 7
:7 8
$str9 G
,G H
	maxLengthI R
:R S
$numT V
,V W
nullableX `
:` a
falseb g
)g h
,h i
	Telefone1 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; I
,I J
	maxLengthK T
:T U
$numV X
,X Y
nullableZ b
:b c
falsed i
)i j
,j k
	Telefone2 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; I
,I J
	maxLengthK T
:T U
$numV X
,X Y
nullableZ b
:b c
falsed i
)i j
,j k
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 E
,E F
	maxLengthG P
:P Q
$numR T
,T U
nullableV ^
:^ _
false` e
)e f
,f g
Ativo 
= 
table !
.! "
Column" (
<( )
bool) -
>- .
(. /
type/ 3
:3 4
$str5 :
,: ;
nullable< D
:D E
falseF K
)K L
,L M
DataCriacao 
=  !
table" '
.' (
Column( .
<. /
DateTime/ 7
>7 8
(8 9
type9 =
:= >
$str? J
,J K
nullableL T
:T U
falseV [
)[ \
} 
, 
constraints 
: 
table "
=># %
{ 
table   
.   

PrimaryKey   $
(  $ %
$str  % 2
,  2 3
x  4 5
=>  6 8
x  9 :
.  : ;
Id  ; =
)  = >
;  > ?
}!! 
)!! 
;!! 
migrationBuilder## 
.## 
CreateIndex## (
(##( )
name$$ 
:$$ 
$str$$ +
,$$+ ,
table%% 
:%% 
$str%% !
,%%! "
column&& 
:&& 
$str&& !
,&&! "
unique'' 
:'' 
true'' 
)'' 
;'' 
}(( 	
	protected++ 
override++ 
void++ 
Down++  $
(++$ %
MigrationBuilder++% 5
migrationBuilder++6 F
)++F G
{,, 	
migrationBuilder-- 
.-- 
	DropTable-- &
(--& '
name.. 
:.. 
$str..  
)..  !
;..! "
}// 	
}00 
}11 ®-
åC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Data\Migrations\20260504235520_AddVeiculos.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Data" &
.& '

Migrations' 1
{ 
[

 #
ExcludeFromCodeCoverage

 
]

 
public 

partial 
class 
AddVeiculos $
:% &
	Migration' 0
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
	ClienteId 
= 
table  %
.% &
Column& ,
<, -
int- 0
>0 1
(1 2
type2 6
:6 7
$str8 =
,= >
nullable? G
:G H
falseI N
)N O
,O P
Placa 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 D
,D E
	maxLengthF O
:O P
$numQ R
,R S
nullableT \
:\ ]
false^ c
)c d
,d e
Marca 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 E
,E F
	maxLengthG P
:P Q
$numR T
,T U
nullableV ^
:^ _
false` e
)e f
,f g
Modelo 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 F
,F G
	maxLengthH Q
:Q R
$numS U
,U V
nullableW _
:_ `
falsea f
)f g
,g h
Ano 
= 
table 
.  
Column  &
<& '
int' *
>* +
(+ ,
type, 0
:0 1
$str2 7
,7 8
	maxLength9 B
:B C
$numD E
,E F
nullableG O
:O P
falseQ V
)V W
,W X
Ativo 
= 
table !
.! "
Column" (
<( )
bool) -
>- .
(. /
type/ 3
:3 4
$str5 :
,: ;
nullable< D
:D E
falseF K
)K L
,L M
DataCriacao 
=  !
table" '
.' (
Column( .
<. /
DateTime/ 7
>7 8
(8 9
type9 =
:= >
$str? J
,J K
nullableL T
:T U
falseV [
)[ \
} 
, 
constraints 
: 
table "
=># %
{ 
table   
.   

PrimaryKey   $
(  $ %
$str  % 2
,  2 3
x  4 5
=>  6 8
x  9 :
.  : ;
Id  ; =
)  = >
;  > ?
table!! 
.!! 

ForeignKey!! $
(!!$ %
name"" 
:"" 
$str"" >
,""> ?
column## 
:## 
x##  !
=>##" $
x##% &
.##& '
	ClienteId##' 0
,##0 1
principalTable$$ &
:$$& '
$str$$( 2
,$$2 3
principalColumn%% '
:%%' (
$str%%) -
,%%- .
onDelete&&  
:&&  !
ReferentialAction&&" 3
.&&3 4
Restrict&&4 <
)&&< =
;&&= >
}'' 
)'' 
;'' 
migrationBuilder)) 
.)) 
CreateIndex)) (
())( )
name** 
:** 
$str** -
,**- .
table++ 
:++ 
$str++ !
,++! "
column,, 
:,, 
$str,, #
),,# $
;,,$ %
migrationBuilder.. 
... 
CreateIndex.. (
(..( )
name// 
:// 
$str// )
,//) *
table00 
:00 
$str00 !
,00! "
column11 
:11 
$str11 
,11  
unique22 
:22 
true22 
)22 
;22 
}33 	
	protected66 
override66 
void66 
Down66  $
(66$ %
MigrationBuilder66% 5
migrationBuilder666 F
)66F G
{77 	
migrationBuilder88 
.88 
	DropTable88 &
(88& '
name99 
:99 
$str99  
)99  !
;99! "
}:: 	
};; 
}<< ‡ 
åC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Data\Migrations\20260505003419_AddServicos.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Data" &
.& '

Migrations' 1
{ 
[

 #
ExcludeFromCodeCoverage

 
]

 
public 

partial 
class 
AddServicos $
:% &
	Migration' 0
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Sku 
= 
table 
.  
Column  &
<& '
string' -
>- .
(. /
type/ 3
:3 4
$str5 D
,D E
nullableF N
:N O
falseP U
)U V
,V W
	Descricao 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; I
,I J
	maxLengthK T
:T U
$numV X
,X Y
nullableZ b
:b c
falsed i
)i j
,j k
Preco 
= 
table !
.! "
Column" (
<( )
decimal) 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
	maxLengthI R
:R S
$numT V
,V W
nullableX `
:` a
falseb g
)g h
,h i
Ativo 
= 
table !
.! "
Column" (
<( )
bool) -
>- .
(. /
type/ 3
:3 4
$str5 :
,: ;
nullable< D
:D E
falseF K
)K L
,L M
DataCriacao 
=  !
table" '
.' (
Column( .
<. /
DateTime/ 7
>7 8
(8 9
type9 =
:= >
$str? J
,J K
nullableL T
:T U
falseV [
)[ \
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
Id; =
)= >
;> ?
} 
) 
; 
migrationBuilder!! 
.!! 
CreateIndex!! (
(!!( )
name"" 
:"" 
$str"" '
,""' (
table## 
:## 
$str## !
,##! "
column$$ 
:$$ 
$str$$ 
,$$ 
unique%% 
:%% 
true%% 
)%% 
;%% 
}&& 	
	protected)) 
override)) 
void)) 
Down))  $
())$ %
MigrationBuilder))% 5
migrationBuilder))6 F
)))F G
{** 	
migrationBuilder++ 
.++ 
	DropTable++ &
(++& '
name,, 
:,, 
$str,,  
),,  !
;,,! "
}-- 	
}.. 
}// ™
öC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Data\Migrations\20260505004105_ConfiguraServicoPrecoESku.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Data" &
.& '

Migrations' 1
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

partial

 
class

 %
ConfiguraServicoPrecoESku

 2
:

3 4
	Migration

5 >
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str 
, 
table 
: 
$str !
,! "
type 
: 
$str $
,$ %
	maxLength 
: 
$num 
, 
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str (
)( )
;) *
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str 
, 
table 
: 
$str !
,! "
type 
: 
$str %
,% &
nullable   
:   
false   
,    

oldClrType!! 
:!! 
typeof!! "
(!!" #
string!!# )
)!!) *
,!!* +
oldType"" 
:"" 
$str"" '
,""' (
oldMaxLength## 
:## 
$num##  
)##  !
;##! "
}$$ 	
}%% 
}&& ›,
åC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Data\Migrations\20260505013533_AddProdutos.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Data" &
.& '

Migrations' 1
{ 
[

 #
ExcludeFromCodeCoverage

 
]

 
public 

partial 
class 
AddProdutos $
:% &
	Migration' 0
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Sku 
= 
table 
.  
Column  &
<& '
string' -
>- .
(. /
type/ 3
:3 4
$str5 C
,C D
	maxLengthE N
:N O
$numP R
,R S
nullableT \
:\ ]
false^ c
)c d
,d e
	Descricao 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; I
,I J
	maxLengthK T
:T U
$numV X
,X Y
nullableZ b
:b c
falsed i
)i j
,j k

PrecoCusto 
=  
table! &
.& '
Column' -
<- .
decimal. 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
	precisionN W
:W X
$numY [
,[ \
scale] b
:b c
$numd e
,e f
nullableg o
:o p
falseq v
)v w
,w x

PrecoVenda 
=  
table! &
.& '
Column' -
<- .
decimal. 5
>5 6
(6 7
type7 ;
:; <
$str= L
,L M
	precisionN W
:W X
$numY [
,[ \
scale] b
:b c
$numd e
,e f
nullableg o
:o p
falseq v
)v w
,w x
QuantidadeTotal #
=$ %
table& +
.+ ,
Column, 2
<2 3
int3 6
>6 7
(7 8
type8 <
:< =
$str> C
,C D
nullableE M
:M N
falseO T
)T U
,U V
QuantidadeReservada '
=( )
table* /
./ 0
Column0 6
<6 7
int7 :
>: ;
(; <
type< @
:@ A
$strB G
,G H
nullableI Q
:Q R
falseS X
)X Y
,Y Z
QuantidadeMinima $
=% &
table' ,
., -
Column- 3
<3 4
int4 7
>7 8
(8 9
type9 =
:= >
$str? D
,D E
nullableF N
:N O
falseP U
)U V
,V W
Ativo 
= 
table !
.! "
Column" (
<( )
bool) -
>- .
(. /
type/ 3
:3 4
$str5 :
,: ;
nullable< D
:D E
falseF K
)K L
,L M
DataCriacao 
=  !
table" '
.' (
Column( .
<. /
DateTime/ 7
>7 8
(8 9
type9 =
:= >
$str? J
,J K
nullableL T
:T U
falseV [
)[ \
} 
, 
constraints   
:   
table   "
=>  # %
{!! 
table"" 
."" 

PrimaryKey"" $
(""$ %
$str""% 2
,""2 3
x""4 5
=>""6 8
x""9 :
."": ;
Id""; =
)""= >
;""> ?
}## 
)## 
;## 
migrationBuilder%% 
.%% 
CreateIndex%% (
(%%( )
name&& 
:&& 
$str&& '
,&&' (
table'' 
:'' 
$str'' !
,''! "
column(( 
:(( 
$str(( 
,(( 
unique)) 
:)) 
true)) 
))) 
;)) 
}** 	
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
.// 
	DropTable// &
(//& '
name00 
:00 
$str00  
)00  !
;00! "
}11 	
}22 
}33 ‡‰
êC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Data\Migrations\20260505224922_AddOrdemServico.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Data" &
.& '

Migrations' 1
{ 
[

 #
ExcludeFromCodeCoverage

 
]

 
public 

partial 
class 
AddOrdemServico (
:) *
	Migration+ 4
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str %
,% &
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Titulo 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
	maxLengthI R
:R S
$numT W
,W X
nullableY a
:a b
falsec h
)h i
,i j
Status 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
type/ 3
:3 4
$str5 :
,: ;
nullable< D
:D E
falseF K
)K L
,L M
	Descricao 
= 
table  %
.% &
Column& ,
<, -
string- 3
>3 4
(4 5
type5 9
:9 :
$str; K
,K L
	maxLengthM V
:V W
$numX \
,\ ]
nullable^ f
:f g
falseh m
)m n
,n o
	ClienteId 
= 
table  %
.% &
Column& ,
<, -
int- 0
>0 1
(1 2
type2 6
:6 7
$str8 =
,= >
nullable? G
:G H
falseI N
)N O
,O P
	VeiculoId 
= 
table  %
.% &
Column& ,
<, -
int- 0
>0 1
(1 2
type2 6
:6 7
$str8 =
,= >
nullable? G
:G H
falseI N
)N O
,O P
DataCriacao 
=  !
table" '
.' (
Column( .
<. /
DateTime/ 7
>7 8
(8 9
type9 =
:= >
$str? J
,J K
nullableL T
:T U
falseV [
)[ \
,\ ]#
PossuiOrcamentoPendente +
=, -
table. 3
.3 4
Column4 :
<: ;
bool; ?
>? @
(@ A
typeA E
:E F
$strG L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _#
PossuiOrcamentoAprovado +
=, -
table. 3
.3 4
Column4 :
<: ;
bool; ?
>? @
(@ A
typeA E
:E F
$strG L
,L M
nullableN V
:V W
falseX ]
)] ^
,^ _

PublicHash 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
type6 :
:: ;
$str< K
,K L
nullableM U
:U V
falseW \
)\ ]
,] ^!
DataInicioDiagnostico )
=* +
table, 1
.1 2
Column2 8
<8 9
DateTime9 A
>A B
(B C
typeC G
:G H
$strI T
,T U
nullableV ^
:^ _
true` d
)d e
,e f
DataFimDiagnostico   &
=  ' (
table  ) .
.  . /
Column  / 5
<  5 6
DateTime  6 >
>  > ?
(  ? @
type  @ D
:  D E
$str  F Q
,  Q R
nullable  S [
:  [ \
true  ] a
)  a b
,  b c
DataAprovacao!! !
=!!" #
table!!$ )
.!!) *
Column!!* 0
<!!0 1
DateTime!!1 9
>!!9 :
(!!: ;
type!!; ?
:!!? @
$str!!A L
,!!L M
nullable!!N V
:!!V W
true!!X \
)!!\ ]
,!!] ^
DataInicioExecucao"" &
=""' (
table"") .
."". /
Column""/ 5
<""5 6
DateTime""6 >
>""> ?
(""? @
type""@ D
:""D E
$str""F Q
,""Q R
nullable""S [
:""[ \
true""] a
)""a b
,""b c
DataFinalizacao## #
=##$ %
table##& +
.##+ ,
Column##, 2
<##2 3
DateTime##3 ;
>##; <
(##< =
type##= A
:##A B
$str##C N
,##N O
nullable##P X
:##X Y
true##Z ^
)##^ _
,##_ `
DataEntrega$$ 
=$$  !
table$$" '
.$$' (
Column$$( .
<$$. /
DateTime$$/ 7
>$$7 8
($$8 9
type$$9 =
:$$= >
$str$$? J
,$$J K
nullable$$L T
:$$T U
true$$V Z
)$$Z [
,$$[ \
DataCancelamento%% $
=%%% &
table%%' ,
.%%, -
Column%%- 3
<%%3 4
DateTime%%4 <
>%%< =
(%%= >
type%%> B
:%%B C
$str%%D O
,%%O P
nullable%%Q Y
:%%Y Z
true%%[ _
)%%_ `
}&& 
,&& 
constraints'' 
:'' 
table'' "
=>''# %
{(( 
table)) 
.)) 

PrimaryKey)) $
())$ %
$str))% 7
,))7 8
x))9 :
=>)); =
x))> ?
.))? @
Id))@ B
)))B C
;))C D
table** 
.** 

ForeignKey** $
(**$ %
name++ 
:++ 
$str++ C
,++C D
column,, 
:,, 
x,,  !
=>,," $
x,,% &
.,,& '
	ClienteId,,' 0
,,,0 1
principalTable-- &
:--& '
$str--( 2
,--2 3
principalColumn.. '
:..' (
$str..) -
,..- .
onDelete//  
://  !
ReferentialAction//" 3
.//3 4
Restrict//4 <
)//< =
;//= >
table00 
.00 

ForeignKey00 $
(00$ %
name11 
:11 
$str11 C
,11C D
column22 
:22 
x22  !
=>22" $
x22% &
.22& '
	VeiculoId22' 0
,220 1
principalTable33 &
:33& '
$str33( 2
,332 3
principalColumn44 '
:44' (
$str44) -
,44- .
onDelete55  
:55  !
ReferentialAction55" 3
.553 4
Restrict554 <
)55< =
;55= >
}66 
)66 
;66 
migrationBuilder88 
.88 
CreateTable88 (
(88( )
name99 
:99 
$str99 .
,99. /
columns:: 
::: 
table:: 
=>:: !
new::" %
{;; 
Id<< 
=<< 
table<< 
.<< 
Column<< %
<<<% &
int<<& )
><<) *
(<<* +
type<<+ /
:<</ 0
$str<<1 6
,<<6 7
nullable<<8 @
:<<@ A
false<<B G
)<<G H
.== 

Annotation== #
(==# $
$str==$ 8
,==8 9
$str==: @
)==@ A
,==A B
OSId>> 
=>> 
table>>  
.>>  !
Column>>! '
<>>' (
int>>( +
>>>+ ,
(>>, -
type>>- 1
:>>1 2
$str>>3 8
,>>8 9
nullable>>: B
:>>B C
false>>D I
)>>I J
,>>J K
	Descricao?? 
=?? 
table??  %
.??% &
Column??& ,
<??, -
string??- 3
>??3 4
(??4 5
type??5 9
:??9 :
$str??; J
,??J K
	maxLength??L U
:??U V
$num??W Z
,??Z [
nullable??\ d
:??d e
false??f k
)??k l
,??l m
StatusOrcamento@@ #
=@@$ %
table@@& +
.@@+ ,
Column@@, 2
<@@2 3
int@@3 6
>@@6 7
(@@7 8
type@@8 <
:@@< =
$str@@> C
,@@C D
nullable@@E M
:@@M N
false@@O T
)@@T U
,@@U V"
DataAprovacaoOrcamentoAA *
=AA+ ,
tableAA- 2
.AA2 3
ColumnAA3 9
<AA9 :
DateTimeAA: B
>AAB C
(AAC D
typeAAD H
:AAH I
$strAAJ U
,AAU V
nullableAAW _
:AA_ `
trueAAa e
)AAe f
,AAf g
DataCriacaoBB 
=BB  !
tableBB" '
.BB' (
ColumnBB( .
<BB. /
DateTimeBB/ 7
>BB7 8
(BB8 9
typeBB9 =
:BB= >
$strBB? J
,BBJ K
nullableBBL T
:BBT U
falseBBV [
)BB[ \
,BB\ ]
ObservacaoMecanicoCC &
=CC' (
tableCC) .
.CC. /
ColumnCC/ 5
<CC5 6
stringCC6 <
>CC< =
(CC= >
typeCC> B
:CCB C
$strCCD T
,CCT U
	maxLengthCCV _
:CC_ `
$numCCa e
,CCe f
nullableCCg o
:CCo p
trueCCq u
)CCu v
}DD 
,DD 
constraintsEE 
:EE 
tableEE "
=>EE# %
{FF 
tableGG 
.GG 

PrimaryKeyGG $
(GG$ %
$strGG% @
,GG@ A
xGGB C
=>GGD F
xGGG H
.GGH I
IdGGI K
)GGK L
;GGL M
tableHH 
.HH 

ForeignKeyHH $
(HH$ %
nameII 
:II 
$strII L
,IIL M
columnJJ 
:JJ 
xJJ  !
=>JJ" $
xJJ% &
.JJ& '
OSIdJJ' +
,JJ+ ,
principalTableKK &
:KK& '
$strKK( 7
,KK7 8
principalColumnLL '
:LL' (
$strLL) -
,LL- .
onDeleteMM  
:MM  !
ReferentialActionMM" 3
.MM3 4
CascadeMM4 ;
)MM; <
;MM< =
}NN 
)NN 
;NN 
migrationBuilderPP 
.PP 
CreateTablePP (
(PP( )
nameQQ 
:QQ 
$strQQ ,
,QQ, -
columnsRR 
:RR 
tableRR 
=>RR !
newRR" %
{SS 
IdTT 
=TT 
tableTT 
.TT 
ColumnTT %
<TT% &
intTT& )
>TT) *
(TT* +
typeTT+ /
:TT/ 0
$strTT1 6
,TT6 7
nullableTT8 @
:TT@ A
falseTTB G
)TTG H
.UU 

AnnotationUU #
(UU# $
$strUU$ 8
,UU8 9
$strUU: @
)UU@ A
,UUA B
OSIdVV 
=VV 
tableVV  
.VV  !
ColumnVV! '
<VV' (
intVV( +
>VV+ ,
(VV, -
typeVV- 1
:VV1 2
$strVV3 8
,VV8 9
nullableVV: B
:VVB C
falseVVD I
)VVI J
,VVJ K
OSOrcamentoIdWW !
=WW" #
tableWW$ )
.WW) *
ColumnWW* 0
<WW0 1
intWW1 4
>WW4 5
(WW5 6
typeWW6 :
:WW: ;
$strWW< A
,WWA B
nullableWWC K
:WWK L
trueWWM Q
)WWQ R
,WWR S
	ProdutoIdXX 
=XX 
tableXX  %
.XX% &
ColumnXX& ,
<XX, -
intXX- 0
>XX0 1
(XX1 2
typeXX2 6
:XX6 7
$strXX8 =
,XX= >
nullableXX? G
:XXG H
falseXXI N
)XXN O
,XXO P

QuantidadeYY 
=YY  
tableYY! &
.YY& '
ColumnYY' -
<YY- .
intYY. 1
>YY1 2
(YY2 3
typeYY3 7
:YY7 8
$strYY9 >
,YY> ?
	precisionYY@ I
:YYI J
$numYYK M
,YYM N
scaleYYO T
:YYT U
$numYYV W
,YYW X
nullableYYY a
:YYa b
falseYYc h
)YYh i
,YYi j
PrecoPraticadoZZ "
=ZZ# $
tableZZ% *
.ZZ* +
ColumnZZ+ 1
<ZZ1 2
decimalZZ2 9
>ZZ9 :
(ZZ: ;
typeZZ; ?
:ZZ? @
$strZZA P
,ZZP Q
	precisionZZR [
:ZZ[ \
$numZZ] _
,ZZ_ `
scaleZZa f
:ZZf g
$numZZh i
,ZZi j
nullableZZk s
:ZZs t
falseZZu z
)ZZz {
,ZZ{ |

StatusItem[[ 
=[[  
table[[! &
.[[& '
Column[[' -
<[[- .
int[[. 1
>[[1 2
([[2 3
type[[3 7
:[[7 8
$str[[9 >
,[[> ?
nullable[[@ H
:[[H I
false[[J O
)[[O P
}\\ 
,\\ 
constraints]] 
:]] 
table]] "
=>]]# %
{^^ 
table__ 
.__ 

PrimaryKey__ $
(__$ %
$str__% >
,__> ?
x__@ A
=>__B D
x__E F
.__F G
Id__G I
)__I J
;__J K
table`` 
.`` 

ForeignKey`` $
(``$ %
nameaa 
:aa 
$straa Z
,aaZ [
columnbb 
:bb 
xbb  !
=>bb" $
xbb% &
.bb& '
OSOrcamentoIdbb' 4
,bb4 5
principalTablecc &
:cc& '
$strcc( @
,cc@ A
principalColumndd '
:dd' (
$strdd) -
,dd- .
onDeleteee  
:ee  !
ReferentialActionee" 3
.ee3 4
Restrictee4 <
)ee< =
;ee= >
tableff 
.ff 

ForeignKeyff $
(ff$ %
namegg 
:gg 
$strgg J
,ggJ K
columnhh 
:hh 
xhh  !
=>hh" $
xhh% &
.hh& '
OSIdhh' +
,hh+ ,
principalTableii &
:ii& '
$strii( 7
,ii7 8
principalColumnjj '
:jj' (
$strjj) -
,jj- .
onDeletekk  
:kk  !
ReferentialActionkk" 3
.kk3 4
Cascadekk4 ;
)kk; <
;kk< =
tablell 
.ll 

ForeignKeyll $
(ll$ %
namemm 
:mm 
$strmm J
,mmJ K
columnnn 
:nn 
xnn  !
=>nn" $
xnn% &
.nn& '
	ProdutoIdnn' 0
,nn0 1
principalTableoo &
:oo& '
$stroo( 2
,oo2 3
principalColumnpp '
:pp' (
$strpp) -
,pp- .
onDeleteqq  
:qq  !
ReferentialActionqq" 3
.qq3 4
Restrictqq4 <
)qq< =
;qq= >
}rr 
)rr 
;rr 
migrationBuildertt 
.tt 
CreateTablett (
(tt( )
nameuu 
:uu 
$struu ,
,uu, -
columnsvv 
:vv 
tablevv 
=>vv !
newvv" %
{ww 
Idxx 
=xx 
tablexx 
.xx 
Columnxx %
<xx% &
intxx& )
>xx) *
(xx* +
typexx+ /
:xx/ 0
$strxx1 6
,xx6 7
nullablexx8 @
:xx@ A
falsexxB G
)xxG H
.yy 

Annotationyy #
(yy# $
$stryy$ 8
,yy8 9
$stryy: @
)yy@ A
,yyA B
OSIdzz 
=zz 
tablezz  
.zz  !
Columnzz! '
<zz' (
intzz( +
>zz+ ,
(zz, -
typezz- 1
:zz1 2
$strzz3 8
,zz8 9
nullablezz: B
:zzB C
falsezzD I
)zzI J
,zzJ K
OSOrcamentoId{{ !
={{" #
table{{$ )
.{{) *
Column{{* 0
<{{0 1
int{{1 4
>{{4 5
({{5 6
type{{6 :
:{{: ;
$str{{< A
,{{A B
nullable{{C K
:{{K L
true{{M Q
){{Q R
,{{R S
	ServicoId|| 
=|| 
table||  %
.||% &
Column||& ,
<||, -
int||- 0
>||0 1
(||1 2
type||2 6
:||6 7
$str||8 =
,||= >
nullable||? G
:||G H
false||I N
)||N O
,||O P
PrecoPraticado}} "
=}}# $
table}}% *
.}}* +
Column}}+ 1
<}}1 2
decimal}}2 9
>}}9 :
(}}: ;
type}}; ?
:}}? @
$str}}A P
,}}P Q
	precision}}R [
:}}[ \
$num}}] _
,}}_ `
scale}}a f
:}}f g
$num}}h i
,}}i j
nullable}}k s
:}}s t
false}}u z
)}}z {
}~~ 
,~~ 
constraints 
: 
table "
=># %
{
ÄÄ 
table
ÅÅ 
.
ÅÅ 

PrimaryKey
ÅÅ $
(
ÅÅ$ %
$str
ÅÅ% >
,
ÅÅ> ?
x
ÅÅ@ A
=>
ÅÅB D
x
ÅÅE F
.
ÅÅF G
Id
ÅÅG I
)
ÅÅI J
;
ÅÅJ K
table
ÇÇ 
.
ÇÇ 

ForeignKey
ÇÇ $
(
ÇÇ$ %
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ Z
,
ÉÉZ [
column
ÑÑ 
:
ÑÑ 
x
ÑÑ  !
=>
ÑÑ" $
x
ÑÑ% &
.
ÑÑ& '
OSOrcamentoId
ÑÑ' 4
,
ÑÑ4 5
principalTable
ÖÖ &
:
ÖÖ& '
$str
ÖÖ( @
,
ÖÖ@ A
principalColumn
ÜÜ '
:
ÜÜ' (
$str
ÜÜ) -
,
ÜÜ- .
onDelete
áá  
:
áá  !
ReferentialAction
áá" 3
.
áá3 4
Restrict
áá4 <
)
áá< =
;
áá= >
table
àà 
.
àà 

ForeignKey
àà $
(
àà$ %
name
ââ 
:
ââ 
$str
ââ J
,
ââJ K
column
ää 
:
ää 
x
ää  !
=>
ää" $
x
ää% &
.
ää& '
OSId
ää' +
,
ää+ ,
principalTable
ãã &
:
ãã& '
$str
ãã( 7
,
ãã7 8
principalColumn
åå '
:
åå' (
$str
åå) -
,
åå- .
onDelete
çç  
:
çç  !
ReferentialAction
çç" 3
.
çç3 4
Cascade
çç4 ;
)
çç; <
;
çç< =
table
éé 
.
éé 

ForeignKey
éé $
(
éé$ %
name
èè 
:
èè 
$str
èè J
,
èèJ K
column
êê 
:
êê 
x
êê  !
=>
êê" $
x
êê% &
.
êê& '
	ServicoId
êê' 0
,
êê0 1
principalTable
ëë &
:
ëë& '
$str
ëë( 2
,
ëë2 3
principalColumn
íí '
:
íí' (
$str
íí) -
,
íí- .
onDelete
ìì  
:
ìì  !
ReferentialAction
ìì" 3
.
ìì3 4
Restrict
ìì4 <
)
ìì< =
;
ìì= >
}
îî 
)
îî 
;
îî 
migrationBuilder
ññ 
.
ññ 
CreateTable
ññ (
(
ññ( )
name
óó 
:
óó 
$str
óó /
,
óó/ 0
columns
òò 
:
òò 
table
òò 
=>
òò !
new
òò" %
{
ôô 
Id
öö 
=
öö 
table
öö 
.
öö 
Column
öö %
<
öö% &
int
öö& )
>
öö) *
(
öö* +
type
öö+ /
:
öö/ 0
$str
öö1 6
,
öö6 7
nullable
öö8 @
:
öö@ A
false
ööB G
)
ööG H
.
õõ 

Annotation
õõ #
(
õõ# $
$str
õõ$ 8
,
õõ8 9
$str
õõ: @
)
õõ@ A
,
õõA B
OSId
úú 
=
úú 
table
úú  
.
úú  !
Column
úú! '
<
úú' (
int
úú( +
>
úú+ ,
(
úú, -
type
úú- 1
:
úú1 2
$str
úú3 8
,
úú8 9
nullable
úú: B
:
úúB C
false
úúD I
)
úúI J
,
úúJ K
OSServicoId
ùù 
=
ùù  !
table
ùù" '
.
ùù' (
Column
ùù( .
<
ùù. /
int
ùù/ 2
>
ùù2 3
(
ùù3 4
type
ùù4 8
:
ùù8 9
$str
ùù: ?
,
ùù? @
nullable
ùùA I
:
ùùI J
false
ùùK P
)
ùùP Q
,
ùùQ R
AcaoLog
ûû 
=
ûû 
table
ûû #
.
ûû# $
Column
ûû$ *
<
ûû* +
int
ûû+ .
>
ûû. /
(
ûû/ 0
type
ûû0 4
:
ûû4 5
$str
ûû6 ;
,
ûû; <
nullable
ûû= E
:
ûûE F
false
ûûG L
)
ûûL M
,
ûûM N
DataCriacao
üü 
=
üü  !
table
üü" '
.
üü' (
Column
üü( .
<
üü. /
DateTime
üü/ 7
>
üü7 8
(
üü8 9
type
üü9 =
:
üü= >
$str
üü? J
,
üüJ K
nullable
üüL T
:
üüT U
false
üüV [
)
üü[ \
}
†† 
,
†† 
constraints
°° 
:
°° 
table
°° "
=>
°°# %
{
¢¢ 
table
££ 
.
££ 

PrimaryKey
££ $
(
££$ %
$str
££% A
,
££A B
x
££C D
=>
££E G
x
££H I
.
££I J
Id
££J L
)
££L M
;
££M N
table
§§ 
.
§§ 

ForeignKey
§§ $
(
§§$ %
name
•• 
:
•• 
$str
•• [
,
••[ \
column
¶¶ 
:
¶¶ 
x
¶¶  !
=>
¶¶" $
x
¶¶% &
.
¶¶& '
OSServicoId
¶¶' 2
,
¶¶2 3
principalTable
ßß &
:
ßß& '
$str
ßß( >
,
ßß> ?
principalColumn
®® '
:
®®' (
$str
®®) -
,
®®- .
onDelete
©©  
:
©©  !
ReferentialAction
©©" 3
.
©©3 4
Cascade
©©4 ;
)
©©; <
;
©©< =
table
™™ 
.
™™ 

ForeignKey
™™ $
(
™™$ %
name
´´ 
:
´´ 
$str
´´ M
,
´´M N
column
¨¨ 
:
¨¨ 
x
¨¨  !
=>
¨¨" $
x
¨¨% &
.
¨¨& '
OSId
¨¨' +
,
¨¨+ ,
principalTable
≠≠ &
:
≠≠& '
$str
≠≠( 7
,
≠≠7 8
principalColumn
ÆÆ '
:
ÆÆ' (
$str
ÆÆ) -
)
ÆÆ- .
;
ÆÆ. /
}
ØØ 
)
ØØ 
;
ØØ 
migrationBuilder
±± 
.
±± 
CreateIndex
±± (
(
±±( )
name
≤≤ 
:
≤≤ 
$str
≤≤ 6
,
≤≤6 7
table
≥≥ 
:
≥≥ 
$str
≥≥ /
,
≥≥/ 0
column
¥¥ 
:
¥¥ 
$str
¥¥ 
)
¥¥ 
;
¥¥  
migrationBuilder
∂∂ 
.
∂∂ 
CreateIndex
∂∂ (
(
∂∂( )
name
∑∑ 
:
∑∑ 
$str
∑∑ 4
,
∑∑4 5
table
∏∏ 
:
∏∏ 
$str
∏∏ -
,
∏∏- .
column
ππ 
:
ππ 
$str
ππ 
)
ππ 
;
ππ  
migrationBuilder
ªª 
.
ªª 
CreateIndex
ªª (
(
ªª( )
name
ºº 
:
ºº 
$str
ºº ;
,
ºº; <
table
ΩΩ 
:
ΩΩ 
$str
ΩΩ -
,
ΩΩ- .
column
ææ 
:
ææ 
$str
ææ '
)
ææ' (
;
ææ( )
migrationBuilder
¿¿ 
.
¿¿ 
CreateIndex
¿¿ (
(
¿¿( )
name
¡¡ 
:
¡¡ 
$str
¡¡ 9
,
¡¡9 :
table
¬¬ 
:
¬¬ 
$str
¬¬ -
,
¬¬- .
column
√√ 
:
√√ 
$str
√√ #
)
√√# $
;
√√$ %
migrationBuilder
≈≈ 
.
≈≈ 
CreateIndex
≈≈ (
(
≈≈( )
name
∆∆ 
:
∆∆ 
$str
∆∆ 7
,
∆∆7 8
table
«« 
:
«« 
$str
«« 0
,
««0 1
column
»» 
:
»» 
$str
»» 
)
»» 
;
»»  
migrationBuilder
   
.
   
CreateIndex
   (
(
  ( )
name
ÀÀ 
:
ÀÀ 
$str
ÀÀ >
,
ÀÀ> ?
table
ÃÃ 
:
ÃÃ 
$str
ÃÃ 0
,
ÃÃ0 1
column
ÕÕ 
:
ÕÕ 
$str
ÕÕ %
)
ÕÕ% &
;
ÕÕ& '
migrationBuilder
œœ 
.
œœ 
CreateIndex
œœ (
(
œœ( )
name
–– 
:
–– 
$str
–– 4
,
––4 5
table
—— 
:
—— 
$str
—— -
,
——- .
column
““ 
:
““ 
$str
““ 
)
““ 
;
““  
migrationBuilder
‘‘ 
.
‘‘ 
CreateIndex
‘‘ (
(
‘‘( )
name
’’ 
:
’’ 
$str
’’ ;
,
’’; <
table
÷÷ 
:
÷÷ 
$str
÷÷ -
,
÷÷- .
column
◊◊ 
:
◊◊ 
$str
◊◊ '
)
◊◊' (
;
◊◊( )
migrationBuilder
ŸŸ 
.
ŸŸ 
CreateIndex
ŸŸ (
(
ŸŸ( )
name
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ 9
,
⁄⁄9 :
table
€€ 
:
€€ 
$str
€€ -
,
€€- .
column
‹‹ 
:
‹‹ 
$str
‹‹ #
)
‹‹# $
;
‹‹$ %
migrationBuilder
ﬁﬁ 
.
ﬁﬁ 
CreateIndex
ﬁﬁ (
(
ﬁﬁ( )
name
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ 2
,
ﬂﬂ2 3
table
‡‡ 
:
‡‡ 
$str
‡‡ &
,
‡‡& '
column
·· 
:
·· 
$str
·· #
)
··# $
;
··$ %
migrationBuilder
„„ 
.
„„ 
CreateIndex
„„ (
(
„„( )
name
‰‰ 
:
‰‰ 
$str
‰‰ 2
,
‰‰2 3
table
ÂÂ 
:
ÂÂ 
$str
ÂÂ &
,
ÂÂ& '
column
ÊÊ 
:
ÊÊ 
$str
ÊÊ #
)
ÊÊ# $
;
ÊÊ$ %
}
ÁÁ 	
	protected
ÍÍ 
override
ÍÍ 
void
ÍÍ 
Down
ÍÍ  $
(
ÍÍ$ %
MigrationBuilder
ÍÍ% 5
migrationBuilder
ÍÍ6 F
)
ÍÍF G
{
ÎÎ 	
migrationBuilder
ÏÏ 
.
ÏÏ 
	DropTable
ÏÏ &
(
ÏÏ& '
name
ÌÌ 
:
ÌÌ 
$str
ÌÌ ,
)
ÌÌ, -
;
ÌÌ- .
migrationBuilder
ÔÔ 
.
ÔÔ 
	DropTable
ÔÔ &
(
ÔÔ& '
name
 
:
 
$str
 /
)
/ 0
;
0 1
migrationBuilder
ÚÚ 
.
ÚÚ 
	DropTable
ÚÚ &
(
ÚÚ& '
name
ÛÛ 
:
ÛÛ 
$str
ÛÛ ,
)
ÛÛ, -
;
ÛÛ- .
migrationBuilder
ıı 
.
ıı 
	DropTable
ıı &
(
ıı& '
name
ˆˆ 
:
ˆˆ 
$str
ˆˆ .
)
ˆˆ. /
;
ˆˆ/ 0
migrationBuilder
¯¯ 
.
¯¯ 
	DropTable
¯¯ &
(
¯¯& '
name
˘˘ 
:
˘˘ 
$str
˘˘ %
)
˘˘% &
;
˘˘& '
}
˙˙ 	
}
˚˚ 
}¸¸ ∑
éC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Data\Migrations\20260512043952_AddOrderTable.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Data" &
.& '

Migrations' 1
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

partial

 
class

 
AddOrderTable

 &
:

' (
	Migration

) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ø
íC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Data\Migrations\20260512050156_RenameOrcamentoId.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Data" &
.& '

Migrations' 1
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

partial

 
class

 
RenameOrcamentoId

 *
:

+ ,
	Migration

- 6
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} £*
ÄC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Repositories\ClienteRepository.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Repositories" .
{ 
public 

class 
ClienteRepository "
:# $
IClienteRepository% 7
{		 
private

 
readonly

 
AppDbContext

 %
_context

& .
;

. /
public 
ClienteRepository  
(  !
AppDbContext! -
context. 5
)5 6
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
List 
< 
Cliente &
>& '
>' (
ListarTodosAsync) 9
(9 :
string: @
?@ A
cpfCnpjB I
)I J
{ 	
var 
query 
= 
_context  
.  !
Clientes! )
.) *
AsQueryable* 5
(5 6
)6 7
;7 8
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
cpfCnpj+ 2
)2 3
)3 4
{ 
var 

normalized 
=  
new! $
string% +
(+ ,
cpfCnpj, 3
.3 4
Where4 9
(9 :
char: >
.> ?
IsDigit? F
)F G
.G H
ToArrayH O
(O P
)P Q
)Q R
;R S
query 
= 
query 
. 
Where #
(# $
c$ %
=>& (
c) *
.* +
CpfCnpj+ 2
.2 3
Value3 8
.8 9
Contains9 A
(A B

normalizedB L
)L M
)M N
;N O
} 
return 
await 
query 
. 
ToListAsync *
(* +
)+ ,
;, -
} 	
public 
async 
Task 
< 
Cliente !
?! "
>" #
ListarPorIdAsync$ 4
(4 5
int5 8
id9 ;
); <
=>   
await   
_context   
.   
Clientes   &
.  & '
	FindAsync  ' 0
(  0 1
id  1 3
)  3 4
;  4 5
public"" 
async"" 
Task"" 
AdicionarAsync"" (
(""( )
Cliente"") 0
cliente""1 8
)""8 9
{## 	
_context$$ 
.$$ 
Clientes$$ 
.$$ 
Add$$ !
($$! "
cliente$$" )
)$$) *
;$$* +
await%% 
_context%% 
.%% 
SaveChangesAsync%% +
(%%+ ,
)%%, -
;%%- .
}&& 	
public(( 
async(( 
Task(( 
AtualizarAsync(( (
(((( )
Cliente(() 0
cliente((1 8
)((8 9
{)) 	
_context** 
.** 
Clientes** 
.** 
Update** $
(**$ %
cliente**% ,
)**, -
;**- .
await++ 
_context++ 
.++ 
SaveChangesAsync++ +
(+++ ,
)++, -
;++- .
},, 	
public.. 
async.. 
Task.. 
ExcluirAsync.. &
(..& '
int..' *
id..+ -
)..- .
{// 	
var00 
cliente00 
=00 
await00 
_context00  (
.00( )
Clientes00) 1
.001 2
	FindAsync002 ;
(00; <
id00< >
)00> ?
;00? @
if11 
(11 
cliente11 
is11 
null11 
)11  
return11! '
;11' (
_context33 
.33 
Clientes33 
.33 
Remove33 $
(33$ %
cliente33% ,
)33, -
;33- .
await44 
_context44 
.44 
SaveChangesAsync44 +
(44+ ,
)44, -
;44- .
}55 	
public77 
async77 
Task77 
<77 
bool77 
>77 
ExisteCpfCnpjAsync77  2
(772 3
string773 9
cpfCnpj77: A
)77A B
{88 	
var99 

normalized99 
=99 
new99  
string99! '
(99' (
cpfCnpj99( /
.99/ 0
Where990 5
(995 6
char996 :
.99: ;
IsDigit99; B
)99B C
.99C D
ToArray99D K
(99K L
)99L M
)99M N
;99N O
return;; 
await;; 
_context;; !
.;;! "
Clientes;;" *
.<< 
AnyAsync<< 
(<< 
c<< 
=><< 
c<<  
.<<  !
CpfCnpj<<! (
.<<( )
Value<<) .
==<</ 1

normalized<<2 <
)<<< =
;<<= >
}== 	
}>> 
}?? ò
éC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Repositories\OrdemServicoOrcamentoRepository.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Repositories" .
{ 
public 

class +
OrdemServicoOrcamentoRepository 0
:1 2,
 IOrdemServicoOrcamentoRepository3 S
{		 
private

 
readonly

 
AppDbContext

 %
_context

& .
;

. /
public +
OrdemServicoOrcamentoRepository .
(. /
AppDbContext/ ;
context< C
)C D
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
AdicionarAsync (
(( )!
OrdemServicoOrcamento) >
entity? E
)E F
{ 	
await 
_context 
. "
OrdemServicoOrcamentos 1
.1 2
AddAsync2 :
(: ;
entity; A
)A B
;B C
} 	
public 
async 
Task 
< !
OrdemServicoOrcamento /
?/ 0
>0 1
ObterPorIdAsync2 A
(A B
intB E
idF H
)H I
{ 	
return 
await 
_context !
.! ""
OrdemServicoOrcamentos" 8
. 
Include 
( 
x 
=> 
x 
.  
OrdemServico  ,
), -
. 
Include 
( 
x 
=> 
x 
.  
Produtos  (
)( )
. 
Include 
( 
x 
=> 
x 
.  
Servicos  (
)( )
. 
ThenInclude  
(  !
s! "
=># %
s& '
.' (
Logs( ,
), -
. 
FirstOrDefaultAsync $
($ %
x% &
=>' )
x* +
.+ ,
Id, .
==/ 1
id2 4
)4 5
;5 6
} 	
public   
Task   
AtualizarAsync   "
(  " #!
OrdemServicoOrcamento  # 8
entity  9 ?
)  ? @
{!! 	
_context"" 
."" "
OrdemServicoOrcamentos"" +
.""+ ,
Update"", 2
(""2 3
entity""3 9
)""9 :
;"": ;
return## 
Task## 
.## 
CompletedTask## %
;##% &
}$$ 	
}&& 
}'' Ô
åC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Repositories\OrdemServicoProdutoRepository.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Repositories" .
{ 
public 

class )
OrdemServicoProdutoRepository .
:/ 0*
IOrdemServicoProdutoRepository1 O
{		 
private

 
readonly

 
AppDbContext

 %
_context

& .
;

. /
public )
OrdemServicoProdutoRepository ,
(, -
AppDbContext- 9
context: A
)A B
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
AdicionarAsync (
(( )
OrdemServicoProduto) <
entity= C
)C D
{ 	
await 
_context 
.  
OrdemServicoProdutos /
./ 0
AddAsync0 8
(8 9
entity9 ?
)? @
;@ A
} 	
public 
async 
Task 
< 
List 
< 
OrdemServicoProduto 2
>2 3
>3 4%
ListarPorOrcamentoIdAsync5 N
(N O
intO R
orcamentoIdS ^
)^ _
{ 	
return 
await 
_context !
.! " 
OrdemServicoProdutos" 6
. 
Include 
( 
x 
=> 
x 
.  
Produto  '
)' (
. 
Include 
( 
x 
=> 
x 
.  
OrdemServico  ,
), -
. 
Include 
( 
x 
=> 
x 
.  
	Orcamento  )
)) *
. 
Where 
( 
x 
=> 
x 
. 
OSOrcamentoId +
==, .
orcamentoId/ :
): ;
. 
ToListAsync 
( 
) 
; 
} 	
public   
Task   
AtualizarAsync   "
(  " #
OrdemServicoProduto  # 6
entity  7 =
)  = >
{!! 	
_context"" 
.""  
OrdemServicoProdutos"" )
."") *
Update""* 0
(""0 1
entity""1 7
)""7 8
;""8 9
return## 
Task## 
.## 
CompletedTask## %
;##% &
}$$ 	
}%% 
}&& ˛\
ÖC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Repositories\OrdemServicoRepository.cs
	namespace		 	
Mechanic		
 
.		 
Infrastructure		 !
.		! "
Repositories		" .
{

 
public 

class "
OrdemServicoRepository '
:( )#
IOrdemServicoRepository* A
{ 
private 
readonly 
AppDbContext %
_context& .
;. /
public "
OrdemServicoRepository %
(% &
AppDbContext& 2
context3 :
): ;
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
AdicionarAsync (
(( )
OrdemServico) 5
os6 8
)8 9
{ 	
await 
_context 
. 
OrdensServico (
.( )
AddAsync) 1
(1 2
os2 4
)4 5
;5 6
} 	
public 
async 
Task 
< 
List 
< 
OrdemServico +
>+ ,
>, -
ListarAsync. 9
(9 :'
ListarOrdemServicoParamsDto: U
dtoV Y
)Y Z
{ 	
var 
query 
= 
_context  
.  !
OrdensServico! .
. 
Include 
( 
x 
=> 
x 
.  
Cliente  '
)' (
. 
Include 
( 
x 
=> 
x 
.  
Veiculo  '
)' (
. 
Include 
( 
x 
=> 
x 
.  

Orcamentos  *
)* +
. 
ThenInclude  
(  !
o! "
=># %
o& '
.' (
Produtos( 0
)0 1
.   
ThenInclude   $
(  $ %
s  % &
=>  ' )
s  * +
.  + ,
Produto  , 3
)  3 4
.!! 
Include!! 
(!! 
x!! 
=>!! 
x!! 
.!!  

Orcamentos!!  *
)!!* +
."" 
ThenInclude""  
(""  !
o""! "
=>""# %
o""& '
.""' (
Servicos""( 0
)""0 1
.## 
ThenInclude## $
(##$ %
s##% &
=>##' )
s##* +
.##+ ,
Servico##, 3
)##3 4
.$$ 
Include$$ 
($$ 
x$$ 
=>$$ 
x$$ 
.$$  
Servicos$$  (
)$$( )
.%% 
ThenInclude%%  
(%%  !
s%%! "
=>%%# %
s%%& '
.%%' (
Logs%%( ,
)%%, -
.&& 
AsQueryable&& 
(&& 
)&& 
;&& 
if(( 
((( 
dto(( 
.(( 
OsId(( 
.(( 
HasValue(( !
)((! "
query)) 
=)) 
query)) 
.)) 
Where)) #
())# $
x))$ %
=>))& (
x))) *
.))* +
Id))+ -
==)). 0
dto))1 4
.))4 5
OsId))5 9
.))9 :
Value)): ?
)))? @
;))@ A
if++ 
(++ 
dto++ 
.++ 
Status++ 
.++ 
HasValue++ #
)++# $
query,, 
=,, 
query,, 
.,, 
Where,, #
(,,# $
x,,$ %
=>,,& (
x,,) *
.,,* +
Status,,+ 1
==,,2 4
dto,,5 8
.,,8 9
Status,,9 ?
.,,? @
Value,,@ E
),,E F
;,,F G
if.. 
(.. 
!.. 
string.. 
... 
IsNullOrWhiteSpace.. *
(..* +
dto..+ .
.... /
CpfCnpj../ 6
)..6 7
)..7 8
query// 
=// 
query// 
.// 
Where// #
(//# $
x//$ %
=>//& (
x//) *
.//* +
Cliente//+ 2
.//2 3
CpfCnpj//3 :
.//: ;
Value//; @
==//A C
dto//D G
.//G H
CpfCnpj//H O
)//O P
;//P Q
if11 
(11 
!11 
string11 
.11 
IsNullOrWhiteSpace11 *
(11* +
dto11+ .
.11. /
Placa11/ 4
)114 5
)115 6
query22 
=22 
query22 
.22 
Where22 #
(22# $
x22$ %
=>22& (
x22) *
.22* +
Veiculo22+ 2
.222 3
Placa223 8
==229 ;
dto22< ?
.22? @
Placa22@ E
)22E F
;22F G
return44 
await44 
query44 
.44 
ToListAsync44 *
(44* +
)44+ ,
;44, -
}55 	
public77 
async77 
Task77 
<77 
OrdemServico77 &
?77& '
>77' (
ObterPorIdAsync77) 8
(778 9
int779 <
id77= ?
)77? @
{88 	
return99 
await99 
_context99 !
.99! "
OrdensServico99" /
.:: 
Include:: 
(:: 
x:: 
=>:: 
x:: 
.::  
Cliente::  '
)::' (
.;; 
Include;; 
(;; 
x;; 
=>;; 
x;; 
.;;  
Veiculo;;  '
);;' (
.<< 
Include<< 
(<< 
x<< 
=><< 
x<< 
.<<  

Orcamentos<<  *
)<<* +
.== 
ThenInclude==  
(==  !
o==! "
=>==# %
o==& '
.==' (
Produtos==( 0
)==0 1
.>> 
ThenInclude>> $
(>>$ %
s>>% &
=>>>' )
s>>* +
.>>+ ,
Produto>>, 3
)>>3 4
.?? 
Include?? 
(?? 
x?? 
=>?? 
x?? 
.??  

Orcamentos??  *
)??* +
.@@ 
ThenInclude@@  
(@@  !
o@@! "
=>@@# %
o@@& '
.@@' (
Servicos@@( 0
)@@0 1
.AA 
ThenIncludeAA $
(AA$ %
sAA% &
=>AA' )
sAA* +
.AA+ ,
ServicoAA, 3
)AA3 4
.BB 
IncludeBB 
(BB 
xBB 
=>BB 
xBB 
.BB  
ServicosBB  (
)BB( )
.CC 
ThenIncludeCC  
(CC  !
sCC! "
=>CC# %
sCC& '
.CC' (
LogsCC( ,
)CC, -
.DD 
FirstOrDefaultAsyncDD $
(DD$ %
xDD% &
=>DD' )
xDD* +
.DD+ ,
IdDD, .
==DD/ 1
idDD2 4
)DD4 5
;DD5 6
}EE 	
publicFF 
asyncFF 
TaskFF 
<FF 
OrdemServicoFF &
?FF& '
>FF' ( 
ObterPorComHashAsyncFF) =
(FF= >
stringFF> D
hashExternoFFE P
)FFP Q
{GG 	
returnHH 
awaitHH 
_contextHH !
.HH! "
OrdensServicoHH" /
.II 
IncludeII 
(II 
xII 
=>II 
xII 
.II  
ClienteII  '
)II' (
.JJ 
IncludeJJ 
(JJ 
xJJ 
=>JJ 
xJJ 
.JJ  
VeiculoJJ  '
)JJ' (
.LL 
IncludeLL 
(LL 
xLL 
=>LL 
xLL 
.LL  

OrcamentosLL  *
)LL* +
.MM 
ThenIncludeMM  
(MM  !
oMM! "
=>MM# %
oMM& '
.MM' (
ProdutosMM( 0
)MM0 1
.NN 
ThenIncludeNN $
(NN$ %
sNN% &
=>NN' )
sNN* +
.NN+ ,
ProdutoNN, 3
)NN3 4
.OO 
IncludeOO 
(OO 
xOO 
=>OO 
xOO 
.OO  

OrcamentosOO  *
)OO* +
.PP 
ThenIncludePP  
(PP  !
oPP! "
=>PP# %
oPP& '
.PP' (
ServicosPP( 0
)PP0 1
.QQ 
ThenIncludeQQ $
(QQ$ %
sQQ% &
=>QQ' )
sQQ* +
.QQ+ ,
ServicoQQ, 3
)QQ3 4
.RR 
IncludeRR 
(RR 
xRR 
=>RR 
xRR 
.RR  
ServicosRR  (
)RR( )
.SS 
ThenIncludeSS  
(SS  !
sSS! "
=>SS# %
sSS& '
.SS' (
LogsSS( ,
)SS, -
.TT 
FirstOrDefaultAsyncTT $
(TT$ %
xTT% &
=>TT' )
xTT* +
.TT+ ,

PublicHashTT, 6
==TT7 9
hashExternoTT: E
)TTE F
;TTF G
}UU 	
publicWW 
TaskWW 
AtualizarAsyncWW "
(WW" #
OrdemServicoWW# /
osWW0 2
)WW2 3
{XX 	
_contextYY 
.YY 
OrdensServicoYY "
.YY" #
UpdateYY# )
(YY) *
osYY* ,
)YY, -
;YY- .
returnZZ 
TaskZZ 
.ZZ 
CompletedTaskZZ %
;ZZ% &
}[[ 	
public]] 
async]] 
Task]] 
SalvarAsync]] %
(]]% &
)]]& '
{^^ 	
await__ 
_context__ 
.__ 
SaveChangesAsync__ +
(__+ ,
)__, -
;__- .
}`` 	
publicbb 
asyncbb 
Taskbb 
<bb 
OrdemServicobb &
?bb& '
>bb' (!
ObterComServicosAsyncbb) >
(bb> ?
intbb? B
osIdbbC G
)bbG H
{cc 	
returndd 
awaitdd 
_contextdd !
.dd! "
OrdensServicodd" /
.ee 
AsNoTrackingee 
(ee 
)ee 
.ff 
Includeff 
(ff 
xff 
=>ff 
xff 
.ff 
Servicosff $
)ff$ %
.gg 
ThenIncludegg 
(gg 
sgg 
=>gg !
sgg" #
.gg# $
Logsgg$ (
)gg( )
.hh 
FirstOrDefaultAsynchh  
(hh  !
xhh! "
=>hh# %
xhh& '
.hh' (
Idhh( *
==hh+ -
osIdhh. 2
)hh2 3
;hh3 4
}ii 	
publickk 
asynckk 
Taskkk 
<kk 
Listkk 
<kk 
OrdemServicokk +
>kk+ ,
>kk, -!
ObterFinalizadasAsynckk. C
(kkC D
)kkD E
{ll 	
returnmm 
awaitmm 
_contextmm !
.mm! "
OrdensServicomm" /
.nn 
Wherenn 
(nn 
xnn 
=>nn 
xnn 
.nn 
Statusnn $
==nn% '
StatusOrdemServiconn( :
.nn: ;
Entreguenn; C
||oo 
xoo 
.oo 
Statusoo $
==oo% '
StatusOrdemServicooo( :
.oo: ;

Finalizadaoo; E
)ooE F
.pp 
ToListAsyncpp 
(pp 
)pp 
;pp 
}qq 	
}ss 
}tt À
èC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Repositories\OrdemServicoServicoLogRepository.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Repositories" .
{ 
public 

class ,
 OrdemServicoServicoLogRepository 1
:2 3-
!IOrdemServicoServicoLogRepository4 U
{		 
private

 
readonly

 
AppDbContext

 %
_context

& .
;

. /
public ,
 OrdemServicoServicoLogRepository /
(/ 0
AppDbContext0 <
context= D
)D E
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
List 
< "
OrdemServicoServicoLog 5
>5 6
>6 7"
ObterLogsServicosAsync8 N
(N O
)O P
{ 	
return 
await 
_context !
.! "#
OrdemServicoServicoLogs" 9
. 
Include 
( 
x 
=> 
x 
.  
OrdemServicoServico  3
)3 4
. 
ThenInclude  
(  !
s! "
=># %
s& '
.' (
Servico( /
)/ 0
. 
ToListAsync 
( 
) 
; 
} 	
public 
async 
Task 
AdicionarAsync (
(( )"
OrdemServicoServicoLog) ?
log@ C
)C D
{ 	
await 
_context 
. #
OrdemServicoServicoLogs 2
.2 3
AddAsync3 ;
(; <
log< ?
)? @
;@ A
} 	
} 
} ∂	
åC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Repositories\OrdemServicoServicoRepository.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Repositories" .
{ 
public 

class )
OrdemServicoServicoRepository .
:/ 0*
IOrdemServicoServicoRepository1 O
{ 
private		 
readonly		 
AppDbContext		 %
_context		& .
;		. /
public )
OrdemServicoServicoRepository ,
(, -
AppDbContext- 9
context: A
)A B
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
AdicionarAsync (
(( )
OrdemServicoServico) <
entity= C
)C D
{ 	
await 
_context 
.  
OrdemServicoServicos /
./ 0
AddAsync0 8
(8 9
entity9 ?
)? @
;@ A
} 	
} 
} ã$
ÄC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Repositories\ProdutoRepository.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Repositories" .
{ 
public 

class 
ProdutoRepository "
:# $
IProdutoRepository% 7
{		 
private

 
readonly

 
AppDbContext

 %
_context

& .
;

. /
public 
ProdutoRepository  
(  !
AppDbContext! -
context. 5
)5 6
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
List 
< 
Produto &
>& '
>' (
ListarTodosAsync) 9
(9 :
string: @
?@ A
skuB E
)E F
{ 	
var 
query 
= 
_context  
.  !
Produtos! )
.) *
AsQueryable* 5
(5 6
)6 7
;7 8
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
sku+ .
). /
)/ 0
{ 
query 
= 
query 
. 
Where #
(# $
v$ %
=>& (
v) *
.* +
Sku+ .
.. /
Contains/ 7
(7 8
sku8 ;
); <
)< =
;= >
} 
return 
await 
query 
. 
ToListAsync *
(* +
)+ ,
;, -
} 	
public 
async 
Task 
< 
Produto !
?! "
>" #
ListarPorIdAsync$ 4
(4 5
int5 8
id9 ;
); <
=> 
await 
_context 
. 
Produtos &
.& '
	FindAsync' 0
(0 1
id1 3
)3 4
;4 5
public   
async   
Task   
AdicionarAsync   (
(  ( )
Produto  ) 0
veiculo  1 8
)  8 9
{!! 	
_context"" 
."" 
Produtos"" 
."" 
Add"" !
(""! "
veiculo""" )
)"") *
;""* +
await## 
_context## 
.## 
SaveChangesAsync## +
(##+ ,
)##, -
;##- .
}$$ 	
public&& 
async&& 
Task&& 
AtualizarAsync&& (
(&&( )
Produto&&) 0
produto&&1 8
)&&8 9
{'' 	
_context(( 
.(( 
Produtos(( 
.(( 
Update(( $
((($ %
produto((% ,
)((, -
;((- .
await)) 
_context)) 
.)) 
SaveChangesAsync)) +
())+ ,
))), -
;))- .
}** 	
public,, 
async,, 
Task,, 
ExcluirAsync,, &
(,,& '
int,,' *
id,,+ -
),,- .
{-- 	
var.. 
produto.. 
=.. 
await.. 
_context..  (
...( )
Produtos..) 1
...1 2
	FindAsync..2 ;
(..; <
id..< >
)..> ?
;..? @
if// 
(// 
produto// 
is// 
null// 
)//  
return//! '
;//' (
_context11 
.11 
Produtos11 
.11 
Remove11 $
(11$ %
produto11% ,
)11, -
;11- .
await22 
_context22 
.22 
SaveChangesAsync22 +
(22+ ,
)22, -
;22- .
}33 	
public55 
async55 
Task55 
<55 
bool55 
>55 
ExisteSkuAsync55  .
(55. /
string55/ 5
sku556 9
)559 :
{66 	
return77 
await77 
_context77 !
.77! "
Produtos77" *
.88 
AnyAsync88 
(88 
v88 
=>88 
v88  
.88  !
Sku88! $
==88% '
sku88( +
)88+ ,
;88, -
}99 	
};; 
}<< ã$
ÄC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Repositories\ServicoRepository.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Repositories" .
{ 
public 

class 
ServicoRepository "
:# $
IServicoRepository% 7
{		 
private

 
readonly

 
AppDbContext

 %
_context

& .
;

. /
public 
ServicoRepository  
(  !
AppDbContext! -
context. 5
)5 6
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
List 
< 
Servico &
>& '
>' (
ListarTodosAsync) 9
(9 :
string: @
?@ A
skuB E
)E F
{ 	
var 
query 
= 
_context  
.  !
Servicos! )
.) *
AsQueryable* 5
(5 6
)6 7
;7 8
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
sku+ .
). /
)/ 0
{ 
query 
= 
query 
. 
Where #
(# $
v$ %
=>& (
v) *
.* +
Sku+ .
.. /
Contains/ 7
(7 8
sku8 ;
); <
)< =
;= >
} 
return 
await 
query 
. 
ToListAsync *
(* +
)+ ,
;, -
} 	
public 
async 
Task 
< 
Servico !
?! "
>" #
ListarPorIdAsync$ 4
(4 5
int5 8
id9 ;
); <
=> 
await 
_context 
. 
Servicos &
.& '
	FindAsync' 0
(0 1
id1 3
)3 4
;4 5
public   
async   
Task   
AdicionarAsync   (
(  ( )
Servico  ) 0
veiculo  1 8
)  8 9
{!! 	
_context"" 
."" 
Servicos"" 
."" 
Add"" !
(""! "
veiculo""" )
)"") *
;""* +
await## 
_context## 
.## 
SaveChangesAsync## +
(##+ ,
)##, -
;##- .
}$$ 	
public&& 
async&& 
Task&& 
AtualizarAsync&& (
(&&( )
Servico&&) 0
servico&&1 8
)&&8 9
{'' 	
_context(( 
.(( 
Servicos(( 
.(( 
Update(( $
((($ %
servico((% ,
)((, -
;((- .
await)) 
_context)) 
.)) 
SaveChangesAsync)) +
())+ ,
))), -
;))- .
}** 	
public,, 
async,, 
Task,, 
ExcluirAsync,, &
(,,& '
int,,' *
id,,+ -
),,- .
{-- 	
var.. 
servico.. 
=.. 
await.. 
_context..  (
...( )
Servicos..) 1
...1 2
	FindAsync..2 ;
(..; <
id..< >
)..> ?
;..? @
if// 
(// 
servico// 
is// 
null// 
)//  
return//! '
;//' (
_context11 
.11 
Servicos11 
.11 
Remove11 $
(11$ %
servico11% ,
)11, -
;11- .
await22 
_context22 
.22 
SaveChangesAsync22 +
(22+ ,
)22, -
;22- .
}33 	
public55 
async55 
Task55 
<55 
bool55 
>55 
ExisteSkuAsync55  .
(55. /
string55/ 5
sku556 9
)559 :
{66 	
return77 
await77 
_context77 !
.77! "
Servicos77" *
.88 
AnyAsync88 
(88 
v88 
=>88 
v88  
.88  !
Sku88! $
==88% '
sku88( +
)88+ ,
;88, -
}99 	
};; 
}<< ∞(
ÄC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Infrastructure\Repositories\VeiculoRepository.cs
	namespace 	
Mechanic
 
. 
Infrastructure !
.! "
Repositories" .
{ 
public 

class 
VeiculoRepository "
:# $
IVeiculoRepository% 7
{		 
private

 
readonly

 
AppDbContext

 %
_context

& .
;

. /
public 
VeiculoRepository  
(  !
AppDbContext! -
context. 5
)5 6
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
List 
< 
Veiculo &
>& '
>' (
ListarTodosAsync) 9
(9 :
string: @
?@ A
placaB G
)G H
{ 	
var 
query 
= 
_context  
.  !
Veiculos! )
.) *
AsQueryable* 5
(5 6
)6 7
;7 8
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
placa+ 0
)0 1
)1 2
{ 
query 
= 
query 
. 
Where #
(# $
v$ %
=>& (
v) *
.* +
Placa+ 0
.0 1
Contains1 9
(9 :
placa: ?
)? @
)@ A
;A B
} 
return 
await 
query 
. 
ToListAsync *
(* +
)+ ,
;, -
} 	
public 
async 
Task 
< 
Veiculo !
?! "
>" #
ListarPorIdAsync$ 4
(4 5
int5 8
id9 ;
); <
=> 
await 
_context 
. 
Veiculos &
.& '
	FindAsync' 0
(0 1
id1 3
)3 4
;4 5
public   
async   
Task   
AdicionarAsync   (
(  ( )
Veiculo  ) 0
veiculo  1 8
)  8 9
{!! 	
_context"" 
."" 
Veiculos"" 
."" 
Add"" !
(""! "
veiculo""" )
)"") *
;""* +
await## 
_context## 
.## 
SaveChangesAsync## +
(##+ ,
)##, -
;##- .
}$$ 	
public&& 
async&& 
Task&& 
AtualizarAsync&& (
(&&( )
Veiculo&&) 0
veiculo&&1 8
)&&8 9
{'' 	
_context(( 
.(( 
Veiculos(( 
.(( 
Update(( $
((($ %
veiculo((% ,
)((, -
;((- .
await)) 
_context)) 
.)) 
SaveChangesAsync)) +
())+ ,
))), -
;))- .
}** 	
public,, 
async,, 
Task,, 
ExcluirAsync,, &
(,,& '
int,,' *
id,,+ -
),,- .
{-- 	
var.. 
veiculo.. 
=.. 
await.. 
_context..  (
...( )
Veiculos..) 1
...1 2
	FindAsync..2 ;
(..; <
id..< >
)..> ?
;..? @
if// 
(// 
veiculo// 
is// 
null// 
)//  
return//! '
;//' (
_context11 
.11 
Veiculos11 
.11 
Remove11 $
(11$ %
veiculo11% ,
)11, -
;11- .
await22 
_context22 
.22 
SaveChangesAsync22 +
(22+ ,
)22, -
;22- .
}33 	
public55 
async55 
Task55 
<55 
bool55 
>55 
ExistePlacaAsync55  0
(550 1
string551 7
placa558 =
)55= >
{66 	
return77 
await77 
_context77 !
.77! "
Veiculos77" *
.88 
AnyAsync88 
(88 
v88 
=>88 
v88  
.88  !
Placa88! &
==88' )
placa88* /
)88/ 0
;880 1
}99 	
public;; 
async;; 
Task;; 
<;; 
bool;; 
>;; 
ClienteExisteAsync;;  2
(;;2 3
int;;3 6
	clienteId;;7 @
);;@ A
{<< 	
return== 
await== 
_context== !
.==! "
Clientes==" *
.==* +
AnyAsync==+ 3
(==3 4
c==4 5
=>==6 8
c==9 :
.==: ;
Id==; =
====> @
	clienteId==A J
)==J K
;==K L
}>> 	
}?? 
}@@ ﬂ
wC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Presentation\Endpoints\AuthEndpoints.cs
	namespace 	
Mechanic
 
. 
Presentation 
.  
	Endpoints  )
;) *
public 
static 
class 
AuthEndpoints !
{		 
public

 

static

 
void

 
MapAuthEndpoints

 '
(

' (
this

( ,!
IEndpointRouteBuilder

- B
routes

C I
)

I J
{ 
var 
group 
= 
routes 
.
 
MapGroup 
( 
$str 
)  
.
 
WithTags 
( 
$str 
) 
; 
group 
. 
MapPost 
( 
$str 
, 
(  !
[! "
FromBody" *
]* +
LoginRequestDto, ;
dto< ?
,? @
[A B
FromKeyedServicesB S
]S T
AuthServiceU `
servicea h
)h i
=>j l
{ 	
var 
token 
= 
service 
.  
Login  %
(% &
dto& )
)) *
;* +
return 
token 
is 
null  
? 
Results 
. 
Unauthorized &
(& '
)' (
: 
Results 
. 
Ok 
( 
new  
{! "
token# (
}) *
)* +
;+ ,
} 	
)	 

. 	
WithName	 
( 
$str 
) 
. 	
WithSummary	 
( 
$str *
)* +
. 	
WithDescription	 
( 
$str U
)U V
. 	
Produces	 
< 
LoginResponseDto "
>" #
(# $
StatusCodes$ /
./ 0
Status200OK0 ;
); <
. 	
Produces	 
( 
StatusCodes 
. !
Status401Unauthorized 3
)3 4
;4 5
} 
} ÂE
zC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Presentation\Endpoints\ClienteEndpoints.cs
	namespace 	
Mechanic
 
. 
Presentation 
.  
	Endpoints  )
;) *
public		 
static		 
class		 
ClienteEndpoints		 $
{

 
public 

static 
void 
MapClienteEndpoints *
(* +
this+ /!
IEndpointRouteBuilder0 E
routesF L
)L M
{ 
var 
group 
= 
routes 
. 
MapGroup 
( 
$str %
)% &
.  
RequireAuthorization !
(! "
)" #
. 
WithTags 
( 
$str  
)  !
;! "
group 
. 
MapGet 
( 
$str 
, 
async 
(  !
[! "
AsParameters" .
]. /
ClienteParamsDto0 @
dtoA D
,D E
[F G
FromKeyedServicesG X
]X Y
ClienteServiceZ h
servicei p
)p q
=>r t
{ 	
var 
clientes 
= 
await  
service! (
.( )
ListarTodos) 4
(4 5
dto5 8
)8 9
;9 :
return 
Results 
. 
Ok 
( 
clientes &
)& '
;' (
} 	
)	 

. 	
WithName	 
( 
$str "
)" #
. 	
WithSummary	 
( 
$str .
). /
. 	
WithDescription	 
( 
$str T
)T U
. 	
Produces	 
< 
List 
< 
ClienteResponseDto )
>) *
>* +
(+ ,
StatusCodes, 7
.7 8
Status200OK8 C
)C D
;D E
group 
. 
MapGet 
( 
$str 
, 
async #
($ %
int% (
id) +
,+ ,
ClienteService- ;
service< C
)C D
=>E G
{ 	
var 
cliente 
= 
await 
service  '
.' (
ListarPorId( 3
(3 4
id4 6
)6 7
;7 8
return 
cliente 
is 
not !
null" &
?' (
Results) 0
.0 1
Ok1 3
(3 4
cliente4 ;
); <
:= >
Results? F
.F G
NotFoundG O
(O P
)P Q
;Q R
}   	
)  	 

.!! 	
WithName!!	 
(!! 
$str!! %
)!!% &
."" 	
WithSummary""	 
("" 
$str"" +
)""+ ,
.## 	
Produces##	 
<## 
ClienteResponseDto## $
>##$ %
(##% &
StatusCodes##& 1
.##1 2
Status200OK##2 =
)##= >
.$$ 	
Produces$$	 
($$ 
StatusCodes$$ 
.$$ 
Status404NotFound$$ /
)$$/ 0
;$$0 1
group%% 
.%% 
MapPost%% 
(%% 
$str%% 
,%% 
async%%  
(%%! "
[%%" #
FromBody%%# +
]%%+ ,&
AdicionarClienteRequestDto%%- G
dto%%H K
,%%K L
[%%M N
FromKeyedServices%%N _
]%%_ `
ClienteService%%a o
service%%p w
)%%w x
=>%%y {
{&& 	
try'' 
{(( 
var)) 
id)) 
=)) 
await)) 
service)) &
.))& '
Criar))' ,
()), -
dto))- 0
)))0 1
;))1 2
return** 
Results** 
.** 
Created** &
(**& '
$"**' )
$str**) 7
{**7 8
id**8 :
}**: ;
"**; <
,**< =
id**> @
)**@ A
;**A B
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
if.. 
(.. 
ex.. 
... 
Message.. 
... 
Contains.. '
(..' (
$str..( @
)..@ A
)..A B
return// 
Results// "
.//" #
Conflict//# +
(//+ ,
new//, /
{//0 1
message//2 9
=//: ;
ex//< >
.//> ?
Message//? F
}//G H
)//H I
;//I J
return11 
Results11 
.11 

BadRequest11 )
(11) *
new11* -
{11. /
message110 7
=118 9
ex11: <
.11< =
Message11= D
}11E F
)11F G
;11G H
}22 
}33 	
)33	 

.44 	
WithName44	 
(44 
$str44  
)44  !
.55 	
WithSummary55	 
(55 
$str55 +
)55+ ,
.66 	
WithDescription66	 
(66 
$str66 S
)66S T
.77 	
Produces77	 
<77 
int77 
>77 
(77 
StatusCodes77 "
.77" #
Status201Created77# 3
)773 4
.88 	
Produces88	 
(88 
StatusCodes88 
.88 
Status400BadRequest88 1
)881 2
.99 	
Produces99	 
(99 
StatusCodes99 
.99 
Status409Conflict99 /
)99/ 0
;990 1
group:: 
.:: 
MapPut:: 
(:: 
$str:: 
,:: 
async:: #
(::$ %
int::% (
id::) +
,::+ ,
[::- .
FromBody::. 6
]::6 7&
AtualizarClienteRequestDto::8 R
dto::S V
,::V W
[::X Y
FromKeyedServices::Y j
]::j k
ClienteService::l z
service	::{ Ç
)
::Ç É
=>
::Ñ Ü
{;; 	
var<< 
updated<< 
=<< 
await<< 
service<<  '
.<<' (
	Atualizar<<( 1
(<<1 2
id<<2 4
,<<4 5
dto<<6 9
)<<9 :
;<<: ;
return== 
updated== 
?== 
Results== $
.==$ %
	NoContent==% .
(==. /
)==/ 0
:==1 2
Results==3 :
.==: ;
NotFound==; C
(==C D
)==D E
;==E F
}>> 	
)>>	 

.?? 	
WithName??	 
(?? 
$str?? $
)??$ %
.@@ 	
WithSummary@@	 
(@@ 
$str@@ *
)@@* +
.AA 	
WithDescriptionAA	 
(AA 
$strAA E
)AAE F
.BB 	
ProducesBB	 
(BB 
StatusCodesBB 
.BB 
Status204NoContentBB 0
)BB0 1
.CC 	
ProducesCC	 
(CC 
StatusCodesCC 
.CC 
Status404NotFoundCC /
)CC/ 0
;CC0 1
groupEE 
.EE 
	MapDeleteEE 
(EE 
$strEE 
,EE  
asyncEE! &
(EE' (
intEE( +
idEE, .
,EE. /
ClienteServiceEE0 >
serviceEE? F
)EEF G
=>EEH J
{FF 	
varGG 
deletedGG 
=GG 
awaitGG 
serviceGG  '
.GG' (
DeletarGG( /
(GG/ 0
idGG0 2
)GG2 3
;GG3 4
returnHH 
deletedHH 
?HH 
ResultsHH $
.HH$ %
	NoContentHH% .
(HH. /
)HH/ 0
:HH1 2
ResultsHH3 :
.HH: ;
NotFoundHH; C
(HHC D
)HHD E
;HHE F
}II 	
)II	 

.JJ 	
WithNameJJ	 
(JJ 
$strJJ $
)JJ$ %
.KK 	
WithSummaryKK	 
(KK 
$strKK *
)KK* +
.LL 	
WithDescriptionLL	 
(LL 
$strLL =
)LL= >
.MM 	
ProducesMM	 
(MM 
StatusCodesMM 
.MM 
Status204NoContentMM 0
)MM0 1
.NN 	
ProducesNN	 
(NN 
StatusCodesNN 
.NN 
Status404NotFoundNN /
)NN/ 0
;NN0 1
}OO 
}PP êv
C:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Presentation\Endpoints\OrdemServicoEndpoints.cs
	namespace 	
Mechanic
 
. 
Presentation 
.  
	Endpoints  )
;) *
public

 
static

 
class

 !
OrdemServicoEndpoints

 )
{ 
public 

static 
void $
MapOrdemServicoEndpoints /
(/ 0
this0 4!
IEndpointRouteBuilder5 J
routesK Q
)Q R
{ 
var 
group 
= 
routes 
. 
MapGroup 
( 
$str +
)+ ,
.  
RequireAuthorization !
(! "
)" #
. 
WithTags 
( 
$str )
)) *
;* +
group 
. 
MapGet 
( 
$str 
, 
async 
(  !
[! "
AsParameters" .
]. /'
ListarOrdemServicoParamsDto0 K
dtoL O
,O P
[Q R
FromKeyedServicesR c
]c d
OrdemServicoServicee x
service	y Ä
)
Ä Å
=>
Ç Ñ
{ 	
var 
os 
= 
await 
service "
." #
ListarTodosAsync# 3
(3 4
dto4 7
)7 8
;8 9
return 
Results 
. 
Ok 
( 
os  
)  !
;! "
} 	
)	 

. 	
WithName	 
( 
$str '
)' (
. 	
WithSummary	 
( 
$str :
): ;
. 	
WithDescription	 
( 
$str M
)M N
. 	
Produces	 
< 
List 
< #
OrdemServicoResponseDto .
>. /
>/ 0
(0 1
StatusCodes1 <
.< =
Status200OK= H
)H I
;I J
group 
. 
MapGet 
( 
$str 
, 
async #
($ %
int% (
id) +
,+ ,
OrdemServicoService- @
serviceA H
)H I
=>J L
{ 	
var 
os 
= 
await 
service "
." #
ListarPorIdAsync# 3
(3 4
id4 6
)6 7
;7 8
return   
os   
is   
not   
null   !
?  " #
Results  $ +
.  + ,
Ok  , .
(  . /
os  / 1
)  1 2
:  3 4
Results  5 <
.  < =
NotFound  = E
(  E F
)  F G
;  G H
}!! 	
)!!	 

."" 	
WithName""	 
("" 
$str"" *
)""* +
.## 	
WithSummary##	 
(## 
$str## 4
)##4 5
.$$ 	
Produces$$	 
<$$ #
OrdemServicoResponseDto$$ )
>$$) *
($$* +
StatusCodes$$+ 6
.$$6 7
Status200OK$$7 B
)$$B C
.%% 	
Produces%%	 
(%% 
StatusCodes%% 
.%% 
Status404NotFound%% /
)%%/ 0
;%%0 1
group'' 
.'' 
MapPost'' 
('' 
$str'' 
,'' 
async''  
(''! "
[''" #
FromBody''# +
]''+ ,'
CriarOrdemServicoRequestDto''- H
dto''I L
,''L M
[''N O
FromKeyedServices''O `
]''` a
OrdemServicoService''b u
service''v }
)''} ~
=>	'' Å
{(( 	
var)) 
id)) 
=)) 
await)) 
service)) "
.))" #
AdicionarOSAsync))# 3
())3 4
dto))4 7
)))7 8
;))8 9
return** 
Results** 
.** 
Created** "
(**" #
$"**# %
$str**% 9
{**9 :
id**: <
}**< =
"**= >
,**> ?
id**@ B
)**B C
;**C D
}++ 	
)++	 

.,, 	
WithName,,	 
(,, 
$str,, %
),,% &
.-- 	
WithSummary--	 
(-- 
$str-- 5
)--5 6
... 	
Produces..	 
<.. 
int.. 
>.. 
(.. 
StatusCodes.. "
..." #
Status201Created..# 3
)..3 4
;..4 5
group00 
.00 
MapPost00 
(00 
$str00 1
,001 2
async003 8
(009 :
int00: =
id00> @
,00@ A
OrdemServicoService00B U
service00V ]
)00] ^
=>00_ a
{11 	
try22 
{33 
await44 
service44 
.44 #
IniciarDiagnosticoAsync44 5
(445 6
id446 8
)448 9
;449 :
return55 
Results55 
.55 
	NoContent55 (
(55( )
)55) *
;55* +
}66 
catch77 
(77 
	Exception77 
ex77 
)77  
{88 
return99 
Results99 
.99 

BadRequest99 )
(99) *
new99* -
{99. /
message990 7
=998 9
ex99: <
.99< =
Message99= D
}99E F
)99F G
;99G H
}:: 
};; 	
);;	 

.<< 	
WithName<<	 
(<< 
$str<< &
)<<& '
.== 	
WithSummary==	 
(== 
$str== /
)==/ 0
.>> 	
Produces>>	 
(>> 
StatusCodes>> 
.>> 
Status204NoContent>> 0
)>>0 1
.?? 	
Produces??	 
(?? 
StatusCodes?? 
.?? 
Status400BadRequest?? 1
)??1 2
;??2 3
groupAA 
.AA 
MapPostAA 
(AA 
$strAA .
,AA. /
asyncAA0 5
(AA6 7
intBB 
idBB 
,BB 
[CC 
FromBodyCC 
]CC $
CriarOrcamentoRequestDtoCC /
dtoCC0 3
,CC3 4
[DD 
FromKeyedServicesDD 
]DD 
OrdemServicoServiceDD  3
serviceDD4 ;
)DD; <
=>DD= ?
{EE 	
awaitFF 
serviceFF 
.FF  
EnviarOrcamentoAsyncFF .
(FF. /
idFF/ 1
,FF1 2
dtoFF3 6
)FF6 7
;FF7 8
returnGG 
ResultsGG 
.GG 
	NoContentGG $
(GG$ %
)GG% &
;GG& '
}HH 	
)HH	 

.II 	
WithNameII	 
(II 
$strII #
)II# $
.JJ 	
WithSummaryJJ	 
(JJ 
$strJJ 0
)JJ0 1
.KK 	
ProducesKK	 
(KK 
StatusCodesKK 
.KK 
Status204NoContentKK 0
)KK0 1
;KK1 2
groupMM 
.MM 
MapPostMM 
(MM 
$strMM K
,MMK L
asyncMMM R
(MMS T
intNN 
idNN 
,NN 
intOO 
orcIdOO 
,OO 
intPP 
servIdPP 
,PP 
[QQ 
FromBodyQQ 
]QQ (
ExecutarServicoLogRequestDtoQQ 3
dtoQQ4 7
,QQ7 8
[RR 
FromKeyedServicesRR 
]RR 
OrdemServicoServiceRR  3
serviceRR4 ;
)RR; <
=>RR= ?
{SS 	
tryTT 
{UU 
awaitVV 
serviceVV 
.VV #
ExecutarServicoLogAsyncVV 5
(VV5 6
idVV6 8
,VV8 9
orcIdVV: ?
,VV? @
servIdVVA G
,VVG H
dtoVVI L
)VVL M
;VVM N
returnWW 
ResultsWW 
.WW 
	NoContentWW (
(WW( )
)WW) *
;WW* +
}XX 
catchYY 
(YY 
	ExceptionYY 
exYY 
)YY  
{ZZ 
return[[ 
Results[[ 
.[[ 

BadRequest[[ )
([[) *
new[[* -
{[[. /
message[[0 7
=[[8 9
ex[[: <
.[[< =
Message[[= D
}[[E F
)[[F G
;[[G H
}\\ 
}]] 	
)]]	 

.^^ 	
WithName^^	 
(^^ 
$str^^ #
)^^# $
.__ 	
WithSummary__	 
(__ 
$str__ 3
)__3 4
.`` 	
Produces``	 
(`` 
StatusCodes`` 
.`` 
Status204NoContent`` 0
)``0 1
.aa 	
Producesaa	 
(aa 
StatusCodesaa 
.aa 
Status400BadRequestaa 1
)aa1 2
;aa2 3
groupcc 
.cc 
MapPostcc 
(cc 
$strcc -
,cc- .
asynccc/ 4
(cc5 6
intcc6 9
idcc: <
,cc< =
OrdemServicoServicecc> Q
serviceccR Y
)ccY Z
=>cc[ ]
{dd 	
tryee 
{ff 
awaitgg 
servicegg 
.gg 
CancelarOSAsyncgg -
(gg- .
idgg. 0
)gg0 1
;gg1 2
returnhh 
Resultshh 
.hh 
	NoContenthh (
(hh( )
)hh) *
;hh* +
}ii 
catchjj 
(jj 
	Exceptionjj 
exjj 
)jj  
{kk 
returnll 
Resultsll 
.ll 

BadRequestll )
(ll) *
newll* -
{ll. /
messagell0 7
=ll8 9
exll: <
.ll< =
Messagell= D
}llE F
)llF G
;llG H
}mm 
}nn 	
)nn	 

.oo 	
WithNameoo	 
(oo 
$stroo (
)oo( )
.pp 	
WithSummarypp	 
(pp 
$strpp #
)pp# $
.qq 	
Producesqq	 
(qq 
StatusCodesqq 
.qq 
Status204NoContentqq 0
)qq0 1
.rr 	
Producesrr	 
(rr 
StatusCodesrr 
.rr 
Status400BadRequestrr 1
)rr1 2
;rr2 3
grouptt 
.tt 
MapPosttt 
(tt 
$strtt .
,tt. /
asynctt0 5
(tt6 7
inttt7 :
idtt; =
,tt= >
OrdemServicoServicett? R
servicettS Z
)ttZ [
=>tt\ ^
{uu 	
tryvv 
{ww 
awaitxx 
servicexx 
.xx 
FinalizarOSAsyncxx .
(xx. /
idxx/ 1
)xx1 2
;xx2 3
returnyy 
Resultsyy 
.yy 
	NoContentyy (
(yy( )
)yy) *
;yy* +
}zz 
catch{{ 
({{ 
	Exception{{ 
ex{{ 
){{  
{|| 
return}} 
Results}} 
.}} 

BadRequest}} )
(}}) *
new}}* -
{}}. /
message}}0 7
=}}8 9
ex}}: <
.}}< =
Message}}= D
}}}E F
)}}F G
;}}G H
}~~ 
} 	
)	 

.
ÄÄ 	
WithName
ÄÄ	 
(
ÄÄ 
$str
ÄÄ )
)
ÄÄ) *
.
ÅÅ 	
WithSummary
ÅÅ	 
(
ÅÅ 
$str
ÅÅ $
)
ÅÅ$ %
.
ÇÇ 	
Produces
ÇÇ	 
(
ÇÇ 
StatusCodes
ÇÇ 
.
ÇÇ  
Status204NoContent
ÇÇ 0
)
ÇÇ0 1
.
ÉÉ 	
Produces
ÉÉ	 
(
ÉÉ 
StatusCodes
ÉÉ 
.
ÉÉ !
Status400BadRequest
ÉÉ 1
)
ÉÉ1 2
;
ÉÉ2 3
group
ÖÖ 
.
ÖÖ 
MapPost
ÖÖ 
(
ÖÖ 
$str
ÖÖ -
,
ÖÖ- .
async
ÖÖ/ 4
(
ÖÖ5 6
int
ÖÖ6 9
id
ÖÖ: <
,
ÖÖ< =!
OrdemServicoService
ÖÖ> Q
service
ÖÖR Y
)
ÖÖY Z
=>
ÖÖ[ ]
{
ÜÜ 	
try
áá 
{
àà 
await
ââ 
service
ââ 
.
ââ 
EntregarOSAsync
ââ -
(
ââ- .
id
ââ. 0
)
ââ0 1
;
ââ1 2
return
ää 
Results
ää 
.
ää 
	NoContent
ää (
(
ää( )
)
ää) *
;
ää* +
}
ãã 
catch
åå 
(
åå 
	Exception
åå 
ex
åå 
)
åå  
{
çç 
return
éé 
Results
éé 
.
éé 

BadRequest
éé )
(
éé) *
new
éé* -
{
éé. /
message
éé0 7
=
éé8 9
ex
éé: <
.
éé< =
Message
éé= D
}
ééE F
)
ééF G
;
ééG H
}
èè 
}
êê 	
)
êê	 

.
ëë 	
WithName
ëë	 
(
ëë 
$str
ëë (
)
ëë( )
.
íí 	
WithSummary
íí	 
(
íí 
$str
íí -
)
íí- .
.
ìì 	
Produces
ìì	 
(
ìì 
StatusCodes
ìì 
.
ìì  
Status204NoContent
ìì 0
)
ìì0 1
.
îî 	
Produces
îî	 
(
îî 
StatusCodes
îî 
.
îî !
Status400BadRequest
îî 1
)
îî1 2
;
îî2 3
group
ññ 
.
ññ 
MapGet
ññ 
(
ññ 
$str
ññ 7
,
ññ7 8
async
ññ9 >
(
ññ? @!
OrdemServicoService
ññ@ S
service
ññT [
)
ññ[ \
=>
ññ] _
{
óó 	
var
òò 
result
òò 
=
òò 
await
òò 
service
òò &
.
òò& '(
GetTempoMedioExecucaoAsync
òò' A
(
òòA B
)
òòB C
;
òòC D
return
ôô 
Results
ôô 
.
ôô 
Ok
ôô 
(
ôô 
result
ôô $
)
ôô$ %
;
ôô% &
}
öö 	
)
öö	 

.
õõ 	
WithName
õõ	 
(
õõ 
$str
õõ &
)
õõ& '
.
úú 	
WithSummary
úú	 
(
úú 
$str
úú ;
)
úú; <
.
ùù 	
Produces
ùù	 
<
ùù ,
RelatorioTempoMedioResponseDto
ùù 0
>
ùù0 1
(
ùù1 2
StatusCodes
ùù2 =
.
ùù= >
Status200OK
ùù> I
)
ùùI J
;
ùùJ K
}
ûû 
}üü ÿ
ÜC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Presentation\Endpoints\OrdemServicoExternoEndpoints.cs
	namespace 	
Mechanic
 
. 
Presentation 
.  
	Endpoints  )
;) *
public 
static 
class (
OrdemServicoExternoEndpoints 0
{		 
public

 

static

 
void

 +
MapOrdemServicoExternoEndpoints

 6
(

6 7
this

7 ;!
IEndpointRouteBuilder

< Q
routes

R X
)

X Y
{ 
var 
group 
= 
routes 
. 
MapGroup 
( 
$str *
)* +
. 
WithTags 
( 
$str 0
)0 1
;1 2
group 
. 
MapGet 
( 
$str 1
,1 2
async3 8
(9 :
string: @
hashA E
,E F
stringG M
docFinalN V
,V W
OrdemServicoServiceX k
servicel s
)s t
=>u w
{ 	
var 
os 
= 
await 
service "
." #%
ListarPorHashExternoAsync# <
(< =
hash= A
,A B
docFinalC K
)K L
;L M
return 
os 
is 
not 
null !
?" #
Results$ +
.+ ,
Ok, .
(. /
os/ 1
)1 2
:3 4
Results5 <
.< =
NotFound= E
(E F
)F G
;G H
} 	
)	 

. 	
WithName	 
( 
$str ,
), -
. 	
WithSummary	 
( 
$str g
)g h
. 	
Produces	 
< #
OrdemServicoResponseDto )
>) *
(* +
StatusCodes+ 6
.6 7
Status200OK7 B
)B C
. 	
Produces	 
( 
StatusCodes 
. 
Status404NotFound /
)/ 0
;0 1
group 
. 
MapPatch 
( 
$str K
,K L
asyncM R
(S T
string 
hash 
, 
string 
docFinal 
, 
int 
orcamentoId 
, 
[ 
FromBody 
] &
DecisaoOrcamentoRequestDto 1
dto2 5
,5 6
[ 
FromKeyedServices 
] 
OrdemServicoService  3
service4 ;
); <
=>= ?
{   	
try!! 
{"" 
await## 
service## 
.## /
#DecidirOrcamentoPorHashExternoAsync## A
(##A B
hash##B F
,##F G
docFinal##H P
,##P Q
orcamentoId##R ]
,##] ^
dto##_ b
)##b c
;##c d
return$$ 
Results$$ 
.$$ 
	NoContent$$ (
($$( )
)$$) *
;$$* +
}%% 
catch%% 
{&& 
return'' 
Results'' 
.'' 
NotFound'' '
(''' (
)''( )
;'') *
}(( 
}** 	
)**	 

.++ 	
WithName++	 
(++ 
$str++ $
)++$ %
.,, 	
WithSummary,,	 
(,, 
$str,, 2
),,2 3
.-- 	
Produces--	 
(-- 
StatusCodes-- 
.-- 
Status204NoContent-- 0
)--0 1
... 	
Produces..	 
(.. 
StatusCodes.. 
... 
Status404NotFound.. /
)../ 0
;..0 1
}00 
}11 ˆZ
zC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Presentation\Endpoints\ProdutoEndpoints.cs
	namespace 	
Mechanic
 
. 
Presentation 
.  
	Endpoints  )
;) *
public		 
static		 
class		 
ProdutoEndpoints		 $
{

 
public 

static 
void 
MapProdutoEndpoints *
(* +
this+ /!
IEndpointRouteBuilder0 E
routesF L
)L M
{ 
var 
group 
= 
routes 
. 
MapGroup 
( 
$str %
)% &
.  
RequireAuthorization !
(! "
)" #
. 
WithTags 
( 
$str  
)  !
;! "
group 
. 
MapGet 
( 
$str 
, 
async 
(  !
[! "
AsParameters" .
]. /
ProdutoParamsDto0 @
dtoA D
,D E
[F G
FromKeyedServicesG X
]X Y
ProdutoServiceZ h
servicei p
)p q
=>r t
{ 	
var 
produtos 
= 
await  
service! (
.( )
ListarTodos) 4
(4 5
dto5 8
)8 9
;9 :
return 
Results 
. 
Ok 
( 
produtos &
)& '
;' (
} 	
)	 

. 	
WithName	 
( 
$str "
)" #
. 	
WithSummary	 
( 
$str .
). /
. 	
WithDescription	 
( 
$str O
)O P
. 	
Produces	 
< 
List 
< 
ProdutoResponseDto )
>) *
>* +
(+ ,
StatusCodes, 7
.7 8
Status200OK8 C
)C D
;D E
group 
. 
MapGet 
( 
$str 
, 
async #
($ %
int% (
id) +
,+ ,
ProdutoService- ;
service< C
)C D
=>E G
{ 	
var 
produto 
= 
await 
service  '
.' (
ListarPorId( 3
(3 4
id4 6
)6 7
;7 8
return 
produto 
is 
not !
null" &
?' (
Results) 0
.0 1
Ok1 3
(3 4
produto4 ;
); <
:= >
Results? F
.F G
NotFoundG O
(O P
)P Q
;Q R
}   	
)  	 

.!! 	
WithName!!	 
(!! 
$str!! %
)!!% &
."" 	
WithSummary""	 
("" 
$str"" .
)"". /
.## 	
Produces##	 
<## 
ProdutoResponseDto## $
>##$ %
(##% &
StatusCodes##& 1
.##1 2
Status200OK##2 =
)##= >
.$$ 	
Produces$$	 
($$ 
StatusCodes$$ 
.$$ 
Status404NotFound$$ /
)$$/ 0
;$$0 1
group&& 
.&& 
MapPost&& 
(&& 
$str&& 
,&& 
async&&  
(&&! "
[&&" #
FromBody&&# +
]&&+ ,&
AdicionarProdutoRequestDto&&- G
dto&&H K
,&&K L
[&&M N
FromKeyedServices&&N _
]&&_ `
ProdutoService&&a o
service&&p w
)&&w x
=>&&y {
{'' 	
try(( 
{)) 
var** 
id** 
=** 
await** 
service** &
.**& '
Criar**' ,
(**, -
dto**- 0
)**0 1
;**1 2
return++ 
Results++ 
.++ 
Created++ &
(++& '
$"++' )
$str++) 7
{++7 8
id++8 :
}++: ;
"++; <
,++< =
id++> @
)++@ A
;++A B
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)--  
{.. 
if// 
(// 
ex// 
.// 
Message// 
.// 
Contains// '
(//' (
$str//( ;
)//; <
)//< =
return00 
Results00 "
.00" #
Conflict00# +
(00+ ,
new00, /
{000 1
message002 9
=00: ;
ex00< >
.00> ?
Message00? F
}00G H
)00H I
;00I J
return22 
Results22 
.22 

BadRequest22 )
(22) *
new22* -
{22. /
message220 7
=228 9
ex22: <
.22< =
Message22= D
}22E F
)22F G
;22G H
}33 
}44 	
)44	 

.55 	
WithName55	 
(55 
$str55  
)55  !
.66 	
WithSummary66	 
(66 
$str66 +
)66+ ,
.77 	
WithDescription77	 
(77 
$str77 J
)77J K
.88 	
Produces88	 
<88 
int88 
>88 
(88 
StatusCodes88 "
.88" #
Status201Created88# 3
)883 4
.99 	
Produces99	 
(99 
StatusCodes99 
.99 
Status400BadRequest99 1
)991 2
.:: 	
Produces::	 
(:: 
StatusCodes:: 
.:: 
Status409Conflict:: /
)::/ 0
;::0 1
group<< 
.<< 
MapPut<< 
(<< 
$str<< 
,<< 
async<< #
(<<$ %
int<<% (
id<<) +
,<<+ ,
[<<- .
FromBody<<. 6
]<<6 7&
AtualizarProdutoRequestDto<<8 R
dto<<S V
,<<V W
[<<X Y
FromKeyedServices<<Y j
]<<j k
ProdutoService<<l z
service	<<{ Ç
)
<<Ç É
=>
<<Ñ Ü
{== 	
try>> 
{?? 
var@@ 
updated@@ 
=@@ 
await@@ #
service@@$ +
.@@+ ,
	Atualizar@@, 5
(@@5 6
id@@6 8
,@@8 9
dto@@: =
)@@= >
;@@> ?
returnAA 
updatedAA 
?AA  
ResultsAA! (
.AA( )
	NoContentAA) 2
(AA2 3
)AA3 4
:AA5 6
ResultsAA7 >
.AA> ?
NotFoundAA? G
(AAG H
)AAH I
;AAI J
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC  
{DD 
ifEE 
(EE 
exEE 
.EE 
MessageEE 
.EE 
ContainsEE '
(EE' (
$strEE( ;
)EE; <
)EE< =
returnFF 
ResultsFF "
.FF" #
ConflictFF# +
(FF+ ,
newFF, /
{FF0 1
messageFF2 9
=FF: ;
exFF< >
.FF> ?
MessageFF? F
}FFG H
)FFH I
;FFI J
returnHH 
ResultsHH 
.HH 

BadRequestHH )
(HH) *
newHH* -
{HH. /
messageHH0 7
=HH8 9
exHH: <
.HH< =
MessageHH= D
}HHE F
)HHF G
;HHG H
}II 
}JJ 	
)JJ	 

.KK 	
WithNameKK	 
(KK 
$strKK $
)KK$ %
.LL 	
WithSummaryLL	 
(LL 
$strLL *
)LL* +
.MM 	
WithDescriptionMM	 
(MM 
$strMM E
)MME F
.NN 	
ProducesNN	 
(NN 
StatusCodesNN 
.NN 
Status204NoContentNN 0
)NN0 1
.OO 	
ProducesOO	 
(OO 
StatusCodesOO 
.OO 
Status404NotFoundOO /
)OO/ 0
.PP 	
ProducesPP	 
(PP 
StatusCodesPP 
.PP 
Status409ConflictPP /
)PP/ 0
.QQ 	
ProducesQQ	 
(QQ 
StatusCodesQQ 
.QQ 
Status400BadRequestQQ 1
)QQ1 2
;QQ2 3
groupSS 
.SS 
MapPatchSS 
(SS 
$strSS &
,SS& '
asyncSS( -
(SS. /
intSS/ 2
idSS3 5
,SS5 6
[SS7 8
FromBodySS8 @
]SS@ A-
!AtualizarEstoqueProdutoRequestDtoSSB c
dtoSSd g
,SSg h
[SSi j
FromKeyedServicesSSj {
]SS{ |
ProdutoService	SS} ã
service
SSå ì
)
SSì î
=>
SSï ó
{TT 	
varUU 
updatedUU 
=UU 
awaitUU 
serviceUU  '
.UU' (
AtualizarEstoqueUU( 8
(UU8 9
idUU9 ;
,UU; <
dtoUU= @
)UU@ A
;UUA B
returnVV 
updatedVV 
?VV 
ResultsVV $
.VV$ %
	NoContentVV% .
(VV. /
)VV/ 0
:VV1 2
ResultsVV3 :
.VV: ;
NotFoundVV; C
(VVC D
)VVD E
;VVE F
}WW 	
)WW	 

.XX 	
WithNameXX	 
(XX 
$strXX +
)XX+ ,
.YY 	
WithSummaryYY	 
(YY 
$strYY 7
)YY7 8
.ZZ 	
WithDescriptionZZ	 
(ZZ 
$strZZ N
)ZZN O
.[[ 	
Produces[[	 
([[ 
StatusCodes[[ 
.[[ 
Status204NoContent[[ 0
)[[0 1
.\\ 	
Produces\\	 
(\\ 
StatusCodes\\ 
.\\ 
Status404NotFound\\ /
)\\/ 0
;\\0 1
group^^ 
.^^ 
	MapDelete^^ 
(^^ 
$str^^ 
,^^  
async^^! &
(^^' (
int^^( +
id^^, .
,^^. /
ProdutoService^^0 >
service^^? F
)^^F G
=>^^H J
{__ 	
var`` 
deleted`` 
=`` 
await`` 
service``  '
.``' (
Deletar``( /
(``/ 0
id``0 2
)``2 3
;``3 4
returnaa 
deletedaa 
?aa 
Resultsaa $
.aa$ %
	NoContentaa% .
(aa. /
)aa/ 0
:aa1 2
Resultsaa3 :
.aa: ;
NotFoundaa; C
(aaC D
)aaD E
;aaE F
}bb 	
)bb	 

.cc 	
WithNamecc	 
(cc 
$strcc "
)cc" #
.dd 	
WithSummarydd	 
(dd 
$strdd (
)dd( )
.ee 	
WithDescriptionee	 
(ee 
$stree C
)eeC D
.ff 	
Producesff	 
(ff 
StatusCodesff 
.ff 
Status204NoContentff 0
)ff0 1
.gg 	
Producesgg	 
(gg 
StatusCodesgg 
.gg 
Status404NotFoundgg /
)gg/ 0
;gg0 1
}hh 
}ii ÂE
zC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Presentation\Endpoints\ServicoEndpoints.cs
	namespace 	
Mechanic
 
. 
Presentation 
.  
	Endpoints  )
;) *
public		 
static		 
class		 
ServicoEndpoints		 $
{

 
public 

static 
void 
MapServicoEndpoints *
(* +
this+ /!
IEndpointRouteBuilder0 E
routesF L
)L M
{ 
var 
group 
= 
routes 
. 
MapGroup 
( 
$str %
)% &
.  
RequireAuthorization !
(! "
)" #
. 
WithTags 
( 
$str  
)  !
;! "
group 
. 
MapGet 
( 
$str 
, 
async 
(  !
[! "
AsParameters" .
]. /
ServicoParamsDto0 @
dtoA D
,D E
[F G
FromKeyedServicesG X
]X Y
ServicoServiceZ h
servicei p
)p q
=>r t
{ 	
var 
servicos 
= 
await  
service! (
.( )
ListarTodos) 4
(4 5
dto5 8
)8 9
;9 :
return 
Results 
. 
Ok 
( 
servicos &
)& '
;' (
} 	
)	 

. 	
WithName	 
( 
$str "
)" #
. 	
WithSummary	 
( 
$str .
). /
. 	
WithDescription	 
( 
$str P
)P Q
. 	
Produces	 
< 
List 
< 
ServicoResponseDto )
>) *
>* +
(+ ,
StatusCodes, 7
.7 8
Status200OK8 C
)C D
;D E
group 
. 
MapGet 
( 
$str 
, 
async #
($ %
int% (
id) +
,+ ,
ServicoService- ;
service< C
)C D
=>E G
{ 	
var 
servico 
= 
await 
service  '
.' (
ListarPorId( 3
(3 4
id4 6
)6 7
;7 8
return 
servico 
is 
not !
null" &
?' (
Results) 0
.0 1
Ok1 3
(3 4
servico4 ;
); <
:= >
Results? F
.F G
NotFoundG O
(O P
)P Q
;Q R
}   	
)  	 

.!! 	
WithName!!	 
(!! 
$str!! %
)!!% &
."" 	
WithSummary""	 
("" 
$str"" .
)"". /
.##	 

Produces##
 
<## 
ServicoResponseDto## %
>##% &
(##& '
StatusCodes##' 2
.##2 3
Status200OK##3 >
)##> ?
.$$ 	
Produces$$	 
($$ 
StatusCodes$$ 
.$$ 
Status404NotFound$$ /
)$$/ 0
;$$0 1
group&& 
.&& 
MapPost&& 
(&& 
$str&& 
,&& 
async&&  
(&&! "
[&&" #
FromBody&&# +
]&&+ ,&
AdicionarServicoRequestDto&&- G
dto&&H K
,&&K L
[&&M N
FromKeyedServices&&N _
]&&_ `
ServicoService&&a o
service&&p w
)&&w x
=>&&y {
{'' 	
try(( 
{)) 
var** 
id** 
=** 
await** 
service** &
.**& '
Criar**' ,
(**, -
dto**- 0
)**0 1
;**1 2
return++ 
Results++ 
.++ 
Created++ &
(++& '
$"++' )
$str++) 7
{++7 8
id++8 :
}++: ;
"++; <
,++< =
id++> @
)++@ A
;++A B
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)--  
{.. 
if// 
(// 
ex// 
.// 
Message// 
.// 
Contains// '
(//' (
$str//( ;
)//; <
)//< =
return00 
Results00 "
.00" #
Conflict00# +
(00+ ,
new00, /
{000 1
message002 9
=00: ;
ex00< >
.00> ?
Message00? F
}00G H
)00H I
;00I J
return22 
Results22 
.22 

BadRequest22 )
(22) *
new22* -
{22. /
message220 7
=228 9
ex22: <
.22< =
Message22= D
}22E F
)22F G
;22G H
}33 
}44 	
)44	 

.55 	
WithName55	 
(55 
$str55  
)55  !
.66 	
WithSummary66	 
(66 
$str66 +
)66+ ,
.77 	
WithDescription77	 
(77 
$str77 J
)77J K
.88 	
Produces88	 
<88 
int88 
>88 
(88 
StatusCodes88 "
.88" #
Status201Created88# 3
)883 4
.99 	
Produces99	 
(99 
StatusCodes99 
.99 
Status400BadRequest99 1
)991 2
.:: 	
Produces::	 
(:: 
StatusCodes:: 
.:: 
Status409Conflict:: /
)::/ 0
;::0 1
group<< 
.<< 
MapPut<< 
(<< 
$str<< 
,<< 
async<< #
(<<$ %
int<<% (
id<<) +
,<<+ ,
[<<- .
FromBody<<. 6
]<<6 7&
AtualizarServicoRequestDto<<8 R
dto<<S V
,<<V W
[<<X Y
FromKeyedServices<<Y j
]<<j k
ServicoService<<l z
service	<<{ Ç
)
<<Ç É
=>
<<Ñ Ü
{== 	
var>> 
updated>> 
=>> 
await>> 
service>>  '
.>>' (
	Atualizar>>( 1
(>>1 2
id>>2 4
,>>4 5
dto>>6 9
)>>9 :
;>>: ;
return?? 
updated?? 
??? 
Results?? $
.??$ %
	NoContent??% .
(??. /
)??/ 0
:??1 2
Results??3 :
.??: ;
NotFound??; C
(??C D
)??D E
;??E F
}@@ 	
)@@	 

.AA 	
WithNameAA	 
(AA 
$strAA $
)AA$ %
.BB 	
WithSummaryBB	 
(BB 
$strBB *
)BB* +
.CC 	
WithDescriptionCC	 
(CC 
$strCC E
)CCE F
.DD 	
ProducesDD	 
(DD 
StatusCodesDD 
.DD 
Status204NoContentDD 0
)DD0 1
.EE 	
ProducesEE	 
(EE 
StatusCodesEE 
.EE 
Status404NotFoundEE /
)EE/ 0
;EE0 1
groupGG 
.GG 
	MapDeleteGG 
(GG 
$strGG 
,GG  
asyncGG! &
(GG' (
intGG( +
idGG, .
,GG. /
ServicoServiceGG0 >
serviceGG? F
)GGF G
=>GGH J
{HH 	
varII 
deletedII 
=II 
awaitII 
serviceII  '
.II' (
DeletarII( /
(II/ 0
idII0 2
)II2 3
;II3 4
returnJJ 
deletedJJ 
?JJ 
ResultsJJ $
.JJ$ %
	NoContentJJ% .
(JJ. /
)JJ/ 0
:JJ1 2
ResultsJJ3 :
.JJ: ;
NotFoundJJ; C
(JJC D
)JJD E
;JJE F
}KK 	
)KK	 

.LL 	
WithNameLL	 
(LL 
$strLL "
)LL" #
.MM 	
WithSummaryMM	 
(MM 
$strMM (
)MM( )
.NN 	
WithDescriptionNN	 
(NN 
$strNN C
)NNC D
.OO 	
ProducesOO	 
(OO 
StatusCodesOO 
.OO 
Status204NoContentOO 0
)OO0 1
.PP 	
ProducesPP	 
(PP 
StatusCodesPP 
.PP 
Status404NotFoundPP /
)PP/ 0
;PP0 1
}QQ 
}RR âO
zC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Presentation\Endpoints\VeiculoEndpoints.cs
	namespace 	
Mechanic
 
. 
Presentation 
.  
	Endpoints  )
;) *
public		 
static		 
class		 
VeiculoEndpoints		 $
{

 
public 

static 
void 
MapVeiculoEndpoints *
(* +
this+ /!
IEndpointRouteBuilder0 E
routesF L
)L M
{ 
var 
group 
= 
routes 
. 
MapGroup 
( 
$str %
)% &
.  
RequireAuthorization !
(! "
)" #
. 
WithTags 
( 
$str  
)  !
;! "
group 
. 
MapGet 
( 
$str 
, 
async 
(  !
[! "
AsParameters" .
]. /
VeiculoParamsDto0 @
dtoA D
,D E
[F G
FromKeyedServicesG X
]X Y
VeiculoServiceZ h
servicei p
)p q
=>r t
{ 	
var 
veiculos 
= 
await  
service! (
.( )
ListarTodos) 4
(4 5
dto5 8
)8 9
;9 :
return 
Results 
. 
Ok 
( 
veiculos &
)& '
;' (
} 	
)	 

. 	
WithName	 
( 
$str "
)" #
. 	
WithSummary	 
( 
$str .
). /
. 	
WithDescription	 
( 
$str R
)R S
. 	
Produces	 
< 
List 
< 
VeiculoResponseDto )
>) *
>* +
(+ ,
StatusCodes, 7
.7 8
Status200OK8 C
)C D
;D E
group 
. 
MapGet 
( 
$str 
, 
async #
($ %
int% (
id) +
,+ ,
VeiculoService- ;
service< C
)C D
=>E G
{ 	
var 
veiculo 
= 
await 
service  '
.' (
ListarPorId( 3
(3 4
id4 6
)6 7
;7 8
return 
veiculo 
is 
not !
null" &
?' (
Results) 0
.0 1
Ok1 3
(3 4
veiculo4 ;
); <
:= >
Results? F
.F G
NotFoundG O
(O P
)P Q
;Q R
}   	
)  	 

.!! 	
WithName!!	 
(!! 
$str!! %
)!!% &
."" 	
WithSummary""	 
("" 
$str"" .
)"". /
.## 	
Produces##	 
<## 
VeiculoResponseDto## $
>##$ %
(##% &
StatusCodes##& 1
.##1 2
Status200OK##2 =
)##= >
.$$ 	
Produces$$	 
($$ 
StatusCodes$$ 
.$$ 
Status404NotFound$$ /
)$$/ 0
;$$0 1
group&& 
.&& 
MapPost&& 
(&& 
$str&& 
,&& 
async&&  
(&&! "
[&&" #
FromBody&&# +
]&&+ ,&
AdicionarVeiculoRequestDto&&- G
dto&&H K
,&&K L
[&&M N
FromKeyedServices&&N _
]&&_ `
VeiculoService&&a o
service&&p w
)&&w x
=>&&y {
{'' 	
try(( 
{)) 
var** 
id** 
=** 
await** 
service** &
.**& '
Criar**' ,
(**, -
dto**- 0
)**0 1
;**1 2
return++ 
Results++ 
.++ 
Created++ &
(++& '
$"++' )
$str++) 7
{++7 8
id++8 :
}++: ;
"++; <
,++< =
id++> @
)++@ A
;++A B
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)--  
{.. 
if// 
(// 
ex// 
.// 
Message// 
.// 
Contains// '
(//' (
$str//( /
,/// 0
StringComparison//1 A
.//A B
OrdinalIgnoreCase//B S
)//S T
)//T U
return00 
Results00 "
.00" #
Conflict00# +
(00+ ,
new00, /
{000 1
message002 9
=00: ;
ex00< >
.00> ?
Message00? F
}00G H
)00H I
;00I J
return22 
Results22 
.22 

BadRequest22 )
(22) *
new22* -
{22. /
message220 7
=228 9
ex22: <
.22< =
Message22= D
}22E F
)22F G
;22G H
}33 
}44 	
)44	 

.55 	
WithName55	 
(55 
$str55  
)55  !
.66 	
WithSummary66	 
(66 
$str66 +
)66+ ,
.77 	
WithDescription77	 
(77 
$str77 N
)77N O
.88 	
Produces88	 
<88 
int88 
>88 
(88 
StatusCodes88 "
.88" #
Status201Created88# 3
)883 4
.99 	
Produces99	 
(99 
StatusCodes99 
.99 
Status400BadRequest99 1
)991 2
.:: 	
Produces::	 
(:: 
StatusCodes:: 
.:: 
Status409Conflict:: /
)::/ 0
;::0 1
group<< 
.<< 
MapPut<< 
(<< 
$str<< 
,<< 
async<< #
(<<$ %
int<<% (
id<<) +
,<<+ ,
[<<- .
FromBody<<. 6
]<<6 7&
AtualizarVeiculoRequestDto<<8 R
dto<<S V
,<<V W
[<<X Y
FromKeyedServices<<Y j
]<<j k
VeiculoService<<l z
service	<<{ Ç
)
<<Ç É
=>
<<Ñ Ü
{== 	
try>> 
{?? 
var@@ 
updated@@ 
=@@ 
await@@ #
service@@$ +
.@@+ ,
	Atualizar@@, 5
(@@5 6
id@@6 8
,@@8 9
dto@@: =
)@@= >
;@@> ?
returnAA 
updatedAA 
?AA  
ResultsAA! (
.AA( )
	NoContentAA) 2
(AA2 3
)AA3 4
:AA5 6
ResultsAA7 >
.AA> ?
NotFoundAA? G
(AAG H
)AAH I
;AAI J
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC  
{DD 
ifEE 
(EE 
exEE 
.EE 
MessageEE 
.EE 
ContainsEE '
(EE' (
$strEE( /
,EE/ 0
StringComparisonEE1 A
.EEA B
OrdinalIgnoreCaseEEB S
)EES T
)EET U
returnFF 
ResultsFF "
.FF" #
ConflictFF# +
(FF+ ,
newFF, /
{FF0 1
messageFF2 9
=FF: ;
exFF< >
.FF> ?
MessageFF? F
}FFG H
)FFH I
;FFI J
returnHH 
ResultsHH 
.HH 

BadRequestHH )
(HH) *
newHH* -
{HH. /
messageHH0 7
=HH8 9
exHH: <
.HH< =
MessageHH= D
}HHE F
)HHF G
;HHG H
}II 
}KK 	
)KK	 

.LL 	
WithNameLL	 
(LL 
$strLL $
)LL$ %
.MM 	
WithSummaryMM	 
(MM 
$strMM *
)MM* +
.NN 	
WithDescriptionNN	 
(NN 
$strNN E
)NNE F
.OO 	
ProducesOO	 
(OO 
StatusCodesOO 
.OO 
Status204NoContentOO 0
)OO0 1
.PP 	
ProducesPP	 
(PP 
StatusCodesPP 
.PP 
Status400BadRequestPP 1
)PP1 2
.QQ 	
ProducesQQ	 
(QQ 
StatusCodesQQ 
.QQ 
Status404NotFoundQQ /
)QQ/ 0
;QQ0 1
groupSS 
.SS 
	MapDeleteSS 
(SS 
$strSS 
,SS  
asyncSS! &
(SS' (
intSS( +
idSS, .
,SS. /
VeiculoServiceSS0 >
serviceSS? F
)SSF G
=>SSH J
{TT 	
varUU 
deletedUU 
=UU 
awaitUU 
serviceUU  '
.UU' (
DeletarUU( /
(UU/ 0
idUU0 2
)UU2 3
;UU3 4
returnVV 
deletedVV 
?VV 
ResultsVV $
.VV$ %
	NoContentVV% .
(VV. /
)VV/ 0
:VV1 2
ResultsVV3 :
.VV: ;
NotFoundVV; C
(VVC D
)VVD E
;VVE F
}WW 	
)WW	 

.XX 	
WithNameXX	 
(XX 
$strXX "
)XX" #
.YY 	
WithSummaryYY	 
(YY 
$strYY (
)YY( )
.ZZ 	
WithDescriptionZZ	 
(ZZ 
$strZZ C
)ZZC D
.[[ 	
Produces[[	 
([[ 
StatusCodes[[ 
.[[ 
Status204NoContent[[ 0
)[[0 1
.\\ 	
Produces\\	 
(\\ 
StatusCodes\\ 
.\\ 
Status404NotFound\\ /
)\\/ 0
;\\0 1
}]] 
}^^ π^
ZC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var 
jwtSettings 
= 
builder 
. 
Configuration '
.' (

GetSection( 2
(2 3
$str3 8
)8 9
;9 :
var 
key 
= 	
Encoding
 
. 
UTF8 
. 
GetBytes  
(  !
jwtSettings! ,
[, -
$str- 2
]2 3
!3 4
)4 5
;5 6
builder 
. 
Services 
. 
AddAuthentication "
(" #
options# *
=>+ -
{ 
options 
. %
DefaultAuthenticateScheme %
=& '
JwtBearerDefaults( 9
.9 : 
AuthenticationScheme: N
;N O
options 
. "
DefaultChallengeScheme "
=# $
JwtBearerDefaults% 6
.6 7 
AuthenticationScheme7 K
;K L
} 
) 
. 
AddJwtBearer 
( 
options 
=> 
{ 
options 
. %
TokenValidationParameters %
=& '
new( +%
TokenValidationParameters, E
{ 
ValidateIssuer 
= 
true 
, 
ValidateAudience 
= 
true 
,  $
ValidateIssuerSigningKey  
=! "
true# '
,' (
ValidateLifetime 
= 
true 
,  
ValidIssuer 
= 
jwtSettings !
[! "
$str" *
]* +
,+ ,
ValidAudience   
=   
jwtSettings   #
[  # $
$str  $ .
]  . /
,  / 0
IssuerSigningKey!! 
=!! 
new!!  
SymmetricSecurityKey!! 3
(!!3 4
key!!4 7
)!!7 8
}"" 
;"" 
}## 
)## 
;## 
builder$$ 
.$$ 
Services$$ 
.$$ 
AddAuthorization$$ !
($$! "
)$$" #
;$$# $
builder%% 
.%% 
Services%% 
.%% 
AddValidation%% 
(%% 
)%%  
;%%  !
if'' 
('' 
builder'' 
.'' 
Environment'' 
.'' 
IsEnvironment'' %
(''% &
$str''& /
)''/ 0
)''0 1
{(( 
builder)) 
.)) 
Services)) 
.)) 
AddDbContext)) !
<))! "
AppDbContext))" .
>)). /
())/ 0
options))0 7
=>))8 :
options** 
.** 
	UseSqlite** 
(** 
$str** 0
)**0 1
)**1 2
;**2 3
}++ 
else,, 
{-- 
builder.. 
... 
Services.. 
... 
AddDbContext.. !
<..! "
AppDbContext.." .
>... /
(../ 0
options..0 7
=>..8 :
options// 
.// 
UseSqlServer// 
(// 
builder00 
.00 
Configuration00 !
.00! "
GetConnectionString00" 5
(005 6
$str006 D
)00D E
??11 
throw11 
new11 %
InvalidOperationException11 2
(112 3
$str113 `
)11` a
)22 	
.22	 

LogTo22
 
(22 
Console22 
.22 
	WriteLine22 !
,22! "
LogLevel22# +
.22+ ,
Information22, 7
)227 8
)33 
;33 
}44 
builder66 
.66 
Services66 
.66 
	AddScoped66 
<66 
IClienteRepository66 -
,66- .
ClienteRepository66/ @
>66@ A
(66A B
)66B C
;66C D
builder77 
.77 
Services77 
.77 
	AddScoped77 
<77 
ClienteService77 )
>77) *
(77* +
)77+ ,
;77, -
builder99 
.99 
Services99 
.99 
	AddScoped99 
<99 
IVeiculoRepository99 -
,99- .
VeiculoRepository99/ @
>99@ A
(99A B
)99B C
;99C D
builder:: 
.:: 
Services:: 
.:: 
	AddScoped:: 
<:: 
VeiculoService:: )
>::) *
(::* +
)::+ ,
;::, -
builder<< 
.<< 
Services<< 
.<< 
	AddScoped<< 
<<< 
IServicoRepository<< -
,<<- .
ServicoRepository<</ @
><<@ A
(<<A B
)<<B C
;<<C D
builder== 
.== 
Services== 
.== 
	AddScoped== 
<== 
ServicoService== )
>==) *
(==* +
)==+ ,
;==, -
builder?? 
.?? 
Services?? 
.?? 
	AddScoped?? 
<?? 
IProdutoRepository?? -
,??- .
ProdutoRepository??/ @
>??@ A
(??A B
)??B C
;??C D
builder@@ 
.@@ 
Services@@ 
.@@ 
	AddScoped@@ 
<@@ 
ProdutoService@@ )
>@@) *
(@@* +
)@@+ ,
;@@, -
builderBB 
.BB 
ServicesBB 
.BB 
	AddScopedBB 
<BB #
IOrdemServicoRepositoryBB 2
,BB2 3"
OrdemServicoRepositoryBB4 J
>BBJ K
(BBK L
)BBL M
;BBM N
builderCC 
.CC 
ServicesCC 
.CC 
	AddScopedCC 
<CC ,
 IOrdemServicoOrcamentoRepositoryCC ;
,CC; <+
OrdemServicoOrcamentoRepositoryCC= \
>CC\ ]
(CC] ^
)CC^ _
;CC_ `
builderDD 
.DD 
ServicesDD 
.DD 
	AddScopedDD 
<DD *
IOrdemServicoProdutoRepositoryDD 9
,DD9 :)
OrdemServicoProdutoRepositoryDD; X
>DDX Y
(DDY Z
)DDZ [
;DD[ \
builderEE 
.EE 
ServicesEE 
.EE 
	AddScopedEE 
<EE *
IOrdemServicoServicoRepositoryEE 9
,EE9 :)
OrdemServicoServicoRepositoryEE; X
>EEX Y
(EEY Z
)EEZ [
;EE[ \
builderFF 
.FF 
ServicesFF 
.FF 
	AddScopedFF 
<FF -
!IOrdemServicoServicoLogRepositoryFF <
,FF< =,
 OrdemServicoServicoLogRepositoryFF> ^
>FF^ _
(FF_ `
)FF` a
;FFa b
builderHH 
.HH 
ServicesHH 
.HH 
	AddScopedHH 
<HH 
OrdemServicoServiceHH .
>HH. /
(HH/ 0
)HH0 1
;HH1 2
builderJJ 
.JJ 
ServicesJJ 
.JJ 
	AddScopedJJ 
<JJ 
IUnitOfWorkJJ &
,JJ& '

UnitOfWorkJJ( 2
>JJ2 3
(JJ3 4
)JJ4 5
;JJ5 6
builderMM 
.MM 
ServicesMM 
.MM 
	AddScopedMM 
<MM 
AuthServiceMM &
>MM& '
(MM' (
)MM( )
;MM) *
builderOO 
.OO 
ServicesOO 
.OO #
AddEndpointsApiExplorerOO (
(OO( )
)OO) *
;OO* +
builderQQ 
.QQ 
ServicesQQ 
.QQ 
AddSwaggerGenQQ 
(QQ 
optionsQQ &
=>QQ' )
{RR 
optionsSS 
.SS !
AddSecurityDefinitionSS !
(SS! "
$strSS" *
,SS* +
newSS, /!
OpenApiSecuritySchemeSS0 E
{TT 
NameUU 
=UU 
$strUU 
,UU 
DescriptionVV 
=VV 
$strVV 2
,VV2 3
InWW 

=WW 
ParameterLocationWW 
.WW 
HeaderWW %
,WW% &
TypeXX 
=XX 
SecuritySchemeTypeXX !
.XX! "
HttpXX" &
,XX& '
SchemeYY 
=YY 
$strYY 
,YY 
BearerFormatZZ 
=ZZ 
$strZZ 
}[[ 
)[[ 
;[[ 
options]] 
.]] "
AddSecurityRequirement]] "
(]]" #
document]]# +
=>]], .
new]]/ 2&
OpenApiSecurityRequirement]]3 M
{^^ 
{__ 	
new`` *
OpenApiSecuritySchemeReference`` .
(``. /
$str``/ 7
)``7 8
,``8 9
newaa 
Listaa 
<aa 
stringaa 
>aa 
(aa 
)aa 
}bb 	
}cc 
)cc 
;cc 
}dd 
)dd 
;dd 
vargg 
appgg 
=gg 	
buildergg
 
.gg 
Buildgg 
(gg 
)gg 
;gg 
ifii 
(ii 
appii 
.ii 
Environmentii 
.ii 
IsDevelopmentii !
(ii! "
)ii" #
)ii# $
{jj 
appkk 
.kk 

UseSwaggerkk 
(kk 
)kk 
;kk 
appll 
.ll 
UseSwaggerUIll 
(ll 
)ll 
;ll 
}mm 
appoo 
.oo 
UseAuthenticationoo 
(oo 
)oo 
;oo 
apppp 
.pp 
UseAuthorizationpp 
(pp 
)pp 
;pp 
appqq 
.qq 
MapAuthEndpointsqq 
(qq 
)qq 
;qq 
appss 
.ss 
UseHttpsRedirectionss 
(ss 
)ss 
;ss 
appuu 
.uu 
MapClienteEndpointsuu 
(uu 
)uu 
;uu 
appvv 
.vv 
MapVeiculoEndpointsvv 
(vv 
)vv 
;vv 
appww 
.ww 
MapServicoEndpointsww 
(ww 
)ww 
;ww 
appxx 
.xx 
MapProdutoEndpointsxx 
(xx 
)xx 
;xx 
appyy 
.yy $
MapOrdemServicoEndpointsyy 
(yy 
)yy 
;yy 
appzz 
.zz +
MapOrdemServicoExternoEndpointszz #
(zz# $
)zz$ %
;zz% &
using|| 
(|| 
var|| 

scope|| 
=|| 
app|| 
.|| 
Services|| 
.||  
CreateScope||  +
(||+ ,
)||, -
)||- .
{}} 
var~~ 
db~~ 

=~~ 
scope~~ 
.~~ 
ServiceProvider~~ "
.~~" #
GetRequiredService~~# 5
<~~5 6
AppDbContext~~6 B
>~~B C
(~~C D
)~~D E
;~~E F
if
ÄÄ 
(
ÄÄ 
app
ÄÄ 
.
ÄÄ 
Environment
ÄÄ 
.
ÄÄ 
IsDevelopment
ÄÄ %
(
ÄÄ% &
)
ÄÄ& '
)
ÄÄ' (
{
ÅÅ 
db
ÇÇ 

.
ÇÇ
 
Database
ÇÇ 
.
ÇÇ 
Migrate
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 
}ÑÑ 
appÜÜ 
.
ÜÜ 
Run
ÜÜ 
(
ÜÜ 
)
ÜÜ 	
;
ÜÜ	 
Í
iC:\Users\joaopauloexcel\projects\POS_Arq_soft\projeto_oficina_mecanica\Mechanic\UnitOfWork\UnitOfWork .cs
	namespace 	
Mechanic
 
. 

UnitOfWork 
{ 
public 

class 

UnitOfWork 
: 
IUnitOfWork )
{ 
private		 
readonly		 
AppDbContext		 %
_context		& .
;		. /
private

 !
IDbContextTransaction

 %
?

% &
_transaction

' 3
;

3 4
public 

UnitOfWork 
( 
AppDbContext &
context' .
). /
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task !
BeginTransactionAsync /
(/ 0
)0 1
{ 	
_transaction 
= 
await  
_context! )
.) *
Database* 2
.2 3!
BeginTransactionAsync3 H
(H I
)I J
;J K
} 	
public 
async 
Task 
CommitAsync %
(% &
)& '
{ 	
await 
_context 
. 
SaveChangesAsync +
(+ ,
), -
;- .
if 
( 
_transaction 
!= 
null  $
)$ %
{ 
await 
_transaction "
." #
CommitAsync# .
(. /
)/ 0
;0 1
await 
_transaction "
." #
DisposeAsync# /
(/ 0
)0 1
;1 2
_transaction   
=   
null   #
;  # $
}!! 
}"" 	
public$$ 
async$$ 
Task$$ 
RollbackAsync$$ '
($$' (
)$$( )
{%% 	
if&& 
(&& 
_transaction&& 
!=&& 
null&&  $
)&&$ %
await'' 
_transaction'' "
.''" #
RollbackAsync''# 0
(''0 1
)''1 2
;''2 3
}(( 	
})) 
}** 