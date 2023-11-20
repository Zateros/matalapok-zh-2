#let colorS = color.linear-rgb(10, 103, 193, 255)

#set math.mat(delim: "[")
#set par(justify: true)
#show heading.where(level: 2): it => block(
  fill: colorS,
  inset: 5pt,
  radius: 4pt,
)[
  #it
]
#show heading.where(level: 3): it => [#underline[#it]]

#align(center)[= Tételek]

== 12.14 Az inverz mátrix egyértelműsége
Legyen $A in KK^(n times n)$ reguláris mátrix, és tegyük fel, hogy $C in KK^(n times n)$ is és $D in KK^(n times n)$ is az _A_ inverze, azaz fennáll:
$ A C eq C A eq I #h(weak: true, 15pt) "és" #h(weak: true, 15pt) A D eq D A eq I $
Ekkor $C eq D$

=== Bizonyítás

$ D eq D I eq D(A C) eq (D A)C eq I C eq C $

Tehát egy négyzetes mátrixnak vagy nincs inverze (_szinguláris eset_), vagy pedig egyetlen inverze van (_reguláris eset_).\
Az inverz létezésének feltételeivel, kiszámításának módszereivel később foglalkozunk, itt csak egy példát említünk:
$ mat(1, 2; 1, 3;)^(-1) eq mat(3, -2;-1,1;)  $

ugyanis:

$ mat(1,2;1,3;) dot mat(3,-2;-1,1;) eq mat(1,0;0,1;) #h(weak: true, 15pt) "és" #h(weak: true, 15pt) mat(3,-2;-1,1;) dot mat(1,2;1,3;) eq mat(1,0;0,1;) $

Ezzel azt is megmutattuk, hogy az $mat(1,2;1,3;)$ mátrix reguláris.

== 13.3. A 2x2-es mátrix determináns kiszámításának képlete

Egy 2x2-es mátrix determinánsa a következőképpen számítható:

$ det(mat(a,b;c,d;)) eq a dot (-1)^(1+1) dot det([d]) + b dot (-1)^(1+2) dot det([c]) eq a d - b c $

tehát egy 2x2-es mátrix determinánsát megkapjuk, ha a főátlóbeli elemeinek szorzatából levonjuk a mellékátlóbeli eleimeinek szorzatát.

== 13.4. A jobbinverz létezése

Az $A in KK^(n times n)$ mátrixhoz akkor és csak akkor létezik olyan $C in KK^(n times n)$ mátrix, amelyre igaz, hogy $A C eq I$, ha $det(A) eq.not 0$. Egy ilyen _C_ mátrixot az _A_ jobbinverzének nevezzük.

== 13.5 Az inverz létezése

Legyen $A in KK^(n times n)$. Ekkor

$ exists A^(-1) arrow.double.long.l.r det(A) eq.not 0 $

azaz az _A_ mátrix akkor és csak akkor reguláris, ha $det(A) eq.not 0$. Következtetés: az _A_ mátrix akkor és csak akkor szinguláris, ha $det(a) eq 0$.

=== Bizonyítás

Tegyük fel először, hogy _A_ reguláris, azaz, hogy $exists A^(-1)$. Ekkor, $C eq A^(-1)$ választással megismételve az előző tétel első felének bizonyítását

$ 1 eq det(I) eq det (A dot A^(-1)) eq det(A) dot det(A^(-1)) $

amiből azonnal adódik, hogy $det(A) eq.not 0$. Mellesleg az is kiadódott, hogy

$ det(A^(-1)) eq 1 / det(A) $

Megfordítva, tegyük fel, hogy $det(A) eq.not 0$. Ekkor az előző tétel második fele alapján létezik olyan $C in KK^(n times n)$ mátrix, melyre fennáll: $A C eq I$. Megmutatjuk, hogy ez a _C_ mátrix lesz az _A_ inverze.\

Ehhez már csak az kell igazolni, hogy $C A eq I$.\

Ezt a következőképpen igazoljuk: Mivel $det(A^T) eq det(A) eq.not 0$, ezért az előző tétel második felét az $A^T$ mátrixra alkalmazva azt kapjuk, hogy

$ exists D in KK^(n times n): A^T D eq I $

Az egyenlőség mindkét oldalát transzponáljuk:

$ (A^T D)^T eq I^T $

ahonnan $D^T A eq I$ kövevtkezik. Ennek segítségével igazolhatjuk a $C A eq I$ egyenlőséget:

$ C A eq I C A eq D^T A C A eq D^T (A C)A eq D^T I A eq D^T A eq I"." $

== 14.12. Tétel

Legyen $W subset.eq V, W eq.not emptyset$. _W_ akkor és csak akkor altere _V_-nek, ha a következő két feltétel teljesül:\
1. $forall x,y in W: x + y in W$
2. $forall x in W space forall lambda in KK: lambda x in W$

Az első feltételt úgy is szoktuk mondani, hogy az összeadás nem vezet ki _W_-ből vagy, hogy _W_ zárt az összeadásra nézve. Hasonlóképpen, a második feltételt fogalmazhatjuk úgy is, hogy a számmal való szorzás nem vezet ki _W_-ből vagy, hogy _W_ zárt a számmal való szorzásra nézve.

=== Bizonyítás

A két feltétel szükségessége nyilvánvaló.\
Az elégségesség igazolásához csak a 14.1 definíció I. 4. és I. 5. pontjai szorulnak bizonyításra, hiszen I. 1. és II. 1. fel van téve, a többi axióma pedig azonosság. \

Jelöljük $0_V$-vel a _V_ nullvektorát és legyen $x in W$. Ekkor $x in V$, ezért a 14.4. tétel valamint tételünk második feltétele alapján

$ 0_V eq 0 dot X in W $

== 15.1.2. Generált altér

Legyen $x_1,...,x_k in V$ egy vektorrendszer. Tekintsük _V_ következő részhalmazát:

$ W^* colon.eq {lambda_1 x_1 + ... + lambda_k x_k in V | lambda_1,...,lambda_k in KK} $

$W^*$ elemei tehát az $x_1,x_2,...,x_k$ vektorrendszer összes lehetséges lineáris kombinációi.

== 15.3. Tétel

1. $W^*$ altér V-ben
2. $W^*$ lefedi az $x_1,...,x_k$ vektorrendszert, amint azt értjük, hogy

$ x_i in W^* space (i=1,...,k) $

3. Minden olyan $Z subset.eq V$ altér esetén, amely a fenti értelemben lefedi az  $x_1,...,x_k$ vektorrendszert, fennáll, hogy $W^* subset.eq Z$

A bizonyítás előtt megjegyezzük, hogy a tétel állítása röviden úgy foglalható össze, hogy $W^*$ az $x_1,x_2,...,x_k$ vektorrendszert feledő legszűkebb altér.

=== Bizonyítás

1. Legyen $a = lambda_1 x_1+...+lambda_k x_k in W^*$ és $b eq mu_1 x_1+...+mu_k x_k in W^*$. Ekkor:

$ a+b = lambda_1 x_1+...+lambda_k x_k + mu_1 x_1+...+mu_k x_k $

Továbbá tetszőleges $beta in KK$ esetén:

$ beta a eq beta (lambda_1 x_1+...+lambda_k x_k) eq (beta lambda_1) x_1+...+(beta lambda_k) x_k in W^*$

Tehát a 14.12-es tétel alapján $W^*$ valóban altér _V_-ben

2. Bármely rögzített $i in {1,...,k}$ esetén:

$ x_i eq 0 x_1 + ... + 0x_(i-1) + 1x_i + 0x_(i+1) + ... + 0x_k in W^* $

3. Legyen _Z_ egy, a tételben leírt altér, és legyen $a = lambda_1 x_1+...+lambda_k x_k in W^*$. Mivel _Z_ lefedi a vektorrendszert, ezért

$ x_i in Z space (i=1,...,k) $

Azonban _Z_ altér, ezért zárt a lineáris kombináció képzésére, amiből azonnal adódik, hogy $a in Z$. Tehát valóban $W^* subset.eq Z$.

=== _Kanonikus egységvektorok definı́ciója $KK^n$ -ben / Az általuk generált altér_

A $KK^n$-beli _i_-edik (kanonikus) egységvektort (jelöljuk $e_i$-vel) úgy értelmezzük, hogy _i_-edik komponense legyen 1, a többi komponense pedig legyen nulla ($i=1,...,n$). Ekkor az $e_1,...,e_n$ vektorrendszer generátorrendszer a $KK^n$ térben, ugyanis tetszőleges $x = (x_1,...,x_n) in KK^n$ esetén

$ x eq vec(x_1,x_2,dots.v,x_n) eq vec(x_1 dot 1 + x_2 dot 0 + ... + x_n dot 0,x_1 dot 0 + x_2 dot 1 + ... + x_n dot 0, dots.v, x_1 dot 0 + x_2 dot 0 + ... + x_n dot 1) eq x_1 dot vec(1,0,dots.v,0) + x_2 dot vec(0,1,dots.v,0) + ... + x_n dot vec(0,0,dots.v,1) = x_1 e_1 + ... + x_n e_n $

tehát _x_ valóban felírható az $e_1,...,e_n$ vektorok lineáris kombinációjaként

== 16.5. Egyértelmű előállı́tás tétele

Legyen $x_1, ... , x_n ∈ V$ egy vektorrendszer, továbbá $x ∈ "Span" (x_1 , ... , x_n )$. Ekkor \ \
a) Ha az $x_1, . . . , x_n$ vektorrendszer lineárisan független, akkor x egyértelműen (azaz csak egyféleképpen) állı́tható elő a rendszer tagjainak lineáris kombinációjaként.\
b) Ha az $x_1 , ... , x_n$ vektorrendszer lineárisan összefüggő, akkor x végtelen sokféleképpen állı́tható elő a rendszer tagjainak lineáris kombinációjaként.

=== Bizonyítás

a) Tegyük fel, hogy
$ x = lambda_1 x_1 + ... + lambda_n x_n \
x = mu_1 x_1 + ... + mu_n x_n $
és rendezzük át a jobb oldali egyenlőséget (0-ra redukálás, közös szumma, kiemelés):
$ sum_(i=1)^n (lambda_i - mu_i)x_i = 0 $
Ebből – az $x_1 , ... x_k$ rendszer függetlenségét felhasználva – azt kapjuk, hogy $λ_i − μ_i = 0$, azaz, hogy $λ_i = μ_i #h(weak: true, 10pt) (exists i in {1, ... , n})$. \

== 16.6. Összefüggő rendszer szűkı́tése

Legyen $x_1, ..., x_k in V$ egy lineárisan összefüggő rendszer. Ekkor
$  exists i in {1,2,...k}: "Span" (x_1,...,x_(i-1),x_(i+1),...,x_k) = "Span" (x_1,...,x_k)  $
*Szavakban:* Összefüggő rendszerből elhagyható valamely vektor úgy, hogy a generált altér nem változik. Másképpen fogalmazva: összefüggő rendszerben legalább egy vektor felesleges a generált altér szempontjából.

=== Bizonyítás

A rendszer összefüggősége miatt léteznek $lambda_1,...,lambda_k in KK$ nem mind 0 számok úgy,hogy
$ lambda_1 x_1 + ... + lambda_k x_k eq 0 $
Legyen _i_ egy olyan index, amelyre $lambda_i eq.not 0$. Legyen továbbá
$ W_1 := "Span" (x_1,...,x_(i-1),x_(i+1),...,x_k) "és" W_2 := "Span" (x_1,...,x_k) $
Azt kell igazolnunk, hogy $W_1 = W_2$:\
A $W_1 subset.eq W_2$ tartalmazás *triviális*, ugyanis:
$ x_1, ... , x_(i−1), x_(i+1), ..., x_k in "Span" (x_1 , ... , x_k ) = W_2 $
miatt a $W_2$ altér lefedi az $x_1,...,x_(i-1),x_(i+1),...,x_k$ vektorrendszert. Mivel $W_1$ e rendszer legszűkebb lefedő altere, ezért $W_1 subset.eq W_2$.
A $W_2 subset.eq W_1$ tartalmazás igazolásához induljunk ki abból, hogy *triviálisan*
$ x_1,...,x_(i-1),x_(x+1),...,x_k in "Span" (x_1,...,x_(i-1),x_(x+1),...,x_k) = W_1 $
$x_i in W_1$: Ehhez a már felírt
$ lambda_1 x_1 + ... + lambda_k x_k = 0 $
összefüggőségei egyenletből rendezzük ki a $x_i$-t ($lambda_i eq.not 0$ miatt lehetséges)
$ x_i = (- lambda_1 / lambda_i) dot x_1 + ... + (- lambda_k / lambda_i) dot x_k $
Azt kaptuk, hogy xi kifejezhető az $x_1,...,x_(i-1),x_(x+1),...,x_k$ vektorok lineáris kombinációjaként,
tehát $x_i$ valóban benne van a $"Span" (x_1,...,x_(i-1),x_(x+1),...,x_k) = W_1$ altérben.\
Így tehát a $W_1$ altér lefedi az $x_1, ... , x_k$ vektorrendszert, s mivel $W_2$ e rendszer legszűkebb lefedő altere, következésképpen $W_2 subset.eq W_1$.\
A $W_1 subset.eq W_2$ és a $W_2 subset.eq W_1$ tartalmazási relációk pedig együtt azt jelentik, hogy $W_1 eq W_2$

=== Megjegyzés

A bizonyı́tásból az is kiderült, hogy az a vektor biztosan felesleges (vagyis elhagyható), amelyiknek az együtthatója valamelyik összefüggőségi egyenletben nem 0.

== 16.8 Összefüggő rendszerré bővítés

Legyen $x_1,...,x_k in V$ egy vektorrendszer, továbbá $x in V$. Ekkor
$ x in "Span" (x_1,...,x_k) arrow.double x_1,...,x_k,x "lineárisan összefüggő" $ 

=== Bizonyítás

Mivel $x in "Span" (x_1,...,x_k)$, ezért _x_ felírható a generátorrendszer lineáris kombinációjaként:
$ exists lambda_1,...,lambda_k in KK: x eq lambda_1 x_1 + ... + lambda_k x_k $
Átrendezés után:
$ lambda_1 x_1 + ... + lambda_k x_k + (-1) dot x eq 0 $
Mivel $-1 eq.not 0$, ezér a rendszer valóban összefüggő.

== 16.10. Független rendszer bővítése

Legyen $x_1,...,x_k in V$ egy lineárisan független rendszer, továbbá legyen $x in V$. Ekkor
$ "a)" x in "Span" (x_1,...,x_k) arrow.double x_1,...,x_k "lineárisan összefüggő" \ 
 "b)" x in.not "Span" (x_1,...,x_k) arrow.double x_1,...,x_k "lineárisan független" $

== 16.11. Következmény
Legyen $x_1,...,x_k, x in V$. Ha $x_1,...,x_k$ lineárisan független és $x_1,...,x_k, x$ lineárisan összefüggő, akkor
$ x in "Span" (x_1,...,x_k) $
 
== 17.5. Bázis létezése
 
Bármely véges dimenziós, nem {0} vektortérben van bázis.
 
=== Bizonyítás

Legyen $y_1,...,y_m$ a _V_ véges dimenziós, nem {0} vektortér véges generátorrendszere. Ha ez lin. független, akkor bázis. Ha összefüggő, akkor az _Összefüggő rendszer szűkı́tése (16.6)_ tétel szerint elhagyható belőle egy vektor úgy, hogy a visszamaradó $m-1$ vektorból álló rendszer ugyanazt az alteret alkotja. Innentől ezt a lépést addig alkalmazzuk, míg lineárisan független nem lesz a kapott generátorrendszer, így bázis nem lesz.

== 17.7. Kicserélési tétel
 
Legyen $x_1,....,x_k in V$ egy lineárisan független rendszer, $y_1,...,y_m in V$ pedig egy gen.rendszer.\
Ekkor $forall i in {1,...,k}: exists j in {1,...,m} -> x_1,...,x_(i-1),y_j,x_(i+1),...,x_k - "lineárisan független"$

== 17.8. Tétel

Bármely (véges) lineárisan független vektorrendszer tagjainak száma nem nagyobb, mint bármely (véges) generátorrendszer tagjainak száma. (Ezzel pontos értelmet nyert az, hogy a független rendszerek a "kis" rendszerek, a generátorrendszerek pedig a "nagy" rendszerek.)

=== Bizonyítás

Kicserélési-tétel kimondása miatt:
$ - exists y_(i 1): y_(i 1), x_2, x_3, ..., x_n "lin. független" \
- exists y_(i 2): y_(i 1), y_(i 2), x_3, ..., x_n "lin. független" $
Mindegyik $x_i$ vektort ki tudjuk cserélni valamelyik $y_i$ vektorral

== 17.9. Tétel

Legyen _V_ véges dimenzió, nem {0} vektortér. Ekkor _V_ bármely két bázisa azonos elemszámú.

=== Bizonyítás

Legyen $e_1,...,e_m$ és $f_1,...,f_k$ két bázis _V_-ben. Mivel $e_1,...,e_m$ lineárisan független, $f_1,...,f_k$ pedig generátorrendszer, ezért az előző tétel szerint $m <= k$. Szerepcserével kapjuk, hogy $k <= m$. Így tehát $k eq m$.


== 17.12. Tétel(ek)
Legyen $1 <= dim(V) eq n < infinity$. Ekkor
1. Ha $x_1,...,x_k in V$ lineárisan független, akkor $k <= n$
  === Bizonyítás
  Legyen $e_1,...,e_n$ bázis _V_-ben. Ekkor generátorrendszer is, tehát a 17.8-as tétel miatt: $k <= n$ \

#line(length: 100%, stroke: (paint: colorS, thickness: 1.5pt, dash: "dashed"))  

2. Ha $x_1,...,x_k in V$ generátorrendszer, akkor $k >= n$
  === Bizonyítás
  Legyen $e_1,...,e_n$ bázis _V_-ben. Ekkor lineárisan független, tehát a 17.8-as tétel miatt: $k >= n$ \

#line(length: 100%, stroke: (paint: colorS, thickness: 1.5pt, dash: "dashed"))  

3. Ha $x_1,...,x_n in V$ lineárisan független rendszer, akkor generátorrendszer is (ergo: bázis)
  === Bizonyítás
  Tegyük fel indirekt, hogy $x_1,...,x_n$ nem gen.rendszer. Ekkor
  $ V \\ "Span" (x_1,...,x_n) eq.not nothing $
  Legyen $x in V \\ "Span" (x_1,...,x_n)$. Ekkor a _Független rendszer bővítése (16.10)_ tétel miatt $x_1,...,x_n,x$ lineárisan független. Ez ellentmondás, mivel ez a rendszer $n+1$ vektorból áll, többől, mint a tér dimenziója\

#line(length: 100%, stroke: (paint: colorS, thickness: 1.5pt, dash: "dashed"))

4. Ha $x_1 , ... , x_n in V$ generátorrendszer, akkor lineárisan független is (következésképpen: bázis)
  === Bizonyítás
  Tegyük fel indirekt, hogy $x_1,...,x_n$ lineárisan összefüggő. Ekkor az _Összefüggő rendszer szűkı́tése (16.6)_ tétel miatt
  $ exists i in {1, 2, ..., n}: "Span" (x_1,...,x_(i-1),x_(i+1),...,x_n) = "Span" (x_1,...,x_n) = V $
  Ez ellentmondás, mivel az $x_1,...,x_(i-1),x_(i+1),...,x_n$ rendszer $n-1$ vektorból áll, kevesebből, mint a tér dimenziója.

== 18.6. Tétel

Bármely $A in KK^(m times n)$ mátrix oszlopvektorterének és sorvektorterének dimenziója megegyezik, azaz
$ dim O(A) = dim S(A) $

== 18.16. Tétel

Jelölje (nem hivatalosan) $M_h$ a komogén rendszer megoldáshalmazát, avagy
$ M_h := {x in KK^n | A x = 0} subset.eq KK^n $
Ekkor $M_h$ altér $KK^n$-ben. \
(Hivatalos, nemzetközi jelölése: $"Ker"(A)$ - "kernel" / magtér /)

=== Bizonyítás

Mivel $0 in M_h$, ezért $M_h eq.not emptyset$.\
$M_h$ zárt az összeadásra nézve, mivel ha $x,y in M_h$, akkor $A x = A y  = 0$, ezért
$ A(x+y) = A x + A y = 0 + 0 = 0"," $
amiből következik, hogy $x+y in M_h$.\
Továbbá $M_h$ zárt a skalárral való szorzásra nézve is, mivel ha $x in M_h$ és $lambda in KK$, akkor $A x = 0$, ezért
$ A(lambda x) = lambda A x = lambda 0 = 0"," $
amiből $lambda x in M_h$ következik.


== 18.23. Tétel

A lineáris egyenletrendszer együtthatómátrixának rangja egyenlő a Gauss-Jordan módszer alkalmazásakor kapott r számmal, azaz egyenlő a megjelölt elemek számával a leálláskor.
