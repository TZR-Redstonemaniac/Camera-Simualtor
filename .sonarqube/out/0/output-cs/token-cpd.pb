�
yC:\Users\kdeen\OneDrive\Documents\Coding Projects\Camera-Simulator\Assets\Shapes\Scripts\Runtime\Microtypes\LineEndCap.cs
	namespace 	
Shapes
 
{ 
public 
enum 

LineEndCap
{ 
None		 
,		 
Square 
, 	
Round 
} 
} �
�C:\Users\kdeen\OneDrive\Documents\Coding Projects\Camera-Simulator\Assets\Shapes\Scripts\Runtime\Microtypes\RegularPolygonGeometry.cs
	namespace 	
Shapes
 
{ 
public 
enum "
RegularPolygonGeometry
{$ %
Flat2D 
, 	
	Billboard 
}		 
} �8
yC:\Users\kdeen\OneDrive\Documents\Coding Projects\Camera-Simulator\Assets\Shapes\Scripts\Runtime\Utils\ShapesMeshUtils.cs
	namespace 	
Shapes
 
{ 
internal

 	
static


 
class

 
ShapesMeshUtils

 &
{

' (
static
Mesh
quadMesh
;
public 
static	 
Mesh 
[ 
] 
QuadMesh 
=>  "
ShapesAssets# /
./ 0
Instance0 8
.8 9
meshQuad9 A
;A B
static 
Mesh	 
triangleMesh 
; 
public 
static	 
Mesh 
[ 
] 
TriangleMesh #
=>$ &
ShapesAssets' 3
.3 4
Instance4 <
.< =
meshTriangle= I
;I J
static 
Mesh	 

sphereMesh 
; 
public 
static	 
Mesh 
[ 
] 

SphereMesh !
=>" $
ShapesAssets% 1
.1 2
Instance2 :
.: ;

meshSphere; E
;E F
static 
Mesh	 

cuboidMesh 
; 
public 
static	 
Mesh 
[ 
] 

CuboidMesh !
=>" $
ShapesAssets% 1
.1 2
Instance2 :
.: ;
meshCube; C
;C D
static 
Mesh	 
	torusMesh 
; 
public 
static	 
Mesh 
[ 
] 
	TorusMesh  
=>! #
ShapesAssets$ 0
.0 1
Instance1 9
.9 :
	meshTorus: C
;C D
static 
Mesh	 
coneMesh 
; 
public 
static	 
Mesh 
[ 
] 
ConeMesh 
=>  "
ShapesAssets# /
./ 0
Instance0 8
.8 9
meshCone9 A
;A B
static 
Mesh	 
coneMeshUncapped 
; 
public   
static  	 
Mesh   
[   
]   
ConeMeshUncapped   '
=>  ( *
ShapesAssets  + 7
.  7 8
Instance  8 @
.  @ A
meshConeUncapped  A Q
;  Q R
static"" 
Mesh""	 
cylinderMesh"" 
;"" 
public## 
static##	 
Mesh## 
[## 
]## 
CylinderMesh## #
=>##$ &
ShapesAssets##' 3
.##3 4
Instance##4 <
.##< =
meshCylinder##= I
;##I J
static%% 
Mesh%%	 
capsuleMesh%% 
;%% 
public&& 
static&&	 
Mesh&& 
[&& 
]&& 
CapsuleMesh&& "
=>&&# %
ShapesAssets&&& 2
.&&2 3
Instance&&3 ;
.&&; <
meshCapsule&&< G
;&&G H
static** 
ShapesMeshUtils**	 
(** 
)** 
=>**  
AssemblyReloadEvents** 2
.**2 3 
beforeAssemblyReload**3 G
+=**H J
OnPreAssemblyReload**K ^
;**^ _
static,, 
void,,	 
OnPreAssemblyReload,, !
(,,! "
),," #
{,,$ % 
AssemblyReloadEvents-- 
.--  
beforeAssemblyReload-- ,
-=--- /
OnPreAssemblyReload--0 C
;--C D
BindingFlags.. 
bfs.. 
=.. 
BindingFlags.. "
..." #
Static..# )
|..* +
BindingFlags.., 8
...8 9
Public..9 ?
|..@ A
BindingFlags..B N
...N O
	NonPublic..O X
;..X Y
bool// 
IsDestroyTarget// 
(// 
	FieldInfo// "
f//# $
)//% &
=>//' )
f//* +
.//+ ,
GetCustomAttributes//, ?
(//? @
typeof//A G
(//G H#
DestroyOnAssemblyReload//H _
)//_ `
,//` a
false//b g
)//h i
.//i j
Length//j p
>//q r
$num//s t
&&//u w
f//x y
.//y z
GetValue	//z �
(
//� �
null
//� �
)
//� �
!=
//� �
null
//� �
;
//� �
foreach11 

(11
 
	FieldInfo11 
field11 
in11 
typeof11 %
(11% &
ShapesMeshUtils11& 5
)115 6
.116 7
	GetFields117 @
(11@ A
bfs11B E
)11F G
.11G H
Where11H M
(11M N
IsDestroyTarget11O ^
)11_ `
)11a b
{11c d
Object22 

obj22 
=22 
(22 
Object22 
)22 
field22 
.22 
GetValue22 '
(22' (
null22) -
)22. /
;22/ 0
Object33 

.33
 
DestroyImmediate33 
(33 
obj33  
)33! "
;33" #
}44 
}55 
static:: 
Mesh::	 
EnsureValidMeshBounds:: #
(::# $
Mesh::% )
mesh::* .
,::. /
Bounds::0 6
bounds::7 =
)::> ?
{::@ A
mesh;; 
.;; 
	hideFlags;; 
=;; 
	HideFlags;; 
.;; 
HideInInspector;; -
;;;- .
mesh<< 
.<< 
bounds<< 
=<< 
bounds<< 
;<< 
return== 	
mesh==
 
;== 
}>> 
public@@ 
static@@	 
Mesh@@ 
GetLineMesh@@  
(@@  !
LineGeometry@@" .
geometry@@/ 7
,@@7 8

LineEndCap@@9 C
endCaps@@D K
,@@K L
DetailLevel@@M X
detail@@Y _
)@@` a
{@@b c
switchAA 	
(AA	 

geometryAA 
)AA 
{AA 
caseBB 
LineGeometryBB	 
.BB 
	BillboardBB 
:BB  
caseCC 
LineGeometryCC	 
.CC 
Flat2DCC 
:CC 
returnDD 
QuadMeshDD 
[DD 
$numDD 
]DD 
;DD 
caseEE 
LineGeometryEE	 
.EE 
Volumetric3DEE "
:EE" #
returnFF 
endCapsFF 
==FF 

LineEndCapFF !
.FF! "
RoundFF" '
?FF( )
CapsuleMeshFF* 5
[FF5 6
(FF6 7
intFF7 :
)FF: ;
detailFF; A
]FFA B
:FFC D
CylinderMeshFFE Q
[FFQ R
(FFR S
intFFS V
)FFV W
detailFFW ]
]FF] ^
;FF^ _
}GG 
returnII 	
defaultII
 
;II 
}JJ 
}LL 
}NN �
xC:\Users\kdeen\OneDrive\Documents\Coding Projects\Camera-Simulator\Assets\Shapes\Scripts\Runtime\Microtypes\RectPivot.cs
	namespace 	
Shapes
 
{ 
public 
enum 
	RectPivot
{ 
Corner 
, 	
Center		 
}

 
public 
static 
class 
RectPivotExtensions (
{) *
public
static
Rect
GetRect
(
this
	RectPivot
pivot
,
Vector2
size
)
=>
pivot
.
GetRect
(
size
.
x
,
size
.
y
)
;
public 
static	 
Rect 
GetRect 
( 
this "
	RectPivot# ,
pivot- 2
,2 3
float4 9
w: ;
,; <
float= B
hC D
)E F
=>G I
pivotJ O
==P R
	RectPivotS \
.\ ]
Corner] c
?d e
newf i
Rectj n
(n o
$nump q
,q r
$nums t
,t u
wv w
,w x
hy z
){ |
:} ~
new	 �
Rect
� �
(
� �
-
� �
w
� �
/
� �
$num
� �
,
� �
-
� �
h
� �
/
� �
$num
� �
,
� �
w
� �
,
� �
h
� �
)
� �
;
� �
} 
} �
zC:\Users\kdeen\OneDrive\Documents\Coding Projects\Camera-Simulator\Assets\Shapes\Scripts\Runtime\Microtypes\DetailLevel.cs
	namespace 	
Shapes
 
{ 
public 
enum 
DetailLevel
{ 
Minimal 	
,	 

Low 
, 
Medium		 
,		 	
High

 
,

 
Extreme 	
} 
} ޶<
�C:\Users\kdeen\OneDrive\Documents\Coding Projects\Camera-Simulator\Assets\Shapes\Scripts\Runtime\Immediate Mode\DrawOverloads.cs
	namespace 	
Shapes
 
{ 
public		 
static		 
partial		 
class		 
Draw		 !
{		" #
[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
)M N
=>O Q

(_ `
LineEndCapsa l
,l m
ThicknessSpacen |
,| }
start	~ �
,
� �
end
� �
,
� �
Color
� �
,
� �
Color
� �
,
� �
	Thickness
� �
)
� �
;
� �
[

MethodImpl
(
INLINE
)
]
public
static
void
Line
(
Vector3
start
,
Vector3
end
,
Color
color
)
=>

(
LineEndCaps
,
ThicknessSpace	
,

start

,

end

,

color

,

color

,

	Thickness

)

;

[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
,L M
ColorN S

colorStartT ^
,^ _
Color` e
colorEndf n
)o p
=>q s

(
� �
LineEndCaps
� �
,
� �
ThicknessSpace
� �
,
� �
start
� �
,
� �
end
� �
,
� �

colorStart
� �
,
� �
colorEnd
� �
,
� �
	Thickness
� �
)
� �
;
� �
[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
,L M
floatN S
	thicknessT ]
)^ _
=>` b

(p q
LineEndCapsr }
,} ~
ThicknessSpace	 �
,
� �
start
� �
,
� �
end
� �
,
� �
Color
� �
,
� �
Color
� �
,
� �
	thickness
� �
)
� �
;
� �
[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
,L M
floatN S
	thicknessT ]
,] ^
Color_ d
colore j
)k l
=>m o

(} ~
LineEndCaps	 �
,
� �
ThicknessSpace
� �
,
� �
start
� �
,
� �
end
� �
,
� �
color
� �
,
� �
color
� �
,
� �
	thickness
� �
)
� �
;
� �
[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
,L M
floatN S
	thicknessT ]
,] ^
Color_ d

colorStarte o
,o p
Colorq v
colorEndw 
)
� �
=>
� �

� �
(
� �
LineEndCaps
� �
,
� �
ThicknessSpace
� �
,
� �
start
� �
,
� �
end
� �
,
� �

colorStart
� �
,
� �
colorEnd
� �
,
� �
	thickness
� �
)
� �
;
� �
[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
,L M

LineEndCapN X
endCapsY `
)a b
=>c e

(s t
endCapsu |
,| }
ThicknessSpace	~ �
,
� �
start
� �
,
� �
end
� �
,
� �
Color
� �
,
� �
Color
� �
,
� �
	Thickness
� �
)
� �
;
� �
[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
,L M

LineEndCapN X
endCapsY `
,` a
Colorb g
colorh m
)n o
=>p r

(
� �
endCaps
� �
,
� �
ThicknessSpace
� �
,
� �
start
� �
,
� �
end
� �
,
� �
color
� �
,
� �
color
� �
,
� �
	Thickness
� �
)
� �
;
� �
[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
,L M

LineEndCapN X
endCapsY `
,` a
Colorb g

colorStarth r
,r s
Colort y
colorEnd	z �
)
� �
=>
� �

� �
(
� �
endCaps
� �
,
� �
ThicknessSpace
� �
,
� �
start
� �
,
� �
end
� �
,
� �

colorStart
� �
,
� �
colorEnd
� �
,
� �
	Thickness
� �
)
� �
;
� �
[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
,L M
floatN S
	thicknessT ]
,] ^

LineEndCap_ i
endCapsj q
)r s
=>t v

(
� �
endCaps
� �
,
� �
ThicknessSpace
� �
,
� �
start
� �
,
� �
end
� �
,
� �
Color
� �
,
� �
Color
� �
,
� �
	thickness
� �
)
� �
;
� �
[ 

MethodImpl 
(
INLINE 
) 
] 
public 
static  &
void' +
Line, 0
(0 1
Vector32 9
start: ?
,? @
Vector3A H
endI L
,L M
floatN S
	thicknessT ]
,] ^

LineEndCap_ i
endCapsj q
,q r
Colors x
colory ~
)	 �
=>
� �

� �
(
� �
endCaps
� �
,
� �
ThicknessSpace
� �
,
� �
start
� �
,
� �
end
� �
,
� �
color
� �
,
� �
color
� �
,
� �
	thickness
� �
)
� �
;
� �
[!! 

MethodImpl!! 
(!!
INLINE!! 
)!! 
]!! 
public!! 
static!!  &
void!!' +
Line!!, 0
(!!0 1
Vector3!!2 9
start!!: ?
,!!? @
Vector3!!A H
end!!I L
,!!L M
float!!N S
	thickness!!T ]
,!!] ^

LineEndCap!!_ i
endCaps!!j q
,!!q r
Color!!s x

colorStart	!!y �
,
!!� �
Color
!!� �
colorEnd
!!� �
)
!!� �
=>
!!� �

!!� �
(
!!� �
endCaps
!!� �
,
!!� �
ThicknessSpace
!!� �
,
!!� �
start
!!� �
,
!!� �
end
!!� �
,
!!� �

colorStart
!!� �
,
!!� �
colorEnd
!!� �
,
!!� �
	thickness
!!� �
)
!!� �
;
!!� �
[## 

MethodImpl## 
(##
INLINE## 
)## 
]## 
public## 
static##  &
void##' +
Polyline##, 4
(##4 5
PolylinePath##6 B
path##C G
)##H I
=>##J L
Polyline_Internal##M ^
(##^ _
path##` d
,##d e
false##f k
,##k l
PolylineGeometry##m }
,##} ~

,
##� �
	Thickness
##� �
,
##� �
ThicknessSpace
##� �
,
##� �
Color
##� �
)
##� �
;
##� �
[%% 

MethodImpl%% 
(%%
INLINE%% 
)%% 
]%% 
public%% 
static%%  &
void%%' +
Polyline%%, 4
(%%4 5
PolylinePath%%6 B
path%%C G
,%%G H
bool%%I M
closed%%N T
)%%U V
=>%%W Y
Polyline_Internal%%Z k
(%%k l
path%%m q
,%%q r
closed%%s y
,%%y z
PolylineGeometry	%%{ �
,
%%� �

%%� �
,
%%� �
	Thickness
%%� �
,
%%� �
ThicknessSpace
%%� �
,
%%� �
Color
%%� �
)
%%� �
;
%%� �
['' 

MethodImpl'' 
(''
INLINE'' 
)'' 
]'' 
public'' 
static''  &
void''' +
Polyline'', 4
(''4 5
PolylinePath''6 B
path''C G
,''G H
float''I N
	thickness''O X
)''Y Z
=>''[ ]
Polyline_Internal''^ o
(''o p
path''q u
,''u v
false''w |
,''| }
PolylineGeometry	''~ �
,
''� �

''� �
,
''� �
	thickness
''� �
,
''� �
ThicknessSpace
''� �
,
''� �
Color
''� �
)
''� �
;
''� �
[)) 

MethodImpl)) 
())
INLINE)) 
))) 
])) 
public)) 
static))  &
void))' +
Polyline)), 4
())4 5
PolylinePath))6 B
path))C G
,))G H
bool))I M
closed))N T
,))T U
float))V [
	thickness))\ e
)))f g
=>))h j
Polyline_Internal))k |
())| }
path	))~ �
,
))� �
closed
))� �
,
))� �
PolylineGeometry
))� �
,
))� �

))� �
,
))� �
	thickness
))� �
,
))� �
ThicknessSpace
))� �
,
))� �
Color
))� �
)
))� �
;
))� �
[++ 

MethodImpl++ 
(++
INLINE++ 
)++ 
]++ 
public++ 
static++  &
void++' +
Polyline++, 4
(++4 5
PolylinePath++6 B
path++C G
,++G H

joins++W \
)++] ^
=>++_ a
Polyline_Internal++b s
(++s t
path++u y
,++y z
false	++{ �
,
++� �
PolylineGeometry
++� �
,
++� �
joins
++� �
,
++� �
	Thickness
++� �
,
++� �
ThicknessSpace
++� �
,
++� �
Color
++� �
)
++� �
;
++� �
[-- 

MethodImpl-- 
(--
INLINE-- 
)-- 
]-- 
public-- 
static--  &
void--' +
Polyline--, 4
(--4 5
PolylinePath--6 B
path--C G
,--G H
bool--I M
closed--N T
,--T U

joins--d i
)--j k
=>--l n
Polyline_Internal	--o �
(
--� �
path
--� �
,
--� �
closed
--� �
,
--� �
PolylineGeometry
--� �
,
--� �
joins
--� �
,
--� �
	Thickness
--� �
,
--� �
ThicknessSpace
--� �
,
--� �
Color
--� �
)
--� �
;
--� �
[// 

MethodImpl// 
(//
INLINE// 
)// 
]// 
public// 
static//  &
void//' +
Polyline//, 4
(//4 5
PolylinePath//6 B
path//C G
,//G H
float//I N
	thickness//O X
,//X Y

joins//h m
)//n o
=>//p r
Polyline_Internal	//s �
(
//� �
path
//� �
,
//� �
false
//� �
,
//� �
PolylineGeometry
//� �
,
//� �
joins
//� �
,
//� �
	thickness
//� �
,
//� �
ThicknessSpace
//� �
,
//� �
Color
//� �
)
//� �
;
//� �
[11 

MethodImpl11 
(11
INLINE11 
)11 
]11 
public11 
static11  &
void11' +
Polyline11, 4
(114 5
PolylinePath116 B
path11C G
,11G H
bool11I M
closed11N T
,11T U
float11V [
	thickness11\ e
,11e f

joins11u z
)11{ |
=>11} 
Polyline_Internal
11� �
(
11� �
path
11� �
,
11� �
closed
11� �
,
11� �
PolylineGeometry
11� �
,
11� �
joins
11� �
,
11� �
	thickness
11� �
,
11� �
ThicknessSpace
11� �
,
11� �
Color
11� �
)
11� �
;
11� �
[33 

MethodImpl33 
(33
INLINE33 
)33 
]33 
public33 
static33  &
void33' +
Polyline33, 4
(334 5
PolylinePath336 B
path33C G
,33G H
Color33I N
color33O T
)33U V
=>33W Y
Polyline_Internal33Z k
(33k l
path33m q
,33q r
false33s x
,33x y
PolylineGeometry	33z �
,
33� �

33� �
,
33� �
	Thickness
33� �
,
33� �
ThicknessSpace
33� �
,
33� �
color
33� �
)
33� �
;
33� �
[55 

MethodImpl55 
(55
INLINE55 
)55 
]55 
public55 
static55  &
void55' +
Polyline55, 4
(554 5
PolylinePath556 B
path55C G
,55G H
bool55I M
closed55N T
,55T U
Color55V [
color55\ a
)55b c
=>55d f
Polyline_Internal55g x
(55x y
path55z ~
,55~ 
closed
55� �
,
55� �
PolylineGeometry
55� �
,
55� �

55� �
,
55� �
	Thickness
55� �
,
55� �
ThicknessSpace
55� �
,
55� �
color
55� �
)
55� �
;
55� �
[77 

MethodImpl77 
(77
INLINE77 
)77 
]77 
public77 
static77  &
void77' +
Polyline77, 4
(774 5
PolylinePath776 B
path77C G
,77G H
float77I N
	thickness77O X
,77X Y
Color77Z _
color77` e
)77f g
=>77h j
Polyline_Internal77k |
(77| }
path	77~ �
,
77� �
false
77� �
,
77� �
PolylineGeometry
77� �
,
77� �

77� �
,
77� �
	thickness
77� �
,
77� �
ThicknessSpace
77� �
,
77� �
color
77� �
)
77� �
;
77� �
[99 

MethodImpl99 
(99
INLINE99 
)99 
]99 
public99 
static99  &
void99' +
Polyline99, 4
(994 5
PolylinePath996 B
path99C G
,99G H
bool99I M
closed99N T
,99T U
float99V [
	thickness99\ e
,99e f
Color99g l
color99m r
)99s t
=>99u w
Polyline_Internal	99x �
(
99� �
path
99� �
,
99� �
closed
99� �
,
99� �
PolylineGeometry
99� �
,
99� �

99� �
,
99� �
	thickness
99� �
,
99� �
ThicknessSpace
99� �
,
99� �
color
99� �
)
99� �
;
99� �
[;; 

MethodImpl;; 
(;;
INLINE;; 
);; 
];; 
public;; 
static;;  &
void;;' +
Polyline;;, 4
(;;4 5
PolylinePath;;6 B
path;;C G
,;;G H

joins;;W \
,;;\ ]
Color;;^ c
color;;d i
);;j k
=>;;l n
Polyline_Internal	;;o �
(
;;� �
path
;;� �
,
;;� �
false
;;� �
,
;;� �
PolylineGeometry
;;� �
,
;;� �
joins
;;� �
,
;;� �
	Thickness
;;� �
,
;;� �
ThicknessSpace
;;� �
,
;;� �
color
;;� �
)
;;� �
;
;;� �
[== 

MethodImpl== 
(==
INLINE== 
)== 
]== 
public== 
static==  &
void==' +
Polyline==, 4
(==4 5
PolylinePath==6 B
path==C G
,==G H
bool==I M
closed==N T
,==T U

joins==d i
,==i j
Color==k p
color==q v
)==w x
=>==y {
Polyline_Internal	==| �
(
==� �
path
==� �
,
==� �
closed
==� �
,
==� �
PolylineGeometry
==� �
,
==� �
joins
==� �
,
==� �
	Thickness
==� �
,
==� �
ThicknessSpace
==� �
,
==� �
color
==� �
)
==� �
;
==� �
[?? 

MethodImpl?? 
(??
INLINE?? 
)?? 
]?? 
public?? 
static??  &
void??' +
Polyline??, 4
(??4 5
PolylinePath??6 B
path??C G
,??G H
float??I N
	thickness??O X
,??X Y

joins??h m
,??m n
Color??o t
color??u z
)??{ |
=>??} 
Polyline_Internal
??� �
(
??� �
path
??� �
,
??� �
false
??� �
,
??� �
PolylineGeometry
??� �
,
??� �
joins
??� �
,
??� �
	thickness
??� �
,
??� �
ThicknessSpace
??� �
,
??� �
color
??� �
)
??� �
;
??� �
[AA 

MethodImplAA 
(AA
INLINEAA 
)AA 
]AA 
publicAA 
staticAA  &
voidAA' +
PolylineAA, 4
(AA4 5
PolylinePathAA6 B
pathAAC G
,AAG H
boolAAI M
closedAAN T
,AAT U
floatAAV [
	thicknessAA\ e
,AAe f

joinsAAu z
,AAz {
Color	AA| �
color
AA� �
)
AA� �
=>
AA� �
Polyline_Internal
AA� �
(
AA� �
path
AA� �
,
AA� �
closed
AA� �
,
AA� �
PolylineGeometry
AA� �
,
AA� �
joins
AA� �
,
AA� �
	thickness
AA� �
,
AA� �
ThicknessSpace
AA� �
,
AA� �
color
AA� �
)
AA� �
;
AA� �
[CC 

MethodImplCC 
(CC
INLINECC 
)CC 
]CC 
publicCC 
staticCC  &
voidCC' +
PolygonCC, 3
(CC3 4
PolygonPathCC5 @
pathCCA E
)CCF G
=>CCH J
Polygon_InternalCCK [
(CC[ \
pathCC] a
,CCa b 
PolygonTriangulationCCc w
,CCw x
ColorCCy ~
)	CC �
;
CC� �
[EE 

MethodImplEE 
(EE
INLINEEE 
)EE 
]EE 
publicEE 
staticEE  &
voidEE' +
PolygonEE, 3
(EE3 4
PolygonPathEE5 @
pathEEA E
,EEE F
ColorEEG L
colorEEM R
)EES T
=>EEU W
Polygon_InternalEEX h
(EEh i
pathEEj n
,EEn o!
PolygonTriangulation	EEp �
,
EE� �
color
EE� �
)
EE� �
;
EE� �
[GG 

MethodImplGG 
(GG
INLINEGG 
)GG 
]GG 
publicGG 
staticGG  &
voidGG' +
PolygonGG, 3
(GG3 4
PolygonPathGG5 @
pathGGA E
,GGE F 
PolygonTriangulationGGG [

)GGj k
=>GGl n
Polygon_InternalGGo 
(	GG �
path
GG� �
,
GG� �

GG� �
,
GG� �
Color
GG� �
)
GG� �
;
GG� �
[II 

MethodImplII 
(II
INLINEII 
)II 
]II 
publicII 
staticII  &
voidII' +
PolygonII, 3
(II3 4
PolygonPathII5 @
pathIIA E
,IIE F 
PolygonTriangulationIIG [

,IIi j
ColorIIk p
colorIIq v
)IIw x
=>IIy {
Polygon_Internal	II| �
(
II� �
path
II� �
,
II� �

II� �
,
II� �
color
II� �
)
II� �
;
II� �
[KK 

MethodImplKK 
(KK
INLINEKK 
)KK 
]KK 
publicKK 
staticKK  &
voidKK' +
RegularPolygonKK, :
(KK: ;
Vector3KK< C
posKKD G
)KKH I
{KKJ K
DrawLL 
.LL 

PushMatrixLL 
(LL 
)LL 
;LL 
DrawMM 
.MM 
	TranslateMM 
(MM 
posMM 
)MM 
;MM #
RegularPolygon_InternalNN 
(NN #
RegularPolygonSideCountNN 3
,NN3 4
RadiusNN5 ;
,NN; <
	ThicknessNN= F
,NNF G
ColorNNH M
,NNM N
falseNNO T
,NNT U
$numNNV X
,NNX Y
$numNNZ \
)NN] ^
;NN^ _
DrawOO 
.OO 
	PopMatrixOO 
(OO 
)OO 
;OO 
}PP 
[RR 

MethodImplRR 
(RR
INLINERR 
)RR 
]RR 
publicRR 
staticRR  &
voidRR' +
RegularPolygonRR, :
(RR: ;
Vector3RR< C
posRRD G
,RRG H
ColorRRI N
colorRRO T
)RRU V
{RRW X
DrawSS 
.SS 

PushMatrixSS 
(SS 
)SS 
;SS 
DrawTT 
.TT 
	TranslateTT 
(TT 
posTT 
)TT 
;TT #
RegularPolygon_InternalUU 
(UU #
RegularPolygonSideCountUU 3
,UU3 4
RadiusUU5 ;
,UU; <
	ThicknessUU= F
,UUF G
colorUUH M
,UUM N
falseUUO T
,UUT U
$numUUV X
,UUX Y
$numUUZ \
)UU] ^
;UU^ _
DrawVV 
.VV 
	PopMatrixVV 
(VV 
)VV 
;VV 
}WW 
[YY 

MethodImplYY 
(YY
INLINEYY 
)YY 
]YY 
publicYY 
staticYY  &
voidYY' +
RegularPolygonYY, :
(YY: ;
Vector3YY< C
posYYD G
,YYG H
floatYYI N
radiusYYO U
)YYV W
{YYX Y
DrawZZ 
.ZZ 

PushMatrixZZ 
(ZZ 
)ZZ 
;ZZ 
Draw[[ 
.[[ 
	Translate[[ 
([[ 
pos[[ 
)[[ 
;[[ #
RegularPolygon_Internal\\ 
(\\ #
RegularPolygonSideCount\\ 3
,\\3 4
radius\\5 ;
,\\; <
	Thickness\\= F
,\\F G
Color\\H M
,\\M N
false\\O T
,\\T U
$num\\V X
,\\X Y
$num\\Z \
)\\] ^
;\\^ _
Draw]] 
.]] 
	PopMatrix]] 
(]] 
)]] 
;]] 
}^^ 
[`` 

MethodImpl`` 
(``
INLINE`` 
)`` 
]`` 
public`` 
static``  &
void``' +
RegularPolygon``, :
(``: ;
Vector3``< C
pos``D G
,``G H
float``I N
radius``O U
,``U V
Color``W \
color``] b
)``c d
{``e f
Drawaa 
.aa 

PushMatrixaa 
(aa 
)aa 
;aa 
Drawbb 
.bb 
	Translatebb 
(bb 
posbb 
)bb 
;bb #
RegularPolygon_Internalcc 
(cc #
RegularPolygonSideCountcc 3
,cc3 4
radiuscc5 ;
,cc; <
	Thicknesscc= F
,ccF G
colorccH M
,ccM N
falseccO T
,ccT U
$numccV X
,ccX Y
$numccZ \
)cc] ^
;cc^ _
Drawdd 
.dd 
	PopMatrixdd 
(dd 
)dd 
;dd 
}ee 
[gg 

MethodImplgg 
(gg
INLINEgg 
)gg 
]gg 
publicgg 
staticgg  &
voidgg' +
RegularPolygongg, :
(gg: ;
Vector3gg< C
posggD G
,ggG H
floatggI N
radiusggO U
,ggU V
floatggW \
anglegg] b
)ggc d
{gge f
Drawhh 
.hh 

PushMatrixhh 
(hh 
)hh 
;hh 
Drawii 
.ii 
	Translateii 
(ii 
posii 
)ii 
;ii #
RegularPolygon_Internaljj 
(jj #
RegularPolygonSideCountjj 3
,jj3 4
radiusjj5 ;
,jj; <
	Thicknessjj= F
,jjF G
ColorjjH M
,jjM N
falsejjO T
,jjT U
$numjjV X
,jjX Y
anglejjZ _
)jj` a
;jja b
Drawkk 
.kk 
	PopMatrixkk 
(kk 
)kk 
;kk 
}ll 
[nn 

MethodImplnn 
(nn
INLINEnn 
)nn 
]nn 
publicnn 
staticnn  &
voidnn' +
RegularPolygonnn, :
(nn: ;
Vector3nn< C
posnnD G
,nnG H
floatnnI N
radiusnnO U
,nnU V
floatnnW \
anglenn] b
,nnb c
Colornnd i
colornnj o
)nnp q
{nnr s
Drawoo 
.oo 

PushMatrixoo 
(oo 
)oo 
;oo 
Drawpp 
.pp 
	Translatepp 
(pp 
pospp 
)pp 
;pp #
RegularPolygon_Internalqq 
(qq #
RegularPolygonSideCountqq 3
,qq3 4
radiusqq5 ;
,qq; <
	Thicknessqq= F
,qqF G
colorqqH M
,qqM N
falseqqO T
,qqT U
$numqqV X
,qqX Y
angleqqZ _
)qq` a
;qqa b
Drawrr 
.rr 
	PopMatrixrr 
(rr 
)rr 
;rr 
}ss 
[uu 

MethodImpluu 
(uu
INLINEuu 
)uu 
]uu 
publicuu 
staticuu  &
voiduu' +
RegularPolygonuu, :
(uu: ;
Vector3uu< C
posuuD G
,uuG H
floatuuI N
radiusuuO U
,uuU V
floatuuW \
angleuu] b
,uub c
floatuud i
	roundnessuuj s
)uut u
{uuv w
Drawvv 
.vv 

PushMatrixvv 
(vv 
)vv 
;vv 
Drawww 
.ww 
	Translateww 
(ww 
posww 
)ww 
;ww #
RegularPolygon_Internalxx 
(xx #
RegularPolygonSideCountxx 3
,xx3 4
radiusxx5 ;
,xx; <
	Thicknessxx= F
,xxF G
ColorxxH M
,xxM N
falsexxO T
,xxT U
	roundnessxxV _
,xx_ `
anglexxa f
)xxg h
;xxh i
Drawyy 
.yy 
	PopMatrixyy 
(yy 
)yy 
;yy 
}zz 
[|| 

MethodImpl|| 
(||
INLINE|| 
)|| 
]|| 
public|| 
static||  &
void||' +
RegularPolygon||, :
(||: ;
Vector3||< C
pos||D G
,||G H
float||I N
radius||O U
,||U V
float||W \
angle||] b
,||b c
float||d i
	roundness||j s
,||s t
Color||u z
color	||{ �
)
||� �
{
||� �
Draw}} 
.}} 

PushMatrix}} 
(}} 
)}} 
;}} 
Draw~~ 
.~~ 
	Translate~~ 
(~~ 
pos~~ 
)~~ 
;~~ #
RegularPolygon_Internal 
( #
RegularPolygonSideCount 3
,3 4
radius5 ;
,; <
	Thickness= F
,F G
colorH M
,M N
falseO T
,T U
	roundnessV _
,_ `
anglea f
)g h
;h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
int
��I L
	sideCount
��M V
)
��W X
{
��Y Z
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
int
��I L
	sideCount
��M V
,
��V W
Color
��X ]
color
��^ c
)
��d e
{
��f g
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
int
��I L
	sideCount
��M V
,
��V W
float
��X ]
radius
��^ d
)
��e f
{
��g h
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
int
��I L
	sideCount
��M V
,
��V W
float
��X ]
radius
��^ d
,
��d e
Color
��f k
color
��l q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
int
��I L
	sideCount
��M V
,
��V W
float
��X ]
radius
��^ d
,
��d e
float
��f k
angle
��l q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
angle
��L Q
)
��R S
;
��S T
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
int
��I L
	sideCount
��M V
,
��V W
float
��X ]
radius
��^ d
,
��d e
float
��f k
angle
��l q
,
��q r
Color
��s x
color
��y ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
angle
��L Q
)
��R S
;
��S T
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
int
��I L
	sideCount
��M V
,
��V W
float
��X ]
radius
��^ d
,
��d e
float
��f k
angle
��l q
,
��q r
float
��s x
	roundness��y �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
	roundness
��H Q
,
��Q R
angle
��S X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
int
��I L
	sideCount
��M V
,
��V W
float
��X ]
radius
��^ d
,
��d e
float
��f k
angle
��l q
,
��q r
float
��s x
	roundness��y �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
	roundness
��H Q
,
��Q R
angle
��S X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
)
��X Y
{
��Z [
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
$num
��Z \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
Color
��Y ^
color
��_ d
)
��e f
{
��g h
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
$num
��Z \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
float
��Y ^
radius
��_ e
)
��f g
{
��h i
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
$num
��Z \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
Color
��g l
color
��m r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
$num
��Z \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
float
��g l
angle
��m r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
angle
��Z _
)
��` a
;
��a b
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
float
��g l
angle
��m r
,
��r s
Color
��t y
color
��z 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
angle
��Z _
)
��` a
;
��a b
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
float
��g l
angle
��m r
,
��r s
float
��t y
	roundness��z �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
false
��O T
,
��T U
	roundness
��V _
,
��_ `
angle
��a f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
float
��g l
angle
��m r
,
��r s
float
��t y
	roundness��z �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
false
��O T
,
��T U
	roundness
��V _
,
��_ `
angle
��a f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
int
��Y \
	sideCount
��] f
)
��g h
{
��i j
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
Color
��h m
color
��n s
)
��t u
{
��v w
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
)
��u v
{
��w x
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
Color
��v {
color��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
float
��v {
angle��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
angle
��L Q
)
��R S
;
��S T
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
float
��v {
angle��| �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
angle
��L Q
)
��R S
;
��S T
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
float
��v {
angle��| �
,��� �
float��� �
	roundness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
	roundness
��H Q
,
��Q R
angle
��S X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H
Vector3
��I P
normal
��Q W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
float
��v {
angle��| �
,��� �
float��� �
	roundness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
	roundness
��H Q
,
��Q R
angle
��S X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
)
��X Y
{
��Z [
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
$num
��Z \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
Color
��Y ^
color
��_ d
)
��e f
{
��g h
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
$num
��Z \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
float
��Y ^
radius
��_ e
)
��f g
{
��h i
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
$num
��Z \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
Color
��g l
color
��m r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
$num
��Z \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
float
��g l
angle
��m r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
angle
��Z _
)
��` a
;
��a b
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
float
��g l
angle
��m r
,
��r s
Color
��t y
color
��z 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
false
��O T
,
��T U
$num
��V X
,
��X Y
angle
��Z _
)
��` a
;
��a b
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
float
��g l
angle
��m r
,
��r s
float
��t y
	roundness��z �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
false
��O T
,
��T U
	roundness
��V _
,
��_ `
angle
��a f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
float
��Y ^
radius
��_ e
,
��e f
float
��g l
angle
��m r
,
��r s
float
��t y
	roundness��z �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
false
��O T
,
��T U
	roundness
��V _
,
��_ `
angle
��a f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
int
��Y \
	sideCount
��] f
)
��g h
{
��i j
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
Color
��h m
color
��n s
)
��t u
{
��v w
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
)
��u v
{
��w x
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
Color
��v {
color��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
$num
��L N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
float
��v {
angle��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
angle
��L Q
)
��R S
;
��S T
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
float
��v {
angle��| �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
$num
��H J
,
��J K
angle
��L Q
)
��R S
;
��S T
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
float
��v {
angle��| �
,��� �
float��� �
	roundness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
false
��A F
,
��F G
	roundness
��H Q
,
��Q R
angle
��S X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Vector3
��< C
pos
��D G
,
��G H

Quaternion
��I S
rot
��T W
,
��W X
int
��Y \
	sideCount
��] f
,
��f g
float
��h m
radius
��n t
,
��t u
float
��v {
angle��| �
,��� �
float��� �
	roundness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
false
��A F
,
��F G
	roundness
��H Q
,
��Q R
angle
��S X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
)
��; <
=>
��= ?%
RegularPolygon_Internal
��@ W
(
��W X%
RegularPolygonSideCount
��Y p
,
��p q
Radius
��r x
,
��x y
	Thickness��z �
,��� �
Color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
Color
��< A
color
��B G
)
��H I
=>
��J L%
RegularPolygon_Internal
��M d
(
��d e%
RegularPolygonSideCount
��f }
,
��} ~
Radius�� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
float
��< A
radius
��B H
)
��I J
=>
��K M%
RegularPolygon_Internal
��N e
(
��e f%
RegularPolygonSideCount
��g ~
,
��~ 
radius��� �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
float
��< A
radius
��B H
,
��H I
Color
��J O
color
��P U
)
��V W
=>
��X Z%
RegularPolygon_Internal
��[ r
(
��r s&
RegularPolygonSideCount��t �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
float
��< A
radius
��B H
,
��H I
float
��J O
angle
��P U
)
��V W
=>
��X Z%
RegularPolygon_Internal
��[ r
(
��r s&
RegularPolygonSideCount��t �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
float
��< A
radius
��B H
,
��H I
float
��J O
angle
��P U
,
��U V
Color
��W \
color
��] b
)
��c d
=>
��e g%
RegularPolygon_Internal
��h 
(�� �'
RegularPolygonSideCount��� �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
float
��< A
radius
��B H
,
��H I
float
��J O
angle
��P U
,
��U V
float
��W \
	roundness
��] f
)
��g h
=>
��i k&
RegularPolygon_Internal��l �
(��� �'
RegularPolygonSideCount��� �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �
false��� �
,��� �
	roundness��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
float
��< A
radius
��B H
,
��H I
float
��J O
angle
��P U
,
��U V
float
��W \
	roundness
��] f
,
��f g
Color
��h m
color
��n s
)
��t u
=>
��v x&
RegularPolygon_Internal��y �
(��� �'
RegularPolygonSideCount��� �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
false��� �
,��� �
	roundness��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
int
��< ?
	sideCount
��@ I
)
��J K
=>
��L N%
RegularPolygon_Internal
��O f
(
��f g
	sideCount
��h q
,
��q r
Radius
��s y
,
��y z
	Thickness��{ �
,��� �
Color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
int
��< ?
	sideCount
��@ I
,
��I J
Color
��K P
color
��Q V
)
��W X
=>
��Y [%
RegularPolygon_Internal
��\ s
(
��s t
	sideCount
��u ~
,
��~ 
Radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
int
��< ?
	sideCount
��@ I
,
��I J
float
��K P
radius
��Q W
)
��X Y
=>
��Z \%
RegularPolygon_Internal
��] t
(
��t u
	sideCount
��v 
,�� �
radius��� �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
int
��< ?
	sideCount
��@ I
,
��I J
float
��K P
radius
��Q W
,
��W X
Color
��Y ^
color
��_ d
)
��e f
=>
��g i&
RegularPolygon_Internal��j �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
int
��< ?
	sideCount
��@ I
,
��I J
float
��K P
radius
��Q W
,
��W X
float
��Y ^
angle
��_ d
)
��e f
=>
��g i&
RegularPolygon_Internal��j �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
int
��< ?
	sideCount
��@ I
,
��I J
float
��K P
radius
��Q W
,
��W X
float
��Y ^
angle
��_ d
,
��d e
Color
��f k
color
��l q
)
��r s
=>
��t v&
RegularPolygon_Internal��w �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
false��� �
,��� �
$num��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
int
��< ?
	sideCount
��@ I
,
��I J
float
��K P
radius
��Q W
,
��W X
float
��Y ^
angle
��_ d
,
��d e
float
��f k
	roundness
��l u
)
��v w
=>
��x z&
RegularPolygon_Internal��{ �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �
false��� �
,��� �
	roundness��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RegularPolygon
��, :
(
��: ;
int
��< ?
	sideCount
��@ I
,
��I J
float
��K P
radius
��Q W
,
��W X
float
��Y ^
angle
��_ d
,
��d e
float
��f k
	roundness
��l u
,
��u v
Color
��w |
color��} �
)��� �
=>��� �'
RegularPolygon_Internal��� �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
false��� �
,��� �
	roundness��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
)
��N O
{
��P Q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Color
��O T
color
��U Z
)
��[ \
{
��] ^
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
float
��O T
radius
��U [
)
��\ ]
{
��^ _
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
Color
��] b
color
��c h
)
��i j
{
��k l
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
)
��m n
{
��o p
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
Color
��n s
color
��t y
)
��z {
{
��| }
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
float
��n s
angle
��t y
)
��z {
{
��| }
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
angle
��Y ^
)
��_ `
;
��` a
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
float
��n s
angle
��t y
,
��y z
Color��{ �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
angle
��Y ^
)
��_ `
;
��` a
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
float
��n s
angle
��t y
,
��y z
float��{ �
	roundness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
	roundness
��U ^
,
��^ _
angle
��` e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
float
��n s
angle
��t y
,
��y z
float��{ �
	roundness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
	roundness
��U ^
,
��^ _
angle
��` e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
)
��] ^
{
��_ `
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
,
��\ ]
Color
��^ c
color
��d i
)
��j k
{
��l m
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
,
��\ ]
float
��^ c
radius
��d j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
,
��\ ]
float
��^ c
radius
��d j
,
��j k
Color
��l q
color
��r w
)
��x y
{
��z {
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
,
��\ ]
float
��^ c
radius
��d j
,
��j k
float
��l q
	thickness
��r {
)
��| }
{
��~ 
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
,
��\ ]
float
��^ c
radius
��d j
,
��j k
float
��l q
	thickness
��r {
,
��{ |
Color��} �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
,
��\ ]
float
��^ c
radius
��d j
,
��j k
float
��l q
	thickness
��r {
,
��{ |
float��} �
angle��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
angle
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
,
��\ ]
float
��^ c
radius
��d j
,
��j k
float
��l q
	thickness
��r {
,
��{ |
float��} �
angle��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
angle
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
,
��\ ]
float
��^ c
radius
��d j
,
��j k
float
��l q
	thickness
��r {
,
��{ |
float��} �
angle��� �
,��� �
float��� �
	roundness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
	roundness
��G P
,
��P Q
angle
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
int
��O R
	sideCount
��S \
,
��\ ]
float
��^ c
radius
��d j
,
��j k
float
��l q
	thickness
��r {
,
��{ |
float��} �
angle��� �
,��� �
float��� �
	roundness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� %
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
	roundness
��G P
,
��P Q
angle
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
float
��_ d
radius
��e k
)
��l m
{
��n o
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
Color
��m r
color
��s x
)
��y z
{
��{ |
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
)
��} ~
{�� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
Color��~ �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
float��~ �
angle��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
angle
��Y ^
)
��_ `
;
��` a
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
float��~ �
angle��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
angle
��Y ^
)
��_ `
;
��` a
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
float��~ �
angle��� �
,��� �
float��� �
	roundness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
	roundness
��U ^
,
��^ _
angle
��` e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
float��~ �
angle��� �
,��� �
float��� �
	roundness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
	roundness
��U ^
,
��^ _
angle
��` e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
)
��m n
{
��o p
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
Color
��n s
color
��t y
)
��z {
{
��| }
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
)
��{ |
{
��} ~
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
Color��| �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
float��� �
angle��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
angle
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
float��� �
angle��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
angle
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
float��� �
angle��� �
,��� �
float��� �
	roundness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
	roundness
��G P
,
��P Q
angle
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N
Vector3
��O V
normal
��W ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
float��� �
angle��� �
,��� �
float��� �
	roundness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
	roundness
��G P
,
��P Q
angle
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
Radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
float
��_ d
radius
��e k
)
��l m
{
��n o
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
Color
��m r
color
��s x
)
��y z
{
��{ |
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	Thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
)
��} ~
{�� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
Color��~ �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��\ ]
;
��] ^
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
float��~ �
angle��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
angle
��Y ^
)
��_ `
;
��` a
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
float��~ �
angle��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
$num
��U W
,
��W X
angle
��Y ^
)
��_ `
;
��` a
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
float��~ �
angle��� �
,��� �
float��� �
	roundness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
Color
��H M
,
��M N
true
��O S
,
��S T
	roundness
��U ^
,
��^ _
angle
��` e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
float
��_ d
radius
��e k
,
��k l
float
��m r
	thickness
��s |
,
��| }
float��~ �
angle��� �
,��� �
float��� �
	roundness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� %
RegularPolygonSideCount
�� 3
,
��3 4
radius
��5 ;
,
��; <
	thickness
��= F
,
��F G
color
��H M
,
��M N
true
��O S
,
��S T
	roundness
��U ^
,
��^ _
angle
��` e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
)
��m n
{
��o p
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
Color
��n s
color
��t y
)
��z {
{
��| }
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
Radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
)
��{ |
{
��} ~
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
Color��| �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	Thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
$num
��K M
)
��N O
;
��O P
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
float��� �
angle��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
angle
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
float��� �
angle��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
$num
��G I
,
��I J
angle
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
float��� �
angle��� �
,��� �
float��� �
	roundness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
Color
��: ?
,
��? @
true
��A E
,
��E F
	roundness
��G P
,
��P Q
angle
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Vector3
��B I
pos
��J M
,
��M N

Quaternion
��O Y
rot
��Z ]
,
��] ^
int
��_ b
	sideCount
��c l
,
��l m
float
��n s
radius
��t z
,
��z {
float��| �
	thickness��� �
,��� �
float��� �
angle��� �
,��� �
float��� �
	roundness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9%
RegularPolygon_Internal
�� 
(
�� 
	sideCount
�� %
,
��% &
radius
��' -
,
��- .
	thickness
��/ 8
,
��8 9
color
��: ?
,
��? @
true
��A E
,
��E F
	roundness
��G P
,
��P Q
angle
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
)
��A B
=>
��C E%
RegularPolygon_Internal
��F ]
(
��] ^%
RegularPolygonSideCount
��_ v
,
��v w
Radius
��x ~
,
��~ 
	Thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
Color
��B G
color
��H M
)
��N O
=>
��P R%
RegularPolygon_Internal
��S j
(
��j k&
RegularPolygonSideCount��l �
,��� �
Radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
float
��B G
radius
��H N
)
��O P
=>
��Q S%
RegularPolygon_Internal
��T k
(
��k l&
RegularPolygonSideCount��m �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
float
��B G
radius
��H N
,
��N O
Color
��P U
color
��V [
)
��\ ]
=>
��^ `%
RegularPolygon_Internal
��a x
(
��x y&
RegularPolygonSideCount��z �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
float
��B G
radius
��H N
,
��N O
float
��P U
	thickness
��V _
)
��` a
=>
��b d%
RegularPolygon_Internal
��e |
(
��| }&
RegularPolygonSideCount��~ �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
float
��B G
radius
��H N
,
��N O
float
��P U
	thickness
��V _
,
��_ `
Color
��a f
color
��g l
)
��m n
=>
��o q&
RegularPolygon_Internal��r �
(��� �'
RegularPolygonSideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
float
��B G
radius
��H N
,
��N O
float
��P U
	thickness
��V _
,
��_ `
float
��a f
angle
��g l
)
��m n
=>
��o q&
RegularPolygon_Internal��r �
(��� �'
RegularPolygonSideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
float
��B G
radius
��H N
,
��N O
float
��P U
	thickness
��V _
,
��_ `
float
��a f
angle
��g l
,
��l m
Color
��n s
color
��t y
)
��z {
=>
��| ~&
RegularPolygon_Internal�� �
(��� �'
RegularPolygonSideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
float
��B G
radius
��H N
,
��N O
float
��P U
	thickness
��V _
,
��_ `
float
��a f
angle
��g l
,
��l m
float
��n s
	roundness
��t }
)
��~ 
=>��� �'
RegularPolygon_Internal��� �
(��� �'
RegularPolygonSideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
	roundness��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
float
��B G
radius
��H N
,
��N O
float
��P U
	thickness
��V _
,
��_ `
float
��a f
angle
��g l
,
��l m
float
��n s
	roundness
��t }
,
��} ~
Color�� �
color��� �
)��� �
=>��� �'
RegularPolygon_Internal��� �
(��� �'
RegularPolygonSideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
	roundness��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
)
��P Q
=>
��R T%
RegularPolygon_Internal
��U l
(
��l m
	sideCount
��n w
,
��w x
Radius
��y 
,�� �
	Thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
,
��O P
Color
��Q V
color
��W \
)
��] ^
=>
��_ a%
RegularPolygon_Internal
��b y
(
��y z
	sideCount��{ �
,��� �
Radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
,
��O P
float
��Q V
radius
��W ]
)
��^ _
=>
��` b%
RegularPolygon_Internal
��c z
(
��z {
	sideCount��| �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
,
��O P
float
��Q V
radius
��W ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
=>
��m o&
RegularPolygon_Internal��p �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	Thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
,
��O P
float
��Q V
radius
��W ]
,
��] ^
float
��_ d
	thickness
��e n
)
��o p
=>
��q s&
RegularPolygon_Internal��t �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
,
��O P
float
��Q V
radius
��W ]
,
��] ^
float
��_ d
	thickness
��e n
,
��n o
Color
��p u
color
��v {
)
��| }
=>��~ �'
RegularPolygon_Internal��� �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
,
��O P
float
��Q V
radius
��W ]
,
��] ^
float
��_ d
	thickness
��e n
,
��n o
float
��p u
angle
��v {
)
��| }
=>��~ �'
RegularPolygon_Internal��� �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
,
��O P
float
��Q V
radius
��W ]
,
��] ^
float
��_ d
	thickness
��e n
,
��n o
float
��p u
angle
��v {
,
��{ |
Color��} �
color��� �
)��� �
=>��� �'
RegularPolygon_Internal��� �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
$num��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
,
��O P
float
��Q V
radius
��W ]
,
��] ^
float
��_ d
	thickness
��e n
,
��n o
float
��p u
angle
��v {
,
��{ |
float��} �
	roundness��� �
)��� �
=>��� �'
RegularPolygon_Internal��� �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
Color��� �
,��� �
true��� �
,��� �
	roundness��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +"
RegularPolygonBorder
��, @
(
��@ A
int
��B E
	sideCount
��F O
,
��O P
float
��Q V
radius
��W ]
,
��] ^
float
��_ d
	thickness
��e n
,
��n o
float
��p u
angle
��v {
,
��{ |
float��} �
	roundness��� �
,��� �
Color��� �
color��� �
)��� �
=>��� �'
RegularPolygon_Internal��� �
(��� �
	sideCount��� �
,��� �
radius��� �
,��� �
	thickness��� �
,��� �
color��� �
,��� �
true��� �
,��� �
	roundness��� �
,��� �
angle��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
)
��> ?
{
��@ A
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
Radius
�� 
,
�� 
Color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

DiscColors
��? I
colors
��J P
)
��Q R
{
��S T
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
Radius
�� 
,
�� 
colors
��  
)
��! "
;
��" #
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
)
��L M
{
��N O
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
Color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
,
��K L

DiscColors
��M W
colors
��X ^
)
��_ `
{
��a b
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
colors
��  
)
��! "
;
��" #
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
)
��N O
{
��P Q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
Radius
�� 
,
�� 
Color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N

DiscColors
��O Y
colors
��Z `
)
��a b
{
��c d
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
Radius
�� 
,
�� 
colors
��  
)
��! "
;
��" #
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
)
��\ ]
{
��^ _
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
Color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
,
��[ \

DiscColors
��] g
colors
��h n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
colors
��  
)
��! "
;
��" #
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
)
��N O
{
��P Q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
Radius
�� 
,
�� 
Color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N

DiscColors
��O Y
colors
��Z `
)
��a b
{
��c d
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
Radius
�� 
,
�� 
colors
��  
)
��! "
;
��" #
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
)
��\ ]
{
��^ _
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
Color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \

DiscColors
��] g
colors
��h n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
colors
��  
)
��! "
;
��" #
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
)
��1 2
=>
��3 5

��6 C
(
��C D
Radius
��E K
,
��K L
Color
��M R
)
��S T
;
��T U
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1

DiscColors
��2 <
colors
��= C
)
��D E
=>
��F H

��I V
(
��V W
Radius
��X ^
,
��^ _
colors
��` f
)
��g h
;
��h i
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
float
��2 7
radius
��8 >
)
��? @
=>
��A C

��D Q
(
��Q R
radius
��S Y
,
��Y Z
Color
��[ `
)
��a b
;
��b c
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Disc
��, 0
(
��0 1
float
��2 7
radius
��8 >
,
��> ?

DiscColors
��@ J
colors
��K Q
)
��R S
=>
��T V

��W d
(
��d e
radius
��f l
,
��l m
colors
��n t
)
��u v
;
��v w
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
)
��> ?
{
��@ A
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
Radius
�� 
,
�� 
	Thickness
�� #
,
��# $
Color
��% *
)
��+ ,
;
��, -
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

DiscColors
��? I
colors
��J P
)
��Q R
{
��S T
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
Radius
�� 
,
�� 
	Thickness
�� #
,
��# $
colors
��% +
)
��, -
;
��- .
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
)
��L M
{
��N O
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� #
,
��# $
Color
��% *
)
��+ ,
;
��, -
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
,
��K L

DiscColors
��M W
colors
��X ^
)
��_ `
{
��a b
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� #
,
��# $
colors
��% +
)
��, -
;
��- .
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
,
��K L
float
��M R
	thickness
��S \
)
��] ^
{
��_ `
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� #
,
��# $
Color
��% *
)
��+ ,
;
��, -
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
,
��K L
float
��M R
	thickness
��S \
,
��\ ]

DiscColors
��^ h
colors
��i o
)
��p q
{
��r s
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� #
,
��# $
colors
��% +
)
��, -
;
��- .
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
)
��N O
{
��P Q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
Radius
�� 
,
�� 
	Thickness
�� #
,
��# $
Color
��% *
)
��+ ,
;
��, -
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N

DiscColors
��O Y
colors
��Z `
)
��a b
{
��c d
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
Radius
�� 
,
�� 
	Thickness
�� #
,
��# $
colors
��% +
)
��, -
;
��- .
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
)
��\ ]
{
��^ _
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� #
,
��# $
Color
��% *
)
��+ ,
;
��, -
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
,
��[ \

DiscColors
��] g
colors
��h n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� #
,
��# $
colors
��% +
)
��, -
;
��- .
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
)
��m n
{
��o p
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� #
,
��# $
Color
��% *
)
��+ ,
;
��, -
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
,
��l m

DiscColors
��n x
colors
��y 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� #
,
��# $
colors
��% +
)
��, -
;
��- .
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
)
��N O
{
��P Q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
Radius
�� 
,
�� 
	Thickness
�� #
,
��# $
Color
��% *
)
��+ ,
;
��, -
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N

DiscColors
��O Y
colors
��Z `
)
��a b
{
��c d
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
Radius
�� 
,
�� 
	Thickness
�� #
,
��# $
colors
��% +
)
��, -
;
��- .
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
)
��\ ]
{
��^ _
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� #
,
��# $
Color
��% *
)
��+ ,
;
��, -
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \

DiscColors
��] g
colors
��h n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� #
,
��# $
colors
��% +
)
��, -
;
��- .
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
)
��m n
{
��o p
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� #
,
��# $
Color
��% *
)
��+ ,
;
��, -
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
	thickness
��c l
,
��l m

DiscColors
��n x
colors
��y 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� #
,
��# $
colors
��% +
)
��, -
;
��- .
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
)
��1 2
=>
��3 5

��6 C
(
��C D
Radius
��E K
,
��K L
	Thickness
��M V
,
��V W
Color
��X ]
)
��^ _
;
��_ `
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1

DiscColors
��2 <
colors
��= C
)
��D E
=>
��F H

��I V
(
��V W
Radius
��X ^
,
��^ _
	Thickness
��` i
,
��i j
colors
��k q
)
��r s
;
��s t
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
float
��2 7
radius
��8 >
)
��? @
=>
��A C

��D Q
(
��Q R
radius
��S Y
,
��Y Z
	Thickness
��[ d
,
��d e
Color
��f k
)
��l m
;
��m n
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
float
��2 7
radius
��8 >
,
��> ?

DiscColors
��@ J
colors
��K Q
)
��R S
=>
��T V

��W d
(
��d e
radius
��f l
,
��l m
	Thickness
��n w
,
��w x
colors
��y 
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
float
��2 7
radius
��8 >
,
��> ?
float
��@ E
	thickness
��F O
)
��P Q
=>
��R T

��U b
(
��b c
radius
��d j
,
��j k
	thickness
��l u
,
��u v
Color
��w |
)
��} ~
;
��~ 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Ring
��, 0
(
��0 1
float
��2 7
radius
��8 >
,
��> ?
float
��@ E
	thickness
��F O
,
��O P

DiscColors
��Q [
colors
��\ b
)
��c d
=>
��e g

��h u
(
��u v
radius
��w }
,
��} ~
	thickness�� �
,��� �
colors��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Pie
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =
float
��> C

��D Q
,
��Q R
float
��S X
angleRadEnd
��Y d
)
��e f
{
��g h
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Pie_Internal
�� 
(
�� 
Radius
�� 
,
�� 
Color
�� 
,
�� 

��  -
,
��- .
angleRadEnd
��/ :
)
��; <
;
��< =
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Pie
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =
float
��> C

��D Q
,
��Q R
float
��S X
angleRadEnd
��Y d
,
��d e

DiscColors
��f p
colors
��q w
)
��x y
{
��z {
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Pie_Internal
�� 
(
�� 
Radius
�� 
,
�� 
colors
�� 
,
��  

��! .
,
��. /
angleRadEnd
��0 ;
)
��< =
;
��= >
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Pie
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =
float
��> C
radius
��D J
,
��J K
float
��L Q

��R _
,
��_ `
float
��a f
angleRadEnd
��g r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Pie_Internal
�� 
(
�� 
radius
�� 
,
�� 
Color
�� 
,
�� 

��  -
,
��- .
angleRadEnd
��/ :
)
��; <
;
��< =
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
float
�	�	> C
radius
�	�	D J
,
�	�	J K
float
�	�	L Q

�	�	R _
,
�	�	_ `
float
�	�	a f
angleRadEnd
�	�	g r
,
�	�	r s

DiscColors
�	�	t ~
colors�	�	 �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
	Translate
�	�	 
(
�	�	 
pos
�	�	 
)
�	�	 
;
�	�	 
Pie_Internal
�	�	 
(
�	�	 
radius
�	�	 
,
�	�	 
colors
�	�	 
,
�	�	  

�	�	! .
,
�	�	. /
angleRadEnd
�	�	0 ;
)
�	�	< =
;
�	�	= >
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
Vector3
�	�	> E
normal
�	�	F L
,
�	�	L M
float
�	�	N S

�	�	T a
,
�	�	a b
float
�	�	c h
angleRadEnd
�	�	i t
)
�	�	u v
{
�	�	w x
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
Matrix
�	�	 
*=
�	�	 
	Matrix4x4
�	�	 
.
�	�	 
TRS
�	�	 
(
�	�	  
pos
�	�	! $
,
�	�	$ %

Quaternion
�	�	& 0
.
�	�	0 1
LookRotation
�	�	1 =
(
�	�	= >
normal
�	�	? E
)
�	�	F G
,
�	�	G H
Vector3
�	�	I P
.
�	�	P Q
one
�	�	Q T
)
�	�	U V
;
�	�	V W
Pie_Internal
�	�	 
(
�	�	 
Radius
�	�	 
,
�	�	 
Color
�	�	 
,
�	�	 

�	�	  -
,
�	�	- .
angleRadEnd
�	�	/ :
)
�	�	; <
;
�	�	< =
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
Vector3
�	�	> E
normal
�	�	F L
,
�	�	L M
float
�	�	N S

�	�	T a
,
�	�	a b
float
�	�	c h
angleRadEnd
�	�	i t
,
�	�	t u

DiscColors�	�	v �
colors�	�	� �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
Matrix
�	�	 
*=
�	�	 
	Matrix4x4
�	�	 
.
�	�	 
TRS
�	�	 
(
�	�	  
pos
�	�	! $
,
�	�	$ %

Quaternion
�	�	& 0
.
�	�	0 1
LookRotation
�	�	1 =
(
�	�	= >
normal
�	�	? E
)
�	�	F G
,
�	�	G H
Vector3
�	�	I P
.
�	�	P Q
one
�	�	Q T
)
�	�	U V
;
�	�	V W
Pie_Internal
�	�	 
(
�	�	 
Radius
�	�	 
,
�	�	 
colors
�	�	 
,
�	�	  

�	�	! .
,
�	�	. /
angleRadEnd
�	�	0 ;
)
�	�	< =
;
�	�	= >
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
Vector3
�	�	> E
normal
�	�	F L
,
�	�	L M
float
�	�	N S
radius
�	�	T Z
,
�	�	Z [
float
�	�	\ a

�	�	b o
,
�	�	o p
float
�	�	q v
angleRadEnd�	�	w �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
Matrix
�	�	 
*=
�	�	 
	Matrix4x4
�	�	 
.
�	�	 
TRS
�	�	 
(
�	�	  
pos
�	�	! $
,
�	�	$ %

Quaternion
�	�	& 0
.
�	�	0 1
LookRotation
�	�	1 =
(
�	�	= >
normal
�	�	? E
)
�	�	F G
,
�	�	G H
Vector3
�	�	I P
.
�	�	P Q
one
�	�	Q T
)
�	�	U V
;
�	�	V W
Pie_Internal
�	�	 
(
�	�	 
radius
�	�	 
,
�	�	 
Color
�	�	 
,
�	�	 

�	�	  -
,
�	�	- .
angleRadEnd
�	�	/ :
)
�	�	; <
;
�	�	< =
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
Vector3
�	�	> E
normal
�	�	F L
,
�	�	L M
float
�	�	N S
radius
�	�	T Z
,
�	�	Z [
float
�	�	\ a

�	�	b o
,
�	�	o p
float
�	�	q v
angleRadEnd�	�	w �
,�	�	� �

DiscColors�	�	� �
colors�	�	� �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
Matrix
�	�	 
*=
�	�	 
	Matrix4x4
�	�	 
.
�	�	 
TRS
�	�	 
(
�	�	  
pos
�	�	! $
,
�	�	$ %

Quaternion
�	�	& 0
.
�	�	0 1
LookRotation
�	�	1 =
(
�	�	= >
normal
�	�	? E
)
�	�	F G
,
�	�	G H
Vector3
�	�	I P
.
�	�	P Q
one
�	�	Q T
)
�	�	U V
;
�	�	V W
Pie_Internal
�	�	 
(
�	�	 
radius
�	�	 
,
�	�	 
colors
�	�	 
,
�	�	  

�	�	! .
,
�	�	. /
angleRadEnd
�	�	0 ;
)
�	�	< =
;
�	�	= >
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =

Quaternion
�	�	> H
rot
�	�	I L
,
�	�	L M
float
�	�	N S

�	�	T a
,
�	�	a b
float
�	�	c h
angleRadEnd
�	�	i t
)
�	�	u v
{
�	�	w x
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
Matrix
�	�	 
*=
�	�	 
	Matrix4x4
�	�	 
.
�	�	 
TRS
�	�	 
(
�	�	  
pos
�	�	! $
,
�	�	$ %
rot
�	�	& )
,
�	�	) *
Vector3
�	�	+ 2
.
�	�	2 3
one
�	�	3 6
)
�	�	7 8
;
�	�	8 9
Pie_Internal
�	�	 
(
�	�	 
Radius
�	�	 
,
�	�	 
Color
�	�	 
,
�	�	 

�	�	  -
,
�	�	- .
angleRadEnd
�	�	/ :
)
�	�	; <
;
�	�	< =
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =

Quaternion
�	�	> H
rot
�	�	I L
,
�	�	L M
float
�	�	N S

�	�	T a
,
�	�	a b
float
�	�	c h
angleRadEnd
�	�	i t
,
�	�	t u

DiscColors�	�	v �
colors�	�	� �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
Matrix
�	�	 
*=
�	�	 
	Matrix4x4
�	�	 
.
�	�	 
TRS
�	�	 
(
�	�	  
pos
�	�	! $
,
�	�	$ %
rot
�	�	& )
,
�	�	) *
Vector3
�	�	+ 2
.
�	�	2 3
one
�	�	3 6
)
�	�	7 8
;
�	�	8 9
Pie_Internal
�	�	 
(
�	�	 
Radius
�	�	 
,
�	�	 
colors
�	�	 
,
�	�	  

�	�	! .
,
�	�	. /
angleRadEnd
�	�	0 ;
)
�	�	< =
;
�	�	= >
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =

Quaternion
�	�	> H
rot
�	�	I L
,
�	�	L M
float
�	�	N S
radius
�	�	T Z
,
�	�	Z [
float
�	�	\ a

�	�	b o
,
�	�	o p
float
�	�	q v
angleRadEnd�	�	w �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
Matrix
�	�	 
*=
�	�	 
	Matrix4x4
�	�	 
.
�	�	 
TRS
�	�	 
(
�	�	  
pos
�	�	! $
,
�	�	$ %
rot
�	�	& )
,
�	�	) *
Vector3
�	�	+ 2
.
�	�	2 3
one
�	�	3 6
)
�	�	7 8
;
�	�	8 9
Pie_Internal
�	�	 
(
�	�	 
radius
�	�	 
,
�	�	 
Color
�	�	 
,
�	�	 

�	�	  -
,
�	�	- .
angleRadEnd
�	�	/ :
)
�	�	; <
;
�	�	< =
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =

Quaternion
�	�	> H
rot
�	�	I L
,
�	�	L M
float
�	�	N S
radius
�	�	T Z
,
�	�	Z [
float
�	�	\ a

�	�	b o
,
�	�	o p
float
�	�	q v
angleRadEnd�	�	w �
,�	�	� �

DiscColors�	�	� �
colors�	�	� �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
Matrix
�	�	 
*=
�	�	 
	Matrix4x4
�	�	 
.
�	�	 
TRS
�	�	 
(
�	�	  
pos
�	�	! $
,
�	�	$ %
rot
�	�	& )
,
�	�	) *
Vector3
�	�	+ 2
.
�	�	2 3
one
�	�	3 6
)
�	�	7 8
;
�	�	8 9
Pie_Internal
�	�	 
(
�	�	 
radius
�	�	 
,
�	�	 
colors
�	�	 
,
�	�	  

�	�	! .
,
�	�	. /
angleRadEnd
�	�	0 ;
)
�	�	< =
;
�	�	= >
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
float
�	�	1 6

�	�	7 D
,
�	�	D E
float
�	�	F K
angleRadEnd
�	�	L W
)
�	�	X Y
=>
�	�	Z \
Pie_Internal
�	�	] i
(
�	�	i j
Radius
�	�	k q
,
�	�	q r
Color
�	�	s x
,
�	�	x y

,�	�	� �
angleRadEnd�	�	� �
)�	�	� �
;�	�	� �
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
float
�	�	1 6

�	�	7 D
,
�	�	D E
float
�	�	F K
angleRadEnd
�	�	L W
,
�	�	W X

DiscColors
�	�	Y c
colors
�	�	d j
)
�	�	k l
=>
�	�	m o
Pie_Internal
�	�	p |
(
�	�	| }
Radius�	�	~ �
,�	�	� �
colors�	�	� �
,�	�	� �

,�	�	� �
angleRadEnd�	�	� �
)�	�	� �
;�	�	� �
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
float
�	�	1 6
radius
�	�	7 =
,
�	�	= >
float
�	�	? D

�	�	E R
,
�	�	R S
float
�	�	T Y
angleRadEnd
�	�	Z e
)
�	�	f g
=>
�	�	h j
Pie_Internal
�	�	k w
(
�	�	w x
radius
�	�	y 
,�	�	 �
Color�	�	� �
,�	�	� �

,�	�	� �
angleRadEnd�	�	� �
)�	�	� �
;�	�	� �
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Pie
�	�	, /
(
�	�	/ 0
float
�	�	1 6
radius
�	�	7 =
,
�	�	= >
float
�	�	? D

�	�	E R
,
�	�	R S
float
�	�	T Y
angleRadEnd
�	�	Z e
,
�	�	e f

DiscColors
�	�	g q
colors
�	�	r x
)
�	�	y z
=>
�	�	{ }
Pie_Internal�	�	~ �
(�	�	� �
radius�	�	� �
,�	�	� �
colors�	�	� �
,�	�	� �

,�	�	� �
angleRadEnd�	�	� �
)�	�	� �
;�	�	� �
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Arc
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
float
�	�	> C

�	�	D Q
,
�	�	Q R
float
�	�	S X
angleRadEnd
�	�	Y d
)
�	�	e f
{
�	�	g h
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
	Translate
�	�	 
(
�	�	 
pos
�	�	 
)
�	�	 
;
�	�	 
Arc_Internal
�	�	 
(
�	�	 
Radius
�	�	 
,
�	�	 
	Thickness
�	�	 "
,
�	�	" #
Color
�	�	$ )
,
�	�	) *

�	�	+ 8
,
�	�	8 9
angleRadEnd
�	�	: E
,
�	�	E F
	ArcEndCap
�	�	G P
.
�	�	P Q
None
�	�	Q U
)
�	�	V W
;
�	�	W X
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Arc
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
float
�	�	> C

�	�	D Q
,
�	�	Q R
float
�	�	S X
angleRadEnd
�	�	Y d
,
�	�	d e

DiscColors
�	�	f p
colors
�	�	q w
)
�	�	x y
{
�	�	z {
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
	Translate
�	�	 
(
�	�	 
pos
�	�	 
)
�	�	 
;
�	�	 
Arc_Internal
�	�	 
(
�	�	 
Radius
�	�	 
,
�	�	 
	Thickness
�	�	 "
,
�	�	" #
colors
�	�	$ *
,
�	�	* +

�	�	, 9
,
�	�	9 :
angleRadEnd
�	�	; F
,
�	�	F G
	ArcEndCap
�	�	H Q
.
�	�	Q R
None
�	�	R V
)
�	�	W X
;
�	�	X Y
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Arc
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
float
�	�	> C

�	�	D Q
,
�	�	Q R
float
�	�	S X
angleRadEnd
�	�	Y d
,
�	�	d e
	ArcEndCap
�	�	f o
endCaps
�	�	p w
)
�	�	x y
{
�	�	z {
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
	Translate
�	�	 
(
�	�	 
pos
�	�	 
)
�	�	 
;
�	�	 
Arc_Internal
�	�	 
(
�	�	 
Radius
�	�	 
,
�	�	 
	Thickness
�	�	 "
,
�	�	" #
Color
�	�	$ )
,
�	�	) *

�	�	+ 8
,
�	�	8 9
angleRadEnd
�	�	: E
,
�	�	E F
endCaps
�	�	G N
)
�	�	O P
;
�	�	P Q
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Arc
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
float
�	�	> C

�	�	D Q
,
�	�	Q R
float
�	�	S X
angleRadEnd
�	�	Y d
,
�	�	d e
	ArcEndCap
�	�	f o
endCaps
�	�	p w
,
�	�	w x

DiscColors�	�	y �
colors�	�	� �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
	Translate
�	�	 
(
�	�	 
pos
�	�	 
)
�	�	 
;
�	�	 
Arc_Internal
�	�	 
(
�	�	 
Radius
�	�	 
,
�	�	 
	Thickness
�	�	 "
,
�	�	" #
colors
�	�	$ *
,
�	�	* +

�	�	, 9
,
�	�	9 :
angleRadEnd
�	�	; F
,
�	�	F G
endCaps
�	�	H O
)
�	�	P Q
;
�	�	Q R
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Arc
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
float
�	�	> C
radius
�	�	D J
,
�	�	J K
float
�	�	L Q

�	�	R _
,
�	�	_ `
float
�	�	a f
angleRadEnd
�	�	g r
)
�	�	s t
{
�	�	u v
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
	Translate
�	�	 
(
�	�	 
pos
�	�	 
)
�	�	 
;
�	�	 
Arc_Internal
�	�	 
(
�	�	 
radius
�	�	 
,
�	�	 
	Thickness
�	�	 "
,
�	�	" #
Color
�	�	$ )
,
�	�	) *

�	�	+ 8
,
�	�	8 9
angleRadEnd
�	�	: E
,
�	�	E F
	ArcEndCap
�	�	G P
.
�	�	P Q
None
�	�	Q U
)
�	�	V W
;
�	�	W X
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Arc
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
float
�	�	> C
radius
�	�	D J
,
�	�	J K
float
�	�	L Q

�	�	R _
,
�	�	_ `
float
�	�	a f
angleRadEnd
�	�	g r
,
�	�	r s

DiscColors
�	�	t ~
colors�	�	 �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
	Translate
�	�	 
(
�	�	 
pos
�	�	 
)
�	�	 
;
�	�	 
Arc_Internal
�	�	 
(
�	�	 
radius
�	�	 
,
�	�	 
	Thickness
�	�	 "
,
�	�	" #
colors
�	�	$ *
,
�	�	* +

�	�	, 9
,
�	�	9 :
angleRadEnd
�	�	; F
,
�	�	F G
	ArcEndCap
�	�	H Q
.
�	�	Q R
None
�	�	R V
)
�	�	W X
;
�	�	X Y
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Arc
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
float
�	�	> C
radius
�	�	D J
,
�	�	J K
float
�	�	L Q

�	�	R _
,
�	�	_ `
float
�	�	a f
angleRadEnd
�	�	g r
,
�	�	r s
	ArcEndCap
�	�	t }
endCaps�	�	~ �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
	Translate
�	�	 
(
�	�	 
pos
�	�	 
)
�	�	 
;
�	�	 
Arc_Internal
�	�	 
(
�	�	 
radius
�	�	 
,
�	�	 
	Thickness
�	�	 "
,
�	�	" #
Color
�	�	$ )
,
�	�	) *

�	�	+ 8
,
�	�	8 9
angleRadEnd
�	�	: E
,
�	�	E F
endCaps
�	�	G N
)
�	�	O P
;
�	�	P Q
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�	�	 

MethodImpl
�	�	 
(
�	�	
INLINE
�	�	 
)
�	�	 
]
�	�	 
public
�	�	 
static
�	�	  &
void
�	�	' +
Arc
�	�	, /
(
�	�	/ 0
Vector3
�	�	1 8
pos
�	�	9 <
,
�	�	< =
float
�	�	> C
radius
�	�	D J
,
�	�	J K
float
�	�	L Q

�	�	R _
,
�	�	_ `
float
�	�	a f
angleRadEnd
�	�	g r
,
�	�	r s
	ArcEndCap
�	�	t }
endCaps�	�	~ �
,�	�	� �

DiscColors�	�	� �
colors�	�	� �
)�	�	� �
{�	�	� �
Draw
�	�	 
.
�	�	 

PushMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
Draw
�	�	 
.
�	�	 
	Translate
�	�	 
(
�	�	 
pos
�	�	 
)
�	�	 
;
�	�	 
Arc_Internal
�	�	 
(
�	�	 
radius
�	�	 
,
�	�	 
	Thickness
�	�	 "
,
�	�	" #
colors
�	�	$ *
,
�	�	* +

�	�	, 9
,
�	�	9 :
angleRadEnd
�	�	; F
,
�	�	F G
endCaps
�	�	H O
)
�	�	P Q
;
�	�	Q R
Draw
�	�	 
.
�	�	 
	PopMatrix
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
float
�
�
> C
radius
�
�
D J
,
�
�
J K
float
�
�
L Q
	thickness
�
�
R [
,
�
�
[ \
float
�
�
] b

�
�
c p
,
�
�
p q
float
�
�
r w
angleRadEnd�
�
x �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
	Translate
�
�
 
(
�
�
 
pos
�
�
 
)
�
�
 
;
�
�
 
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	thickness
�
�
 "
,
�
�
" #
Color
�
�
$ )
,
�
�
) *

�
�
+ 8
,
�
�
8 9
angleRadEnd
�
�
: E
,
�
�
E F
	ArcEndCap
�
�
G P
.
�
�
P Q
None
�
�
Q U
)
�
�
V W
;
�
�
W X
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
float
�
�
> C
radius
�
�
D J
,
�
�
J K
float
�
�
L Q
	thickness
�
�
R [
,
�
�
[ \
float
�
�
] b

�
�
c p
,
�
�
p q
float
�
�
r w
angleRadEnd�
�
x �
,�
�
� �

DiscColors�
�
� �
colors�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
	Translate
�
�
 
(
�
�
 
pos
�
�
 
)
�
�
 
;
�
�
 
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	thickness
�
�
 "
,
�
�
" #
colors
�
�
$ *
,
�
�
* +

�
�
, 9
,
�
�
9 :
angleRadEnd
�
�
; F
,
�
�
F G
	ArcEndCap
�
�
H Q
.
�
�
Q R
None
�
�
R V
)
�
�
W X
;
�
�
X Y
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
float
�
�
> C
radius
�
�
D J
,
�
�
J K
float
�
�
L Q
	thickness
�
�
R [
,
�
�
[ \
float
�
�
] b

�
�
c p
,
�
�
p q
float
�
�
r w
angleRadEnd�
�
x �
,�
�
� �
	ArcEndCap�
�
� �
endCaps�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
	Translate
�
�
 
(
�
�
 
pos
�
�
 
)
�
�
 
;
�
�
 
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	thickness
�
�
 "
,
�
�
" #
Color
�
�
$ )
,
�
�
) *

�
�
+ 8
,
�
�
8 9
angleRadEnd
�
�
: E
,
�
�
E F
endCaps
�
�
G N
)
�
�
O P
;
�
�
P Q
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
float
�
�
> C
radius
�
�
D J
,
�
�
J K
float
�
�
L Q
	thickness
�
�
R [
,
�
�
[ \
float
�
�
] b

�
�
c p
,
�
�
p q
float
�
�
r w
angleRadEnd�
�
x �
,�
�
� �
	ArcEndCap�
�
� �
endCaps�
�
� �
,�
�
� �

DiscColors�
�
� �
colors�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
	Translate
�
�
 
(
�
�
 
pos
�
�
 
)
�
�
 
;
�
�
 
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	thickness
�
�
 "
,
�
�
" #
colors
�
�
$ *
,
�
�
* +

�
�
, 9
,
�
�
9 :
angleRadEnd
�
�
; F
,
�
�
F G
endCaps
�
�
H O
)
�
�
P Q
;
�
�
Q R
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S

�
�
T a
,
�
�
a b
float
�
�
c h
angleRadEnd
�
�
i t
)
�
�
u v
{
�
�
w x
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
Radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
Color
�
�
$ )
,
�
�
) *

�
�
+ 8
,
�
�
8 9
angleRadEnd
�
�
: E
,
�
�
E F
	ArcEndCap
�
�
G P
.
�
�
P Q
None
�
�
Q U
)
�
�
V W
;
�
�
W X
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S

�
�
T a
,
�
�
a b
float
�
�
c h
angleRadEnd
�
�
i t
,
�
�
t u

DiscColors�
�
v �
colors�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
Radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
colors
�
�
$ *
,
�
�
* +

�
�
, 9
,
�
�
9 :
angleRadEnd
�
�
; F
,
�
�
F G
	ArcEndCap
�
�
H Q
.
�
�
Q R
None
�
�
R V
)
�
�
W X
;
�
�
X Y
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S

�
�
T a
,
�
�
a b
float
�
�
c h
angleRadEnd
�
�
i t
,
�
�
t u
	ArcEndCap
�
�
v 
endCaps�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
Radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
Color
�
�
$ )
,
�
�
) *

�
�
+ 8
,
�
�
8 9
angleRadEnd
�
�
: E
,
�
�
E F
endCaps
�
�
G N
)
�
�
O P
;
�
�
P Q
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S

�
�
T a
,
�
�
a b
float
�
�
c h
angleRadEnd
�
�
i t
,
�
�
t u
	ArcEndCap
�
�
v 
endCaps�
�
� �
,�
�
� �

DiscColors�
�
� �
colors�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
Radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
colors
�
�
$ *
,
�
�
* +

�
�
, 9
,
�
�
9 :
angleRadEnd
�
�
; F
,
�
�
F G
endCaps
�
�
H O
)
�
�
P Q
;
�
�
Q R
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S
radius
�
�
T Z
,
�
�
Z [
float
�
�
\ a

�
�
b o
,
�
�
o p
float
�
�
q v
angleRadEnd�
�
w �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
Color
�
�
$ )
,
�
�
) *

�
�
+ 8
,
�
�
8 9
angleRadEnd
�
�
: E
,
�
�
E F
	ArcEndCap
�
�
G P
.
�
�
P Q
None
�
�
Q U
)
�
�
V W
;
�
�
W X
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S
radius
�
�
T Z
,
�
�
Z [
float
�
�
\ a

�
�
b o
,
�
�
o p
float
�
�
q v
angleRadEnd�
�
w �
,�
�
� �

DiscColors�
�
� �
colors�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
colors
�
�
$ *
,
�
�
* +

�
�
, 9
,
�
�
9 :
angleRadEnd
�
�
; F
,
�
�
F G
	ArcEndCap
�
�
H Q
.
�
�
Q R
None
�
�
R V
)
�
�
W X
;
�
�
X Y
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S
radius
�
�
T Z
,
�
�
Z [
float
�
�
\ a

�
�
b o
,
�
�
o p
float
�
�
q v
angleRadEnd�
�
w �
,�
�
� �
	ArcEndCap�
�
� �
endCaps�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
Color
�
�
$ )
,
�
�
) *

�
�
+ 8
,
�
�
8 9
angleRadEnd
�
�
: E
,
�
�
E F
endCaps
�
�
G N
)
�
�
O P
;
�
�
P Q
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S
radius
�
�
T Z
,
�
�
Z [
float
�
�
\ a

�
�
b o
,
�
�
o p
float
�
�
q v
angleRadEnd�
�
w �
,�
�
� �
	ArcEndCap�
�
� �
endCaps�
�
� �
,�
�
� �

DiscColors�
�
� �
colors�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
colors
�
�
$ *
,
�
�
* +

�
�
, 9
,
�
�
9 :
angleRadEnd
�
�
; F
,
�
�
F G
endCaps
�
�
H O
)
�
�
P Q
;
�
�
Q R
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S
radius
�
�
T Z
,
�
�
Z [
float
�
�
\ a
	thickness
�
�
b k
,
�
�
k l
float
�
�
m r

�
s �
,�
�
� �
float�
�
� �
angleRadEnd�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	thickness
�
�
 "
,
�
�
" #
Color
�
�
$ )
,
�
�
) *

�
�
+ 8
,
�
�
8 9
angleRadEnd
�
�
: E
,
�
�
E F
	ArcEndCap
�
�
G P
.
�
�
P Q
None
�
�
Q U
)
�
�
V W
;
�
�
W X
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S
radius
�
�
T Z
,
�
�
Z [
float
�
�
\ a
	thickness
�
�
b k
,
�
�
k l
float
�
�
m r

�
s �
,�
�
� �
float�
�
� �
angleRadEnd�
�
� �
,�
�
� �

DiscColors�
�
� �
colors�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	thickness
�
�
 "
,
�
�
" #
colors
�
�
$ *
,
�
�
* +

�
�
, 9
,
�
�
9 :
angleRadEnd
�
�
; F
,
�
�
F G
	ArcEndCap
�
�
H Q
.
�
�
Q R
None
�
�
R V
)
�
�
W X
;
�
�
X Y
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S
radius
�
�
T Z
,
�
�
Z [
float
�
�
\ a
	thickness
�
�
b k
,
�
�
k l
float
�
�
m r

�
s �
,�
�
� �
float�
�
� �
angleRadEnd�
�
� �
,�
�
� �
	ArcEndCap�
�
� �
endCaps�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	thickness
�
�
 "
,
�
�
" #
Color
�
�
$ )
,
�
�
) *

�
�
+ 8
,
�
�
8 9
angleRadEnd
�
�
: E
,
�
�
E F
endCaps
�
�
G N
)
�
�
O P
;
�
�
P Q
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =
Vector3
�
�
> E
normal
�
�
F L
,
�
�
L M
float
�
�
N S
radius
�
�
T Z
,
�
�
Z [
float
�
�
\ a
	thickness
�
�
b k
,
�
�
k l
float
�
�
m r

�
s �
,�
�
� �
float�
�
� �
angleRadEnd�
�
� �
,�
�
� �
	ArcEndCap�
�
� �
endCaps�
�
� �
,�
�
� �

DiscColors�
�
� �
colors�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %

Quaternion
�
�
& 0
.
�
�
0 1
LookRotation
�
�
1 =
(
�
�
= >
normal
�
�
? E
)
�
�
F G
,
�
�
G H
Vector3
�
�
I P
.
�
�
P Q
one
�
�
Q T
)
�
�
U V
;
�
�
V W
Arc_Internal
�
�
 
(
�
�
 
radius
�
�
 
,
�
�
 
	thickness
�
�
 "
,
�
�
" #
colors
�
�
$ *
,
�
�
* +

�
�
, 9
,
�
�
9 :
angleRadEnd
�
�
; F
,
�
�
F G
endCaps
�
�
H O
)
�
�
P Q
;
�
�
Q R
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =

Quaternion
�
�
> H
rot
�
�
I L
,
�
�
L M
float
�
�
N S

�
�
T a
,
�
�
a b
float
�
�
c h
angleRadEnd
�
�
i t
)
�
�
u v
{
�
�
w x
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %
rot
�
�
& )
,
�
�
) *
Vector3
�
�
+ 2
.
�
�
2 3
one
�
�
3 6
)
�
�
7 8
;
�
�
8 9
Arc_Internal
�
�
 
(
�
�
 
Radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
Color
�
�
$ )
,
�
�
) *

�
�
+ 8
,
�
�
8 9
angleRadEnd
�
�
: E
,
�
�
E F
	ArcEndCap
�
�
G P
.
�
�
P Q
None
�
�
Q U
)
�
�
V W
;
�
�
W X
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =

Quaternion
�
�
> H
rot
�
�
I L
,
�
�
L M
float
�
�
N S

�
�
T a
,
�
�
a b
float
�
�
c h
angleRadEnd
�
�
i t
,
�
�
t u

DiscColors�
�
v �
colors�
�
� �
)�
�
� �
{�
�
� �
Draw
�
�
 
.
�
�
 

PushMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
Draw
�
�
 
.
�
�
 
Matrix
�
�
 
*=
�
�
 
	Matrix4x4
�
�
 
.
�
�
 
TRS
�
�
 
(
�
�
  
pos
�
�
! $
,
�
�
$ %
rot
�
�
& )
,
�
�
) *
Vector3
�
�
+ 2
.
�
�
2 3
one
�
�
3 6
)
�
�
7 8
;
�
�
8 9
Arc_Internal
�
�
 
(
�
�
 
Radius
�
�
 
,
�
�
 
	Thickness
�
�
 "
,
�
�
" #
colors
�
�
$ *
,
�
�
* +

�
�
, 9
,
�
�
9 :
angleRadEnd
�
�
; F
,
�
�
F G
	ArcEndCap
�
�
H Q
.
�
�
Q R
None
�
�
R V
)
�
�
W X
;
�
�
X Y
Draw
�
�
 
.
�
�
 
	PopMatrix
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
[
�
�
 

MethodImpl
�
�
 
(
�
�

INLINE
�
�
 
)
�
�
 
]
�
�
 
public
�
�
 
static
�
�
  &
void
�
�
' +
Arc
�
�
, /
(
�
�
/ 0
Vector3
�
�
1 8
pos
�
�
9 <
,
�
�
< =

Quaternion
�
�
> H
rot
�
�
I L
,
�
�
L M
float
�
�
N S

�
�
T a
,
�
�
a b
float
�
�
c h
angleRadEnd
�
�
i t
,
�
�
t u
	ArcEndCap
�
�
v 
endCaps�
�
� �
)�
�
� �
{�
�
� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
Radius
�� 
,
�� 
	Thickness
�� "
,
��" #
Color
��$ )
,
��) *

��+ 8
,
��8 9
angleRadEnd
��: E
,
��E F
endCaps
��G N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =

Quaternion
��> H
rot
��I L
,
��L M
float
��N S

��T a
,
��a b
float
��c h
angleRadEnd
��i t
,
��t u
	ArcEndCap
��v 
endCaps��� �
,��� �

DiscColors��� �
colors��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
Radius
�� 
,
�� 
	Thickness
�� "
,
��" #
colors
��$ *
,
��* +

��, 9
,
��9 :
angleRadEnd
��; F
,
��F G
endCaps
��H O
)
��P Q
;
��Q R
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =

Quaternion
��> H
rot
��I L
,
��L M
float
��N S
radius
��T Z
,
��Z [
float
��\ a

��b o
,
��o p
float
��q v
angleRadEnd��w �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� "
,
��" #
Color
��$ )
,
��) *

��+ 8
,
��8 9
angleRadEnd
��: E
,
��E F
	ArcEndCap
��G P
.
��P Q
None
��Q U
)
��V W
;
��W X
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =

Quaternion
��> H
rot
��I L
,
��L M
float
��N S
radius
��T Z
,
��Z [
float
��\ a

��b o
,
��o p
float
��q v
angleRadEnd��w �
,��� �

DiscColors��� �
colors��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� "
,
��" #
colors
��$ *
,
��* +

��, 9
,
��9 :
angleRadEnd
��; F
,
��F G
	ArcEndCap
��H Q
.
��Q R
None
��R V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =

Quaternion
��> H
rot
��I L
,
��L M
float
��N S
radius
��T Z
,
��Z [
float
��\ a

��b o
,
��o p
float
��q v
angleRadEnd��w �
,��� �
	ArcEndCap��� �
endCaps��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� "
,
��" #
Color
��$ )
,
��) *

��+ 8
,
��8 9
angleRadEnd
��: E
,
��E F
endCaps
��G N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =

Quaternion
��> H
rot
��I L
,
��L M
float
��N S
radius
��T Z
,
��Z [
float
��\ a

��b o
,
��o p
float
��q v
angleRadEnd��w �
,��� �
	ArcEndCap��� �
endCaps��� �
,��� �

DiscColors��� �
colors��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
radius
�� 
,
�� 
	Thickness
�� "
,
��" #
colors
��$ *
,
��* +

��, 9
,
��9 :
angleRadEnd
��; F
,
��F G
endCaps
��H O
)
��P Q
;
��Q R
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =

Quaternion
��> H
rot
��I L
,
��L M
float
��N S
radius
��T Z
,
��Z [
float
��\ a
	thickness
��b k
,
��k l
float
��m r

,��� �
float��� �
angleRadEnd��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� "
,
��" #
Color
��$ )
,
��) *

��+ 8
,
��8 9
angleRadEnd
��: E
,
��E F
	ArcEndCap
��G P
.
��P Q
None
��Q U
)
��V W
;
��W X
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =

Quaternion
��> H
rot
��I L
,
��L M
float
��N S
radius
��T Z
,
��Z [
float
��\ a
	thickness
��b k
,
��k l
float
��m r

,��� �
float��� �
angleRadEnd��� �
,��� �

DiscColors��� �
colors��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� "
,
��" #
colors
��$ *
,
��* +

��, 9
,
��9 :
angleRadEnd
��; F
,
��F G
	ArcEndCap
��H Q
.
��Q R
None
��R V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =

Quaternion
��> H
rot
��I L
,
��L M
float
��N S
radius
��T Z
,
��Z [
float
��\ a
	thickness
��b k
,
��k l
float
��m r

,��� �
float��� �
angleRadEnd��� �
,��� �
	ArcEndCap��� �
endCaps��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� "
,
��" #
Color
��$ )
,
��) *

��+ 8
,
��8 9
angleRadEnd
��: E
,
��E F
endCaps
��G N
)
��O P
;
��P Q
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
Vector3
��1 8
pos
��9 <
,
��< =

Quaternion
��> H
rot
��I L
,
��L M
float
��N S
radius
��T Z
,
��Z [
float
��\ a
	thickness
��b k
,
��k l
float
��m r

,��� �
float��� �
angleRadEnd��� �
,��� �
	ArcEndCap��� �
endCaps��� �
,��� �

DiscColors��� �
colors��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Arc_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� "
,
��" #
colors
��$ *
,
��* +

��, 9
,
��9 :
angleRadEnd
��; F
,
��F G
endCaps
��H O
)
��P Q
;
��Q R
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6

��7 D
,
��D E
float
��F K
angleRadEnd
��L W
)
��X Y
=>
��Z \
Arc_Internal
��] i
(
��i j
Radius
��k q
,
��q r
	Thickness
��s |
,
��| }
Color��~ �
,��� �

,��� �
angleRadEnd��� �
,��� �
	ArcEndCap��� �
.��� �
None��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6

��7 D
,
��D E
float
��F K
angleRadEnd
��L W
,
��W X

DiscColors
��Y c
colors
��d j
)
��k l
=>
��m o
Arc_Internal
��p |
(
��| }
Radius��~ �
,��� �
	Thickness��� �
,��� �
colors��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
	ArcEndCap��� �
.��� �
None��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6

��7 D
,
��D E
float
��F K
angleRadEnd
��L W
,
��W X
	ArcEndCap
��Y b
endCaps
��c j
)
��k l
=>
��m o
Arc_Internal
��p |
(
��| }
Radius��~ �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
endCaps��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6

��7 D
,
��D E
float
��F K
angleRadEnd
��L W
,
��W X
	ArcEndCap
��Y b
endCaps
��c j
,
��j k

DiscColors
��l v
colors
��w }
)
��~ 
=>��� �
Arc_Internal��� �
(��� �
Radius��� �
,��� �
	Thickness��� �
,��� �
colors��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
endCaps��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6
radius
��7 =
,
��= >
float
��? D

��E R
,
��R S
float
��T Y
angleRadEnd
��Z e
)
��f g
=>
��h j
Arc_Internal
��k w
(
��w x
radius
��y 
,�� �
	Thickness��� �
,��� �
Color��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
	ArcEndCap��� �
.��� �
None��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6
radius
��7 =
,
��= >
float
��? D

��E R
,
��R S
float
��T Y
angleRadEnd
��Z e
,
��e f

DiscColors
��g q
colors
��r x
)
��y z
=>
��{ }
Arc_Internal��~ �
(��� �
radius��� �
,��� �
	Thickness��� �
,��� �
colors��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
	ArcEndCap��� �
.��� �
None��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6
radius
��7 =
,
��= >
float
��? D

��E R
,
��R S
float
��T Y
angleRadEnd
��Z e
,
��e f
	ArcEndCap
��g p
endCaps
��q x
)
��y z
=>
��{ }
Arc_Internal��~ �
(��� �
radius��� �
,��� �
	Thickness��� �
,��� �
Color��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
endCaps��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6
radius
��7 =
,
��= >
float
��? D

��E R
,
��R S
float
��T Y
angleRadEnd
��Z e
,
��e f
	ArcEndCap
��g p
endCaps
��q x
,
��x y

DiscColors��z �
colors��� �
)��� �
=>��� �
Arc_Internal��� �
(��� �
radius��� �
,��� �
	Thickness��� �
,��� �
colors��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
endCaps��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6
radius
��7 =
,
��= >
float
��? D
	thickness
��E N
,
��N O
float
��P U

��V c
,
��c d
float
��e j
angleRadEnd
��k v
)
��w x
=>
��y {
Arc_Internal��| �
(��� �
radius��� �
,��� �
	thickness��� �
,��� �
Color��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
	ArcEndCap��� �
.��� �
None��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6
radius
��7 =
,
��= >
float
��? D
	thickness
��E N
,
��N O
float
��P U

��V c
,
��c d
float
��e j
angleRadEnd
��k v
,
��v w

DiscColors��x �
colors��� �
)��� �
=>��� �
Arc_Internal��� �
(��� �
radius��� �
,��� �
	thickness��� �
,��� �
colors��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
	ArcEndCap��� �
.��� �
None��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6
radius
��7 =
,
��= >
float
��? D
	thickness
��E N
,
��N O
float
��P U

��V c
,
��c d
float
��e j
angleRadEnd
��k v
,
��v w
	ArcEndCap��x �
endCaps��� �
)��� �
=>��� �
Arc_Internal��� �
(��� �
radius��� �
,��� �
	thickness��� �
,��� �
Color��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
endCaps��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Arc
��, /
(
��/ 0
float
��1 6
radius
��7 =
,
��= >
float
��? D
	thickness
��E N
,
��N O
float
��P U

��V c
,
��c d
float
��e j
angleRadEnd
��k v
,
��v w
	ArcEndCap��x �
endCaps��� �
,��� �

DiscColors��� �
colors��� �
)��� �
=>��� �
Arc_Internal��� �
(��� �
radius��� �
,��� �
	thickness��� �
,��� �
colors��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
endCaps��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Rect
��D H
rect
��I M
)
��N O
{
��P Q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
Color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
default
��A H
)
��I J
;
��J K
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Rect
��D H
rect
��I M
,
��M N
Color
��O T
color
��U Z
)
��[ \
{
��] ^
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
default
��A H
)
��I J
;
��J K
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Rect
��D H
rect
��I M
,
��M N
float
��O T
cornerRadius
��U a
)
��b c
{
��d e
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
Color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
new
��A D
Vector4
��E L
(
��L M
cornerRadius
��N Z
,
��Z [
cornerRadius
��\ h
,
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Rect
��D H
rect
��I M
,
��M N
float
��O T
cornerRadius
��U a
,
��a b
Color
��c h
color
��i n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
new
��A D
Vector4
��E L
(
��L M
cornerRadius
��N Z
,
��Z [
cornerRadius
��\ h
,
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Rect
��D H
rect
��I M
,
��M N
Vector4
��O V
cornerRadii
��W b
)
��c d
{
��e f
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
Color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
cornerRadii
��A L
)
��M N
;
��N O
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Rect
��D H
rect
��I M
,
��M N
Vector4
��O V
cornerRadii
��W b
,
��b c
Color
��d i
color
��j o
)
��p q
{
��r s
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
cornerRadii
��A L
)
��M N
;
��N O
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Rect
��T X
rect
��Y ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
Color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
default
��A H
)
��I J
;
��J K
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
default
��A H
)
��I J
;
��J K
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
float
��_ d
cornerRadius
��e q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
Color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
new
��A D
Vector4
��E L
(
��L M
cornerRadius
��N Z
,
��Z [
cornerRadius
��\ h
,
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
float
��_ d
cornerRadius
��e q
,
��q r
Color
��s x
color
��y ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
new
��A D
Vector4
��E L
(
��L M
cornerRadius
��N Z
,
��Z [
cornerRadius
��\ h
,
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
Vector4
��_ f
cornerRadii
��g r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
Color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
cornerRadii
��A L
)
��M N
;
��N O
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
Vector4
��_ f
cornerRadii
��g r
,
��r s
Color
��t y
color
��z 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
cornerRadii
��A L
)
��M N
;
��N O
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Rect
��T X
rect
��Y ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
Color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
default
��A H
)
��I J
;
��J K
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
default
��A H
)
��I J
;
��J K
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
float
��_ d
cornerRadius
��e q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
Color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
new
��A D
Vector4
��E L
(
��L M
cornerRadius
��N Z
,
��Z [
cornerRadius
��\ h
,
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
float
��_ d
cornerRadius
��e q
,
��q r
Color
��s x
color
��y ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
new
��A D
Vector4
��E L
(
��L M
cornerRadius
��N Z
,
��Z [
cornerRadius
��\ h
,
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
Vector4
��_ f
cornerRadii
��g r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
Color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
cornerRadii
��A L
)
��M N
;
��N O
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Rect
��T X
rect
��Y ]
,
��] ^
Vector4
��_ f
cornerRadii
��g r
,
��r s
Color
��t y
color
��z 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
rect
��) -
,
��- .
color
��/ 4
,
��4 5
	Thickness
��6 ?
,
��? @
cornerRadii
��A L
)
��M N
;
��N O
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
)
��Q R
{
��S T
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
Color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
default
��] d
)
��e f
;
��f g
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
Color
��R W
color
��X ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
default
��] d
)
��e f
;
��f g
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
float
��R W
cornerRadius
��X d
)
��e f
{
��g h
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
Color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
new
��] `
Vector4
��a h
(
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
float
��R W
cornerRadius
��X d
,
��d e
Color
��f k
color
��l q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
new
��] `
Vector4
��a h
(
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
Vector4
��R Y
cornerRadii
��Z e
)
��f g
{
��h i
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
Color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
cornerRadii
��] h
)
��i j
;
��j k
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
Vector4
��R Y
cornerRadii
��Z e
,
��e f
Color
��g l
color
��m r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�
.
�
	Translate
�
(
�
pos
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
size
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
cornerRadii
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
float
�
width
�
,
�
float
�
height
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
	Translate
�
(
�
pos
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
Color
�
,
�
	Thickness
�
,
�
default
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
Color
�
color
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
	Translate
�
(
�
pos
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
default
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
float
�
cornerRadius
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
	Translate
�
(
�
pos
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
Color
�
,
�
	Thickness
�
,
�
new
�
Vector4
�
(
�
cornerRadius
�
,�
cornerRadius�
,�
cornerRadius�
,�
cornerRadius�
)�
)�
;�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
float
�
cornerRadius
�
,
�
Color
�
color
�
)�
{�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
	Translate
�
(
�
pos
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
new
�
Vector4
�
(
�
cornerRadius
�
,�
cornerRadius�
,�
cornerRadius�
,�
cornerRadius�
)�
)�
;�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
Vector4
�
cornerRadii
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
	Translate
�
(
�
pos
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
Color
�
,
�
	Thickness
�
,
�
cornerRadii
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
Vector4
�
cornerRadii
�
,
�
Color
�
color
�
)�
{�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
	Translate
�
(
�
pos
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
cornerRadii
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
Vector2
�
size
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
size
�
)
�
,
�
Color
�
,
�
	Thickness
�
,
�
default
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
Vector2
�
size
�
,
�
Color
�
color
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
size
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
default
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
Vector2
�
size
�
,
�
float
�
cornerRadius
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
size
�
)
�
,
�
Color
�
,
�
	Thickness
�
,
�
new
�
Vector4
�
(
�
cornerRadius
�
,
�
cornerRadius�
,�
cornerRadius�
,�
cornerRadius�
)�
)�
;�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
Vector2
�
size
�
,
�
float
�
cornerRadius
�
,
�
Color
�
color�
)�
{�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
size
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
new
�
Vector4
�
(
�
cornerRadius
�
,
�
cornerRadius�
,�
cornerRadius�
,�
cornerRadius�
)�
)�
;�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
Vector2
�
size
�
,
�
Vector4
�
cornerRadii
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
size
�
)
�
,
�
Color
�
,
�
	Thickness
�
,
�
cornerRadii
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
Vector2
�
size
�
,
�
Vector4
�
cornerRadii
�
,
�
Color
�
color�
)�
{�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
size
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
cornerRadii
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
float
�
width
�
,
�
float
�
height
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
Color
�
,
�
	Thickness
�
,
�
default
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
Color
�
color
�
)
�
{
�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
default
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
float
�
cornerRadius�
)�
{�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
Color
�
,
�
	Thickness
�
,
�
new
�
Vector4
�
(
�
cornerRadius
�
,�
cornerRadius�
,�
cornerRadius�
,�
cornerRadius�
)�
)�
;�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
float
�
cornerRadius�
,�
Color�
color�
)�
{�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
new
�
Vector4
�
(
�
cornerRadius
�
,�
cornerRadius�
,�
cornerRadius�
,�
cornerRadius�
)�
)�
;�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
Vector4
�
cornerRadii�
)�
{�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
Color
�
,
�
	Thickness
�
,
�
cornerRadii
�
)
�
;
�
Draw
�
.
�
	PopMatrix
�
(
�
)
�
;
�
}
�
[
�

MethodImpl
�
(
�
INLINE
�
)
�
]
�
public
�
static
�
void
�
	Rectangle
�
(
�
Vector3
�
pos
�
,
�
Vector3
�
normal
�
,
�
float
�
width
�
,
�
float
�
height
�
,
�
Vector4
�
cornerRadii�
,�
Color�
color�
)�
{�
Draw
�
.
�

PushMatrix
�
(
�
)
�
;
�
Draw
�
.
�
Matrix
�
*=
�
	Matrix4x4
�
.
�
TRS
�
(
�
pos
�
,
�

Quaternion
�
.
�
LookRotation
�
(
�
normal
�
)
�
,
�
Vector3
�
.
�
one
�
)
�
;
�
Rectangle_Internal
�
(
�
	BlendMode
�
,
�
false
�
,
�
	RectPivot
�
.
�
Center
�
.
�
GetRect
�
(
�
width
�
,
�
height
�
)
�
,
�
color
�
,
�
	Thickness
�
,
�
cornerRadii
�
)
�
;
�
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
)
��a b
{
��c d
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
Color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
default
��] d
)
��e f
;
��f g
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
Color
��b g
color
��h m
)
��n o
{
��p q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
default
��] d
)
��e f
;
��f g
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
float
��b g
cornerRadius
��h t
)
��u v
{
��w x
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
Color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
new
��] `
Vector4
��a h
(
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
float
��b g
cornerRadius
��h t
,
��t u
Color
��v {
color��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
new
��] `
Vector4
��a h
(
��h i
cornerRadius
��j v
,
��v w
cornerRadius��x �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
Vector4
��b i
cornerRadii
��j u
)
��v w
{
��x y
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
Color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
cornerRadii
��] h
)
��i j
;
��j k
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
Vector4
��b i
cornerRadii
��j u
,
��u v
Color
��w |
color��} �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
size
��C G
)
��H I
,
��I J
color
��K P
,
��P Q
	Thickness
��R [
,
��[ \
cornerRadii
��] h
)
��i j
;
��j k
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
)
��n o
{
��p q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
width
��C H
,
��H I
height
��J P
)
��Q R
,
��R S
Color
��T Y
,
��Y Z
	Thickness
��[ d
,
��d e
default
��f m
)
��n o
;
��o p
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
Color
��o t
color
��u z
)
��{ |
{
��} ~
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
width
��C H
,
��H I
height
��J P
)
��Q R
,
��R S
color
��T Y
,
��Y Z
	Thickness
��[ d
,
��d e
default
��f m
)
��n o
;
��o p
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
float
��o t
cornerRadius��u �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
width
��C H
,
��H I
height
��J P
)
��Q R
,
��R S
Color
��T Y
,
��Y Z
	Thickness
��[ d
,
��d e
new
��f i
Vector4
��j q
(
��q r
cornerRadius
��s 
,�� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
float
��o t
cornerRadius��u �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
width
��C H
,
��H I
height
��J P
)
��Q R
,
��R S
color
��T Y
,
��Y Z
	Thickness
��[ d
,
��d e
new
��f i
Vector4
��j q
(
��q r
cornerRadius
��s 
,�� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
Vector4
��o v
cornerRadii��w �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
width
��C H
,
��H I
height
��J P
)
��Q R
,
��R S
Color
��T Y
,
��Y Z
	Thickness
��[ d
,
��d e
cornerRadii
��f q
)
��r s
;
��s t
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
Vector4
��o v
cornerRadii��w �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
	RectPivot
��) 2
.
��2 3
Center
��3 9
.
��9 :
GetRect
��: A
(
��A B
width
��C H
,
��H I
height
��J P
)
��Q R
,
��R S
color
��T Y
,
��Y Z
	Thickness
��[ d
,
��d e
cornerRadii
��f q
)
��r s
;
��s t
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Rect
��7 ;
rect
��< @
)
��A B
=>
��C E 
Rectangle_Internal
��F X
(
��X Y
	BlendMode
��Z c
,
��c d
false
��e j
,
��j k
rect
��l p
,
��p q
Color
��r w
,
��w x
	Thickness��y �
,��� �
default��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Rect
��7 ;
rect
��< @
,
��@ A
Color
��B G
color
��H M
)
��N O
=>
��P R 
Rectangle_Internal
��S e
(
��e f
	BlendMode
��g p
,
��p q
false
��r w
,
��w x
rect
��y }
,
��} ~
color�� �
,��� �
	Thickness��� �
,��� �
default��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Rect
��7 ;
rect
��< @
,
��@ A
float
��B G
cornerRadius
��H T
)
��U V
=>
��W Y 
Rectangle_Internal
��Z l
(
��l m
	BlendMode
��n w
,
��w x
false
��y ~
,
��~ 
rect��� �
,��� �
Color��� �
,��� �
	Thickness��� �
,��� �
new��� �
Vector4��� �
(��� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Rect
��7 ;
rect
��< @
,
��@ A
float
��B G
cornerRadius
��H T
,
��T U
Color
��V [
color
��\ a
)
��b c
=>
��d f 
Rectangle_Internal
��g y
(
��y z
	BlendMode��{ �
,��� �
false��� �
,��� �
rect��� �
,��� �
color��� �
,��� �
	Thickness��� �
,��� �
new��� �
Vector4��� �
(��� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Rect
��7 ;
rect
��< @
,
��@ A
Vector4
��B I
cornerRadii
��J U
)
��V W
=>
��X Z 
Rectangle_Internal
��[ m
(
��m n
	BlendMode
��o x
,
��x y
false
��z 
,�� �
rect��� �
,��� �
Color��� �
,��� �
	Thickness��� �
,��� �
cornerRadii��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Rect
��7 ;
rect
��< @
,
��@ A
Vector4
��B I
cornerRadii
��J U
,
��U V
Color
��W \
color
��] b
)
��c d
=>
��e g 
Rectangle_Internal
��h z
(
��z {
	BlendMode��| �
,��� �
false��� �
,��� �
rect��� �
,��� �
color��� �
,��� �
	Thickness��� �
,��� �
cornerRadii��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
	RectPivot
��R [
pivot
��\ a
)
��b c
{
��d e
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
Color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
default
��R Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
	RectPivot
��R [
pivot
��\ a
,
��a b
Color
��c h
color
��i n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
default
��R Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
	RectPivot
��R [
pivot
��\ a
,
��a b
float
��c h
cornerRadius
��i u
)
��v w
{
��x y
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
Color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
new
��R U
Vector4
��V ]
(
��] ^
cornerRadius
��_ k
,
��k l
cornerRadius
��m y
,
��y z
cornerRadius��{ �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
	RectPivot
��R [
pivot
��\ a
,
��a b
float
��c h
cornerRadius
��i u
,
��u v
Color
��w |
color��} �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
new
��R U
Vector4
��V ]
(
��] ^
cornerRadius
��_ k
,
��k l
cornerRadius
��m y
,
��y z
cornerRadius��{ �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
	RectPivot
��R [
pivot
��\ a
,
��a b
Vector4
��c j
cornerRadii
��k v
)
��w x
{
��y z
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
Color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
cornerRadii
��R ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector2
��D K
size
��L P
,
��P Q
	RectPivot
��R [
pivot
��\ a
,
��a b
Vector4
��c j
cornerRadii
��k v
,
��v w
Color
��x }
color��~ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
cornerRadii
��R ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
float
��D I
width
��J O
,
��O P
float
��Q V
height
��W ]
,
��] ^
	RectPivot
��_ h
pivot
��i n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
Color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
default
��[ b
)
��c d
;
��d e
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
float
��D I
width
��J O
,
��O P
float
��Q V
height
��W ]
,
��] ^
	RectPivot
��_ h
pivot
��i n
,
��n o
Color
��p u
color
��v {
)
��| }
{
��~ 
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
default
��[ b
)
��c d
;
��d e
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
float
��D I
width
��J O
,
��O P
float
��Q V
height
��W ]
,
��] ^
	RectPivot
��_ h
pivot
��i n
,
��n o
float
��p u
cornerRadius��v �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
Color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
new
��[ ^
Vector4
��_ f
(
��f g
cornerRadius
��h t
,
��t u
cornerRadius��v �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
float
��D I
width
��J O
,
��O P
float
��Q V
height
��W ]
,
��] ^
	RectPivot
��_ h
pivot
��i n
,
��n o
float
��p u
cornerRadius��v �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
new
��[ ^
Vector4
��_ f
(
��f g
cornerRadius
��h t
,
��t u
cornerRadius��v �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
float
��D I
width
��J O
,
��O P
float
��Q V
height
��W ]
,
��] ^
	RectPivot
��_ h
pivot
��i n
,
��n o
Vector4
��p w
cornerRadii��x �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
Color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
cornerRadii
��[ f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
float
��D I
width
��J O
,
��O P
float
��Q V
height
��W ]
,
��] ^
	RectPivot
��_ h
pivot
��i n
,
��n o
Vector4
��p w
cornerRadii��x �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
cornerRadii
��[ f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
Color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
default
��R Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
Color
��s x
color
��y ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
default
��R Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
float
��s x
cornerRadius��y �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
Color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
new
��R U
Vector4
��V ]
(
��] ^
cornerRadius
��_ k
,
��k l
cornerRadius
��m y
,
��y z
cornerRadius��{ �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
float
��s x
cornerRadius��y �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
new
��R U
Vector4
��V ]
(
��] ^
cornerRadius
��_ k
,
��k l
cornerRadius
��m y
,
��y z
cornerRadius��{ �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
Vector4
��s z
cornerRadii��{ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
Color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
cornerRadii
��R ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
Vector4
��s z
cornerRadii��{ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
cornerRadii
��R ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
Color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
default
��[ b
)
��c d
;
��d e
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
default
��[ b
)
��c d
;
��d e
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
float��� �
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
Color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
new
��[ ^
Vector4
��_ f
(
��f g
cornerRadius
��h t
,
��t u
cornerRadius��v �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
float��� �
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
new
��[ ^
Vector4
��_ f
(
��f g
cornerRadius
��h t
,
��t u
cornerRadius��v �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
Vector4��� �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
Color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
cornerRadii
��[ f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C
Vector3
��D K
normal
��L R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
Vector4��� �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
cornerRadii
��[ f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
Color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
default
��R Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
Color
��s x
color
��y ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
default
��R Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
float
��s x
cornerRadius��y �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
Color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
new
��R U
Vector4
��V ]
(
��] ^
cornerRadius
��_ k
,
��k l
cornerRadius
��m y
,
��y z
cornerRadius��{ �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
float
��s x
cornerRadius��y �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
new
��R U
Vector4
��V ]
(
��] ^
cornerRadius
��_ k
,
��k l
cornerRadius
��m y
,
��y z
cornerRadius��{ �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
Vector4
��s z
cornerRadii��{ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
Color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
cornerRadii
��R ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
Vector2
��T [
size
��\ `
,
��` a
	RectPivot
��b k
pivot
��l q
,
��q r
Vector4
��s z
cornerRadii��{ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
size
��8 <
)
��= >
,
��> ?
color
��@ E
,
��E F
	Thickness
��G P
,
��P Q
cornerRadii
��R ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
Color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
default
��[ b
)
��c d
;
��d e
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
default
��[ b
)
��c d
;
��d e
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
float��� �
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
Color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
new
��[ ^
Vector4
��_ f
(
��f g
cornerRadius
��h t
,
��t u
cornerRadius��v �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
float��� �
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
new
��[ ^
Vector4
��_ f
(
��f g
cornerRadius
��h t
,
��t u
cornerRadius��v �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
Vector4��� �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
Color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
cornerRadii
��[ f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
	Rectangle
��, 5
(
��5 6
Vector3
��7 >
pos
��? B
,
��B C

Quaternion
��D N
rot
��O R
,
��R S
float
��T Y
width
��Z _
,
��_ `
float
��a f
height
��g m
,
��m n
	RectPivot
��o x
pivot
��y ~
,
��~ 
Vector4��� �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
false
��" '
,
��' (
pivot
��) .
.
��. /
GetRect
��/ 6
(
��6 7
width
��8 =
,
��= >
height
��? E
)
��F G
,
��G H
color
��I N
,
��N O
	Thickness
��P Y
,
��Y Z
cornerRadii
��[ f
)
��g h
;
��h i
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Rect
��J N
rect
��O S
,
��S T
float
��U Z
	thickness
��[ d
)
��e f
{
��g h
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
Color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
default
��@ G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Rect
��J N
rect
��O S
,
��S T
float
��U Z
	thickness
��[ d
,
��d e
Color
��f k
color
��l q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
default
��@ G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Rect
��J N
rect
��O S
,
��S T
float
��U Z
	thickness
��[ d
,
��d e
float
��f k
cornerRadius
��l x
)
��y z
{
��{ |
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
Color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
new
��@ C
Vector4
��D K
(
��K L
cornerRadius
��M Y
,
��Y Z
cornerRadius
��[ g
,
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Rect
��J N
rect
��O S
,
��S T
float
��U Z
	thickness
��[ d
,
��d e
float
��f k
cornerRadius
��l x
,
��x y
Color
��z 
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
new
��@ C
Vector4
��D K
(
��K L
cornerRadius
��M Y
,
��Y Z
cornerRadius
��[ g
,
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Rect
��J N
rect
��O S
,
��S T
float
��U Z
	thickness
��[ d
,
��d e
Vector4
��f m
cornerRadii
��n y
)
��z {
{
��| }
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
Color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
cornerRadii
��@ K
)
��L M
;
��M N
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Rect
��J N
rect
��O S
,
��S T
float
��U Z
	thickness
��[ d
,
��d e
Vector4
��f m
cornerRadii
��n y
,
��y z
Color��{ �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
cornerRadii
��@ K
)
��L M
;
��M N
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
)
��u v
{
��w x
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
Color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
default
��@ G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
Color
��v {
color��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
default
��@ G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
float
��v {
cornerRadius��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
Color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
new
��@ C
Vector4
��D K
(
��K L
cornerRadius
��M Y
,
��Y Z
cornerRadius
��[ g
,
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
float
��v {
cornerRadius��| �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
new
��@ C
Vector4
��D K
(
��K L
cornerRadius
��M Y
,
��Y Z
cornerRadius
��[ g
,
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
Vector4
��v }
cornerRadii��~ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
Color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
cornerRadii
��@ K
)
��L M
;
��M N
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
Vector4
��v }
cornerRadii��~ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
cornerRadii
��@ K
)
��L M
;
��M N
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
)
��u v
{
��w x
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
Color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
default
��@ G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
Color
��v {
color��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
default
��@ G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
float
��v {
cornerRadius��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
Color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
new
��@ C
Vector4
��D K
(
��K L
cornerRadius
��M Y
,
��Y Z
cornerRadius
��[ g
,
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
float
��v {
cornerRadius��| �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
new
��@ C
Vector4
��D K
(
��K L
cornerRadius
��M Y
,
��Y Z
cornerRadius
��[ g
,
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
Vector4
��v }
cornerRadii��~ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
Color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
cornerRadii
��@ K
)
��L M
;
��M N
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Rect
��Z ^
rect
��_ c
,
��c d
float
��e j
	thickness
��k t
,
��t u
Vector4
��v }
cornerRadii��~ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
rect
��( ,
,
��, -
color
��. 3
,
��3 4
	thickness
��5 >
,
��> ?
cornerRadii
��@ K
)
��L M
;
��M N
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
float
��X ]
	thickness
��^ g
)
��h i
{
��j k
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
Color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
default
��\ c
)
��d e
;
��e f
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
float
��X ]
	thickness
��^ g
,
��g h
Color
��i n
color
��o t
)
��u v
{
��w x
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
default
��\ c
)
��d e
;
��e f
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
float
��X ]
	thickness
��^ g
,
��g h
float
��i n
cornerRadius
��o {
)
��| }
{
��~ 
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
Color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
new
��\ _
Vector4
��` g
(
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
float
��X ]
	thickness
��^ g
,
��g h
float
��i n
cornerRadius
��o {
,
��{ |
Color��} �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
new
��\ _
Vector4
��` g
(
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
float
��X ]
	thickness
��^ g
,
��g h
Vector4
��i p
cornerRadii
��q |
)
��} ~
{�� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
Color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
cornerRadii
��\ g
)
��h i
;
��i j
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
float
��X ]
	thickness
��^ g
,
��g h
Vector4
��i p
cornerRadii
��q |
,
��| }
Color��~ �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
cornerRadii
��\ g
)
��h i
;
��i j
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
float
��e j
	thickness
��k t
)
��u v
{
��w x
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
Color
��S X
,
��X Y
	thickness
��Z c
,
��c d
default
��e l
)
��m n
;
��n o
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
float
��e j
	thickness
��k t
,
��t u
Color
��v {
color��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
color
��S X
,
��X Y
	thickness
��Z c
,
��c d
default
��e l
)
��m n
;
��n o
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
float
��e j
	thickness
��k t
,
��t u
float
��v {
cornerRadius��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
Color
��S X
,
��X Y
	thickness
��Z c
,
��c d
new
��e h
Vector4
��i p
(
��p q
cornerRadius
��r ~
,
��~ 
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
float
��e j
	thickness
��k t
,
��t u
float
��v {
cornerRadius��| �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
color
��S X
,
��X Y
	thickness
��Z c
,
��c d
new
��e h
Vector4
��i p
(
��p q
cornerRadius
��r ~
,
��~ 
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
float
��e j
	thickness
��k t
,
��t u
Vector4
��v }
cornerRadii��~ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
Color
��S X
,
��X Y
	thickness
��Z c
,
��c d
cornerRadii
��e p
)
��q r
;
��r s
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
float
��e j
	thickness
��k t
,
��t u
Vector4
��v }
cornerRadii��~ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
color
��S X
,
��X Y
	thickness
��Z c
,
��c d
cornerRadii
��e p
)
��q r
;
��r s
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
)
��x y
{
��z {
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
Color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
default
��\ c
)
��d e
;
��e f
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
Color
��y ~
color�� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
default
��\ c
)
��d e
;
��e f
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
float
��y ~
cornerRadius�� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
Color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
new
��\ _
Vector4
��` g
(
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
float
��y ~
cornerRadius�� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
new
��\ _
Vector4
��` g
(
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
Vector4��y �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
Color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
cornerRadii
��\ g
)
��h i
;
��i j
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
Vector4��y �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
cornerRadii
��\ g
)
��h i
;
��i j
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
Color
��S X
,
��X Y
	thickness
��Z c
,
��c d
default
��e l
)
��m n
;
��n o
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
color
��S X
,
��X Y
	thickness
��Z c
,
��c d
default
��e l
)
��m n
;
��n o
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
float��� �
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
Color
��S X
,
��X Y
	thickness
��Z c
,
��c d
new
��e h
Vector4
��i p
(
��p q
cornerRadius
��r ~
,
��~ 
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
float��� �
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
color
��S X
,
��X Y
	thickness
��Z c
,
��c d
new
��e h
Vector4
��i p
(
��p q
cornerRadius
��r ~
,
��~ 
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
Vector4��� �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
Color
��S X
,
��X Y
	thickness
��Z c
,
��c d
cornerRadii
��e p
)
��q r
;
��r s
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
Vector4��� �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
color
��S X
,
��X Y
	thickness
��Z c
,
��c d
cornerRadii
��e p
)
��q r
;
��r s
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
)
��x y
{
��z {
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
Color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
default
��\ c
)
��d e
;
��e f
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
Color
��y ~
color�� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
default
��\ c
)
��d e
;
��e f
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
float
��y ~
cornerRadius�� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
Color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
new
��\ _
Vector4
��` g
(
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
float
��y ~
cornerRadius�� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
new
��\ _
Vector4
��` g
(
��g h
cornerRadius
��i u
,
��u v
cornerRadius��w �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
Vector4��y �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
Color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
cornerRadii
��\ g
)
��h i
;
��i j
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
float
��h m
	thickness
��n w
,
��w x
Vector4��y �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
size
��B F
)
��G H
,
��H I
color
��J O
,
��O P
	thickness
��Q Z
,
��Z [
cornerRadii
��\ g
)
��h i
;
��i j
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
Color
��S X
,
��X Y
	thickness
��Z c
,
��c d
default
��e l
)
��m n
;
��n o
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
color
��S X
,
��X Y
	thickness
��Z c
,
��c d
default
��e l
)
��m n
;
��n o
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
float��� �
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
Color
��S X
,
��X Y
	thickness
��Z c
,
��c d
new
��e h
Vector4
��i p
(
��p q
cornerRadius
��r ~
,
��~ 
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
float��� �
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
color
��S X
,
��X Y
	thickness
��Z c
,
��c d
new
��e h
Vector4
��i p
(
��p q
cornerRadius
��r ~
,
��~ 
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
Vector4��� �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
Color
��S X
,
��X Y
	thickness
��Z c
,
��c d
cornerRadii
��e p
)
��q r
;
��r s
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
float
��u z
	thickness��{ �
,��� �
Vector4��� �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
	RectPivot
��( 1
.
��1 2
Center
��2 8
.
��8 9
GetRect
��9 @
(
��@ A
width
��B G
,
��G H
height
��I O
)
��P Q
,
��Q R
color
��S X
,
��X Y
	thickness
��Z c
,
��c d
cornerRadii
��e p
)
��q r
;
��r s
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Rect
��= A
rect
��B F
,
��F G
float
��H M
	thickness
��N W
)
��X Y
=>
��Z \ 
Rectangle_Internal
��] o
(
��o p
	BlendMode
��q z
,
��z {
true��| �
,��� �
rect��� �
,��� �
Color��� �
,��� �
	thickness��� �
,��� �
default��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Rect
��= A
rect
��B F
,
��F G
float
��H M
	thickness
��N W
,
��W X
Color
��Y ^
color
��_ d
)
��e f
=>
��g i 
Rectangle_Internal
��j |
(
��| }
	BlendMode��~ �
,��� �
true��� �
,��� �
rect��� �
,��� �
color��� �
,��� �
	thickness��� �
,��� �
default��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Rect
��= A
rect
��B F
,
��F G
float
��H M
	thickness
��N W
,
��W X
float
��Y ^
cornerRadius
��_ k
)
��l m
=>
��n p!
Rectangle_Internal��q �
(��� �
	BlendMode��� �
,��� �
true��� �
,��� �
rect��� �
,��� �
Color��� �
,��� �
	thickness��� �
,��� �
new��� �
Vector4��� �
(��� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Rect
��= A
rect
��B F
,
��F G
float
��H M
	thickness
��N W
,
��W X
float
��Y ^
cornerRadius
��_ k
,
��k l
Color
��m r
color
��s x
)
��y z
=>
��{ }!
Rectangle_Internal��~ �
(��� �
	BlendMode��� �
,��� �
true��� �
,��� �
rect��� �
,��� �
color��� �
,��� �
	thickness��� �
,��� �
new��� �
Vector4��� �
(��� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Rect
��= A
rect
��B F
,
��F G
float
��H M
	thickness
��N W
,
��W X
Vector4
��Y `
cornerRadii
��a l
)
��m n
=>
��o q!
Rectangle_Internal��r �
(��� �
	BlendMode��� �
,��� �
true��� �
,��� �
rect��� �
,��� �
Color��� �
,��� �
	thickness��� �
,��� �
cornerRadii��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Rect
��= A
rect
��B F
,
��F G
float
��H M
	thickness
��N W
,
��W X
Vector4
��Y `
cornerRadii
��a l
,
��l m
Color
��n s
color
��t y
)
��z {
=>
��| ~!
Rectangle_Internal�� �
(��� �
	BlendMode��� �
,��� �
true��� �
,��� �
rect��� �
,��� �
color��� �
,��� �
	thickness��� �
,��� �
cornerRadii��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
	RectPivot
��X a
pivot
��b g
,
��g h
float
��i n
	thickness
��o x
)
��y z
{
��{ |
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
Color
��? D
,
��D E
	thickness
��F O
,
��O P
default
��Q X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
	RectPivot
��X a
pivot
��b g
,
��g h
float
��i n
	thickness
��o x
,
��x y
Color
��z 
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
color
��? D
,
��D E
	thickness
��F O
,
��O P
default
��Q X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
	RectPivot
��X a
pivot
��b g
,
��g h
float
��i n
	thickness
��o x
,
��x y
float
��z 
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
Color
��? D
,
��D E
	thickness
��F O
,
��O P
new
��Q T
Vector4
��U \
(
��\ ]
cornerRadius
��^ j
,
��j k
cornerRadius
��l x
,
��x y
cornerRadius��z �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
	RectPivot
��X a
pivot
��b g
,
��g h
float
��i n
	thickness
��o x
,
��x y
float
��z 
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
color
��? D
,
��D E
	thickness
��F O
,
��O P
new
��Q T
Vector4
��U \
(
��\ ]
cornerRadius
��^ j
,
��j k
cornerRadius
��l x
,
��x y
cornerRadius��z �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
	RectPivot
��X a
pivot
��b g
,
��g h
float
��i n
	thickness
��o x
,
��x y
Vector4��z �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
Color
��? D
,
��D E
	thickness
��F O
,
��O P
cornerRadii
��Q \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector2
��J Q
size
��R V
,
��V W
	RectPivot
��X a
pivot
��b g
,
��g h
float
��i n
	thickness
��o x
,
��x y
Vector4��z �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
color
��? D
,
��D E
	thickness
��F O
,
��O P
cornerRadii
��Q \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
	RectPivot
��e n
pivot
��o t
,
��t u
float
��v {
	thickness��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
Color
��H M
,
��M N
	thickness
��O X
,
��X Y
default
��Z a
)
��b c
;
��c d
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
	RectPivot
��e n
pivot
��o t
,
��t u
float
��v {
	thickness��| �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
color
��H M
,
��M N
	thickness
��O X
,
��X Y
default
��Z a
)
��b c
;
��c d
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
	RectPivot
��e n
pivot
��o t
,
��t u
float
��v {
	thickness��| �
,��� �
float��� �
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
Color
��H M
,
��M N
	thickness
��O X
,
��X Y
new
��Z ]
Vector4
��^ e
(
��e f
cornerRadius
��g s
,
��s t
cornerRadius��u �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
	RectPivot
��e n
pivot
��o t
,
��t u
float
��v {
	thickness��| �
,��� �
float��� �
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
color
��H M
,
��M N
	thickness
��O X
,
��X Y
new
��Z ]
Vector4
��^ e
(
��e f
cornerRadius
��g s
,
��s t
cornerRadius��u �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
	RectPivot
��e n
pivot
��o t
,
��t u
float
��v {
	thickness��| �
,��� �
Vector4��� �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
Color
��H M
,
��M N
	thickness
��O X
,
��X Y
cornerRadii
��Z e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
float
��J O
width
��P U
,
��U V
float
��W \
height
��] c
,
��c d
	RectPivot
��e n
pivot
��o t
,
��t u
float
��v {
	thickness��| �
,��� �
Vector4��� �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
��  
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
color
��H M
,
��M N
	thickness
��O X
,
��X Y
cornerRadii
��Z e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
Color
��? D
,
��D E
	thickness
��F O
,
��O P
default
��Q X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
color
��? D
,
��D E
	thickness
��F O
,
��O P
default
��Q X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
float��� �
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
Color
��? D
,
��D E
	thickness
��F O
,
��O P
new
��Q T
Vector4
��U \
(
��\ ]
cornerRadius
��^ j
,
��j k
cornerRadius
��l x
,
��x y
cornerRadius��z �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
float��� �
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
color
��? D
,
��D E
	thickness
��F O
,
��O P
new
��Q T
Vector4
��U \
(
��\ ]
cornerRadius
��^ j
,
��j k
cornerRadius
��l x
,
��x y
cornerRadius��z �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
Vector4��� �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
Color
��? D
,
��D E
	thickness
��F O
,
��O P
cornerRadii
��Q \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
Vector4��� �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
color
��? D
,
��D E
	thickness
��F O
,
��O P
cornerRadii
��Q \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
Color
��H M
,
��M N
	thickness
��O X
,
��X Y
default
��Z a
)
��b c
;
��c d
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
color
��H M
,
��M N
	thickness
��O X
,
��X Y
default
��Z a
)
��b c
;
��c d
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
float��� �
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
Color
��H M
,
��M N
	thickness
��O X
,
��X Y
new
��Z ]
Vector4
��^ e
(
��e f
cornerRadius
��g s
,
��s t
cornerRadius��u �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
float��� �
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
color
��H M
,
��M N
	thickness
��O X
,
��X Y
new
��Z ]
Vector4
��^ e
(
��e f
cornerRadius
��g s
,
��s t
cornerRadius��u �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
Vector4��� �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
Color
��H M
,
��M N
	thickness
��O X
,
��X Y
cornerRadii
��Z e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I
Vector3
��J Q
normal
��R X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
Vector4��� �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
color
��H M
,
��M N
	thickness
��O X
,
��X Y
cornerRadii
��Z e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
Color
��? D
,
��D E
	thickness
��F O
,
��O P
default
��Q X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
color
��? D
,
��D E
	thickness
��F O
,
��O P
default
��Q X
)
��Y Z
;
��Z [
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
float��� �
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
Color
��? D
,
��D E
	thickness
��F O
,
��O P
new
��Q T
Vector4
��U \
(
��\ ]
cornerRadius
��^ j
,
��j k
cornerRadius
��l x
,
��x y
cornerRadius��z �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
float��� �
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
color
��? D
,
��D E
	thickness
��F O
,
��O P
new
��Q T
Vector4
��U \
(
��\ ]
cornerRadius
��^ j
,
��j k
cornerRadius
��l x
,
��x y
cornerRadius��z �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
Vector4��� �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
Color
��? D
,
��D E
	thickness
��F O
,
��O P
cornerRadii
��Q \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
	RectPivot
��h q
pivot
��r w
,
��w x
float
��y ~
	thickness�� �
,��� �
Vector4��� �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
size
��7 ;
)
��< =
,
��= >
color
��? D
,
��D E
	thickness
��F O
,
��O P
cornerRadii
��Q \
)
��] ^
;
��^ _
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
Color
��H M
,
��M N
	thickness
��O X
,
��X Y
default
��Z a
)
��b c
;
��c d
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
color
��H M
,
��M N
	thickness
��O X
,
��X Y
default
��Z a
)
��b c
;
��c d
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
float��� �
cornerRadius��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
Color
��H M
,
��M N
	thickness
��O X
,
��X Y
new
��Z ]
Vector4
��^ e
(
��e f
cornerRadius
��g s
,
��s t
cornerRadius��u �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
float��� �
cornerRadius��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
color
��H M
,
��M N
	thickness
��O X
,
��X Y
new
��Z ]
Vector4
��^ e
(
��e f
cornerRadius
��g s
,
��s t
cornerRadius��u �
,��� �
cornerRadius��� �
,��� �
cornerRadius��� �
)��� �
)��� �
;��� �
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
Vector4��� �
cornerRadii��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
Color
��H M
,
��M N
	thickness
��O X
,
��X Y
cornerRadii
��Z e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
RectangleBorder
��, ;
(
��; <
Vector3
��= D
pos
��E H
,
��H I

Quaternion
��J T
rot
��U X
,
��X Y
float
��Z _
width
��` e
,
��e f
float
��g l
height
��m s
,
��s t
	RectPivot
��u ~
pivot�� �
,��� �
float��� �
	thickness��� �
,��� �
Vector4��� �
cornerRadii��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9 
Rectangle_Internal
�� 
(
�� 
	BlendMode
��  
,
��  !
true
��" &
,
��& '
pivot
��( -
.
��- .
GetRect
��. 5
(
��5 6
width
��7 <
,
��< =
height
��> D
)
��E F
,
��F G
color
��H M
,
��M N
	thickness
��O X
,
��X Y
cornerRadii
��Z e
)
��f g
;
��g h
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Triangle
��, 4
(
��4 5
Vector3
��6 =
a
��> ?
,
��? @
Vector3
��A H
b
��I J
,
��J K
Vector3
��L S
c
��T U
)
��V W
=>
��X Z
Triangle_Internal
��[ l
(
��l m
a
��n o
,
��o p
b
��q r
,
��r s
c
��t u
,
��u v
false
��w |
,
��| }
	Thickness��~ �
,��� �
$num��� �
,��� �
Color��� �
,��� �
Color��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Triangle
��, 4
(
��4 5
Vector3
��6 =
a
��> ?
,
��? @
Vector3
��A H
b
��I J
,
��J K
Vector3
��L S
c
��T U
,
��U V
Color
��W \
color
��] b
)
��c d
=>
��e g
Triangle_Internal
��h y
(
��y z
a
��{ |
,
��| }
b
��~ 
,�� �
c��� �
,��� �
false��� �
,��� �
	Thickness��� �
,��� �
$num��� �
,��� �
color��� �
,��� �
color��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Triangle
��, 4
(
��4 5
Vector3
��6 =
a
��> ?
,
��? @
Vector3
��A H
b
��I J
,
��J K
Vector3
��L S
c
��T U
,
��U V
Color
��W \
colorA
��] c
,
��c d
Color
��e j
colorB
��k q
,
��q r
Color
��s x
colorC
��y 
)��� �
=>��� �!
Triangle_Internal��� �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
false��� �
,��� �
	Thickness��� �
,��� �
$num��� �
,��� �
colorA��� �
,��� �
colorB��� �
,��� �
colorC��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Triangle
��, 4
(
��4 5
Vector3
��6 =
a
��> ?
,
��? @
Vector3
��A H
b
��I J
,
��J K
Vector3
��L S
c
��T U
,
��U V
float
��W \
	roundness
��] f
)
��g h
=>
��i k
Triangle_Internal
��l }
(
��} ~
a�� �
,��� �
b��� �
,��� �
c��� �
,��� �
false��� �
,��� �
	Thickness��� �
,��� �
	roundness��� �
,��� �
Color��� �
,��� �
Color��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Triangle
��, 4
(
��4 5
Vector3
��6 =
a
��> ?
,
��? @
Vector3
��A H
b
��I J
,
��J K
Vector3
��L S
c
��T U
,
��U V
float
��W \
	roundness
��] f
,
��f g
Color
��h m
color
��n s
)
��t u
=>
��v x 
Triangle_Internal��y �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
false��� �
,��� �
	Thickness��� �
,��� �
	roundness��� �
,��� �
color��� �
,��� �
color��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Triangle
��, 4
(
��4 5
Vector3
��6 =
a
��> ?
,
��? @
Vector3
��A H
b
��I J
,
��J K
Vector3
��L S
c
��T U
,
��U V
float
��W \
	roundness
��] f
,
��f g
Color
��h m
colorA
��n t
,
��t u
Color
��v {
colorB��| �
,��� �
Color��� �
colorC��� �
)��� �
=>��� �!
Triangle_Internal��� �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
false��� �
,��� �
	Thickness��� �
,��� �
	roundness��� �
,��� �
colorA��� �
,��� �
colorB��� �
,��� �
colorC��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TriangleBorder
��, :
(
��: ;
Vector3
��< C
a
��D E
,
��E F
Vector3
��G N
b
��O P
,
��P Q
Vector3
��R Y
c
��Z [
)
��\ ]
=>
��^ `
Triangle_Internal
��a r
(
��r s
a
��t u
,
��u v
b
��w x
,
��x y
c
��z {
,
��{ |
true��} �
,��� �
	Thickness��� �
,��� �
$num��� �
,��� �
Color��� �
,��� �
Color��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TriangleBorder
��, :
(
��: ;
Vector3
��< C
a
��D E
,
��E F
Vector3
��G N
b
��O P
,
��P Q
Vector3
��R Y
c
��Z [
,
��[ \
Color
��] b
color
��c h
)
��i j
=>
��k m
Triangle_Internal
��n 
(�� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
true��� �
,��� �
	Thickness��� �
,��� �
$num��� �
,��� �
color��� �
,��� �
color��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TriangleBorder
��, :
(
��: ;
Vector3
��< C
a
��D E
,
��E F
Vector3
��G N
b
��O P
,
��P Q
Vector3
��R Y
c
��Z [
,
��[ \
Color
��] b
colorA
��c i
,
��i j
Color
��k p
colorB
��q w
,
��w x
Color
��y ~
colorC�� �
)��� �
=>��� �!
Triangle_Internal��� �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
true��� �
,��� �
	Thickness��� �
,��� �
$num��� �
,��� �
colorA��� �
,��� �
colorB��� �
,��� �
colorC��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TriangleBorder
��, :
(
��: ;
Vector3
��< C
a
��D E
,
��E F
Vector3
��G N
b
��O P
,
��P Q
Vector3
��R Y
c
��Z [
,
��[ \
float
��] b
	thickness
��c l
)
��m n
=>
��o q 
Triangle_Internal��r �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
true��� �
,��� �
	thickness��� �
,��� �
$num��� �
,��� �
Color��� �
,��� �
Color��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TriangleBorder
��, :
(
��: ;
Vector3
��< C
a
��D E
,
��E F
Vector3
��G N
b
��O P
,
��P Q
Vector3
��R Y
c
��Z [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
Color
��n s
color
��t y
)
��z {
=>
��| ~ 
Triangle_Internal�� �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
true��� �
,��� �
	thickness��� �
,��� �
$num��� �
,��� �
color��� �
,��� �
color��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TriangleBorder
��, :
(
��: ;
Vector3
��< C
a
��D E
,
��E F
Vector3
��G N
b
��O P
,
��P Q
Vector3
��R Y
c
��Z [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
Color
��n s
colorA
��t z
,
��z {
Color��| �
colorB��� �
,��� �
Color��� �
colorC��� �
)��� �
=>��� �!
Triangle_Internal��� �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
true��� �
,��� �
	thickness��� �
,��� �
$num��� �
,��� �
colorA��� �
,��� �
colorB��� �
,��� �
colorC��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TriangleBorder
��, :
(
��: ;
Vector3
��< C
a
��D E
,
��E F
Vector3
��G N
b
��O P
,
��P Q
Vector3
��R Y
c
��Z [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
float
��n s
	roundness
��t }
)
��~ 
=>��� �!
Triangle_Internal��� �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
true��� �
,��� �
	thickness��� �
,��� �
	roundness��� �
,��� �
Color��� �
,��� �
Color��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TriangleBorder
��, :
(
��: ;
Vector3
��< C
a
��D E
,
��E F
Vector3
��G N
b
��O P
,
��P Q
Vector3
��R Y
c
��Z [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
float
��n s
	roundness
��t }
,
��} ~
Color�� �
color��� �
)��� �
=>��� �!
Triangle_Internal��� �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
true��� �
,��� �
	thickness��� �
,��� �
	roundness��� �
,��� �
color��� �
,��� �
color��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TriangleBorder
��, :
(
��: ;
Vector3
��< C
a
��D E
,
��E F
Vector3
��G N
b
��O P
,
��P Q
Vector3
��R Y
c
��Z [
,
��[ \
float
��] b
	thickness
��c l
,
��l m
float
��n s
	roundness
��t }
,
��} ~
Color�� �
colorA��� �
,��� �
Color��� �
colorB��� �
,��� �
Color��� �
colorC��� �
)��� �
=>��� �!
Triangle_Internal��� �
(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
true��� �
,��� �
	thickness��� �
,��� �
	roundness��� �
,��� �
colorA��� �
,��� �
colorB��� �
,��� �
colorC��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Quad
��, 0
(
��0 1
Vector3
��2 9
a
��: ;
,
��; <
Vector3
��= D
b
��E F
,
��F G
Vector3
��H O
c
��P Q
)
��R S
=>
��T V

��W d
(
��d e
a
��f g
,
��g h
b
��i j
,
��j k
c
��l m
,
��m n
a
��o p
+
��q r
(
��s t
c
��u v
-
��w x
b
��y z
)
��{ |
,
��| }
Color��~ �
,��� �
Color��� �
,��� �
Color��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Quad
��, 0
(
��0 1
Vector3
��2 9
a
��: ;
,
��; <
Vector3
��= D
b
��E F
,
��F G
Vector3
��H O
c
��P Q
,
��Q R
Color
��S X
color
��Y ^
)
��_ `
=>
��a c

��d q
(
��q r
a
��s t
,
��t u
b
��v w
,
��w x
c
��y z
,
��z {
a
��| }
+
��~ 
(��� �
c��� �
-��� �
b��� �
)��� �
,��� �
color��� �
,��� �
color��� �
,��� �
color��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Quad
��, 0
(
��0 1
Vector3
��2 9
a
��: ;
,
��; <
Vector3
��= D
b
��E F
,
��F G
Vector3
��H O
c
��P Q
,
��Q R
Color
��S X
colorA
��Y _
,
��_ `
Color
��a f
colorB
��g m
,
��m n
Color
��o t
colorC
��u {
,
��{ |
Color��} �
colorD��� �
)��� �
=>��� �

(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
a��� �
+��� �
(��� �
c��� �
-��� �
b��� �
)��� �
,��� �
colorA��� �
,��� �
colorB��� �
,��� �
colorC��� �
,��� �
colorD��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Quad
��, 0
(
��0 1
Vector3
��2 9
a
��: ;
,
��; <
Vector3
��= D
b
��E F
,
��F G
Vector3
��H O
c
��P Q
,
��Q R
Vector3
��S Z
d
��[ \
)
��] ^
=>
��_ a

��b o
(
��o p
a
��q r
,
��r s
b
��t u
,
��u v
c
��w x
,
��x y
d
��z {
,
��{ |
Color��} �
,��� �
Color��� �
,��� �
Color��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Quad
��, 0
(
��0 1
Vector3
��2 9
a
��: ;
,
��; <
Vector3
��= D
b
��E F
,
��F G
Vector3
��H O
c
��P Q
,
��Q R
Vector3
��S Z
d
��[ \
,
��\ ]
Color
��^ c
color
��d i
)
��j k
=>
��l n

��o |
(
��| }
a
��~ 
,�� �
b��� �
,��� �
c��� �
,��� �
d��� �
,��� �
color��� �
,��� �
color��� �
,��� �
color��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Quad
��, 0
(
��0 1
Vector3
��2 9
a
��: ;
,
��; <
Vector3
��= D
b
��E F
,
��F G
Vector3
��H O
c
��P Q
,
��Q R
Vector3
��S Z
d
��[ \
,
��\ ]
Color
��^ c
colorA
��d j
,
��j k
Color
��l q
colorB
��r x
,
��x y
Color
��z 
colorC��� �
,��� �
Color��� �
colorD��� �
)��� �
=>��� �

(��� �
a��� �
,��� �
b��� �
,��� �
c��� �
,��� �
d��� �
,��� �
colorA��� �
,��� �
colorB��� �
,��� �
colorC��� �
,��� �
colorD��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Sphere
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
)
��@ A
{
��B C
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Sphere_Internal
�� 
(
�� 
Radius
�� 
,
�� 
Color
�� !
)
��" #
;
��# $
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Sphere
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
,
��? @
float
��A F
radius
��G M
)
��N O
{
��P Q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Sphere_Internal
�� 
(
�� 
radius
�� 
,
�� 
Color
�� !
)
��" #
;
��# $
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Sphere
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
,
��? @
Color
��A F
color
��G L
)
��M N
{
��O P
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Sphere_Internal
�� 
(
�� 
Radius
�� 
,
�� 
color
�� !
)
��" #
;
��# $
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Sphere
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
,
��? @
float
��A F
radius
��G M
,
��M N
Color
��O T
color
��U Z
)
��[ \
{
��] ^
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Sphere_Internal
�� 
(
�� 
radius
�� 
,
�� 
color
�� !
)
��" #
;
��# $
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Sphere
��, 2
(
��2 3
)
��3 4
=>
��5 7
Sphere_Internal
��8 G
(
��G H
Radius
��I O
,
��O P
Color
��Q V
)
��W X
;
��X Y
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Sphere
��, 2
(
��2 3
float
��4 9
radius
��: @
)
��A B
=>
��C E
Sphere_Internal
��F U
(
��U V
radius
��W ]
,
��] ^
Color
��_ d
)
��e f
;
��f g
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Sphere
��, 2
(
��2 3
Color
��4 9
color
��: ?
)
��@ A
=>
��B D
Sphere_Internal
��E T
(
��T U
Radius
��V \
,
��\ ]
color
��^ c
)
��d e
;
��e f
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Sphere
��, 2
(
��2 3
float
��4 9
radius
��: @
,
��@ A
Color
��B G
color
��H M
)
��N O
=>
��P R
Sphere_Internal
��S b
(
��b c
radius
��d j
,
��j k
color
��l q
)
��r s
;
��s t
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cuboid
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
,
��? @
Vector3
��A H
size
��I M
)
��N O
{
��P Q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Cuboid_Internal
�� 
(
�� 
size
�� 
,
�� 
Color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cuboid
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
,
��? @
Vector3
��A H
size
��I M
,
��M N
Color
��O T
color
��U Z
)
��[ \
{
��] ^
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Cuboid_Internal
�� 
(
�� 
size
�� 
,
�� 
color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cuboid
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
,
��? @
Vector3
��A H
normal
��I O
,
��O P
Vector3
��Q X
size
��Y ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W
Cuboid_Internal
�� 
(
�� 
size
�� 
,
�� 
Color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cuboid
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
,
��? @
Vector3
��A H
normal
��I O
,
��O P
Vector3
��Q X
size
��Y ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W
Cuboid_Internal
�� 
(
�� 
size
�� 
,
�� 
color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cuboid
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
,
��? @

Quaternion
��A K
rot
��L O
,
��O P
Vector3
��Q X
size
��Y ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Cuboid_Internal
�� 
(
�� 
size
�� 
,
�� 
Color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cuboid
��, 2
(
��2 3
Vector3
��4 ;
pos
��< ?
,
��? @

Quaternion
��A K
rot
��L O
,
��O P
Vector3
��Q X
size
��Y ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Cuboid_Internal
�� 
(
�� 
size
�� 
,
�� 
color
�� 
)
��  !
;
��! "
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cuboid
��, 2
(
��2 3
Vector3
��4 ;
size
��< @
)
��A B
=>
��C E
Cuboid_Internal
��F U
(
��U V
size
��W [
,
��[ \
Color
��] b
)
��c d
;
��d e
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cuboid
��, 2
(
��2 3
Vector3
��4 ;
size
��< @
,
��@ A
Color
��B G
color
��H M
)
��N O
=>
��P R
Cuboid_Internal
��S b
(
��b c
size
��d h
,
��h i
color
��j o
)
��p q
;
��q r
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cube
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
size
��E I
)
��J K
{
��L M
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Cuboid_Internal
�� 
(
�� 
new
�� 
Vector3
�� 
(
��  
size
��! %
,
��% &
size
��' +
,
��+ ,
size
��- 1
)
��2 3
,
��3 4
Color
��5 :
)
��; <
;
��< =
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cube
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
size
��E I
,
��I J
Color
��K P
color
��Q V
)
��W X
{
��Y Z
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Cuboid_Internal
�� 
(
�� 
new
�� 
Vector3
�� 
(
��  
size
��! %
,
��% &
size
��' +
,
��+ ,
size
��- 1
)
��2 3
,
��3 4
color
��5 :
)
��; <
;
��< =
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cube
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
size
��U Y
)
��Z [
{
��\ ]
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W
Cuboid_Internal
�� 
(
�� 
new
�� 
Vector3
�� 
(
��  
size
��! %
,
��% &
size
��' +
,
��+ ,
size
��- 1
)
��2 3
,
��3 4
Color
��5 :
)
��; <
;
��< =
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cube
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
size
��U Y
,
��Y Z
Color
��[ `
color
��a f
)
��g h
{
��i j
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W
Cuboid_Internal
�� 
(
�� 
new
�� 
Vector3
�� 
(
��  
size
��! %
,
��% &
size
��' +
,
��+ ,
size
��- 1
)
��2 3
,
��3 4
color
��5 :
)
��; <
;
��< =
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cube
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
size
��U Y
)
��Z [
{
��\ ]
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Cuboid_Internal
�� 
(
�� 
new
�� 
Vector3
�� 
(
��  
size
��! %
,
��% &
size
��' +
,
��+ ,
size
��- 1
)
��2 3
,
��3 4
Color
��5 :
)
��; <
;
��< =
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cube
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
size
��U Y
,
��Y Z
Color
��[ `
color
��a f
)
��g h
{
��i j
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Cuboid_Internal
�� 
(
�� 
new
�� 
Vector3
�� 
(
��  
size
��! %
,
��% &
size
��' +
,
��+ ,
size
��- 1
)
��2 3
,
��3 4
color
��5 :
)
��; <
;
��< =
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cube
��, 0
(
��0 1
float
��2 7
size
��8 <
)
��= >
=>
��? A
Cuboid_Internal
��B Q
(
��Q R
new
��S V
Vector3
��W ^
(
��^ _
size
��` d
,
��d e
size
��f j
,
��j k
size
��l p
)
��q r
,
��r s
Color
��t y
)
��z {
;
��{ |
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cube
��, 0
(
��0 1
float
��2 7
size
��8 <
,
��< =
Color
��> C
color
��D I
)
��J K
=>
��L N
Cuboid_Internal
��O ^
(
��^ _
new
��` c
Vector3
��d k
(
��k l
size
��m q
,
��q r
size
��s w
,
��w x
size
��y }
)
��~ 
,�� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
,
��K L
float
��M R
length
��S Y
)
��Z [
{
��\ ]
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
true
��" &
,
��& '
Color
��( -
)
��. /
;
��/ 0
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
,
��K L
float
��M R
length
��S Y
,
��Y Z
bool
��[ _
fillCap
��` g
)
��h i
{
��j k
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
fillCap
��" )
,
��) *
Color
��+ 0
)
��1 2
;
��2 3
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
,
��K L
float
��M R
length
��S Y
,
��Y Z
Color
��[ `
color
��a f
)
��g h
{
��i j
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
true
��" &
,
��& '
color
��( -
)
��. /
;
��/ 0
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
float
��? D
radius
��E K
,
��K L
float
��M R
length
��S Y
,
��Y Z
bool
��[ _
fillCap
��` g
,
��g h
Color
��i n
color
��o t
)
��u v
{
��w x
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
fillCap
��" )
,
��) *
color
��+ 0
)
��1 2
;
��2 3
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
length
��c i
)
��j k
{
��l m
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
true
��" &
,
��& '
Color
��( -
)
��. /
;
��/ 0
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
length
��c i
,
��i j
bool
��k o
fillCap
��p w
)
��x y
{
��z {
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
fillCap
��" )
,
��) *
Color
��+ 0
)
��1 2
;
��2 3
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
length
��c i
,
��i j
Color
��k p
color
��q v
)
��w x
{
��y z
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
true
��" &
,
��& '
color
��( -
)
��. /
;
��/ 0
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
Vector3
��? F
normal
��G M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
length
��c i
,
��i j
bool
��k o
fillCap
��p w
,
��w x
Color
��y ~
color�� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
fillCap
��" )
,
��) *
color
��+ 0
)
��1 2
;
��2 3
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
length
��c i
)
��j k
{
��l m
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
true
��" &
,
��& '
Color
��( -
)
��. /
;
��/ 0
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
length
��c i
,
��i j
bool
��k o
fillCap
��p w
)
��x y
{
��z {
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
fillCap
��" )
,
��) *
Color
��+ 0
)
��1 2
;
��2 3
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
length
��c i
,
��i j
Color
��k p
color
��q v
)
��w x
{
��y z
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
true
��" &
,
��& '
color
��( -
)
��. /
;
��/ 0
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
float
��O T
radius
��U [
,
��[ \
float
��] b
length
��c i
,
��i j
bool
��k o
fillCap
��p w
,
��w x
Color
��y ~
color�� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
radius
�� 
,
�� 
length
��  
,
��  !
fillCap
��" )
,
��) *
color
��+ 0
)
��1 2
;
��2 3
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
float
��2 7
radius
��8 >
,
��> ?
float
��@ E
length
��F L
)
��M N
=>
��O Q

��R _
(
��_ `
radius
��a g
,
��g h
length
��i o
,
��o p
true
��q u
,
��u v
Color
��w |
)
��} ~
;
��~ 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
float
��2 7
radius
��8 >
,
��> ?
float
��@ E
length
��F L
,
��L M
bool
��N R
fillCap
��S Z
)
��[ \
=>
��] _

��` m
(
��m n
radius
��o u
,
��u v
length
��w }
,
��} ~
fillCap�� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
float
��2 7
radius
��8 >
,
��> ?
float
��@ E
length
��F L
,
��L M
Color
��N S
color
��T Y
)
��Z [
=>
��\ ^

��_ l
(
��l m
radius
��n t
,
��t u
length
��v |
,
��| }
true��~ �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Cone
��, 0
(
��0 1
float
��2 7
radius
��8 >
,
��> ?
float
��@ E
length
��F L
,
��L M
bool
��N R
fillCap
��S Z
,
��Z [
Color
��\ a
color
��b g
)
��h i
=>
��j l

��m z
(
��z {
radius��| �
,��� �
length��� �
,��� �
fillCap��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?
float
��@ E
radius
��F L
,
��L M
float
��N S
	thickness
��T ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %
$num
��& '
,
��' (

ShapesMath
��) 3
.
��3 4
TAU
��4 7
,
��7 8
Color
��9 >
)
��? @
;
��@ A
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?
float
��@ E
radius
��F L
,
��L M
float
��N S
	thickness
��T ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %
$num
��& '
,
��' (

ShapesMath
��) 3
.
��3 4
TAU
��4 7
,
��7 8
color
��9 >
)
��? @
;
��@ A
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?
Vector3
��@ G
normal
��H N
,
��N O
float
��P U
radius
��V \
,
��\ ]
float
��^ c
	thickness
��d m
)
��n o
{
��p q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %
$num
��& '
,
��' (

ShapesMath
��) 3
.
��3 4
TAU
��4 7
,
��7 8
Color
��9 >
)
��? @
;
��@ A
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?
Vector3
��@ G
normal
��H N
,
��N O
float
��P U
radius
��V \
,
��\ ]
float
��^ c
	thickness
��d m
,
��m n
Color
��o t
color
��u z
)
��{ |
{
��} ~
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %
$num
��& '
,
��' (

ShapesMath
��) 3
.
��3 4
TAU
��4 7
,
��7 8
color
��9 >
)
��? @
;
��@ A
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?

Quaternion
��@ J
rot
��K N
,
��N O
float
��P U
radius
��V \
,
��\ ]
float
��^ c
	thickness
��d m
)
��n o
{
��p q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %
$num
��& '
,
��' (

ShapesMath
��) 3
.
��3 4
TAU
��4 7
,
��7 8
Color
��9 >
)
��? @
;
��@ A
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?

Quaternion
��@ J
rot
��K N
,
��N O
float
��P U
radius
��V \
,
��\ ]
float
��^ c
	thickness
��d m
,
��m n
Color
��o t
color
��u z
)
��{ |
{
��} ~
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %
$num
��& '
,
��' (

ShapesMath
��) 3
.
��3 4
TAU
��4 7
,
��7 8
color
��9 >
)
��? @
;
��@ A
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
float
��3 8
radius
��9 ?
,
��? @
float
��A F
	thickness
��G P
)
��Q R
=>
��S U
Torus_Internal
��V d
(
��d e
radius
��f l
,
��l m
	thickness
��n w
,
��w x
$num
��y z
,
��z {

ShapesMath��| �
.��� �
TAU��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
float
��3 8
radius
��9 ?
,
��? @
float
��A F
	thickness
��G P
,
��P Q
Color
��R W
color
��X ]
)
��^ _
=>
��` b
Torus_Internal
��c q
(
��q r
radius
��s y
,
��y z
	thickness��{ �
,��� �
$num��� �
,��� �

ShapesMath��� �
.��� �
TAU��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?
float
��@ E
radius
��F L
,
��L M
float
��N S
	thickness
��T ]
,
��] ^
float
��_ d

��e r
,
��r s
float
��t y
angleRadEnd��z �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %

��& 3
,
��3 4
angleRadEnd
��5 @
,
��@ A
Color
��B G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?
float
��@ E
radius
��F L
,
��L M
float
��N S
	thickness
��T ]
,
��] ^
float
��_ d

��e r
,
��r s
float
��t y
angleRadEnd��z �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %

��& 3
,
��3 4
angleRadEnd
��5 @
,
��@ A
color
��B G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?
Vector3
��@ G
normal
��H N
,
��N O
float
��P U
radius
��V \
,
��\ ]
float
��^ c
	thickness
��d m
,
��m n
float
��o t

,��� �
float��� �
angleRadEnd��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %

��& 3
,
��3 4
angleRadEnd
��5 @
,
��@ A
Color
��B G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?
Vector3
��@ G
normal
��H N
,
��N O
float
��P U
radius
��V \
,
��\ ]
float
��^ c
	thickness
��d m
,
��m n
float
��o t

,��� �
float��� �
angleRadEnd��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %

Quaternion
��& 0
.
��0 1
LookRotation
��1 =
(
��= >
normal
��? E
)
��F G
,
��G H
Vector3
��I P
.
��P Q
one
��Q T
)
��U V
;
��V W
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %

��& 3
,
��3 4
angleRadEnd
��5 @
,
��@ A
color
��B G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?

Quaternion
��@ J
rot
��K N
,
��N O
float
��P U
radius
��V \
,
��\ ]
float
��^ c
	thickness
��d m
,
��m n
float
��o t

,��� �
float��� �
angleRadEnd��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %

��& 3
,
��3 4
angleRadEnd
��5 @
,
��@ A
Color
��B G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
Vector3
��3 :
pos
��; >
,
��> ?

Quaternion
��@ J
rot
��K N
,
��N O
float
��P U
radius
��V \
,
��\ ]
float
��^ c
	thickness
��d m
,
��m n
float
��o t

,��� �
float��� �
angleRadEnd��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9
Torus_Internal
�� 
(
�� 
radius
�� 
,
�� 
	thickness
�� $
,
��$ %

��& 3
,
��3 4
angleRadEnd
��5 @
,
��@ A
color
��B G
)
��H I
;
��I J
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
float
��3 8
radius
��9 ?
,
��? @
float
��A F
	thickness
��G P
,
��P Q
float
��R W

��X e
,
��e f
float
��g l
angleRadEnd
��m x
)
��y z
=>
��{ }
Torus_Internal��~ �
(��� �
radius��� �
,��� �
	thickness��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Torus
��, 1
(
��1 2
float
��3 8
radius
��9 ?
,
��? @
float
��A F
	thickness
��G P
,
��P Q
float
��R W

��X e
,
��e f
float
��g l
angleRadEnd
��m x
,
��x y
Color
��z 
color��� �
)��� �
=>��� �
Torus_Internal��� �
(��� �
radius��� �
,��� �
	thickness��� �
,��� �

,��� �
angleRadEnd��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
)
��c d
{
��e f
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
FontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
Color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
	TextAlign
��d m
align
��n s
)
��t u
{
��v w
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
FontSize
��C K
,
��K L
align
��M R
,
��R S
Color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
float
��d i
fontSize
��j r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
fontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
Color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
	TextAlign
��d m
align
��n s
,
��s t
float
��u z
fontSize��{ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
fontSize
��C K
,
��K L
align
��M R
,
��R S
Color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c

��d q
font
��r v
)
��w x
{
��y z
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
FontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
Color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
	TextAlign
��d m
align
��n s
,
��s t

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
FontSize
��C K
,
��K L
align
��M R
,
��R S
Color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
float
��d i
fontSize
��j r
,
��r s

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
fontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
Color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
	TextAlign
��d m
align
��n s
,
��s t
float
��u z
fontSize��{ �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
fontSize
��C K
,
��K L
align
��M R
,
��R S
Color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
Color
��d i
color
��j o
)
��p q
{
��r s
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
FontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
	TextAlign
��d m
align
��n s
,
��s t
Color
��u z
color��{ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
FontSize
��C K
,
��K L
align
��M R
,
��R S
color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
float
��d i
fontSize
��j r
,
��r s
Color
��t y
color
��z 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
fontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
	TextAlign
��d m
align
��n s
,
��s t
float
��u z
fontSize��{ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
fontSize
��C K
,
��K L
align
��M R
,
��R S
color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c

��d q
font
��r v
,
��v w
Color
��x }
color��~ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
FontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
	TextAlign
��d m
align
��n s
,
��s t

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
FontSize
��C K
,
��K L
align
��M R
,
��R S
color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
float
��d i
fontSize
��j r
,
��r s

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
fontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S
string
��T Z
content
��[ b
,
��b c
	TextAlign
��d m
align
��n s
,
��s t
float
��u z
fontSize��{ �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
fontSize
��C K
,
��K L
align
��M R
,
��R S
color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
FontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
Color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
	TextAlign
��t }
align��~ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
FontSize
��C K
,
��K L
align
��M R
,
��R S
Color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
float
��t y
fontSize��z �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
fontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
Color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
	TextAlign
��t }
align��~ �
,��� �
float��� �
fontSize��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
fontSize
��C K
,
��K L
align
��M R
,
��R S
Color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
FontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
Color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
	TextAlign
��t }
align��~ �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
FontSize
��C K
,
��K L
align
��M R
,
��R S
Color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
float
��t y
fontSize��z �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
fontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
Color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
	TextAlign
��t }
align��~ �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
fontSize
��C K
,
��K L
align
��M R
,
��R S
Color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
Color
��t y
color
��z 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
FontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
	TextAlign
��t }
align��~ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
FontSize
��C K
,
��K L
align
��M R
,
��R S
color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
float
��t y
fontSize��z �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
fontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
	TextAlign
��t }
align��~ �
,��� �
float��� �
fontSize��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
Font
��= A
,
��A B
fontSize
��C K
,
��K L
align
��M R
,
��R S
color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
FontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
	TextAlign
��t }
align��~ �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
FontSize
��C K
,
��K L
align
��M R
,
��R S
color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
float
��t y
fontSize��z �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
fontSize
��C K
,
��K L
	TextAlign
��M V
,
��V W
color
��X ]
)
��^ _
;
��_ `
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
Vector3
��G N
pos
��O R
,
��R S

Quaternion
��T ^
rot
��_ b
,
��b c
string
��d j
content
��k r
,
��r s
	TextAlign
��t }
align��~ �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
element
��" )
,
��) *
default
��+ 2
,
��2 3
default
��4 ;
,
��; <
font
��= A
,
��A B
fontSize
��C K
,
��K L
align
��M R
,
��R S
color
��T Y
)
��Z [
;
��[ \
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
)
��V W
=>
��X Z

��[ h
(
��h i
false
��j o
,
��o p
content
��q x
,
��x y
element��z �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
	TextAlign
��W `
align
��a f
)
��g h
=>
��i k

��l y
(
��y z
false��{ �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
float
��W \
fontSize
��] e
)
��f g
=>
��h j

��k x
(
��x y
false
��z 
,�� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
	TextAlign
��W `
align
��a f
,
��f g
float
��h m
fontSize
��n v
)
��w x
=>
��y {

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V

��W d
font
��e i
)
��j k
=>
��l n

��o |
(
��| }
false��~ �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
	TextAlign
��W `
align
��a f
,
��f g

��h u
font
��v z
)
��{ |
=>
��} 

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
float
��W \
fontSize
��] e
,
��e f

��g t
font
��u y
)
��z {
=>
��| ~

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
	TextAlign
��W `
align
��a f
,
��f g
float
��h m
fontSize
��n v
,
��v w

font��� �
)��� �
=>��� �

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
Color
��W \
color
��] b
)
��c d
=>
��e g

��h u
(
��u v
false
��w |
,
��| }
content��~ �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
	TextAlign
��W `
align
��a f
,
��f g
Color
��h m
color
��n s
)
��t u
=>
��v x

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
float
��W \
fontSize
��] e
,
��e f
Color
��g l
color
��m r
)
��s t
=>
��u w

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
	TextAlign
��W `
align
��a f
,
��f g
float
��h m
fontSize
��n v
,
��v w
Color
��x }
color��~ �
)��� �
=>��� �

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V

��W d
font
��e i
,
��i j
Color
��k p
color
��q v
)
��w x
=>
��y {

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
	TextAlign
��W `
align
��a f
,
��f g

��h u
font
��v z
,
��z {
Color��| �
color��� �
)��� �
=>��� �

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
float
��W \
fontSize
��] e
,
��e f

��g t
font
��u y
,
��y z
Color��{ �
color��� �
)��� �
=>��� �

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
TextElement
��2 =
element
��> E
,
��E F
string
��G M
content
��N U
,
��U V
	TextAlign
��W `
align
��a f
,
��f g
float
��h m
fontSize
��n v
,
��v w

font��� �
,��� �
Color��� �
color��� �
)��� �
=>��� �

(��� �
false��� �
,��� �
content��� �
,��� �
element��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
)
��N O
{
��P Q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
FontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
Color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
	TextAlign
��O X
align
��Y ^
)
��_ `
{
��a b
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
FontSize
��@ H
,
��H I
align
��J O
,
��O P
Color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
float
��O T
fontSize
��U ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
fontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
Color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
	TextAlign
��O X
align
��Y ^
,
��^ _
float
��` e
fontSize
��f n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
fontSize
��@ H
,
��H I
align
��J O
,
��O P
Color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N

��O \
font
��] a
)
��b c
{
��d e
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
FontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
Color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
	TextAlign
��O X
align
��Y ^
,
��^ _

��` m
font
��n r
)
��s t
{
��u v
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
FontSize
��@ H
,
��H I
align
��J O
,
��O P
Color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
float
��O T
fontSize
��U ]
,
��] ^

��_ l
font
��m q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
fontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
Color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
	TextAlign
��O X
align
��Y ^
,
��^ _
float
��` e
fontSize
��f n
,
��n o

��p }
font��~ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
fontSize
��@ H
,
��H I
align
��J O
,
��O P
Color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
Color
��O T
color
��U Z
)
��[ \
{
��] ^
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
FontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
	TextAlign
��O X
align
��Y ^
,
��^ _
Color
��` e
color
��f k
)
��l m
{
��n o
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
FontSize
��@ H
,
��H I
align
��J O
,
��O P
color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
float
��O T
fontSize
��U ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
fontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
	TextAlign
��O X
align
��Y ^
,
��^ _
float
��` e
fontSize
��f n
,
��n o
Color
��p u
color
��v {
)
��| }
{
��~ 
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
fontSize
��@ H
,
��H I
align
��J O
,
��O P
color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N

��O \
font
��] a
,
��a b
Color
��c h
color
��i n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
FontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
	TextAlign
��O X
align
��Y ^
,
��^ _

��` m
font
��n r
,
��r s
Color
��t y
color
��z 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
FontSize
��@ H
,
��H I
align
��J O
,
��O P
color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
float
��O T
fontSize
��U ]
,
��] ^

��_ l
font
��m q
,
��q r
Color
��s x
color
��y ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
fontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >
string
��? E
content
��F M
,
��M N
	TextAlign
��O X
align
��Y ^
,
��^ _
float
��` e
fontSize
��f n
,
��n o

��p }
font��~ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
fontSize
��@ H
,
��H I
align
��J O
,
��O P
color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
)
��^ _
{
��` a
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
FontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
Color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
	TextAlign
��_ h
align
��i n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
FontSize
��@ H
,
��H I
align
��J O
,
��O P
Color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
float
��_ d
fontSize
��e m
)
��n o
{
��p q
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
fontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
Color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
	TextAlign
��_ h
align
��i n
,
��n o
float
��p u
fontSize
��v ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
fontSize
��@ H
,
��H I
align
��J O
,
��O P
Color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^

��_ l
font
��m q
)
��r s
{
��t u
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
FontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
Color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
	TextAlign
��_ h
align
��i n
,
��n o

��p }
font��~ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
FontSize
��@ H
,
��H I
align
��J O
,
��O P
Color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
float
��_ d
fontSize
��e m
,
��m n

��o |
font��} �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
fontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
Color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
	TextAlign
��_ h
align
��i n
,
��n o
float
��p u
fontSize
��v ~
,
��~ 

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
fontSize
��@ H
,
��H I
align
��J O
,
��O P
Color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
Color
��_ d
color
��e j
)
��k l
{
��m n
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
FontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
	TextAlign
��_ h
align
��i n
,
��n o
Color
��p u
color
��v {
)
��| }
{
��~ 
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
FontSize
��@ H
,
��H I
align
��J O
,
��O P
color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
float
��_ d
fontSize
��e m
,
��m n
Color
��o t
color
��u z
)
��{ |
{
��} ~
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
fontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
	TextAlign
��_ h
align
��i n
,
��n o
float
��p u
fontSize
��v ~
,
��~ 
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
Font
��: >
,
��> ?
fontSize
��@ H
,
��H I
align
��J O
,
��O P
color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^

��_ l
font
��m q
,
��q r
Color
��s x
color
��y ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
FontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
	TextAlign
��_ h
align
��i n
,
��n o

��p }
font��~ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
FontSize
��@ H
,
��H I
align
��J O
,
��O P
color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
float
��_ d
fontSize
��e m
,
��m n

��o |
font��} �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
fontSize
��@ H
,
��H I
	TextAlign
��J S
,
��S T
color
��U Z
)
��[ \
;
��\ ]
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
Vector3
��2 9
pos
��: =
,
��= >

Quaternion
��? I
rot
��J M
,
��M N
string
��O U
content
��V ]
,
��] ^
	TextAlign
��_ h
align
��i n
,
��n o
float
��p u
fontSize
��v ~
,
��~ 

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
false
�� 
,
�� 
content
��  
,
��  !
null
��" &
,
��& '
default
��( /
,
��/ 0
default
��1 8
,
��8 9
font
��: >
,
��> ?
fontSize
��@ H
,
��H I
align
��J O
,
��O P
color
��Q V
)
��W X
;
��X Y
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
)
��A B
=>
��C E

��F S
(
��S T
false
��U Z
,
��Z [
content
��\ c
,
��c d
null
��e i
,
��i j
default
��k r
,
��r s
default
��t {
,
��{ |
Font��} �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
	TextAlign
��B K
align
��L Q
)
��R S
=>
��T V

��W d
(
��d e
false
��f k
,
��k l
content
��m t
,
��t u
null
��v z
,
��z {
default��| �
,��� �
default��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
float
��B G
fontSize
��H P
)
��Q R
=>
��S U

��V c
(
��c d
false
��e j
,
��j k
content
��l s
,
��s t
null
��u y
,
��y z
default��{ �
,��� �
default��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
	TextAlign
��B K
align
��L Q
,
��Q R
float
��S X
fontSize
��Y a
)
��b c
=>
��d f

��g t
(
��t u
false
��v {
,
��{ |
content��} �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A

��B O
font
��P T
)
��U V
=>
��W Y

��Z g
(
��g h
false
��i n
,
��n o
content
��p w
,
��w x
null
��y }
,
��} ~
default�� �
,��� �
default��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
	TextAlign
��B K
align
��L Q
,
��Q R

��S `
font
��a e
)
��f g
=>
��h j

��k x
(
��x y
false
��z 
,�� �
content��� �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
float
��B G
fontSize
��H P
,
��P Q

��R _
font
��` d
)
��e f
=>
��g i

��j w
(
��w x
false
��y ~
,
��~ 
content��� �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
	TextAlign
��B K
align
��L Q
,
��Q R
float
��S X
fontSize
��Y a
,
��a b

��c p
font
��q u
)
��v w
=>
��x z

(��� �
false��� �
,��� �
content��� �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
Color
��B G
color
��H M
)
��N O
=>
��P R

��S `
(
��` a
false
��b g
,
��g h
content
��i p
,
��p q
null
��r v
,
��v w
default
��x 
,�� �
default��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
	TextAlign
��B K
align
��L Q
,
��Q R
Color
��S X
color
��Y ^
)
��_ `
=>
��a c

��d q
(
��q r
false
��s x
,
��x y
content��z �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
float
��B G
fontSize
��H P
,
��P Q
Color
��R W
color
��X ]
)
��^ _
=>
��` b

��c p
(
��p q
false
��r w
,
��w x
content��y �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
	TextAlign
��B K
align
��L Q
,
��Q R
float
��S X
fontSize
��Y a
,
��a b
Color
��c h
color
��i n
)
��o p
=>
��q s

(��� �
false��� �
,��� �
content��� �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A

��B O
font
��P T
,
��T U
Color
��V [
color
��\ a
)
��b c
=>
��d f

��g t
(
��t u
false
��v {
,
��{ |
content��} �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
	TextAlign
��B K
align
��L Q
,
��Q R

��S `
font
��a e
,
��e f
Color
��g l
color
��m r
)
��s t
=>
��u w

(��� �
false��� �
,��� �
content��� �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
float
��B G
fontSize
��H P
,
��P Q

��R _
font
��` d
,
��d e
Color
��f k
color
��l q
)
��r s
=>
��t v

(��� �
false��� �
,��� �
content��� �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
Text
��, 0
(
��0 1
string
��2 8
content
��9 @
,
��@ A
	TextAlign
��B K
align
��L Q
,
��Q R
float
��S X
fontSize
��Y a
,
��a b

��c p
font
��q u
,
��u v
Color
��w |
color��} �
)��� �
=>��� �

(��� �
false��� �
,��� �
content��� �
,��� �
null��� �
,��� �
default��� �
,��� �
default��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
FontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
Color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
	TextAlign��� �
align��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
FontSize
��= E
,
��E F
align
��G L
,
��L M
Color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
float��� �
fontSize��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
fontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
Color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
fontSize
��= E
,
��E F
align
��G L
,
��L M
Color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
FontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
Color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
	TextAlign��� �
align��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
FontSize
��= E
,
��E F
align
��G L
,
��L M
Color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
fontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
Color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
fontSize
��= E
,
��E F
align
��G L
,
��L M
Color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
FontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
	TextAlign��� �
align��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
FontSize
��= E
,
��E F
align
��G L
,
��L M
color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
float��� �
fontSize��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
fontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
fontSize
��= E
,
��E F
align
��G L
,
��L M
color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
FontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
	TextAlign��� �
align��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
FontSize
��= E
,
��E F
align
��G L
,
��L M
color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
fontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W
Vector2
��X _
pivot
��` e
,
��e f
Vector2
��g n
size
��o s
,
��s t
string
��u {
content��| �
,��� �
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
fontSize
��= E
,
��E F
align
��G L
,
��L M
color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
FontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
Color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
	TextAlign��� �
align��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
FontSize
��= E
,
��E F
align
��G L
,
��L M
Color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
float��� �
fontSize��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
fontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
Color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
fontSize
��= E
,
��E F
align
��G L
,
��L M
Color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
FontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
Color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
	TextAlign��� �
align��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
FontSize
��= E
,
��E F
align
��G L
,
��L M
Color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
fontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
Color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
fontSize
��= E
,
��E F
align
��G L
,
��L M
Color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
FontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
	TextAlign��� �
align��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
FontSize
��= E
,
��E F
align
��G L
,
��L M
color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
float��� �
fontSize��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
fontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
Font
��7 ;
,
��; <
fontSize
��= E
,
��E F
align
��G L
,
��L M
color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
FontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
	TextAlign��� �
align��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
FontSize
��= E
,
��E F
align
��G L
,
��L M
color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
fontSize
��= E
,
��E F
	TextAlign
��G P
,
��P Q
color
��R W
)
��X Y
;
��Y Z
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector3
��K R
pos
��S V
,
��V W

Quaternion
��X b
rot
��c f
,
��f g
Vector2
��h o
pivot
��p u
,
��u v
Vector2
��w ~
size�� �
,��� �
string��� �
content��� �
,��� �
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
element
��! (
,
��( )
pivot
��* /
,
��/ 0
size
��1 5
,
��5 6
font
��7 ;
,
��; <
fontSize
��= E
,
��E F
align
��G L
,
��L M
color
��N S
)
��T U
;
��U V
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
)
��w x
=>
��y {

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
	TextAlign��x �
align��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
float
��x }
fontSize��~ �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
	TextAlign��x �
align��� �
,��� �
float��� �
fontSize��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w

font��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
	TextAlign��x �
align��� �
,��� �

font��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
float
��x }
fontSize��~ �
,��� �

font��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
	TextAlign��x �
align��� �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
Color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
Color
��x }
color��~ �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
	TextAlign��x �
align��� �
,��� �
Color��� �
color��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
Font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
float
��x }
fontSize��~ �
,��� �
Color��� �
color��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
	TextAlign��x �
align��� �
,��� �
float��� �
fontSize��� �
,��� �
Color��� �
color��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
Font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w

font��� �
,��� �
Color��� �
color��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
	TextAlign��x �
align��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
font��� �
,��� �
FontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
float
��x }
fontSize��~ �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
	TextAlign��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
TextElement
��6 A
element
��B I
,
��I J
Vector2
��K R
pivot
��S X
,
��X Y
Vector2
��Z a
size
��b f
,
��f g
string
��h n
content
��o v
,
��v w
	TextAlign��x �
align��� �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
=>��� �

(��� �
true��� �
,��� �
content��� �
,��� �
element��� �
,��� �
pivot��� �
,��� �
size��� �
,��� �
font��� �
,��� �
fontSize��� �
,��� �
align��� �
,��� �
color��� �
)��� �
;��� �
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
)
��o p
{
��q r
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
FontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
Color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
	TextAlign
��p y
align
��z 
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
FontSize
��: B
,
��B C
align
��D I
,
��I J
Color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
float
��p u
fontSize
��v ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
fontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
Color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
	TextAlign
��p y
align
��z 
,�� �
float��� �
fontSize��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
fontSize
��: B
,
��B C
align
��D I
,
��I J
Color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o

��p }
font��~ �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
FontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
Color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
	TextAlign
��p y
align
��z 
,�� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
FontSize
��: B
,
��B C
align
��D I
,
��I J
Color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
float
��p u
fontSize
��v ~
,
��~ 

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
fontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
Color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
	TextAlign
��p y
align
��z 
,�� �
float��� �
fontSize��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
fontSize
��: B
,
��B C
align
��D I
,
��I J
Color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
Color
��p u
color
��v {
)
��| }
{
��~ 
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
FontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
	TextAlign
��p y
align
��z 
,�� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
FontSize
��: B
,
��B C
align
��D I
,
��I J
color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
float
��p u
fontSize
��v ~
,
��~ 
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
fontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
	TextAlign
��p y
align
��z 
,�� �
float��� �
fontSize��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
fontSize
��: B
,
��B C
align
��D I
,
��I J
color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o

��p }
font��~ �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
FontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
	TextAlign
��p y
align
��z 
,�� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
FontSize
��: B
,
��B C
align
��D I
,
��I J
color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
float
��p u
fontSize
��v ~
,
��~ 

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
fontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B
Vector2
��C J
pivot
��K P
,
��P Q
Vector2
��R Y
size
��Z ^
,
��^ _
string
��` f
content
��g n
,
��n o
	TextAlign
��p y
align
��z 
,�� �
float��� �
fontSize��� �
,��� �

font��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
	Translate
�� 
(
�� 
pos
�� 
)
�� 
;
�� 

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
fontSize
��: B
,
��B C
align
��D I
,
��I J
color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
)�� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
FontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
Color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 
	TextAlign��� �
align��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
FontSize
��: B
,
��B C
align
��D I
,
��I J
Color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 
float��� �
fontSize��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
fontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
Color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
fontSize
��: B
,
��B C
align
��D I
,
��I J
Color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
FontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
Color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 
	TextAlign��� �
align��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
FontSize
��: B
,
��B C
align
��D I
,
��I J
Color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 
float��� �
fontSize��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
fontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
Color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 
	TextAlign��� �
align��� �
,��� �
float��� �
fontSize��� �
,��� �

font��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
font
��4 8
,
��8 9
fontSize
��: B
,
��B C
align
��D I
,
��I J
Color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
FontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 
	TextAlign��� �
align��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
FontSize
��: B
,
��B C
align
��D I
,
��I J
color
��K P
)
��Q R
;
��R S
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
�� 

MethodImpl
�� 
(
��
INLINE
�� 
)
�� 
]
�� 
public
�� 
static
��  &
void
��' +
TextRect
��, 4
(
��4 5
Vector3
��6 =
pos
��> A
,
��A B

Quaternion
��C M
rot
��N Q
,
��Q R
Vector2
��S Z
pivot
��[ `
,
��` a
Vector2
��b i
size
��j n
,
��n o
string
��p v
content
��w ~
,
��~ 
float��� �
fontSize��� �
,��� �
Color��� �
color��� �
)��� �
{��� �
Draw
�� 
.
�� 

PushMatrix
�� 
(
�� 
)
�� 
;
�� 
Draw
�� 
.
�� 
Matrix
�� 
*=
�� 
	Matrix4x4
�� 
.
�� 
TRS
�� 
(
��  
pos
��! $
,
��$ %
rot
��& )
,
��) *
Vector3
��+ 2
.
��2 3
one
��3 6
)
��7 8
;
��8 9

�� 
(
�� 
true
�� 
,
�� 
content
�� 
,
��  
null
��! %
,
��% &
pivot
��' ,
,
��, -
size
��. 2
,
��2 3
Font
��4 8
,
��8 9
fontSize
��: B
,
��B C
	TextAlign
��D M
,
��M N
color
��O T
)
��U V
;
��V W
Draw
�� 
.
�� 
	PopMatrix
�� 
(
�� 
)
�� 
;
�� 
}
�� 
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector3
� � 6 =
pos
� � > A
,
� � A B

Quaternion
� � C M
rot
� � N Q
,
� � Q R
Vector2
� � S Z
pivot
� � [ `
,
� � ` a
Vector2
� � b i
size
� � j n
,
� � n o
string
� � p v
content
� � w ~
,
� � ~ 
	TextAlign� � � �
align� � � �
,� � � �
float� � � �
fontSize� � � �
,� � � �
Color� � � �
color� � � �
)� � � �
{� � � �
Draw
� �  
.
� �  

PushMatrix
� �  
(
� �  
)
� �  
;
� �  
Draw
� �  
.
� �  
Matrix
� �  
*=
� �  
	Matrix4x4
� �  
.
� �  
TRS
� �  
(
� �   
pos
� � ! $
,
� � $ %
rot
� � & )
,
� � ) *
Vector3
� � + 2
.
� � 2 3
one
� � 3 6
)
� � 7 8
;
� � 8 9

� �  
(
� �  
true
� �  
,
� �  
content
� �  
,
� �   
null
� � ! %
,
� � % &
pivot
� � ' ,
,
� � , -
size
� � . 2
,
� � 2 3
Font
� � 4 8
,
� � 8 9
fontSize
� � : B
,
� � B C
align
� � D I
,
� � I J
color
� � K P
)
� � Q R
;
� � R S
Draw
� �  
.
� �  
	PopMatrix
� �  
(
� �  
)
� �  
;
� �  
}
� �  
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector3
� � 6 =
pos
� � > A
,
� � A B

Quaternion
� � C M
rot
� � N Q
,
� � Q R
Vector2
� � S Z
pivot
� � [ `
,
� � ` a
Vector2
� � b i
size
� � j n
,
� � n o
string
� � p v
content
� � w ~
,
� � ~ 

font� � � �
,� � � �
Color� � � �
color� � � �
)� � � �
{� � � �
Draw
� �  
.
� �  

PushMatrix
� �  
(
� �  
)
� �  
;
� �  
Draw
� �  
.
� �  
Matrix
� �  
*=
� �  
	Matrix4x4
� �  
.
� �  
TRS
� �  
(
� �   
pos
� � ! $
,
� � $ %
rot
� � & )
,
� � ) *
Vector3
� � + 2
.
� � 2 3
one
� � 3 6
)
� � 7 8
;
� � 8 9

� �  
(
� �  
true
� �  
,
� �  
content
� �  
,
� �   
null
� � ! %
,
� � % &
pivot
� � ' ,
,
� � , -
size
� � . 2
,
� � 2 3
font
� � 4 8
,
� � 8 9
FontSize
� � : B
,
� � B C
	TextAlign
� � D M
,
� � M N
color
� � O T
)
� � U V
;
� � V W
Draw
� �  
.
� �  
	PopMatrix
� �  
(
� �  
)
� �  
;
� �  
}
� �  
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector3
� � 6 =
pos
� � > A
,
� � A B

Quaternion
� � C M
rot
� � N Q
,
� � Q R
Vector2
� � S Z
pivot
� � [ `
,
� � ` a
Vector2
� � b i
size
� � j n
,
� � n o
string
� � p v
content
� � w ~
,
� � ~ 
	TextAlign� � � �
align� � � �
,� � � �

font� � � �
,� � � �
Color� � � �
color� � � �
)� � � �
{� � � �
Draw
� �  
.
� �  

PushMatrix
� �  
(
� �  
)
� �  
;
� �  
Draw
� �  
.
� �  
Matrix
� �  
*=
� �  
	Matrix4x4
� �  
.
� �  
TRS
� �  
(
� �   
pos
� � ! $
,
� � $ %
rot
� � & )
,
� � ) *
Vector3
� � + 2
.
� � 2 3
one
� � 3 6
)
� � 7 8
;
� � 8 9

� �  
(
� �  
true
� �  
,
� �  
content
� �  
,
� �   
null
� � ! %
,
� � % &
pivot
� � ' ,
,
� � , -
size
� � . 2
,
� � 2 3
font
� � 4 8
,
� � 8 9
FontSize
� � : B
,
� � B C
align
� � D I
,
� � I J
color
� � K P
)
� � Q R
;
� � R S
Draw
� �  
.
� �  
	PopMatrix
� �  
(
� �  
)
� �  
;
� �  
}
� �  
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector3
� � 6 =
pos
� � > A
,
� � A B

Quaternion
� � C M
rot
� � N Q
,
� � Q R
Vector2
� � S Z
pivot
� � [ `
,
� � ` a
Vector2
� � b i
size
� � j n
,
� � n o
string
� � p v
content
� � w ~
,
� � ~ 
float� � � �
fontSize� � � �
,� � � �

font� � � �
,� � � �
Color� � � �
color� � � �
)� � � �
{� � � �
Draw
� �  
.
� �  

PushMatrix
� �  
(
� �  
)
� �  
;
� �  
Draw
� �  
.
� �  
Matrix
� �  
*=
� �  
	Matrix4x4
� �  
.
� �  
TRS
� �  
(
� �   
pos
� � ! $
,
� � $ %
rot
� � & )
,
� � ) *
Vector3
� � + 2
.
� � 2 3
one
� � 3 6
)
� � 7 8
;
� � 8 9

� �  
(
� �  
true
� �  
,
� �  
content
� �  
,
� �   
null
� � ! %
,
� � % &
pivot
� � ' ,
,
� � , -
size
� � . 2
,
� � 2 3
font
� � 4 8
,
� � 8 9
fontSize
� � : B
,
� � B C
	TextAlign
� � D M
,
� � M N
color
� � O T
)
� � U V
;
� � V W
Draw
� �  
.
� �  
	PopMatrix
� �  
(
� �  
)
� �  
;
� �  
}
� �  
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector3
� � 6 =
pos
� � > A
,
� � A B

Quaternion
� � C M
rot
� � N Q
,
� � Q R
Vector2
� � S Z
pivot
� � [ `
,
� � ` a
Vector2
� � b i
size
� � j n
,
� � n o
string
� � p v
content
� � w ~
,
� � ~ 
	TextAlign� � � �
align� � � �
,� � � �
float� � � �
fontSize� � � �
,� � � �

font� � � �
,� � � �
Color� � � �
color� � � �
)� � � �
{� � � �
Draw
� �  
.
� �  

PushMatrix
� �  
(
� �  
)
� �  
;
� �  
Draw
� �  
.
� �  
Matrix
� �  
*=
� �  
	Matrix4x4
� �  
.
� �  
TRS
� �  
(
� �   
pos
� � ! $
,
� � $ %
rot
� � & )
,
� � ) *
Vector3
� � + 2
.
� � 2 3
one
� � 3 6
)
� � 7 8
;
� � 8 9

� �  
(
� �  
true
� �  
,
� �  
content
� �  
,
� �   
null
� � ! %
,
� � % &
pivot
� � ' ,
,
� � , -
size
� � . 2
,
� � 2 3
font
� � 4 8
,
� � 8 9
fontSize
� � : B
,
� � B C
align
� � D I
,
� � I J
color
� � K P
)
� � Q R
;
� � R S
Draw
� �  
.
� �  
	PopMatrix
� �  
(
� �  
)
� �  
;
� �  
}
� �  
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector2
� � 6 =
pivot
� � > C
,
� � C D
Vector2
� � E L
size
� � M Q
,
� � Q R
string
� � S Y
content
� � Z a
)
� � b c
=>
� � d f

� � g t
(
� � t u
true
� � v z
,
� � z {
content� � | �
,� � � �
null� � � �
,� � � �
pivot� � � �
,� � � �
size� � � �
,� � � �
Font� � � �
,� � � �
FontSize� � � �
,� � � �
	TextAlign� � � �
,� � � �
Color� � � �
)� � � �
;� � � �
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector2
� � 6 =
pivot
� � > C
,
� � C D
Vector2
� � E L
size
� � M Q
,
� � Q R
string
� � S Y
content
� � Z a
,
� � a b
	TextAlign
� � c l
align
� � m r
)
� � s t
=>
� � u w

(� � � �
true� � � �
,� � � �
content� � � �
,� � � �
null� � � �
,� � � �
pivot� � � �
,� � � �
size� � � �
,� � � �
Font� � � �
,� � � �
FontSize� � � �
,� � � �
align� � � �
,� � � �
Color� � � �
)� � � �
;� � � �
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector2
� � 6 =
pivot
� � > C
,
� � C D
Vector2
� � E L
size
� � M Q
,
� � Q R
string
� � S Y
content
� � Z a
,
� � a b
float
� � c h
fontSize
� � i q
)
� � r s
=>
� � t v

(� � � �
true� � � �
,� � � �
content� � � �
,� � � �
null� � � �
,� � � �
pivot� � � �
,� � � �
size� � � �
,� � � �
Font� � � �
,� � � �
fontSize� � � �
,� � � �
	TextAlign� � � �
,� � � �
Color� � � �
)� � � �
;� � � �
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector2
� � 6 =
pivot
� � > C
,
� � C D
Vector2
� � E L
size
� � M Q
,
� � Q R
string
� � S Y
content
� � Z a
,
� � a b
	TextAlign
� � c l
align
� � m r
,
� � r s
float
� � t y
fontSize� � z �
)� � � �
=>� � � �

(� � � �
true� � � �
,� � � �
content� � � �
,� � � �
null� � � �
,� � � �
pivot� � � �
,� � � �
size� � � �
,� � � �
Font� � � �
,� � � �
fontSize� � � �
,� � � �
align� � � �
,� � � �
Color� � � �
)� � � �
;� � � �
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector2
� � 6 =
pivot
� � > C
,
� � C D
Vector2
� � E L
size
� � M Q
,
� � Q R
string
� � S Y
content
� � Z a
,
� � a b

� � c p
font
� � q u
)
� � v w
=>
� � x z

(� � � �
true� � � �
,� � � �
content� � � �
,� � � �
null� � � �
,� � � �
pivot� � � �
,� � � �
size� � � �
,� � � �
font� � � �
,� � � �
FontSize� � � �
,� � � �
	TextAlign� � � �
,� � � �
Color� � � �
)� � � �
;� � � �
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector2
� � 6 =
pivot
� � > C
,
� � C D
Vector2
� � E L
size
� � M Q
,
� � Q R
string
� � S Y
content
� � Z a
,
� � a b
	TextAlign
� � c l
align
� � m r
,
� � r s

font� � � �
)� � � �
=>� � � �

(� � � �
true� � � �
,� � � �
content� � � �
,� � � �
null� � � �
,� � � �
pivot� � � �
,� � � �
size� � � �
,� � � �
font� � � �
,� � � �
FontSize� � � �
,� � � �
align� � � �
,� � � �
Color� � � �
)� � � �
;� � � �
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector2
� � 6 =
pivot
� � > C
,
� � C D
Vector2
� � E L
size
� � M Q
,
� � Q R
string
� � S Y
content
� � Z a
,
� � a b
float
� � c h
fontSize
� � i q
,
� � q r

font� � � �
)� � � �
=>� � � �

(� � � �
true� � � �
,� � � �
content� � � �
,� � � �
null� � � �
,� � � �
pivot� � � �
,� � � �
size� � � �
,� � � �
font� � � �
,� � � �
fontSize� � � �
,� � � �
	TextAlign� � � �
,� � � �
Color� � � �
)� � � �
;� � � �
[
� �  

MethodImpl
� �  
(
� � 
INLINE
� �  
)
� �  
]
� �  
public
� �  
static
� �   &
void
� � ' +
TextRect
� � , 4
(
� � 4 5
Vector2
� � 6 =
pivot
� � > C
,
� � C D
Vector2
� � E L
size
� � M Q
,
� � Q R
string
� � S Y
content
� � Z a
,
� � a b
	TextAlign
� � c l
align
� � m r
,
� � r s
float
� � t y
fontSize� � z �
,� � � �

font� � � �
)� � � �
=>� � � �

(� � � �
true� � � �
,� � � �
content� � � �
,� � � �
[
