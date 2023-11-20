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

#align(center)[= Definíciók]

#let theme(name) = [
  #grid(columns: (auto, auto, auto),
    rows: (auto),
    gutter: 10pt,
    line(length: 100%, stroke: (paint: colorS, thickness: 1.5pt, dash: "dashed")),
    align(center)[#text(size: 16pt, style: "italic", weight: 700, colorS)[
      #name
    ]],
    line(length: 100%, stroke: (paint: colorS, thickness: 1.5pt, dash: "dashed"))
  )
]

#theme("Mátrixok")

== 12.1.

Legyenek _m_ és _n_ pozitı́v egész számok. Az
$ A : {1, . . . , m} × {1, . . . , n} → KK $
függvényeket ($KK$ feletti) $m × n$-es mátrixoknak nevezzük. Az $m × n$-es mátrixok halmazát $KK^(m×n)$ jelöli. Az A mátrix _(i, j)_ helyen felvett _A(i, j)_ helyettesı́tési értékét az _i_-edik sor _j_-edik elemének (a _j_-edik oszlop _i_-edik elemének) nevezzük, jelölése: $a_(i j)$ , vagy pedig $(A)_(i j)$. A mátrixot (n-edrendű) négyzetes mátrixnak nevezzük, ha $m = n$, vagyis ha ugyanannyi sora van, mint amennyi oszlopa. \
Az $m×n$-es mátrixokat $m×n$-es táblázatként szokás megadni, innen ered a definı́cióbeli "sor-oszlop" szóhasználat is:\

$ A = mat(
  A(1, 1), A(1, 2), ..., A(1, n);
  A(2, 1), A(2, 2), ..., A(2, n);
  "", dots.v, "", "";
  A(m, 1), A(m, 2), ..., A(m,n);) $

Az _A_ mátrix $a_(1 1)$ , $a_(2 2)$ , $...$ elemeit diagonális elemeknek, a táblázatban ezeket összekötő képzeletbeli egyenest a mátrix főátlójának (diagonálisának) nevezzük. A főátló persze csak négyzetes mátrix esetén felel meg a táblázat "igazi" átlójának.

Megemlı́tünk néhány nevezetes mátrixot:
- Nullmátrixnak nevezzük azt a mátrixot, melynek minden eleme 0. Ha nem okoz félreértést, a nullmátrixot a 0 szimbólummal fogjuk jelölni.
- Sormátrixnak nevezzük az egyetlen sorból álló mátrixot, tehát $KK^(1×n)$ elemeit. A sormátrixokat sorvektoroknak is szokás nevezni,
- Oszlopmátrixnak nevezzük az egyetlen oszlopból álló mátrixot, tehát $KK^(m×1)$ elemeit. Az oszlopmátrixokat oszlopvektoroknak is szokás nevezni. A "sorvektor", "oszlopvektor" elnevezések okára később fogunk vissztérni (14.8 megjegyzés)
- Egy _A_ négyzetes mátrixot alsó háromszögmátrixnak nevezünk, ha főátlója felett minden elem 0, azaz ha j > i esetén $a_(i j) = 0$.
- Egy _A_ négyzetes mátrixot felső háromszögmátrixnak nevezünk, ha főátlója alatt minden elem 0, azaz ha j < i esetén $a_(i j) = 0$.
- Egy _A_ négyzetes mátrixot diagonálmátrixnak nevezünk, ha egyszerre alsó és felső háromszögmátrix, tehát, ha a főátlón kı́vüli elemei nullák: $a_(i j) = 0$ ha $i eq.not j$. A négyzetes mátrixok körében fontos szerepet játszik az egységmátrix:

== 12.2.

Az $I ∈ KK^(n×n)$ mátrixot ($n × n$-es) egységmátrixnak nevezzük, ha:
$ (I)_(i j) := cases(
  0 "ha" i eq.not j",",
  1 "ha" i eq j
) #h(weak: true, 30pt) (i,j = 1,...,n) $

== 12.4

Legyen $A, B in KK^(m x n)$ és $lambda in KK$. Az
$ A + B in KK^(m x n)","  #h(weak: true, 30pt) (A + B)_(i j) := (A)_(i j) + (B)_(i j) $
mátrixot az _A_ és _B_ mátrixok összegének, a
$ lambda A in KK^(m x n)"," #h(weak: true, 30pt) (lambda A)_(i j) := lambda dot (A)_(i j) $
mátrixot pedig az A mátrix $lambda$-szorosának nevezzük.

== 12.7

Legyen $A in KK^(m x n)"," B in KK^(n x p)$. Az
$ A B in KK^(m x p)"," #h(weak: true, 30pt) (A B)_(i j) := a_(i 1) b_(1 j) + a_(i 2) b_(2 j) + ... + a_(i n) b_(n j) $
mátrixot az _A_ és _B_ mátrix (ebben a sorrendben vett) szorozták nevezzük.

== 12.9

Legyen $f(x) := c_k x^k + c_(k-1) x^(k-1) + ...+ c_1 x + c_0$ egy polinom, $KK$-beli együtthatókkal. Ekkor $A in KK^(n times n)$ esetén

$ f(A) := c_k A^k + c_(k-1) A^(k-1) + ... + c_1 A + c_0 I $

Fontos művelet a transzponálás és az adjungálás.

== 12.10

Legyen $A in KK^(m x n)$. Az

$ A^T in KK^(n x m), (A^T)_(i j) := (A)_(j i) $

mátrixot az _A_ transzponáltjának, az

$ A^* in KK^(n x m), (A^*)_(i j) := overline((A)_(j i)) $

mártixot pedig az _A_ adjungáltjának nevezzük.

A felülvonás a komplex konjugáltat jelenti. Itt érdemes megállapodni abban, hogy a konjugálást valós számokra is értelmezzük: valós szám konjugáltja önmaga (összhangban a valós tengelyen lévő komplex szám konjugáltjával). \
Ezért rögtön látható, hogy $KK = RR$ esetén a transzponálás és az adjungálás művelete ugyanaz.

== 12.12

Legyen $A, C in KK^(n times n)$. _C_-t az _A_ inverzének nevezzük, ha

$ A C = C A = I $

(Itt _I_ az $n times n$ egységmátrixot jelöli.) Az _A_ inverzét így jelöljük: $A^(-1)$.

== 12.13

Legyen $A in KK^(n times n)$.

a.) Az _A_ mátrixot regulárisnak (invertálhatónak) nevezzük, ha létezik inverze, azaz ha $exists A^(-1)$.

b.) Az _A_ mátrixot szingulárinak (nem invertálhatónak) nevezzük, ha nincs inverze, azaz ha $exists.not A^(-1)$.

#theme("Determináns")

== 13.1 Fogalom

Legyen $n >= 2$ és $A in KK^(n times n)$ egy négyzetes mátrix, továbbá (_i_,_j_) egy sor-oszlop indexpár ($i,j in {1,...,n}$). Töröljük _A_-ból az _i_-edik sort és _j_-edik oszlopot. A visszamardó $(n-1) times (n-1)$-es mátrixot az _A_ mátrix (_i_,_j_) indexpárhoz tartozó részmátrixának nevezzük, és $A_(i j)$-vel jelöljük.

Ezek után rekurzív módon értelmezzük a $det : KK^(n times n) arrow KK$ függvényt:

== 13.2

1. Ha $A = [a_(1 1) in KK^(1 times 1)]$, akkor $det(A) := a_(1 1)$
2.Ha $A in KK^(n times n)$, akkor:

$ det(A) := sum^n_(j eq 1) a_(1j) dot (-1)^(1+j) dot det(A_(1j)) eq sum^n_(j eq 1) a_(1j) dot  a'_(1j) $,

ahol az $a'_(1j) := (-1)^(i+j) dot det(A_(i j))$ neve: *előjelezett aldetermináns (kofaktor)*

A fenti definícióban a determinánst az első sor szerinti kifejtéssel értelmeztük.

#theme("Vektorterek")

== 14.1

Legyen $V eq.not emptyset$. Azt mondjuk, hogy $V space KK$ feletti vektortér, ha léteznek az $x+y$ (összeadás) és $lambda x eq lambda dot x$ (szorzás számmal) műveletek úgy, hogy teljesülnek a következő axiómák:

I.)\
  1.) $forall x,y in V: x+y in V$ \
  2.) $forall x,y in V: x+y eq y+x$ \
  3.) $forall x,y,z in V: (x+y)+z eq x+(y+z)$ \
  4.) $exists 0 in V space forall x in V: x+0 eq 0$ \
  5.) $forall x in V space exists (-x) in V: x+(-x) eq 0$ \

II.)\
  1.) $forall lambda in KK space forall x in V: lambda x in V$ \
  2.) $forall x in V space forall lambda, mu in KK: lambda(mu x) eq (lambda mu)x$ \
  3.) $forall x in V space forall lambda, mu in KK: (lambda + mu)x eq lambda x + mu x$ \
  4.) $forall x,y in V space forall lambda in KK: lambda(x + y) eq lambda x + lambda y$ \
  5.) $forall x in V: 1x eq x$ \

_V_ elemeit vektoroknak, $KK$ elemeit skalároknak nevezzük. $KK$-t pedig a _V_ skalártartományának nevezzük.

== 14.9

Legyen $A in KK^(m x n), x in KK^n$. Az

$ A x in KK^m, space (A x)_i := a_(i 1) x_1 + a_(i 2) x_2 + ... + a_(i n) x_n space space (i eq 1,...,m) $

vektort az A mátrix és az x vektor (ebben a sorrendben vett) szorzatának nevezzük.

#theme("Alterek")

== 14.11

Legyen _W_ a _V_ vektortér egy nem üres részhalmaza. Azt mondjuk, hogy _W_ altere _V_-nek (_W_ altér _V_-ben), ha _W_ vektortér a _V_-beli műveletekre nézve.

#theme("Generált alterek")

== 15.1 Lineáris kombináció

Legyen $k in NN^+, x_1,...,x_k in V$ egy vektorrendszer, $lambda_1,...,lambda_k in KK$. A

$ lambda_1 x_1 + ... + lambda_k x_k $

vektort (ill. magát a kifejezést is) az $x_1,...,x_k$ vektorrendszer (vagy egyszerűen csak vektorok) $lambda_1,...,lambda_k$ együtthatókkal vett lineáris kombinációjának nevezzük. \
A lineáris kombinációt triviálisnak nevezzük, ha minden együtthatója 0 (ennek eredménye nyilván a nullvektor), nem triviálisnak, ha van nem 0 együtthatója.

== 15.4

A _Lineáris kombináció_ formulával értelmezett $W^*$ alteret, az $x_1,x_2,...,x_k$ vektorrendszer által generált (vagy kifeszített) altérnek nevezzük, és $"Span"(x_1,x_2,...,x_K)$-val jelöljük.

== 15.5

Legyen _W_ a _V_ egy altere. Azt mondjuk, hogy _W_-nek van vges generátorrendszere, ha

$ exists k in NN^+ space exists x_1, x_2, ..., x_k in V: "Span"(x_1, x_2, ... , x_k) eq W $.

Ez esetben az $x_1, x_2, ..., x_k$ vektorrendszert a _W_ altér egy (véges) generátorrendszerének nevezzük.

== 15.6

Ammenyiben $"Span"(x_1, x_2, ... , x_k) eq V$, az $x_1, x_2, ... , x_k$ vektorrendszert röviden csak generátorrendszernek nevezzük.

== 15.11

A _V_ vektorteret véges dimenziósnak nevezzük, ha van véges gen.rendszere, azaz, ha

$ exists k in NN^+ space exists x_1, x_2, ... , x_k in V: space "Span"(x_1, x_2, ... , x_k) eq V $

Azt a tényt, hogy _V_ véges dimenziós, így jelöljük: $dim(V) < infinity$

== 15.12

A _V_ vektorteret végetlen dimenziósnak nevezzük, ha nincs véges gen.rendszere, azaz, ha

$ forall k in NN^+ forall x_1, x_2, ... , x_k in V: space "Span"(x_1, x_2, ... , x_k) eq.not V $

Azt a tényt, hogy _V_ végtelen dimenziós, így jelöljük: $dim(V) eq infinity$

#theme("Lineáris függetlenség")

== 16.1

Legyen $k in NN^+$ és $x_1, x_2, ... , x_k in V$ egy vektorrendszer a _V_ vektortérben. Ezt a vektorrendszert lineárisan függetlennek nevezzük, ha lineáris kombinációi közül csak a triviális lin. kombináció eredményez nullvektort, azaz ha

$ lambda_1 x_1 + lambda_2 x_2 + ... + lambda_k x_k eq 0 arrow.long.r.double lambda_1 eq lambda_2 eq ... eq lambda_k eq 0 $

A rendszert lin. összefüggőnek nevezzük, ha nem független, azaz, ha:

$ exists lambda_1, ..., lambda_k in KK, lambda_i "nem mind 0:" space lambda_1 x_1 + lambda_2 x_2 + ... + lambda_k x_k eq 0 $

#theme("Bázis, dimenzió")

== 17.1 Bázis fogalom

Az $x_1, x_2, ... , x_k in V$ vektorrendszert (_V_-beli) bázisnak nevezzük, ha gen.rendszer is és lineárisan független is.

== 17.3

A fenti lineáris kombináció együtthatóit a vektor adott bázisra vonatkozó koordinátáinak nevezzük.

== 17.10

A véges dimenziós (és nem ${0}$) vektortér bázisának közös elemszámát a tér dimenziójának nevezzük, és $dim(V)$-vel jelöljük. Megállapodunk még abban is, hogy $dim({0}) := 0$

#theme("Rang")

== 18.1

Legyen _V_ egy vektortér $KK$ felett, $x_1,...,x_k in V$. \
Az $x_1,...,x_k$ vektorrendszer által generált altér dimenzióját a vektorrendszer rangjának nevezzük.\
Jele: $"rang"(x_1,...x_k)$. Tehát

$ "rang"(x_1,...,x_k) := dim("Span"(x_1,...,x_k)) $

== 18.3

Legyen $A in KK^(m times n)$. Az _A_ _i_-edik sorában álló elemek alkotják az _i_-edik sorvektort:

$ s_i := (a_(i 1),a_(i 2),...,a_(i n)) in KK^n space (i eq 1,...,m) $

A sorvektorok által generált ($KK^n$-beli) alteret a mátrix sorvektorterének (sorterének) nevezzük.\
Jele: S(A)

== 18.4

Legyen $A in KK^(m times n)$. Az _A_ _j_-edik oszlopában álló elemek alkotják a _j_-edik oszlopvektort:

$ a_j := mat(delim: "(",a_(1 j);a_(2 j);dots.v;a_(m j)) in KK^m space (j = 1,...,n) $

Az oszlopvektorok által generált ($KK^m$-beli) alteret a mátrix oszlopvektorterének (oszlopterének) nevezzük. \
Jele: O(A)

== 18.8

Legyen $A in KK^(m times n)$. \
dim(O(_A_)) és dim(S(_A_)) közös értékét az _A_ mátrix rangjának nevezzük, és rang(_A_)-val jelöljük. Tehát

$ "rang"(A) := dim(S(A)) eq dim(O(A)) $

== 18.10

Legyenek _m_ és _n_ pozitív egész számok. Az _m_ egyenletből álló, _n_ ismeretlenes lin.egyenletrendszer ált. alakja:

$ a_(1 1) x_1 + ... + a_(1 n) x_n eq b_1 \
a_(2 1) x_1 + ... + a_(2 n) x_n eq b_2 \
dots.v \
underline(a_(m 1) x_1 + ... + a_(m n) x_n eq b_m) \
$

ahol az $a_(i j) in KK$ együtthatók és a $b_j$ jobb oldali konstansok adottak. Ezt az alakot a  lineáris egyenletrendszer skalár alakjának nevezzük.
Keressük az $x_1,...,x_k$ ismeretlenek összes olyan ($KK$-beli) értékét, amelyre mindegyik egyenlőség igaz. Egy ilyen $x_1,...,x_k$ értékrendszert a lin. egyenletrendszer egy megoldásának nevezzük.

== 18.11
A lineáris egyenletrendszert konzisztensnek nevezzük, ha van megoldása, inkonzisztensnek (ellentmondásosnak), ha nincs megoldása.

Vezessük be az

$ a_1 := mat(delim: "(",a_(1 1);a_(2 1);dots.v;a_(m 1);), ..., a_n := mat(delim: "(",a_(1 n);a_(2 n);dots.v;a_(m n);), b := mat(delim: "(",b_1;b_2;dots.v;b_m;) $

$KK^m$-beli vektorokat. Ezzel egyenletrendszerünk az alábbi, egyszerűbb alakba írható:

$ x_1 a_1 + x_2 a_2 + ... + x_n a_n = b $

amit az egyenletrendszer vektoros alakjának nevezünk. A vektoros alak alapján a feladat ı́gy is megfogalmazható: Előállı́tható-e a _b_ vektor az $a_1, ... , a_n$ vektorok lineáris kombinációjaként, és ha igen, akkor adjuk meg az összes lehetséges előállı́tás együtthatóit.

Hat pedig bevezetjük az

$ A := [a_1...a_n] := mat(
  a_(1 1), a_(1 2), ..., a_(1 n);
  a_(2 1), a_(2 2), ..., a_(2 n);
  dots.v, dots.v, "", dots.v;
  a_(m 1), a_(m 2), ..., a_(m n);
) in KK^(m times n) $

mátrixot (melyet az egyenletrendszer mátrixának, vagy együtthatómátrixának nevezünk) valamint az $x := (x_1 , ... , x_n ) in KK^n$ vektort, akkor egyenletrendszerünk legtömörebb alakja:

$ A x eq b $

Ezt az alakot az egyenletrendszer mátrixos alakjának nevezzük.\
A feladat tehát az összes olyan $KK^n$-beli vektor megkeresése, melyet _x_ helyébe ı́rva a (18.2) egyenlőség igaz. Egy ilyen vektort (amennyiben létezik) az egyenletrendszer egy megoldásának, vagy megoldásvektorának nevezünk.

== 18.13

Két lineáris egyenletrendszert ekvivalensnek nevezünk, ha megoldáshalmazuk ugyanaz.

== 18.15

Legyen $A in KK^(m times n)$. Ekkor az $A x eq 0$ lineáris egyenletrendszert homogén rendszernek nevezzük. Azt is szoktuk mondani, hogy $A x = 0$ az $A x = b$-hez tartozó homogén rendszer. \
Jegyezzük meg, hogy a homogén rendszer mindig megoldható, mivel a nullvektor biztosan megoldása ($0 in O(A)$).

== 18.17

Legyen $A in KK^(m times n)$. Az $M_h$ alteret at _A_ mátrix nullterének vagy magjának nevezzük. \
Jelölés: Ker(_A_) \
Tehát

$ "Ker"(A) := M_h eq {x in KK^n | A x eq 0} subset.eq KK^n $