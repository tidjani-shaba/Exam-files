-- 2017 Baccalaureat C Mathematiques -- 47 questions
-- Solved from scratch (source PDF has no official point values -- bareme is an estimate, not sourced from an official corrige).
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Vérifier que le couple $(5;-7)$ est une solution de l''équation $(E) : 13x+7y=16$.', 'Calculons $13\times5+7\times(-7) = 65-49 = 16$.

Comme le résultat obtenu est bien égal au second membre de l''équation, le couple $(5;-7)$ est bien solution de $(E)$.

Réponse : $13(5)+7(-7)=16$, donc $(5;-7)$ est solution de $(E)$.', 'Vérifier qu''un couple est solution d''une équation consiste simplement à substituer ses valeurs et à contrôler l''égalité — aucune résolution n''est nécessaire ici.

Ce que l''examinateur attend : le calcul explicite de $13(5)+7(-7)$ et la conclusion que le résultat vaut bien $16$.', '[{"criterion":"Calcul et vérification de l''égalité","points":0.5}]'::jsonb, '2017', 'Exercice 1 - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'En déduire les couples d''entiers relatifs $(x;y)$ vérifiant l''équation $(E) : 13x+7y=16$.', 'Comme $(5,-7)$ est une solution particulière de $(E)$, on a $13(5)+7(-7)=16$. En soustrayant cette égalité de $(E)$ :
$$13x+7y=13(5)+7(-7) \implies 13(x-5) = -7(y+7)$$

Comme $\operatorname{pgcd}(13,7)=1$ (13 et 7 sont premiers entre eux), d''après le théorème de Gauss, $7$ divise $(x-5)$ : il existe $k\in\mathbb{Z}$ tel que $x-5=7k$, soit $x=5+7k$.

En substituant dans $13(x-5)=-7(y+7)$ : $13(7k) = -7(y+7) \implies 13k = -(y+7) \implies y = -7-13k$.

Réponse : les solutions sont les couples $(x,y) = (5+7k,\ -7-13k)$, pour $k\in\mathbb{Z}$.', 'La méthode standard pour résoudre une équation diophantienne linéaire $ax+by=c$ consiste à soustraire une solution particulière connue de l''équation générale, ce qui fait apparaître une équation homogène $a(x-x_0)=-b(y-y_0)$ que l''on résout grâce au théorème de Gauss (puisque $a$ et $b$ sont premiers entre eux).

Piège à éviter : oublier de vérifier que $\operatorname{pgcd}(13,7)=1$ avant d''appliquer le théorème de Gauss.

Ce que l''examinateur attend : la soustraction de la solution particulière, l''application correcte du théorème de Gauss, et l''expression paramétrique complète des solutions en fonction de $k\in\mathbb{Z}$.', '[{"criterion":"Mise en place de l''équation réduite et application du théorème de Gauss","points":0.75},{"criterion":"Expression paramétrique complète des solutions","points":0.5}]'::jsonb, '2017', 'Exercice 1 - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Démontrer que, pour tout entier naturel $n$, $4^{2n} \equiv 1\ [5]$.', '$4^{2n} = (4^2)^n = 16^n$.

Or $16 = 3\times5+1$, donc $16 \equiv 1\ [5]$.

Par compatibilité de la congruence avec les puissances : $16^n \equiv 1^n = 1\ [5]$.

Réponse : $4^{2n} \equiv 1\ [5]$ pour tout $n\in\mathbb{N}$.', 'L''idée clé est de regrouper $4^{2n}$ en $(4^2)^n=16^n$, pour se ramener à une seule congruence de base ($16\equiv1\,[5]$) élevée à la puissance $n$ — une congruence reste valide lorsqu''on élève ses deux membres à une même puissance.

Ce que l''examinateur attend : le regroupement $4^{2n}=16^n$, la congruence $16\equiv1\,[5]$, et la conclusion par compatibilité des congruences avec les puissances.', '[{"criterion":"Regroupement 4²ⁿ=16ⁿ et congruence 16≡1[5]","points":0.5},{"criterion":"Conclusion par compatibilité avec les puissances","points":0.25}]'::jsonb, '2017', 'Exercice 1 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Déterminer le reste de la division euclidienne de $2014^{2015}$ par $5$.', 'Cherchons d''abord le reste de $2014$ modulo $5$ : $2014 = 5\times402+4$, donc $2014\equiv4\,[5]$.

Donc $2014^{2015} \equiv 4^{2015}\,[5]$.

Or $2015$ est impair : $2015=2\times1007+1$. En utilisant le résultat de la question précédente :
$$4^{2015} = 4^{2\times1007+1} = (4^2)^{1007}\times4 = 16^{1007}\times4 \equiv 1\times4 = 4\,[5]$$

Comme $0\le4<5$, ce reste est bien le reste de la division euclidienne.

Réponse : le reste de la division euclidienne de $2014^{2015}$ par $5$ est $4$.', 'On réduit d''abord la base ($2014\equiv4\,[5]$), puis on exploite le résultat de la question 2.a en écrivant l''exposant impair $2015$ comme $2\times1007+1$, pour se ramener à $16^{1007}\times4$ dont on connaît déjà la congruence.

Piège à éviter : oublier que le reste d''une division euclidienne doit être compris entre $0$ et $4$ inclus.

Ce que l''examinateur attend : la réduction $2014\equiv4\,[5]$, la décomposition de l''exposant $2015=2\times1007+1$, et l''utilisation du résultat de la question 2.a.', '[{"criterion":"Réduction 2014≡4[5]","points":0.25},{"criterion":"Décomposition de l''exposant et utilisation de la question 2.a","points":0.5}]'::jsonb, '2017', 'Exercice 1 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', '$p$ désigne un entier naturel supérieur à $1$. Une urne contient $2p$ boules numérotées de $1$ à $2p$, toutes indiscernables au toucher. Un joueur tire successivement, sans remise, deux boules de cette urne. Quel est le nombre de résultats possibles ?', 'Le tirage est successif et sans remise : l''ordre des deux boules tirées compte (le résultat « boule 3 puis boule 5 » est différent de « boule 5 puis boule 3 »).

Il y a $2p$ choix possibles pour la première boule, puis $2p-1$ choix restants pour la seconde.

Le nombre de résultats possibles est donc :
$$2p \times (2p-1)$$

Réponse : il y a $2p(2p-1)$ résultats possibles.', 'Un tirage successif sans remise est un tirage ordonné : chaque résultat est un couple ordonné (1er tirage, 2e tirage), d''où le produit $2p\times(2p-1)$ (arrangement de 2 éléments parmi $2p$).

Piège à éviter : utiliser une combinaison $\binom{2p}{2}$ au lieu d''un arrangement — cela ne conviendrait que pour un tirage simultané, pas successif.

Ce que l''examinateur attend : la justification que l''ordre compte, et le résultat exact $2p(2p-1)$.', '[{"criterion":"Justification du tirage ordonné et résultat exact","points":0.5}]'::jsonb, '2017', 'Exercice 1 - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Parmi les $2p$ boules, $p$ portent un numéro pair et $p$ un numéro impair. Si les boules tirées portent des numéros pairs, le joueur gagne $800$ F CFA. Si les boules tirées sont de parités différentes, il gagne $400$ F CFA. Si elles portent des numéros impairs, il perd $800$ F CFA. On désigne par $X$ le gain algébrique du joueur à l''issue de chaque épreuve. Déterminer la loi de probabilité de $X$ en fonction de $p$.', 'Les valeurs prises par $X$ sont $-800$, $400$ et $800$.

$P(X=800)$ (les deux boules portent un numéro pair) : $p$ choix pour la première boule paire, $p-1$ choix restants pour la seconde :
$$P(X=800) = \frac{p(p-1)}{2p(2p-1)} = \frac{p-1}{2(2p-1)}$$

$P(X=-800)$ (les deux boules portent un numéro impair), par un raisonnement identique :
$$P(X=-800) = \frac{p-1}{2(2p-1)}$$

$P(X=400)$ (parités différentes) : soit la 1ère boule est paire et la 2e impaire ($p\times p$ possibilités), soit l''inverse ($p\times p$ possibilités) :
$$P(X=400) = \frac{2p^2}{2p(2p-1)} = \frac{p}{2p-1}$$

(Vérification : $\frac{p-1}{2(2p-1)}+\frac{p}{2p-1}+\frac{p-1}{2(2p-1)} = \frac{p-1}{2p-1}+\frac{p}{2p-1} = \frac{2p-1}{2p-1}=1$.)

Réponse : $P(X=-800)=P(X=800)=\dfrac{p-1}{2(2p-1)}$ et $P(X=400)=\dfrac{p}{2p-1}$.', 'On dénombre séparément les tirages ordonnés menant à chaque valeur de $X$, en distinguant les $p$ numéros pairs et les $p$ numéros impairs parmi les $2p$ boules, puis on divise par le nombre total de résultats trouvé à la question précédente.

Piège à éviter : oublier qu''il y a deux façons d''obtenir des parités différentes (pair puis impair, ou impair puis pair), ce qui double le nombre de cas favorables pour $X=400$.

Ce que l''examinateur attend : le dénombrement correct des trois cas et la vérification que la somme des probabilités vaut $1$.', '[{"criterion":"Dénombrement et calcul de P(X=800) et P(X=-800)","points":0.75},{"criterion":"Dénombrement et calcul de P(X=400), somme vérifiée égale à 1","points":0.75}]'::jsonb, '2017', 'Exercice 1 - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Calculer l''espérance mathématique de $X$ en fonction de $p$.', '$$E(X) = (-800)\times\frac{p-1}{2(2p-1)} + 400\times\frac{p}{2p-1} + 800\times\frac{p-1}{2(2p-1)}$$

Les termes en $\pm800\times\frac{p-1}{2(2p-1)}$ s''annulent exactement :
$$E(X) = 400\times\frac{p}{2p-1} = \frac{400p}{2p-1}$$

Réponse : $E(X) = \dfrac{400p}{2p-1}$.', 'On applique directement la formule de l''espérance $E(X)=\sum x_iP(X=x_i)$ ; comme $P(X=800)=P(X=-800)$, les termes correspondants s''annulent automatiquement, ce qui simplifie beaucoup le calcul.

Ce que l''examinateur attend : le calcul complet de la somme, avec la simplification due à l''annulation des termes en $\pm800$.', '[{"criterion":"Mise en place de la somme et simplification par annulation","points":0.5},{"criterion":"Résultat exact E(X)=400p/(2p-1)","points":0.25}]'::jsonb, '2017', 'Exercice 1 - 3c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Calculer $p$ pour que l''espérance de gain du joueur soit de $240$ FCFA.', 'On résout $E(X)=240$ :
$$\frac{400p}{2p-1} = 240$$
$$400p = 240(2p-1) = 480p-240$$
$$400p-480p=-240 \implies -80p=-240 \implies p=3$$

Comme $p=3$ est bien un entier naturel supérieur à $1$, cette valeur est valide. Vérification : $E(X)=\frac{400\times3}{2\times3-1}=\frac{1200}{5}=240$ ✓.

Réponse : $p=3$.', 'On résout simplement l''équation $E(X)=240$ obtenue à la question précédente, puis on vérifie que la solution trouvée respecte bien la condition $p>1$, $p$ entier naturel, imposée par l''énoncé.

Ce que l''examinateur attend : la résolution correcte de l''équation et la vérification finale par substitution.', '[{"criterion":"Résolution de l''équation E(X)=240","points":0.5},{"criterion":"Vérification et validité de p=3","points":0.25}]'::jsonb, '2017', 'Exercice 1 - 3d', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', '$E$ est un espace vectoriel sur $\mathbb{R}$ dont une base est $B=(\vec{i},\vec{j},\vec{k})$. Soit $f$ l''endomorphisme de $E$ qui à tout vecteur $\vec{u}=x\vec{i}+y\vec{j}+z\vec{k}$ associe le vecteur $f(\vec{u}) = (-x-y+2z)\vec{i}+(2x-y+z)\vec{j}+(x-2y+3z)\vec{k}$. Déterminer la matrice de $f$ dans la base $B$.', 'La matrice de $f$ dans $B$ a pour colonnes les images des vecteurs de base, exprimées dans $B$.

$f(\vec{i})$ (i.e. $x=1,y=0,z=0$) $= -\vec{i}+2\vec{j}+\vec{k}$, coordonnées $(-1,2,1)$.

$f(\vec{j})$ (i.e. $x=0,y=1,z=0$) $= -\vec{i}-\vec{j}-2\vec{k}$, coordonnées $(-1,-1,-2)$.

$f(\vec{k})$ (i.e. $x=0,y=0,z=1$) $= 2\vec{i}+\vec{j}+3\vec{k}$, coordonnées $(2,1,3)$.

Réponse :
$$M(f) = \begin{pmatrix} -1 & -1 & 2 \\ 2 & -1 & 1 \\ 1 & -2 & 3 \end{pmatrix}$$', 'La matrice d''un endomorphisme dans une base s''obtient en calculant l''image de chaque vecteur de base et en plaçant ses coordonnées en colonne.

Ce que l''examinateur attend : le calcul explicite de $f(\vec{i})$, $f(\vec{j})$, $f(\vec{k})$, et leur bon placement en colonnes.', '[{"criterion":"Calcul de f(i), f(j), f(k)","points":0.75},{"criterion":"Matrice correctement présentée","points":0.25}]'::jsonb, '2017', 'Exercice 2 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Déterminer le noyau $\ker f$ de $f$ (on donnera une base de $\ker f$).', '$\vec{u}=(x,y,z)\in\ker f \iff f(\vec{u})=\vec{0}$, c''est-à-dire :
$$\begin{cases} -x-y+2z=0 \\ 2x-y+z=0 \\ x-2y+3z=0 \end{cases}$$

De la première équation : $x=2z-y$.

En substituant dans la deuxième : $2(2z-y)-y+z=0 \iff 5z=3y \iff y=\frac{5}{3}z$.

Alors $x=2z-\frac{5}{3}z=\frac{1}{3}z$.

On vérifie que la troisième équation est automatiquement satisfaite : $\frac{1}{3}z-2\left(\frac{5}{3}z\right)+3z = 0$ ✓ (le système est bien de rang 2).

En posant $z=3t$ pour éliminer les fractions : $x=t$, $y=5t$, $z=3t$.

Réponse : $\ker f = \{t(\vec{i}+5\vec{j}+3\vec{k})\ :\ t\in\mathbb{R}\}$, une droite vectorielle de base $\vec{w}=\vec{i}+5\vec{j}+3\vec{k}$.', 'Le noyau se trouve en résolvant le système linéaire homogène $f(\vec{u})=\vec{0}$ ; il faut vérifier que les trois équations sont compatibles et exprimer la solution avec un paramètre pour obtenir une base.

Piège à éviter : oublier de vérifier la compatibilité de la troisième équation, ou laisser la réponse sous forme fractionnaire au lieu de la simplifier en un vecteur à coordonnées entières.

Ce que l''examinateur attend : la résolution complète du système, et une base explicite de $\ker f$, à coordonnées entières.', '[{"criterion":"Résolution du système et vérification de compatibilité","points":0.75},{"criterion":"Base explicite de ker f","points":0.5}]'::jsonb, '2017', 'Exercice 2 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'En déduire la dimension de $\operatorname{Im} f$, image de $f$.', 'D''après le théorème du rang : $\dim(E) = \dim(\ker f) + \dim(\operatorname{Im} f)$.

Or $\dim(E)=3$ et $\dim(\ker f)=1$ (question précédente).

$$\dim(\operatorname{Im} f) = 3-1 = 2$$

Réponse : $\dim(\operatorname{Im} f) = 2$.', 'Le théorème du rang relie directement la dimension du noyau et celle de l''image à la dimension de l''espace de départ — une fois $\dim(\ker f)$ connue, $\dim(\operatorname{Im} f)$ s''en déduit par simple soustraction.

Ce que l''examinateur attend : la citation explicite du théorème du rang et le calcul $3-1=2$.', '[{"criterion":"Application du théorème du rang","points":0.5}]'::jsonb, '2017', 'Exercice 2 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', '$f$ est-elle bijective ? Justifier votre réponse.', '$\ker f$ n''est pas réduit à $\{\vec{0}\}$ (c''est une droite vectorielle, question 2.a), donc $f$ n''est pas injective.

En dimension finie, pour un endomorphisme, injectivité, surjectivité et bijectivité sont équivalentes. Comme $f$ n''est pas injective, elle n''est ni surjective ni bijective.

Réponse : $f$ n''est pas bijective, car $\ker f \ne \{\vec{0}\}$.', 'Pour un endomorphisme d''un espace de dimension finie, il suffit de vérifier une seule des trois propriétés (injectif, surjectif, bijectif) : les trois sont équivalentes. L''existence d''un noyau non trivial suffit donc à conclure directement.

Piège à éviter : chercher à démontrer séparément la non-surjectivité par un calcul supplémentaire — inutile grâce à l''équivalence en dimension finie.

Ce que l''examinateur attend : la justification via $\ker f\ne\{\vec 0\}$ et l''équivalence injectif/surjectif/bijectif en dimension finie.', '[{"criterion":"Justification via ker f ≠ {0} et l''équivalence en dimension finie","points":0.5}]'::jsonb, '2017', 'Exercice 2 - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'On considère les vecteurs $\vec{e_1}=2\vec{j}-\vec{k}$, $\vec{e_2}=3\vec{i}+\vec{j}+\vec{k}$, $\vec{e_3}=\vec{i}-\vec{k}$. Démontrer que la famille $B''=(\vec{e_1},\vec{e_2},\vec{e_3})$ est une base de l''espace vectoriel $E$.', 'Comme $\dim(E)=3$ et que $B''$ contient exactement $3$ vecteurs, il suffit de montrer que ces vecteurs sont linéairement indépendants.

Calculons le déterminant de leurs coordonnées dans $B$ (colonnes $\vec{e_1}=(0,2,-1)$, $\vec{e_2}=(3,1,1)$, $\vec{e_3}=(1,0,-1)$) :
$$\det = \begin{vmatrix} 0 & 3 & 1 \\ 2 & 1 & 0 \\ -1 & 1 & -1 \end{vmatrix} = 0\left(\begin{vmatrix}1&0\\1&-1\end{vmatrix}\right) - 3\left(\begin{vmatrix}2&0\\-1&-1\end{vmatrix}\right) + 1\left(\begin{vmatrix}2&1\\-1&1\end{vmatrix}\right)$$
$$= 0 - 3(-2-0) + 1(2+1) = 0+6+3 = 9$$

Comme $\det=9\ne0$, la famille $(\vec{e_1},\vec{e_2},\vec{e_3})$ est libre, donc c''est bien une base de $E$.

Réponse : $\det=9\ne0$, donc $B''$ est une base de $E$.', 'Dans un espace de dimension $n$, une famille de $n$ vecteurs est une base si et seulement si elle est libre, ce qui équivaut à un déterminant non nul — c''est le critère le plus rapide ici.

Ce que l''examinateur attend : le calcul complet du déterminant et la conclusion via le critère « déterminant non nul $\iff$ base ».', '[{"criterion":"Calcul correct du déterminant (=9)","points":0.75},{"criterion":"Conclusion : famille libre donc base","points":0.25}]'::jsonb, '2017', 'Exercice 2 - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Déterminer la matrice de $f$ dans la base $B''$.', 'Calculons d''abord les images des vecteurs de $B''$, exprimées dans $B$ :

$f(\vec{e_1})$, avec $\vec{e_1}=(0,2,-1)$ : $(-4,-3,-7)$.

$f(\vec{e_2})$, avec $\vec{e_2}=(3,1,1)$ : $(-2,6,4)$.

$f(\vec{e_3})$, avec $\vec{e_3}=(1,0,-1)$ : $(-3,1,-2)$.

Il faut exprimer chacun de ces vecteurs dans la base $B''$ elle-même, en résolvant $f(\vec{e_i})=a\vec{e_1}+b\vec{e_2}+c\vec{e_3}$ pour chaque $i$ (système linéaire à résoudre pour chaque colonne).

Pour $f(\vec{e_1})=(-4,-3,-7)$ : $3b+c=-4$, $2a+b=-3$, $-a+b-c=-7$, ce qui donne $a=-\frac{1}{9}$, $b=-\frac{25}{9}$, $c=\frac{13}{3}$.

Pour $f(\vec{e_2})=(-2,6,4)$ : $3b+c=-2$, $2a+b=6$, $-a+b-c=4$, ce qui donne $a=\frac{22}{9}$, $b=\frac{10}{9}$, $c=-\frac{16}{3}$.

Pour $f(\vec{e_3})=(-3,1,-2)$ : on vérifie directement que $1\cdot\vec{e_1}+(-1)\cdot\vec{e_2}+0\cdot\vec{e_3} = (0,2,-1)+(-3,-1,-1) = (-3,1,-2)$ ✓, donc $a=1,b=-1,c=0$.

Réponse :
$$M_{B''}(f) = \begin{pmatrix} -\frac{1}{9} & \frac{22}{9} & 1 \\ -\frac{25}{9} & \frac{10}{9} & -1 \\ \frac{13}{3} & -\frac{16}{3} & 0 \end{pmatrix}$$', 'Changer la matrice d''un endomorphisme de base demande de calculer l''image de chaque nouveau vecteur de base (dans les coordonnées de départ), puis de réexprimer chacune de ces images dans la nouvelle base elle-même — ce qui revient ici à résoudre un système linéaire pour chaque colonne.

Piège à éviter : s''arrêter aux coordonnées de $f(\vec{e_i})$ dans l''ancienne base $B$ en oubliant de les reconvertir dans $B''$ — la matrice demandée est bien celle dans $B''$, pas dans $B$.

Ce que l''examinateur attend : le calcul de $f(\vec{e_1})$, $f(\vec{e_2})$, $f(\vec{e_3})$, puis leur expression correcte dans la base $B''$ (colonne par colonne).', '[{"criterion":"Calcul de f(e1), f(e2), f(e3) dans la base B","points":0.5},{"criterion":"Expression correcte des trois colonnes dans B''","points":1},{"criterion":"Matrice finale correctement présentée","points":0.5}]'::jsonb, '2017', 'Exercice 2 - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $ABCD$ un carré de sens direct et de centre $I$. Soient $r$ la rotation de centre $A$ et d''angle $\frac{\pi}{2}$, $t$ la translation de vecteur $\overrightarrow{AC}$, et $S$ la symétrie centrale de centre $C$ (c''est-à-dire $r=R\left(A,\frac{\pi}{2}\right)$, $t=t_{\overrightarrow{AC}}$ et $S=S_C$). Déterminer la droite $(\Delta)$ telle que $r = S_\Delta \circ S_{(AD)}$.', 'On sait que $S_{(AD)}$ suivi de $S_\Delta$ (deux réflexions d''axes passant par $A$) donne une rotation de centre $A$ dont l''angle est le double de l''angle orienté entre $(AD)$ et $(\Delta)$.

En plaçant le carré dans un repère avec $A(0,0)$, $B(1,0)$, $C(1,1)$, $D(0,1)$ (sens direct), la droite $(AD)$ est l''axe des ordonnées et $S_{(AD)}$ envoie $(x,y)$ sur $(-x,y)$.

Comme $r=S_\Delta\circ S_{(AD)}$, on a $S_\Delta = r\circ S_{(AD)}$ (la réflexion étant involutive). En composant : $S_{(AD)}(x,y)=(-x,y)$, puis $r(-x,y)=(-y,-x)$ (rotation de $+90°$ autour de $A$). Donc $S_\Delta(x,y)=(-y,-x)$.

Cette application est la réflexion d''axe la droite d''équation $y=-x$ passant par $A$, c''est-à-dire la droite passant par $A$ et parallèle à la diagonale $(BD)$ (perpendiculaire à $(AC)$ en $A$).

Réponse : $(\Delta)$ est la droite passant par $A$, parallèle à $(BD)$ (perpendiculaire à $(AC)$ en $A$).', 'Toute rotation de centre $A$ peut se décomposer comme la composée de deux réflexions d''axes passant par $A$ ; ici on détermine le second axe en calculant explicitement l''application $S_\Delta = r\circ S_{(AD)}$ dans un repère adapté au carré, puis en identifiant la droite invariante de cette application.

Piège à éviter : confondre l''ordre de composition — $S_\Delta\circ S_{(AD)}$ signifie appliquer $S_{(AD)}$ en premier, puis $S_\Delta$.

Ce que l''examinateur attend : le calcul explicite de $S_\Delta = r\circ S_{(AD)}$ et l''identification correcte de la droite $(\Delta)$ (parallèle à $(BD)$, passant par $A$).', '[{"criterion":"Mise en place du repère et calcul de S_Δ = r∘S_(AD)","points":0.75},{"criterion":"Identification correcte de (Δ) parallèle à (BD)","points":0.5}]'::jsonb, '2017', 'Exercice 3 - A - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Donner la nature et les éléments caractéristiques de $t\circ r$.', '$t\circ r$ est la composée d''une rotation d''angle $\frac{\pi}{2}$ (non nul) et d''une translation : c''est donc encore une rotation de même angle $\frac{\pi}{2}$, mais de centre différent.

En coordonnées ($A(0,0)$, $C(1,1)$) : $r(x,y)=(-y,x)$, et $t$ ajoute le vecteur $\overrightarrow{AC}=(1,1)$. Donc $(t\circ r)(x,y) = (-y+1,\,x+1)$.

Le centre $\Omega$ de cette rotation est son unique point fixe : $\Omega_x=-\Omega_y+1$ et $\Omega_y=\Omega_x+1$, ce qui donne $\Omega_y=1$ puis $\Omega_x=0$, soit $\Omega=(0,1)=D$.

On vérifie : $(t\circ r)(A) = (-0+1,0+1)=(1,1)=C$, cohérent avec une rotation de centre $D$ envoyant $A$ sur $C$ (puisque $DA=DC$ et l''angle $\widehat{ADC}=\frac{\pi}{2}$ dans le carré).

Réponse : $t\circ r$ est la rotation de centre $D$ et d''angle $\frac{\pi}{2}$.', 'La composée d''une rotation d''angle $\theta\ne0$ avec une translation est toujours une rotation de même angle $\theta$, mais de centre différent — c''est un résultat classique qu''il suffit d''appliquer, en retrouvant le nouveau centre comme point fixe de la composée.

Ce que l''examinateur attend : la reconnaissance que l''angle reste $\frac{\pi}{2}$, et la détermination correcte du nouveau centre $D$.', '[{"criterion":"Reconnaissance de la nature (rotation, angle π/2 inchangé)","points":0.5},{"criterion":"Détermination du centre D","points":0.5}]'::jsonb, '2017', 'Exercice 3 - A - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Déterminer $(S\circ t\circ r)(A)$ et $(S\circ t\circ r)(D)$.', 'D''après la question précédente, $(t\circ r)(A)=C$. Comme $S=S_C$ fixe son propre centre : $(S\circ t\circ r)(A) = S(C) = C$.

D''autre part, $t\circ r$ est la rotation de centre $D$ (question précédente), donc elle fixe $D$ : $(t\circ r)(D)=D$. Ainsi $(S\circ t\circ r)(D) = S(D)$, le symétrique de $D$ par rapport à $C$ — c''est-à-dire le point $D''$ tel que $C$ soit le milieu de $[DD'']$.

Réponse : $(S\circ t\circ r)(A)=C$ ; $(S\circ t\circ r)(D)$ est le symétrique de $D$ par rapport à $C$ (le point $D''$ tel que $C=\text{milieu}[DD'']$).', 'On utilise deux propriétés simples : une symétrie centrale fixe son propre centre, et une rotation fixe son propre centre — ce qui permet de calculer ces images sans repasser par des coordonnées.

Ce que l''examinateur attend : l''utilisation de $(t\circ r)(A)=C$ et $(t\circ r)(D)=D$ (établis à la question précédente), puis l''application de $S$ à chacune de ces images.', '[{"criterion":"(S∘t∘r)(A)=C correctement justifié","points":0.5},{"criterion":"(S∘t∘r)(D) correctement identifié comme symétrique de D par rapport à C","points":0.5}]'::jsonb, '2017', 'Exercice 3 - A - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Donner la nature et les éléments caractéristiques de $S\circ t\circ r$.', '$t\circ r$ est la rotation de centre $D$ et d''angle $\frac{\pi}{2}$ ; $S=S_C$ est la symétrie centrale de centre $C$, c''est-à-dire la rotation de centre $C$ et d''angle $\pi$.

La composée de deux rotations d''angles $\frac{\pi}{2}$ et $\pi$ est une rotation d''angle $\frac{\pi}{2}+\pi=\frac{3\pi}{2}\equiv-\frac{\pi}{2}\ [2\pi]$.

En coordonnées ($A(0,0)$, $C(1,1)$, $D(0,1)$) : $(t\circ r)(x,y)=(-y+1,x+1)$ et $S(x,y)=(2,2)-(x,y)$. Donc $(S\circ t\circ r)(x,y) = (2,2)-(-y+1,x+1) = (1+y,\ 1-x)$.

Le centre $\Omega''$ est son point fixe : $\Omega''_x=1+\Omega''_y$ et $\Omega''_y=1-\Omega''_x$, ce qui donne $\Omega''_y=0$ puis $\Omega''_x=1$, soit $\Omega''=(1,0)=B$.

Vérification : $(S\circ t\circ r)(A)$ via cette formule $=(1+0,1-0)=(1,1)=C$, cohérent avec la question précédente.

Réponse : $S\circ t\circ r$ est la rotation de centre $B$ et d''angle $-\frac{\pi}{2}$.', 'On combine les angles des deux rotations composées ($\frac{\pi}{2}$ pour $t\circ r$, $\pi$ pour la symétrie centrale $S$, vue comme une rotation d''angle $\pi$), puis on retrouve le nouveau centre comme point fixe de la composée globale.

Ce que l''examinateur attend : le calcul correct de l''angle résultant ($-\frac{\pi}{2}$) et la détermination du centre $B$, avec une vérification cohérente sur un point connu.', '[{"criterion":"Angle résultant correctement déterminé (-π/2)","points":0.5},{"criterion":"Centre B correctement déterminé et vérifié","points":0.5}]'::jsonb, '2017', 'Exercice 3 - A - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $M$ un point de la droite $(DC)$, $N$ le point d''intersection de la droite $(BC)$ avec la perpendiculaire à la droite $(AM)$ passant par $A$, et $J$ le milieu du segment $[MN]$. Soit $r''$ la rotation de centre $A$ telle que $B=r''(D)$. Montrer que $N=r''(M)$. En déduire la nature du triangle $AMN$.', 'Dans le repère $A(0,0)$, $B(1,0)$, $C(1,1)$, $D(0,1)$ : comme $\overrightarrow{AD}=(0,1)$ (angle $90°$) doit être envoyé sur $\overrightarrow{AB}=(1,0)$ (angle $0°$) par $r''$, $r''$ est la rotation de centre $A$ et d''angle $-\frac{\pi}{2}$ : $r''(x,y)=(y,-x)$.

La droite $(DC)$ est la droite $y=1$ : $M=(m,1)$ pour un réel $m$. La droite $(AM)$ a pour direction $(m,1)$ ; sa perpendiculaire par $A$ a pour direction $(-1,m)$, soit $(x,y)=t(-1,m)$.

La droite $(BC)$ est la droite $x=1$. L''intersection avec la perpendiculaire donne $-t=1\iff t=-1$, puis $y=tm=-m$ : le point d''intersection est $(1,-m)$.

Or $r''(M) = r''(m,1) = (1,-m)$ (en appliquant $r''(x,y)=(y,-x)$) : on retrouve exactement les coordonnées de $N$.

Comme $r''$ est une rotation de centre $A$ et d''angle $\frac{\pi}{2}$ en valeur absolue, et que $N=r''(M)$, on a $AN=AM$ et l''angle $\widehat{MAN}=\frac{\pi}{2}$ : le triangle $AMN$ est donc rectangle isocèle en $A$.

Réponse : $N=r''(M)$ ; le triangle $AMN$ est rectangle isocèle en $A$.', 'On identifie d''abord précisément $r''$ (rotation de $-\frac{\pi}{2}$ envoyant $D$ sur $B$), puis on calcule les coordonnées de $N$ directement à partir de sa définition géométrique, pour constater qu''elles coïncident exactement avec $r''(M)$ — ce qui donne immédiatement $AN=AM$ et un angle droit en $A$ (propriétés conservées par une rotation).

Ce que l''examinateur attend : l''identification de $r''$, le calcul de $N$ à partir de sa construction, l''égalité $N=r''(M)$, et la conclusion sur la nature du triangle (rectangle isocèle en $A$).', '[{"criterion":"Identification de r'' et calcul des coordonnées de N","points":0.5},{"criterion":"Égalité N=r''(M) établie","points":0.25},{"criterion":"Nature du triangle AMN (rectangle isocèle en A)","points":0.25}]'::jsonb, '2017', 'Exercice 3 - B - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Soit $S''$ la similitude directe de centre $A$ telle que $I=S''(D)$ ($I$ étant le centre du carré $ABCD$). Déterminer l''image de $C$ par $S''$.', 'En coordonnées, $I=\left(\frac{1}{2},\frac{1}{2}\right)$. Le rapport de $S''$ est $k=\dfrac{AI}{AD}=\dfrac{\sqrt{2}/2}{1}=\dfrac{\sqrt{2}}{2}$, et son angle est celui entre $\overrightarrow{AD}$ (à $90°$) et $\overrightarrow{AI}$ (à $45°$), soit $-45°=-\frac{\pi}{4}$.

En identifiant le plan à $\mathbb{C}$ avec $A$ à l''origine, $S''$ correspond à $z\mapsto k\,e^{-i\pi/4}z = \left(\frac{1}{2}-\frac{i}{2}\right)z$.

Vérification sur $D$ : $D\to i$, $S''(D) = \left(\frac{1}{2}-\frac{i}{2}\right)i = \frac{i}{2}+\frac{1}{2} = \frac{1}{2}+\frac{i}{2}$, soit $I$ ✓.

Pour $C\to1+i$ : $S''(C) = \left(\frac{1}{2}-\frac{i}{2}\right)(1+i) = \frac{1}{2}+\frac{i}{2}-\frac{i}{2}-\frac{i^2}{2} = \frac{1}{2}+\frac{1}{2} = 1$, soit le point $(1,0)=B$.

Réponse : $S''(C) = B$.', 'On détermine d''abord le rapport et l''angle de la similitude à partir de la condition $S''(D)=I$ (rapport des longueurs $AI/AD$, angle entre $\overrightarrow{AD}$ et $\overrightarrow{AI}$), puis on applique cette même transformation à $C$.

Ce que l''examinateur attend : la détermination correcte du rapport ($\frac{\sqrt2}{2}$) et de l''angle ($-\frac{\pi}{4}$) de $S''$, puis le calcul de $S''(C)=B$.', '[{"criterion":"Détermination du rapport et de l''angle de S''","points":0.5},{"criterion":"Calcul de S''(C)=B","points":0.5}]'::jsonb, '2017', 'Exercice 3 - B - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Démontrer que $J=S''(M)$.', 'Avec $M=(m,1)$ et $N=(1,-m)$ (question B.1), le milieu $J$ de $[MN]$ a pour coordonnées :
$$J = \left(\frac{m+1}{2},\ \frac{1-m}{2}\right)$$

En identifiant le plan à $\mathbb{C}$, $M$ correspond à $m+i$. Avec $S''(z)=\left(\frac{1}{2}-\frac{i}{2}\right)z$ (question précédente) :
$$S''(M) = \left(\frac{1}{2}-\frac{i}{2}\right)(m+i) = \frac{m}{2}+\frac{i}{2}-\frac{im}{2}-\frac{i^2}{2} = \frac{m+1}{2} + i\cdot\frac{1-m}{2}$$

Ce qui correspond exactement au point $\left(\frac{m+1}{2},\frac{1-m}{2}\right) = J$.

Réponse : $J = S''(M)$, pour tout point $M$ de $(DC)$.', 'On calcule les coordonnées du milieu $J=\text{milieu}[MN]$ à partir des expressions déjà trouvées pour $M$ et $N$, puis on vérifie qu''elles coïncident exactement avec l''image de $M$ par $S''$, calculée via la formule complexe établie à la question précédente.

Ce que l''examinateur attend : le calcul des coordonnées de $J$, le calcul de $S''(M)$, et la constatation de leur égalité.', '[{"criterion":"Calcul des coordonnées de J","points":0.25},{"criterion":"Calcul de S''(M) et égalité avec J","points":0.5}]'::jsonb, '2017', 'Exercice 3 - B - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Déduire le lieu géométrique des points $J$, lorsque $M$ décrit la droite $(DC)$.', 'D''après la question précédente, $J=S''(M)$ pour tout $M$ de $(DC)$. Comme $S''$ est une similitude (donc transforme toute droite en une droite), le lieu des points $J$ est l''image de la droite $(DC)$ par $S''$, c''est-à-dire la droite passant par $S''(D)$ et $S''(C)$.

Or $S''(D)=I$ (donné) et $S''(C)=B$ (question B.2.a). Le lieu des points $J$ est donc la droite $(IB)$, c''est-à-dire la diagonale $(BD)$ du carré (puisque $I$, centre du carré, appartient à la diagonale $(BD)$).

Réponse : le lieu géométrique des points $J$ est la droite $(BD)$.', 'Une similitude transforme toujours une droite en une droite ; il suffit donc de connaître les images de deux points de $(DC)$ par $S''$ (ici $D$ et $C$) pour identifier la droite image tout entière.

Ce que l''examinateur attend : l''argument que $S''$ transforme une droite en droite, et l''identification du lieu comme la droite $(BD)$ via les images déjà connues de $D$ et $C$.', '[{"criterion":"Argument : image d''une droite par une similitude est une droite","points":0.25},{"criterion":"Identification du lieu comme la droite (BD)","points":0.5}]'::jsonb, '2017', 'Exercice 3 - B - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Donner la nature de l''ensemble $(T)$ des points $M$ du plan tels que $d(M,C) = \dfrac{1}{\sqrt{2}}\,d\big(M,(BD)\big)$.', 'La relation $d(M,C) = \dfrac{1}{\sqrt2}\,d(M,(BD))$ s''écrit $d(M,C) = e\times d(M,(BD))$ avec $e=\dfrac{1}{\sqrt2}=\dfrac{\sqrt2}{2}$.

Or la caractérisation bifocale/foyer-directrice d''une conique est exactement : un point $M$ appartient à une conique de foyer $F$, de directrice $\delta$ et d''excentricité $e$ si et seulement si $d(M,F)=e\times d(M,\delta)$.

Ici, $F=C$, $\delta=(BD)$, et $e=\frac{\sqrt2}{2}\approx0{,}707 < 1$.

Comme $e<1$, $(T)$ est une ellipse.

Réponse : $(T)$ est une ellipse, de foyer $C$, de directrice $(BD)$ et d''excentricité $e=\dfrac{\sqrt2}{2}$.', 'La définition foyer-directrice d''une conique ($d(M,F)=e\,d(M,\delta)$) permet de reconnaître directement la nature de $(T)$ à partir de la valeur de $e$ : ellipse si $e<1$, parabole si $e=1$, hyperbole si $e>1$.

Piège à éviter : oublier de préciser le foyer et la directrice en plus de la nature — la question B.3.b demandera de les retrouver pour l''image $(T'')$, il faut donc bien les avoir identifiés ici.

Ce que l''examinateur attend : la reconnaissance de la définition foyer-directrice, le calcul de $e=\frac{\sqrt2}{2}<1$, et la conclusion « ellipse ».', '[{"criterion":"Reconnaissance de la définition foyer-directrice","points":0.5},{"criterion":"Conclusion : ellipse, avec foyer C et directrice (BD) identifiés","points":0.5}]'::jsonb, '2017', 'Exercice 3 - B - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Donner la nature, l''excentricité, une directrice et un foyer de l''image $(T'')$ de $(T)$ par $S''$.', 'Une similitude conserve la nature d''une conique et son excentricité (elle ne change que l''échelle et l''orientation) : $(T'')$ est donc encore une ellipse, d''excentricité $e=\dfrac{\sqrt2}{2}$.

Le nouveau foyer est l''image du foyer de $(T)$ par $S''$ : $S''(C)=B$ (question B.2.a).

La nouvelle directrice est l''image de la directrice $(BD)$ par $S''$. En coordonnées complexes : $B\to1$, $S''(B)=\left(\frac12-\frac{i}2\right)(1)=\frac12-\frac{i}2$, soit $(0{,}5;-0{,}5)$ ; et $D\to i$, $S''(D)=I=(0{,}5;0{,}5)$. Les deux images ont la même abscisse $x=0{,}5$ : la droite image est donc la droite verticale $x=0{,}5$, c''est-à-dire la médiatrice commune de $[AB]$ et $[DC]$.

Réponse : $(T'')$ est une ellipse de foyer $B$, d''excentricité $\dfrac{\sqrt2}{2}$, et de directrice la médiatrice de $[AB]$ (et de $[DC]$).', 'Une similitude préserve toujours la nature et l''excentricité d''une conique (ce sont des propriétés « de forme », invariantes par changement d''échelle/rotation) ; seuls le foyer et la directrice se déplacent, en étant simplement les images par $S''$ du foyer et de la directrice d''origine.

Ce que l''examinateur attend : l''argument de conservation de la nature/excentricité par une similitude, le foyer $B=S''(C)$ déjà connu, et l''identification de la nouvelle directrice comme image de $(BD)$ par $S''$.', '[{"criterion":"Argument de conservation de la nature et de l''excentricité","points":0.5},{"criterion":"Foyer B correctement identifié","points":0.25},{"criterion":"Directrice image correctement déterminée","points":0.5}]'::jsonb, '2017', 'Exercice 3 - B - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'On se place dans l''espace $(\varepsilon)$ muni d''un repère orthonormé direct $(O;\vec{u},\vec{v},\vec{w})$. On considère les points $A(1;6;4)$, $B(2;5;3)$, $C(3;1;1)$ et $D(8;1;7)$. On pose $\vec{N}=\overrightarrow{AB}\wedge\overrightarrow{AC}$. Déterminer les coordonnées de $\vec{N}$. En déduire que les points $A$, $B$, $C$ ne sont pas alignés.', '$\overrightarrow{AB} = B-A = (1,-1,-1)$ et $\overrightarrow{AC} = C-A = (2,-5,-3)$.

$$\vec{N} = \overrightarrow{AB}\wedge\overrightarrow{AC} = \begin{vmatrix}\vec{u}&\vec{v}&\vec{w}\\1&-1&-1\\2&-5&-3\end{vmatrix}$$

$N_u = (-1)(-3)-(-1)(-5) = 3-5=-2$

$N_v = -[(1)(-3)-(-1)(2)] = -(-3+2) = 1$

$N_w = (1)(-5)-(-1)(2) = -5+2=-3$

Donc $\vec{N}=(-2,1,-3)$.

Comme $\vec{N}\ne\vec{0}$, les vecteurs $\overrightarrow{AB}$ et $\overrightarrow{AC}$ ne sont pas colinéaires (un produit vectoriel n''est nul que si les deux vecteurs sont colinéaires), donc $A$, $B$, $C$ ne sont pas alignés.

Réponse : $\vec{N}=(-2;1;-3)$ ; comme $\vec{N}\ne\vec{0}$, $A$, $B$, $C$ ne sont pas alignés.', 'Le produit vectoriel de deux vecteurs est nul si et seulement si ces vecteurs sont colinéaires ; ici $\vec N\ne\vec 0$ prouve donc directement que $\overrightarrow{AB}$ et $\overrightarrow{AC}$ ne le sont pas, donc que $A,B,C$ forment un vrai triangle.

Ce que l''examinateur attend : le calcul correct du produit vectoriel (les trois composantes) et l''argument reliant $\vec N\ne\vec0$ au non-alignement.', '[{"criterion":"Calcul correct de N=(-2;1;-3)","points":0.5},{"criterion":"Argument du non-alignement via N≠0","points":0.25}]'::jsonb, '2017', 'Problème - A - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Déterminer l''aire du triangle $ABC$.', 'L''aire d''un triangle $ABC$ se calcule par $\text{Aire} = \dfrac{1}{2}\|\overrightarrow{AB}\wedge\overrightarrow{AC}\| = \dfrac{1}{2}\|\vec N\|$.

$$\|\vec N\| = \sqrt{(-2)^2+1^2+(-3)^2} = \sqrt{4+1+9}=\sqrt{14}$$

$$\text{Aire}(ABC) = \frac{\sqrt{14}}{2}$$

Réponse : l''aire du triangle $ABC$ est $\dfrac{\sqrt{14}}{2}$ (unités d''aire).', 'La norme du produit vectoriel $\overrightarrow{AB}\wedge\overrightarrow{AC}$ est égale à l''aire du parallélogramme construit sur ces deux vecteurs ; l''aire du triangle $ABC$ en est donc exactement la moitié.

Ce que l''examinateur attend : le calcul de $\|\vec N\|=\sqrt{14}$ et la division par $2$.', '[{"criterion":"Calcul de ‖N‖=√14 et de l''aire √14/2","points":0.5}]'::jsonb, '2017', 'Problème - A - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Soit $(\Delta)$ la droite passant par le point $D$ et de vecteur directeur $\vec{u}(2;-1;3)$. Démontrer que la droite $(\Delta)$ est orthogonale au plan $(ABC)$.', 'Une droite est orthogonale à un plan si et seulement si son vecteur directeur est colinéaire au vecteur normal du plan.

Le vecteur $\vec N=(-2,1,-3)$ (question 1.a) est normal au plan $(ABC)$ (par définition du produit vectoriel $\overrightarrow{AB}\wedge\overrightarrow{AC}$).

Or $\vec{u}=(2,-1,3) = -1\times(-2,1,-3) = -\vec N$ : $\vec u$ et $\vec N$ sont donc colinéaires.

Réponse : $\vec{u}=-\vec N$, donc $(\Delta)$ est orthogonale au plan $(ABC)$.', 'Le produit vectoriel de deux vecteurs directeurs d''un plan est, par construction, normal à ce plan ; il suffit donc de comparer le vecteur directeur de $(\Delta)$ à ce vecteur normal déjà calculé.

Ce que l''examinateur attend : la reconnaissance que $\vec N$ est normal à $(ABC)$, et la vérification $\vec u=-\vec N$.', '[{"criterion":"Reconnaissance de N comme normal à (ABC) et vérification u=-N","points":0.5}]'::jsonb, '2017', 'Problème - A - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'En déduire une équation cartésienne du plan $(ABC)$.', 'Le plan $(ABC)$ a pour vecteur normal $\vec N=(-2,1,-3)$ et passe par $A(1,6,4)$. Son équation cartésienne est donc de la forme $-2x+y-3z+d=0$, où $d$ se détermine en substituant $A$ :
$$-2(1)+6-3(4)+d=0 \iff -2+6-12+d=0 \iff d=8$$

En multipliant par $-1$ pour un affichage plus lisible : $2x-y+3z-8=0$.

Vérification avec $B(2,5,3)$ : $2(2)-5+3(3)-8=4-5+9-8=0$ ✓. Avec $C(3,1,1)$ : $2(3)-1+3(1)-8=6-1+3-8=0$ ✓.

Réponse : $(ABC) : 2x-y+3z-8=0$.', 'Une équation de plan de vecteur normal $(a,b,c)$ s''écrit $ax+by+cz+d=0$ ; on détermine $d$ en imposant qu''un point connu du plan (ici $A$) vérifie l''équation, puis on vérifie avec les deux autres points.

Ce que l''examinateur attend : la mise en place de l''équation à partir de $\vec N$, le calcul de $d$, et la vérification avec $B$ et $C$.', '[{"criterion":"Équation correcte 2x-y+3z-8=0","points":0.5},{"criterion":"Vérification avec B et C","points":0.25}]'::jsonb, '2017', 'Problème - A - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Déterminer une représentation paramétrique de la droite $(\Delta)$.', '$(\Delta)$ passe par $D(8,1,7)$ et a pour vecteur directeur $\vec u(2,-1,3)$.

Réponse :
$$(\Delta):\ \begin{cases} x=8+2t \\ y=1-t \\ z=7+3t \end{cases},\quad t\in\mathbb{R}$$', 'Une représentation paramétrique d''une droite s''obtient directement à partir d''un point de la droite et de son vecteur directeur : $M(x,y,z)\in(\Delta) \iff \overrightarrow{DM}=t\vec u$.

Ce que l''examinateur attend : la représentation paramétrique correcte, avec le point D et le vecteur u correctement utilisés.', '[{"criterion":"Représentation paramétrique correcte","points":0.5}]'::jsonb, '2017', 'Problème - A - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Déterminer les coordonnées du point $K$, intersection de la droite $(\Delta)$ et du plan $(ABC)$.', 'On substitue la représentation paramétrique de $(\Delta)$ dans l''équation de $(ABC)$ :
$$2(8+2t)-(1-t)+3(7+3t)-8=0$$
$$16+4t-1+t+21+9t-8=0$$
$$28+14t=0 \implies t=-2$$

En remplaçant $t=-2$ dans la représentation paramétrique :
$$x=8+2(-2)=4,\quad y=1-(-2)=3,\quad z=7+3(-2)=1$$

Réponse : $K=(4;3;1)$.', 'On cherche la valeur du paramètre $t$ pour laquelle le point de $(\Delta)$ appartient au plan, en substituant les coordonnées paramétriques dans l''équation cartésienne du plan, puis on revient aux coordonnées de $K$.

Ce que l''examinateur attend : la substitution correcte, la résolution en $t=-2$, et les coordonnées finales de $K$.', '[{"criterion":"Résolution correcte en t=-2 et coordonnées de K","points":0.5}]'::jsonb, '2017', 'Problème - A - 2d', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'On note $H$ le projeté orthogonal de $D$ sur le plan $(ABC)$. On pose $\overrightarrow{DH}=\alpha\vec N$. Calculer $\alpha$.', 'Comme $(\Delta)$ passe par $D$ et est orthogonale au plan $(ABC)$ (question 2.a), son point d''intersection avec le plan est précisément le projeté orthogonal $H$ de $D$ : donc $H=K=(4,3,1)$.

$$\overrightarrow{DH} = H-D = (4-8,\ 3-1,\ 1-7) = (-4,2,-6)$$

On cherche $\alpha$ tel que $\overrightarrow{DH}=\alpha\vec N$ avec $\vec N=(-2,1,-3)$ :
$$-2\alpha=-4 \implies \alpha=2\quad(\text{cohérent avec } \alpha=2 \text{ et } -3\alpha=-6\implies\alpha=2)$$

Réponse : $\alpha=2$.', 'Le point $H$ n''est autre que $K$, puisque $(\Delta)$ passe par $D$ perpendiculairement au plan : son intersection avec le plan est exactement le pied de la perpendiculaire depuis $D$. Il suffit ensuite de résoudre l''équation vectorielle $\overrightarrow{DH}=\alpha\vec N$ composante par composante.

Ce que l''examinateur attend : la reconnaissance H=K, et le calcul cohérent de α=2 sur les trois composantes.', '[{"criterion":"Reconnaissance H=K et calcul de DH","points":0.5},{"criterion":"Valeur α=2 avec cohérence vérifiée","points":0.25}]'::jsonb, '2017', 'Problème - A - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'En déduire la distance $DH$ et le volume du tétraèdre $(ABCD)$.', '$$DH = \|\overrightarrow{DH}\| = |\alpha|\times\|\vec N\| = 2\times\sqrt{14} = 2\sqrt{14}$$

Le volume du tétraèdre $ABCD$ est $V=\dfrac{1}{3}\times\text{Aire}(ABC)\times DH$ (base $ABC$, hauteur $DH$ puisque $H$ est le pied de la perpendiculaire depuis $D$) :
$$V = \frac{1}{3}\times\frac{\sqrt{14}}{2}\times2\sqrt{14} = \frac{1}{3}\times14 = \frac{14}{3}$$

Réponse : $DH=2\sqrt{14}$ ; le volume du tétraèdre $ABCD$ est $\dfrac{14}{3}$ (unités de volume).', 'La distance $DH$ s''obtient directement à partir de $\alpha$ et de $\|\vec N\|$ déjà connus ; le volume d''un tétraèdre est le tiers du produit de l''aire d''une face par la hauteur relative à cette face, ici précisément $DH$ puisque $H$ est le pied de la hauteur issue de $D$.

Ce que l''examinateur attend : le calcul de $DH=2\sqrt{14}$, puis l''application correcte de la formule du volume du tétraèdre.', '[{"criterion":"Calcul de DH=2√14","points":0.25},{"criterion":"Calcul du volume V=14/3","points":0.5}]'::jsonb, '2017', 'Problème - A - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Soit $(P_1)$ le plan d''équation $x+y+z-6=0$ et $(P_2)$ le plan d''équation $x+4y-7=0$. Démontrer que les plans $(P_1)$ et $(P_2)$ sont sécants.', 'Deux plans sont sécants si et seulement si leurs vecteurs normaux ne sont pas colinéaires.

$\vec{n_1}=(1,1,1)$ pour $(P_1)$, $\vec{n_2}=(1,4,0)$ pour $(P_2)$.

Si ces vecteurs étaient colinéaires, il existerait $k$ tel que $\vec{n_2}=k\vec{n_1}$ ; la première composante donnerait $k=1$, mais alors la troisième composante de $k\vec{n_1}$ serait $1\ne0$, ce qui contredit $\vec{n_2}=(1,4,0)$.

Donc $\vec{n_1}$ et $\vec{n_2}$ ne sont pas colinéaires : les plans sont sécants (leur intersection est une droite).

Réponse : $\vec{n_1}$ et $\vec{n_2}$ ne sont pas colinéaires, donc $(P_1)$ et $(P_2)$ sont sécants.', 'Deux plans sont soit parallèles (normaux colinéaires), soit sécants (normaux non colinéaires) ; il suffit donc de comparer les deux vecteurs normaux composante par composante pour trancher.

Ce que l''examinateur attend : l''identification des deux normales et la démonstration rigoureuse qu''elles ne sont pas colinéaires.', '[{"criterion":"Identification des normales et preuve de non-colinéarité","points":0.5}]'::jsonb, '2017', 'Problème - A - 4a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Vérifier que la droite $(d)$, intersection des plans $(P_1)$ et $(P_2)$, a pour représentation paramétrique $\begin{cases} x=-4t-1 \\ y=t+2 \\ z=3t+5 \end{cases},\ t\in\mathbb{R}$.', 'Il suffit de vérifier que cette représentation satisfait simultanément les deux équations de plan, pour tout $t$.

Dans $(P_1)$ : $x+y+z-6 = (-4t-1)+(t+2)+(3t+5)-6 = (-4t+t+3t)+(-1+2+5-6) = 0t+0=0$ ✓ pour tout $t$.

Dans $(P_2)$ : $x+4y-7 = (-4t-1)+4(t+2)-7 = -4t-1+4t+8-7 = 0t+0=0$ ✓ pour tout $t$.

Les deux équations sont vérifiées identiquement, donc cette représentation paramétrique décrit bien la droite $(d)$.

Réponse : la représentation donnée vérifie identiquement $(P_1)$ et $(P_2)$, elle est donc bien correcte.', 'Pour vérifier qu''une représentation paramétrique décrit bien la droite d''intersection de deux plans, il suffit de substituer les coordonnées paramétriques dans chacune des deux équations et de constater qu''elles sont satisfaites pour toute valeur du paramètre.

Ce que l''examinateur attend : la substitution complète dans les deux équations, avec l''annulation du coefficient de $t$ dans chaque cas.', '[{"criterion":"Vérification complète dans (P1) et (P2)","points":0.5}]'::jsonb, '2017', 'Problème - A - 4b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'La droite $(d)$ et le plan $(ABC)$ sont-ils sécants ou parallèles ?', 'Le vecteur directeur de $(d)$ est $\vec v=(-4,1,3)$ (lu sur la représentation paramétrique), et le vecteur normal de $(ABC)$ est $\vec N=(2,-1,3)$ (question 2.b, forme équivalente à $-\vec N$ trouvé en 1.a).

$(d)$ est parallèle à $(ABC)$ si et seulement si $\vec v$ est orthogonal à $\vec N$ :
$$\vec v\cdot\vec N = (-4)(2)+(1)(-1)+(3)(3) = -8-1+9=0$$

Le produit scalaire est nul : $(d)$ est bien parallèle à $(ABC)$.

Reste à savoir si $(d)$ est strictement parallèle ou contenue dans $(ABC)$ : prenons le point de $(d)$ pour $t=0$, soit $(-1,2,5)$, et testons dans l''équation de $(ABC)$ : $2(-1)-2+3(5)-8 = -2-2+15-8=3\ne0$.

Ce point n''appartient pas à $(ABC)$ : $(d)$ est donc strictement parallèle à $(ABC)$ (sans intersection).

Réponse : $(d)$ est strictement parallèle à $(ABC)$ (aucun point commun).', 'On teste d''abord si la direction de $(d)$ est orthogonale à la normale du plan (condition de parallélisme direction/plan), puis, si c''est le cas, on vérifie si un point de $(d)$ appartient réellement au plan pour distinguer « contenue dans le plan » de « strictement parallèle et disjointe ».

Piège à éviter : s''arrêter au produit scalaire nul en concluant au parallélisme sans vérifier si la droite est contenue dans le plan ou non.

Ce que l''examinateur attend : le calcul du produit scalaire nul, puis le test d''un point de $(d)$ dans l''équation du plan pour conclure au parallélisme strict.', '[{"criterion":"Produit scalaire nul (direction parallèle au plan)","points":0.5},{"criterion":"Test d''un point et conclusion (parallèle strict, pas contenue)","points":0.5}]'::jsonb, '2017', 'Problème - A - 4c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Démontrer que l''ensemble $(S)$ d''équation $x^2-2x+y^2-4y+z^2-4=0$ est une sphère de $(\varepsilon)$ dont on précisera les éléments caractéristiques.', 'On met chaque groupe de termes sous forme canonique :
$$x^2-2x = (x-1)^2-1$$
$$y^2-4y = (y-2)^2-4$$
$$z^2 = z^2$$

L''équation devient :
$$(x-1)^2-1+(y-2)^2-4+z^2-4=0$$
$$(x-1)^2+(y-2)^2+z^2 = 9$$

Cette équation est de la forme $(x-x_\Omega)^2+(y-y_\Omega)^2+(z-z_\Omega)^2=R^2$ avec $R^2=9>0$ : c''est bien l''équation d''une sphère, de centre $\Omega(1;2;0)$ et de rayon $R=\sqrt{9}=3$.

Réponse : $(S)$ est la sphère de centre $\Omega(1;2;0)$ et de rayon $R=3$.', 'On reconnaît l''équation d''une sphère en mettant chaque variable sous forme canonique (complétion du carré), pour faire apparaître la forme standard $(x-x_\Omega)^2+(y-y_\Omega)^2+(z-z_\Omega)^2=R^2$ ; il faut aussi vérifier que le second membre obtenu est strictement positif (sinon ce serait un point ou l''ensemble vide, pas une sphère).

Ce que l''examinateur attend : la complétion du carré pour $x$ et $y$, l''obtention de $R^2=9>0$, et les éléments caractéristiques (centre et rayon).', '[{"criterion":"Complétion du carré correcte pour x et y","points":0.5},{"criterion":"Centre Ω(1;2;0) et rayon R=3 correctement identifiés","points":0.5}]'::jsonb, '2017', 'Problème - A - 5', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $(P)$ le plan de l''espace $(\varepsilon)$ d''équation $z=0$, rapporté au repère orthonormé $(O;\vec u,\vec v)$. Soit $f$ la fonction numérique de la variable réelle $x$ définie sur $]0;+\infty[$ par $f(x) = 2\ln x - \dfrac{3}{x}+3$, de courbe représentative $(C_f)$ dans ce repère. Déterminer les limites de $f$ aux bornes de son ensemble de définition.', 'Quand $x\to0^+$ : $\ln x\to-\infty$ donc $2\ln x\to-\infty$ ; et $-\dfrac{3}{x}\to-\infty$ (car $\frac1x\to+\infty$). Les deux termes tendent vers $-\infty$, donc par somme :
$$\lim_{x\to0^+} f(x) = -\infty$$

Quand $x\to+\infty$ : $2\ln x\to+\infty$ et $-\dfrac3x\to0$. Par somme :
$$\lim_{x\to+\infty} f(x) = +\infty$$

Réponse : $\displaystyle\lim_{x\to0^+}f(x)=-\infty$ et $\displaystyle\lim_{x\to+\infty}f(x)=+\infty$.', 'On étudie séparément le comportement de chaque terme de $f$ à chaque borne : en $0^+$, $\ln x$ et $-\frac3x$ divergent tous deux vers $-\infty$, ce qui ne laisse aucune indétermination ; en $+\infty$, $2\ln x$ diverge vers $+\infty$ tandis que $-\frac3x$ s''annule.

Ce que l''examinateur attend : l''étude séparée de chaque terme à chaque borne, sans indétermination à lever ici.', '[{"criterion":"Limite en 0+ correctement justifiée","points":0.25},{"criterion":"Limite en +∞ correctement justifiée","points":0.25}]'::jsonb, '2017', 'Problème - B - 1a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Étudier les variations de $f$ et en déduire son signe.', '$$f''(x) = \frac{2}{x} + \frac{3}{x^2} = \frac{2x+3}{x^2}$$

Pour $x>0$ : $2x+3>0$ et $x^2>0$, donc $f''(x)>0$ pour tout $x\in\,]0;+\infty[$.

$f$ est donc strictement croissante sur $]0;+\infty[$, de $-\infty$ (question précédente) à $+\infty$.

Étude du signe : $f$ étant continue et strictement croissante sur $]0;+\infty[$, avec des limites de signes opposés aux bornes, d''après le théorème de la bijection il existe une unique valeur $x_0$ telle que $f(x_0)=0$. Testons $x=1$ : $f(1)=2\ln1-\frac31+3=0-3+3=0$ : donc $x_0=1$.

Comme $f$ est strictement croissante : $f(x)<0$ sur $]0;1[$, $f(1)=0$, et $f(x)>0$ sur $]1;+\infty[$.

Réponse : $f$ est strictement croissante sur $]0;+\infty[$ ; $f(x)<0$ sur $]0;1[$, $f(1)=0$, $f(x)>0$ sur $]1;+\infty[$.', 'On calcule la dérivée et on étudie son signe (ici toujours positif, car $2x+3>0$ et $x^2>0$ sur le domaine) pour conclure à la stricte croissance ; le signe de $f$ s''en déduit ensuite en cherchant le zéro exact de $f$ (ici $x=1$, une valeur remarquable qu''il faut penser à tester) et en utilisant la monotonie.

Piège à éviter : chercher le zéro de $f$ numériquement sans tester d''abord des valeurs remarquables comme $x=1$, qui donne ici un résultat exact.

Ce que l''examinateur attend : le calcul de $f''(x)=\frac{2x+3}{x^2}$, l''étude de son signe, et l''identification exacte de $f(1)=0$ pour en déduire le signe complet de $f$.', '[{"criterion":"Calcul de f''(x) et signe (croissante)","points":0.5},{"criterion":"Identification de f(1)=0 et déduction du signe complet de f","points":0.5}]'::jsonb, '2017', 'Problème - B - 1b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Tracer la courbe $(C_f)$ de $f$ dans le repère orthonormé $(O;\vec u,\vec v)$ du plan.', 'Éléments à placer :
- $f$ est strictement croissante sur tout le domaine, de $-\infty$ (près de $x=0$) à $+\infty$ ;
- la courbe s''approche indéfiniment de l''axe des ordonnées près de $x=0$ (comportement asymptotique, $f(x)\to-\infty$) ;
- elle coupe l''axe des abscisses en l''unique point $(1,0)$ ;
- $f''''(x) = -\dfrac{2}{x^2}-\dfrac{6}{x^3} < 0$ pour tout $x>0$ : la courbe est concave (tournée vers le bas) sur tout son domaine ;
- la croissance ralentit progressivement pour les grandes valeurs de $x$ (croissance logarithmique).

Réponse : courbe strictement croissante et concave, passant par $(1,0)$, avec une branche descendant vers $-\infty$ près de l''axe des ordonnées et une branche montant lentement vers $+\infty$.', 'Le tracé combine toutes les informations déjà obtenues : sens de variation, limites aux bornes, et point d''annulation $(1,0)$ ; la concavité (calculée ici via $f''''$, bien que non explicitement demandée dans l''énoncé) aide à donner l''allure correcte de la courbe plutôt qu''une simple droite croissante.

Ce que l''examinateur attend : un tracé cohérent avec la croissance stricte, les limites aux bornes, et le passage par $(1,0)$.', '[{"criterion":"Tracé cohérent avec les variations et limites","points":0.5},{"criterion":"Point (1,0) correctement placé","points":0.25}]'::jsonb, '2017', 'Problème - B - 1c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On considère la suite $(u_n)$ définie par $u_0=2$ et $u_{n+1}=f(u_n)$. Calculer $u_1$, $u_2$ et $u_3$ (on donnera l''arrondi d''ordre $2$).', '$u_0=2$.

$u_1 = f(2) = 2\ln2-\frac32+3 \approx 2(0{,}6931)-1{,}5+3 \approx 1{,}3863+1{,}5 \approx 2{,}8863 \approx \mathbf{2{,}89}$

$u_2 = f(u_1) = f(2{,}8863) = 2\ln(2{,}8863)-\frac{3}{2{,}8863}+3 \approx 2(1{,}0599)-1{,}0394+3 \approx 2{,}1198-1{,}0394+3 \approx 4{,}0804 \approx \mathbf{4{,}08}$

$u_3 = f(u_2) = f(4{,}0804) = 2\ln(4{,}0804)-\frac{3}{4{,}0804}+3 \approx 2(1{,}4062)-0{,}7353+3 \approx 2{,}8124-0{,}7353+3 \approx 5{,}0771 \approx \mathbf{5{,}08}$

Réponse : $u_1\approx2{,}89$ ; $u_2\approx4{,}08$ ; $u_3\approx5{,}08$.', 'On applique simplement, de proche en proche, la relation de récurrence $u_{n+1}=f(u_n)$ à la calculatrice, en gardant suffisamment de décimales intermédiaires avant l''arrondi final pour éviter d''accumuler des erreurs d''arrondi.

Piège à éviter : arrondir chaque résultat intermédiaire à 2 décimales avant de calculer le terme suivant, ce qui accumule des erreurs — garder plus de précision en cours de calcul.

Ce que l''examinateur attend : le calcul successif correct de $u_1$, $u_2$, $u_3$, arrondis à l''ordre $2$ seulement à la fin.', '[{"criterion":"Calcul de u1≈2,89","points":0.25},{"criterion":"Calcul de u2≈4,08 et u3≈5,08","points":0.5}]'::jsonb, '2017', 'Problème - B - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Démontrer que la suite $(u_n)$ est strictement croissante.', 'Montrons par récurrence que $u_{n+1}>u_n$ pour tout $n$.

Initialisation : $u_1\approx2{,}89 > 2 = u_0$ (calculé à la question précédente).

Hérédité : supposons $u_n>u_{n-1}$. Comme $f$ est strictement croissante sur $]0;+\infty[$ (question B.1.b), appliquer $f$ aux deux membres de l''inégalité conserve son sens :
$$f(u_n) > f(u_{n-1}) \iff u_{n+1}>u_n$$

Par récurrence, $u_{n+1}>u_n$ pour tout $n\in\mathbb{N}$ : la suite $(u_n)$ est donc strictement croissante.

Réponse : $(u_n)$ est strictement croissante.', 'L''argument clé est que $f$ étant strictement croissante, elle conserve l''ordre : si $u_n>u_{n-1}$, alors $f(u_n)>f(u_{n-1})$, c''est-à-dire $u_{n+1}>u_n$ — ce qui permet de propager par récurrence l''inégalité initiale $u_1>u_0$ à tous les rangs suivants.

Ce que l''examinateur attend : l''initialisation $u_1>u_0$, l''utilisation de la croissance de $f$ dans l''hérédité, et la conclusion par récurrence.', '[{"criterion":"Initialisation u1>u0","points":0.25},{"criterion":"Hérédité utilisant la croissance de f, conclusion par récurrence","points":0.25}]'::jsonb, '2017', 'Problème - B - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Démontrer que pour tout entier naturel $n$ : $2\le u_n\le6{,}5$.', 'Montrons par récurrence que $2\le u_n\le6{,}5$ pour tout $n$.

Initialisation : $u_0=2$, donc $2\le u_0\le6{,}5$ ✓.

Hérédité : supposons $2\le u_n\le6{,}5$. Comme $f$ est strictement croissante sur $]0;+\infty[$ :
$$f(2) \le f(u_n) \le f(6{,}5)$$

Or $f(2)\approx2{,}8863 \ge 2$, et $f(6{,}5)=2\ln(6{,}5)-\frac{3}{6{,}5}+3 \approx 2(1{,}8718)-0{,}4615+3 \approx 3{,}7436-0{,}4615+3 \approx 6{,}2821 \le 6{,}5$.

Donc $2 \le f(2) \le f(u_n) \le f(6{,}5) \le 6{,}5$, c''est-à-dire $2\le u_{n+1}\le6{,}5$.

Par récurrence, $2\le u_n\le6{,}5$ pour tout $n\in\mathbb{N}$.

Réponse : $2\le u_n\le6{,}5$ pour tout $n\in\mathbb{N}$.', 'On utilise à nouveau la croissance de $f$ : si $u_n$ reste dans l''intervalle $[2\,;6{,}5]$, alors $f(u_n)$ reste encadré par $f(2)$ et $f(6{,}5)$ — il suffit alors de vérifier numériquement que $f(2)\ge2$ et $f(6{,}5)\le6{,}5$ pour refermer la récurrence sur le même intervalle.

Piège à éviter : oublier de vérifier numériquement les deux inégalités $f(2)\ge2$ et $f(6{,}5)\le6{,}5$, qui sont indispensables pour que la récurrence « boucle » correctement sur $[2\,;6{,}5]$.

Ce que l''examinateur attend : une récurrence complète utilisant la croissance de $f$, avec la vérification numérique de $f(2)\ge2$ et $f(6{,}5)\le6{,}5$.', '[{"criterion":"Récurrence utilisant la croissance de f","points":0.5},{"criterion":"Vérification numérique f(2)≥2 et f(6,5)≤6,5","points":0.5}]'::jsonb, '2017', 'Problème - B - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire que la suite $(u_n)$ est convergente.', 'La suite $(u_n)$ est strictement croissante (question B.2.b) et majorée par $6{,}5$ (question B.2.c).

D''après le théorème de la limite monotone, toute suite croissante et majorée est convergente.

Réponse : $(u_n)$ est croissante et majorée, donc convergente.', 'C''est une application directe du théorème de la limite monotone : il suffit d''avoir déjà établi séparément la croissance et le caractère majoré de la suite (ce qui est fait dans les deux questions précédentes) pour conclure immédiatement à la convergence.

Ce que l''examinateur attend : la citation du théorème de la limite monotone et le rappel des deux hypothèses déjà démontrées.', '[{"criterion":"Application correcte du théorème de la limite monotone","points":0.5}]'::jsonb, '2017', 'Problème - B - 2d', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soient les équations différentielles $(E) : y''''+y''=0$ et $(E'') : y''''+y'' = \dfrac{(2x-3)(x+2)}{x^3}$. Montrer que $f$ est solution sur $]0;+\infty[$ de $(E'')$.', '$f(x)=2\ln x-\dfrac3x+3$, donc $f''(x)=\dfrac2x+\dfrac3{x^2}$ et $f''''(x)=-\dfrac2{x^2}-\dfrac6{x^3}$.

$$f''''(x)+f''(x) = \left(-\frac2{x^2}-\frac6{x^3}\right)+\left(\frac2x+\frac3{x^2}\right) = \frac2x+\frac1{x^2}-\frac6{x^3}$$

En réduisant au même dénominateur $x^3$ :
$$f''''(x)+f''(x) = \frac{2x^2+x-6}{x^3}$$

Or $2x^2+x-6$ se factorise (racines : $\Delta=1+48=49$, $x=\frac{-1\pm7}{4}$, soit $\frac32$ et $-2$) :
$$2x^2+x-6 = (2x-3)(x+2)$$

Donc $f''''(x)+f''(x) = \dfrac{(2x-3)(x+2)}{x^3}$, ce qui est exactement le second membre de $(E'')$.

Réponse : $f''''+f'' = \dfrac{(2x-3)(x+2)}{x^3}$, donc $f$ est bien solution de $(E'')$ sur $]0;+\infty[$.', 'On calcule $f''$ et $f''''$, on les additionne, puis on met le résultat sous forme d''une seule fraction que l''on factorise pour retrouver exactement l''expression du second membre de $(E'')$ — la factorisation du trinôme $2x^2+x-6$ est l''étape clé pour reconnaître la forme demandée.

Ce que l''examinateur attend : le calcul correct de $f''$ et $f''''$, leur somme mise sous forme d''une fraction unique sur $x^3$, et la factorisation menant à $(2x-3)(x+2)$.', '[{"criterion":"Calcul correct de f'' et f''''","points":0.5},{"criterion":"Somme réduite au même dénominateur et factorisation correcte","points":0.75}]'::jsonb, '2017', 'Problème - B - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Résoudre $(E) : y''''+y''=0$ sur $]0;+\infty[$.', '$(E)$ est une équation différentielle linéaire du second ordre, homogène, à coefficients constants. Son équation caractéristique est :
$$r^2+r=0 \iff r(r+1)=0 \iff r=0 \text{ ou } r=-1$$

Comme les deux racines sont réelles et distinctes, la solution générale de $(E)$ est :
$$y(x) = A\,e^{0\cdot x} + B\,e^{-x} = A+B\,e^{-x}$$

avec $A,B\in\mathbb{R}$ des constantes arbitraires.

Réponse : les solutions de $(E)$ sur $]0;+\infty[$ sont les fonctions $y(x)=A+Be^{-x}$, $A,B\in\mathbb{R}$.', 'Pour une équation différentielle linéaire homogène à coefficients constants, on résout l''équation caractéristique associée (obtenue en remplaçant $y''''$ par $r^2$ et $y''$ par $r$) ; deux racines réelles distinctes $r_1,r_2$ donnent une solution générale $y=Ae^{r_1x}+Be^{r_2x}$.

Ce que l''examinateur attend : la mise en place et la résolution correcte de l''équation caractéristique, et la solution générale correctement écrite.', '[{"criterion":"Équation caractéristique et racines r=0, r=-1","points":0.5},{"criterion":"Solution générale correctement écrite","points":0.25}]'::jsonb, '2017', 'Problème - B - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer qu''une fonction $g$ est solution de $(E'')$ si et seulement si $g-f$ est solution de $(E)$.', 'Posons $h=g-f$, et notons $\varphi(x)=\dfrac{(2x-3)(x+2)}{x^3}$ le second membre de $(E'')$. On sait déjà (question B.3.a) que $f''''+f''=\varphi(x)$.

$$h''''+h'' = (g''''-f'''')+(g''-f'') = (g''''+g'')-(f''''+f'')$$

Sens direct : si $g$ est solution de $(E'')$, alors $g''''+g''=\varphi(x)$, donc $h''''+h'' = \varphi(x)-\varphi(x)=0$ : $h=g-f$ est bien solution de $(E)$.

Réciproque : si $h=g-f$ est solution de $(E)$, alors $h''''+h''=0$, donc $g''''+g'' = h''''+h''+f''''+f'' = 0+\varphi(x)=\varphi(x)$ : $g$ est bien solution de $(E'')$.

Réponse : $g$ est solution de $(E'')$ si et seulement si $g-f$ est solution de $(E)$.', 'C''est le principe général de structure des équations différentielles linéaires : la différence entre deux solutions d''une équation avec second membre est toujours solution de l''équation homogène associée (ici $(E)$), puisque le second membre $\varphi(x)$ s''annule dans la soustraction.

Ce que l''examinateur attend : la démonstration des deux sens de l''équivalence, en utilisant explicitement que $f$ est une solution particulière connue de $(E'')$.', '[{"criterion":"Sens direct (g solution de E'' ⟹ g-f solution de E)","points":0.5},{"criterion":"Réciproque (g-f solution de E ⟹ g solution de E'')","points":0.5}]'::jsonb, '2017', 'Problème - B - 3c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Résoudre alors $(E'')$ sur $]0;+\infty[$.', 'D''après la question précédente, $g$ est solution de $(E'')$ si et seulement si $g-f$ est solution de $(E)$, c''est-à-dire (question B.3.b) $g(x)-f(x) = A+Be^{-x}$ pour des constantes $A,B\in\mathbb{R}$.

Donc :
$$g(x) = f(x)+A+Be^{-x} = 2\ln x-\frac3x+3+A+Be^{-x}$$

Comme $A$ est une constante arbitraire, on peut absorber la constante $+3$ de $f$ à l''intérieur de $A$.

Réponse : les solutions de $(E'')$ sur $]0;+\infty[$ sont les fonctions $g(x) = 2\ln x-\dfrac3x+A+Be^{-x}$, $A,B\in\mathbb{R}$.', 'On combine les deux résultats précédents : $f$ fournit une solution particulière de $(E'')$, et l''ensemble des solutions de $(E)$ (question B.3.b) fournit toutes les variations possibles autour de cette solution particulière — c''est la structure générale « solution particulière + solution générale de l''équation homogène » de toute équation linéaire avec second membre.

Ce que l''examinateur attend : la combinaison correcte de $f$ et de la solution générale de $(E)$, avec la solution finale correctement écrite.', '[{"criterion":"Combinaison correcte de f et de la solution générale de (E)","points":0.5}]'::jsonb, '2017', 'Problème - B - 3d', 'C', 'draft');
COMMIT;