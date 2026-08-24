-- 2024 Baccalaureat C-E Mathematiques -- 24 questions (no explicit Serie C/E split found in this paper)
-- Cleaned up vs source txt: Partie B Tache 3 (fishing probability) -- source gave two contradictory answers (P=1 vs 25%)
-- without committing. Re-read the problem statement: the described "re-fish with replacement until correct species" protocol
-- makes serving both clients in order a mathematical certainty (P=1). Committed to that single clean answer.
-- Excluded: Partie B general "Presentation" 0.5pt (handwriting/neatness bonus, not a real question).
-- Real official corrige with point values, condensed to house style. All other math verified correct.
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Une urne contient six boules portant des numéros de $1$ à $6$, indiscernables au toucher. On tire au hasard une boule, note son numéro « $a$ », et la remet dans l''urne. On fait un deuxième tirage et note le numéro « $b$ » de la boule tirée. Soit $(E)$ l''équation différentielle $y''''+2ay''+by=0$. Montrer que la probabilité pour que l''équation caractéristique de $(E)$ admette deux solutions réelles distinctes ou confondues est $\dfrac{29}{36}$.', 'L''équation caractéristique de $(E)$ est $r^2+2ar+b=0$, de discriminant réduit $\Delta''=a^2-b$.

Elle admet deux solutions réelles (distinctes ou confondues) $\iff \Delta''\ge0 \iff a^2\ge b$.

L''univers est $\Omega=\{1,\ldots,6\}^2$, avec $\text{card}(\Omega)=6\times6=36$ (tirage avec remise, ordonné).

Dénombrons les couples $(a,b)$ tels que $a^2\ge b$ :
- $a=1$ : $b\le1$, soit $b\in\{1\}$ (1 cas)
- $a=2$ : $b\le4$, soit $b\in\{1,2,3,4\}$ (4 cas)
- $a=3,4,5,6$ : $a^2\ge9>6$, donc tous les $b\in\{1,\ldots,6\}$ conviennent (6 cas chacun)

$$N = 1+4+6+6+6+6 = 29$$

Réponse : $P=\dfrac{29}{36}$.', 'On traduit la condition « racines réelles » par $\Delta''\ge0$, puis on dénombre méthodiquement, pour chaque valeur de $a$ de $1$ à $6$, le nombre de valeurs de $b$ satisfaisant $b\le a^2$.

Piège à éviter : confondre tirage avec/sans remise (ici avec remise, $b$ peut valoir $a$), et oublier l''égalité dans $\Delta''\ge0$ (« distinctes ou confondues »).

Ce que l''examinateur attend : l''équation caractéristique et la condition $\Delta''=a^2-b\ge0$, le dénombrement exact des cas favorables (29) et de l''univers (36), et le calcul final de la probabilité.', '[{"criterion":"Équation caractéristique et condition Δ''=a²-b≥0","points":0.5},{"criterion":"Dénombrement exact des cas favorables (29) et de l''univers (36)","points":0.5},{"criterion":"Conclusion et valeur exacte de la probabilité","points":0.5}]'::jsonb, '2024', 'Exercice 1 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Combien de fois au minimum doit-on répéter cette expérience pour être sûr d''avoir au moins $98\%$ de chances que l''équation caractéristique de $(E)$ ait au moins une fois deux solutions non réelles ?', 'La probabilité d''avoir des solutions non réelles à une expérience est $p=1-\frac{29}{36}=\frac{7}{36}$.

Sur $n$ répétitions indépendantes, le nombre $X$ de fois où l''équation a deux solutions non réelles suit $\mathcal{B}\left(n,\frac7{36}\right)$.

On veut le plus petit $n$ tel que $P(X\ge1)\ge0{,}98$ :
$$P(X\ge1) = 1-P(X=0) = 1-\left(\frac{29}{36}\right)^n \ge 0{,}98 \iff \left(\frac{29}{36}\right)^n \le 0{,}02$$

En passant au logarithme népérien (et en divisant par $\ln\left(\frac{29}{36}\right)<0$, ce qui inverse le sens) :
$$n \ge \frac{\ln(0{,}02)}{\ln\left(\frac{29}{36}\right)} \approx \frac{-3{,}912}{-0{,}2162} \approx 18{,}09$$

Comme $n$ est un entier, le plus petit entier convenable est $n=19$.

Réponse : il faut répéter l''expérience au minimum $19$ fois.', '« Au moins une fois » invite à passer par l''événement contraire (« jamais »), dont la probabilité sur $n$ essais indépendants est $\left(\frac{29}{36}\right)^n$ ; on résout ensuite l''inéquation via le logarithme népérien, en prenant garde au changement de sens lors de la division par un logarithme négatif.

Piège à éviter : oublier d''inverser le sens de l''inégalité (puisque $\ln(29/36)<0$), et arrondir à l''entier le plus proche (18) au lieu de l''entier immédiatement supérieur (19).

Ce que l''examinateur attend : l''identification de la probabilité complémentaire $p=\frac7{36}$, la mise en équation rigoureuse, l''utilisation correcte du logarithme, et la conclusion $n=19$.', '[{"criterion":"Formulation de l''inéquation probabiliste","points":0.5},{"criterion":"Utilisation du logarithme et résolution algébrique","points":0.5},{"criterion":"Conclusion exacte sur n=19","points":0.5}]'::jsonb, '2024', 'Exercice 1 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'L''espace vectoriel $E_3$ est rapporté à une base $(\vec i,\vec j,\vec k)$. $\varphi$ est l''endomorphisme de $E_3$ défini par $\varphi(\vec i)=\vec i+2\vec j-\vec k$, $\varphi(\vec j)=2\vec i+\vec j+\vec k$ et $\varphi(\vec k)=3\vec j-3\vec k$. Déterminer une base du noyau $\operatorname{Ker}\varphi$ de $\varphi$, puis justifier que $\varphi$ n''est pas bijectif.', 'Soit $\vec u=x\vec i+y\vec j+z\vec k$. Par linéarité, $\vec u\in\operatorname{Ker}\varphi \iff x\varphi(\vec i)+y\varphi(\vec j)+z\varphi(\vec k)=\vec0$ :
$$(x+2y)\vec i+(2x+y+3z)\vec j+(-x+y-3z)\vec k = \vec0$$

Soit le système :
$$\begin{cases} x+2y=0 & (L_1) \\ 2x+y+3z=0 & (L_2) \\ -x+y-3z=0 & (L_3) \end{cases}$$

$L_2-2L_1$ : $-3y+3z=0 \implies y=z$. $L_3+L_1$ : $3y-3z=0 \implies y=z$ (cohérent). De $L_1$ : $x=-2y=-2z$.

Donc $\vec u=z(-2\vec i+\vec j+\vec k)$ : $\operatorname{Ker}\varphi$ est engendré par le vecteur non nul $\vec e=-2\vec i+\vec j+\vec k$.

Comme $\operatorname{Ker}\varphi\ne\{\vec0\}$, $\varphi$ n''est pas injectif, donc (en dimension finie) pas bijectif.

Réponse : une base de $\operatorname{Ker}\varphi$ est $(\vec e)$ avec $\vec e=(-2,1,1)$ ; $\varphi$ n''est pas bijectif.', 'On traduit $\varphi(\vec u)=\vec0$ en système linéaire, on le résout (une équation s''avérant dépendante des deux autres, laissant un degré de liberté), puis on factorise pour extraire le vecteur générateur du noyau. En dimension finie, injectif $\iff$ surjectif $\iff$ bijectif $\iff \operatorname{Ker}=\{\vec0\}$ : un noyau non trivial suffit à conclure.

Piège à éviter : ne pas conclure explicitement avec une base (donner juste une équation), ou omettre l''argument théorique ($\operatorname{Ker}\varphi\ne\{\vec0\}$) pour la non-bijectivité.

Ce que l''examinateur attend : la résolution complète du système, un vecteur générateur explicite formant la base, et l''argument correct de non-bijectivité.', '[{"criterion":"Détermination du noyau et de sa base","points":0.75},{"criterion":"Justification de la non-bijectivité","points":0.25}]'::jsonb, '2024', 'Exercice 2 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Montrer que l''image $\operatorname{Im}\varphi$ de $\varphi$ est un plan vectoriel de $E_3$.', 'D''après la question précédente, $\dim(\operatorname{Ker}\varphi)=1$. D''après le théorème du rang :
$$\dim(E_3) = \dim(\operatorname{Ker}\varphi)+\dim(\operatorname{Im}\varphi) \implies 3=1+\dim(\operatorname{Im}\varphi) \implies \dim(\operatorname{Im}\varphi)=2$$

Un sous-espace vectoriel de dimension $2$ est un plan vectoriel.

Réponse : $\dim(\operatorname{Im}\varphi)=2$, donc $\operatorname{Im}\varphi$ est un plan vectoriel de $E_3$.', 'Le théorème du rang relie directement les dimensions de l''espace de départ, du noyau et de l''image ; connaissant $\dim(\operatorname{Ker}\varphi)=1$, on en déduit immédiatement $\dim(\operatorname{Im}\varphi)=2$.

Ce que l''examinateur attend : l''énoncé du théorème du rang, et la déduction correcte que $\operatorname{Im}\varphi$ est un plan vectoriel.', '[{"criterion":"Application du théorème du rang et conclusion","points":0.5}]'::jsonb, '2024', 'Exercice 2 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Vérifier que $\varphi(\vec k)=2\varphi(\vec i)-\varphi(\vec j)$.', '$$2\varphi(\vec i)-\varphi(\vec j) = 2(\vec i+2\vec j-\vec k)-(2\vec i+\vec j+\vec k) = 2\vec i+4\vec j-2\vec k-2\vec i-\vec j-\vec k = 3\vec j-3\vec k$$

Or $\varphi(\vec k)=3\vec j-3\vec k$. L''égalité est donc vérifiée.

Réponse : $\varphi(\vec k)=2\varphi(\vec i)-\varphi(\vec j)$ est bien vérifiée.', 'Il s''agit d''une vérification directe : on développe la combinaison linéaire $2\varphi(\vec i)-\varphi(\vec j)$ et on compare au résultat déjà connu $\varphi(\vec k)$.

Piège à éviter : erreur de signe lors du développement du signe moins.

Ce que l''examinateur attend : le détail de la combinaison linéaire, aboutissant exactement à $\varphi(\vec k)$.', '[{"criterion":"Calcul correct et conclusion","points":0.5}]'::jsonb, '2024', 'Exercice 2 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'En déduire une base de $\operatorname{Im}\varphi$.', '$\operatorname{Im}\varphi=\text{Vect}(\varphi(\vec i),\varphi(\vec j),\varphi(\vec k))$. D''après la question 2.b, $\varphi(\vec k)$ est combinaison linéaire de $\varphi(\vec i)$ et $\varphi(\vec j)$, donc superflu :
$$\operatorname{Im}\varphi = \text{Vect}(\varphi(\vec i),\varphi(\vec j))$$

Vérifions que $(\varphi(\vec i),\varphi(\vec j))$ est libre : si $\alpha\varphi(\vec i)+\beta\varphi(\vec j)=\vec0$, alors $\alpha(1,2,-1)+\beta(2,1,1)=(0,0,0)$, d''où (3ème coordonnée) $\alpha=\beta$, puis (1ère) $3\alpha=0 \implies \alpha=\beta=0$ : la famille est libre.

Étant libre et génératrice de $\operatorname{Im}\varphi$ (de dimension $2$, question 2.a), c''est une base.

Réponse : une base de $\operatorname{Im}\varphi$ est $(\varphi(\vec i),\varphi(\vec j)) = (\vec i+2\vec j-\vec k,\ 2\vec i+\vec j+\vec k)$.', 'La relation trouvée en 2.b montre que $\varphi(\vec k)$ est redondant dans la famille génératrice ; il reste $\varphi(\vec i)$ et $\varphi(\vec j)$, dont la liberté (vérifiée directement, ou déduite du fait que $\dim(\operatorname{Im}\varphi)=2$) en fait une base.

Piège à éviter : inclure $\varphi(\vec k)$ dans la base alors qu''elle doit contenir exactement $2$ vecteurs.

Ce que l''examinateur attend : l''utilisation de la relation de 2.b pour éliminer $\varphi(\vec k)$, et la justification que $(\varphi(\vec i),\varphi(\vec j))$ forme une base.', '[{"criterion":"Déduction de la famille génératrice à 2 éléments","points":0.5},{"criterion":"Preuve de liberté / conclusion sur la base","points":0.5}]'::jsonb, '2024', 'Exercice 2 - 2c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Soit $f$ la fonction définie sur $[0;+\infty[$ par $f(x)=\sqrt x\,e^{1-x}$. On définit $F$ pour tout réel $x$ de $[1;+\infty[$ par $F(x)=\displaystyle\int_1^x f(t)\,dt$. Déterminer le sens de variation de $F$ sur $[1;+\infty[$.', '$f$ est continue sur $[1,+\infty[$, donc $F$ est dérivable avec $F''(x)=f(x)=\sqrt x\,e^{1-x}$.

Pour tout $x\ge1$ : $\sqrt x>0$ et $e^{1-x}>0$, donc $F''(x)>0$.

Réponse : $F$ est strictement croissante sur $[1,+\infty[$.', 'Le théorème fondamental de l''analyse donne $F''=f$ pour $F(x)=\int_a^x f$ ; comme $f$ est un produit de deux facteurs toujours strictement positifs sur ce domaine, $F''$ l''est aussi.

Piège à éviter : se lancer dans de longs calculs d''intégrale alors que seule la dérivée (et son signe) est demandée.

Ce que l''examinateur attend : la mention de la continuité de $f$, l''écriture $F''(x)=f(x)$, et la justification de sa positivité stricte.', '[{"criterion":"F''(x)=f(x)>0 et conclusion","points":0.25}]'::jsonb, '2024', 'Exercice 3 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer que pour tout réel $t\ge0$, $t+2\ge2\sqrt2\sqrt t$.', 'Étudions la différence $D(t)=t+2-2\sqrt2\sqrt t$. En écrivant $t=(\sqrt t)^2$ et $2=(\sqrt2)^2$ :
$$D(t) = (\sqrt t)^2-2\sqrt t\sqrt2+(\sqrt2)^2 = (\sqrt t-\sqrt2)^2 \ge 0$$

(un carré est toujours positif ou nul), donc $t+2-2\sqrt2\sqrt t\ge0$.

Réponse : pour tout $t\ge0$, $t+2\ge2\sqrt2\sqrt t$.', 'Pour prouver $A\ge B$, on étudie le signe de $A-B$ ; en réécrivant $t$ comme $(\sqrt t)^2$, l''expression prend la forme d''une identité remarquable $(a-b)^2$, toujours positive.

Piège à éviter : ne pas penser à réécrire $t$ sous la forme $(\sqrt t)^2$.

Ce que l''examinateur attend : une démarche claire (différence ou identité remarquable) prouvant l''inégalité.', '[{"criterion":"Démonstration rigoureuse de l''inégalité","points":0.25}]'::jsonb, '2024', 'Exercice 3 - 2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire que pour tout réel $x\ge1$, $F(x) \le \dfrac1{2\sqrt2}\displaystyle\int_1^x(t+2)e^{1-t}\,dt$.', 'De la question précédente, en divisant par $2\sqrt2>0$ : $\sqrt t \le \dfrac1{2\sqrt2}(t+2)$.

Pour $t\ge1$ (donc $t\ge0$), multiplions par $e^{1-t}>0$ (ce qui préserve le sens) :
$$\sqrt t\,e^{1-t} \le \frac1{2\sqrt2}(t+2)e^{1-t} \iff f(t) \le \frac1{2\sqrt2}(t+2)e^{1-t}$$

En intégrant de $1$ à $x$ (avec $x\ge1$, bornes dans l''ordre croissant), par croissance de l''intégrale :
$$F(x) = \int_1^x f(t)\,dt \le \frac1{2\sqrt2}\int_1^x(t+2)e^{1-t}\,dt$$

Réponse : l''inégalité est démontrée pour tout $x\ge1$.', 'On isole $\sqrt t$ dans l''inégalité de 2.a, on multiplie par $e^{1-t}>0$ (sens préservé), puis on intègre en utilisant la croissance de l''intégrale (valide car $1\le x$).

Piège à éviter : oublier de justifier la positivité de $e^{1-t}$ lors de la multiplication, ou de préciser que $x\ge1$ garantit l''ordre des bornes.

Ce que l''examinateur attend : l''isolement correct de $f(t)$, la justification du maintien du sens de l''inégalité, et le passage propre à l''intégrale.', '[{"criterion":"Isolement de f(t) et justification de la préservation de l''inégalité","points":0.25},{"criterion":"Intégration et conclusion","points":0.25}]'::jsonb, '2024', 'Exercice 3 - 2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'À l''aide d''une intégration par parties, montrer que $\displaystyle\int_1^x(t+2)e^{1-t}\,dt = 4-(x+3)e^{1-x}$.', 'Posons $u(t)=t+2$, $u''(t)=1$, $v''(t)=e^{1-t}$, $v(t)=-e^{1-t}$.

$$I(x) = \big[-(t+2)e^{1-t}\big]_1^x - \int_1^x1\cdot(-e^{1-t})\,dt = \big[-(t+2)e^{1-t}\big]_1^x + \int_1^x e^{1-t}\,dt$$

$\big[-(t+2)e^{1-t}\big]_1^x = -(x+2)e^{1-x}-(-(3)e^0) = -(x+2)e^{1-x}+3$.

$\int_1^x e^{1-t}dt = \big[-e^{1-t}\big]_1^x = -e^{1-x}+1$.

En sommant :
$$I(x) = -(x+2)e^{1-x}+3-e^{1-x}+1 = 4-(x+3)e^{1-x}$$

Réponse : $\displaystyle\int_1^x(t+2)e^{1-t}\,dt = 4-(x+3)e^{1-x}$.', 'On dérive le polynôme $(t+2)$ (réduisant son degré) et on intègre l''exponentielle (dont la primitive est $-e^{1-t}$, car la dérivée de $1-t$ vaut $-1$) ; on évalue soigneusement chaque crochet aux bornes $1$ et $x$, puis on regroupe.

Piège à éviter : erreur de signe dans la primitive de $e^{1-t}$, ou dans l''évaluation du crochet en $t=1$.

Ce que l''examinateur attend : le choix explicite de $u,u'',v'',v$, la formule complète de l''IPP, et le détail des calculs de bornes.', '[{"criterion":"Pose de l''IPP et dérivées/primitives correctes","points":0.25},{"criterion":"Calcul exact et obtention de la formule","points":0.25}]'::jsonb, '2024', 'Exercice 3 - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'En déduire que pour tout réel $x\ge1$, $0\le F(x)\le\sqrt2$.', 'Borne inférieure : pour $t\in[1,x]$, $f(t)\ge0$, et $x\ge1$, donc par positivité de l''intégrale, $F(x)\ge0$.

Borne supérieure : d''après 2.b et 3.a :
$$F(x) \le \frac1{2\sqrt2}\big[4-(x+3)e^{1-x}\big]$$

Pour $x\ge1$ : $(x+3)e^{1-x}>0$, donc $4-(x+3)e^{1-x}<4$, d''où :
$$F(x) \le \frac1{2\sqrt2}\times4 = \frac2{\sqrt2} = \sqrt2$$

Réponse : pour tout $x\ge1$, $0\le F(x)\le\sqrt2$.', 'La borne inférieure vient directement de la positivité de $f$ ; pour la borne supérieure, on réutilise la formule de 3.a en majorant $4-(x+3)e^{1-x}$ par $4$ (puisque le terme retranché est strictement positif pour $x\ge1$), puis on simplifie $\frac4{2\sqrt2}=\sqrt2$.

Piège à éviter : vouloir étudier les variations de $x\mapsto4-(x+3)e^{1-x}$ par dérivation, bien plus long qu''observer simplement la positivité du terme retranché.

Ce que l''examinateur attend : la preuve de $F(x)\ge0$, et la majoration menant à $\sqrt2$ avec simplification exacte.', '[{"criterion":"Preuve de F(x)≥0","points":0.2},{"criterion":"Majoration par √2 et conclusion","points":0.3}]'::jsonb, '2024', 'Exercice 3 - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'La suite $u$ est définie pour tout entier naturel non nul $n$ par $u_n=\displaystyle\int_n^{n+1}f(t)\,dt$. Étudier le sens de variation de la fonction $f$ sur $[0;+\infty[$.', '$f$ est dérivable sur $]0,+\infty[$ :
$$f''(x) = \frac1{2\sqrt x}e^{1-x}+\sqrt x(-e^{1-x}) = e^{1-x}\left(\frac1{2\sqrt x}-\sqrt x\right) = e^{1-x}\cdot\frac{1-2x}{2\sqrt x}$$

Pour $x>0$, $e^{1-x}>0$ et $2\sqrt x>0$ : le signe de $f''(x)$ est celui de $1-2x$.

$1-2x=0\iff x=\frac12$ ; $f''(x)>0$ pour $x<\frac12$ ; $f''(x)<0$ pour $x>\frac12$.

Réponse : $f$ croît strictement sur $\left[0,\frac12\right]$ et décroît strictement sur $\left[\frac12,+\infty\right[$, avec un maximum $f\left(\frac12\right)=\sqrt{\frac e2}$.', 'On dérive $f=\sqrt x\cdot e^{1-x}$ par la formule du produit, on met au même dénominateur pour isoler le signe (déterminé par le numérateur $1-2x$), et on en déduit le tableau de variation.

Piège à éviter : écrire que $\sqrt x$ est dérivable en $0$ (elle ne l''est que sur $]0,+\infty[$), ou erreur de signe dans la dérivée de $e^{1-x}$.

Ce que l''examinateur attend : le calcul correct de $f''(x)$, l''étude de son signe, et la conclusion claire sur les intervalles de croissance/décroissance.', '[{"criterion":"Calcul de f''(x)","points":0.25},{"criterion":"Étude du signe et conclusion sur les variations","points":0.25}]'::jsonb, '2024', 'Exercice 3 - 4-1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'Montrer que pour tout entier naturel $n\ge1$, $f(n+1) \le u_n \le f(n)$.', 'Pour $n\ge1$, $[n,n+1]\subset[1,+\infty[\subset\left[\frac12,+\infty\right[$, intervalle sur lequel $f$ est strictement décroissante (question précédente).

Ainsi, pour $t\in[n,n+1]$ : $n\le t\le n+1 \implies f(n+1)\le f(t)\le f(n)$.

En intégrant sur $[n,n+1]$ (de longueur $1$), les bornes $f(n+1)$ et $f(n)$ étant constantes :
$$f(n+1)\times1 \le \int_n^{n+1}f(t)\,dt \le f(n)\times1$$

Réponse : $f(n+1) \le u_n \le f(n)$ pour tout $n\ge1$.', 'Comme $f$ est décroissante sur $[n,n+1]$ (puisque $n\ge1\ge\frac12$), l''encadrement de $t$ se traduit en un encadrement de $f(t)$ à sens inversé ; on intègre ensuite sur un intervalle de longueur $1$, où l''intégrale d''une constante $C$ vaut simplement $C$.

Piège à éviter : oublier de préciser que $f$ est décroissante sur $[n,n+1]$ avant d''inverser le sens de l''encadrement.

Ce que l''examinateur attend : la mention de la décroissance de $f$ sur $[n,n+1]$, l''encadrement correct de $f(t)$, et le passage à l''intégrale.', '[{"criterion":"Encadrement de f(t) basé sur la décroissance","points":0.25},{"criterion":"Intégration et déduction de l''encadrement de un","points":0.25}]'::jsonb, '2024', 'Exercice 3 - 4-2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'Montrer que la suite $(u_n)$ est décroissante.', 'D''après la question précédente, appliquée au rang $n$ : $u_n\ge f(n+1)$.

Appliquée au rang $n+1$ : $f(n+2)\le u_{n+1}\le f(n+1)$, donc $u_{n+1}\le f(n+1)$.

En combinant : $u_{n+1}\le f(n+1)\le u_n$, donc $u_{n+1}\le u_n$.

Réponse : la suite $(u_n)$ est décroissante.', 'On applique l''encadrement de la question 4.2 à deux rangs consécutifs ($n$ et $n+1$), et le terme commun $f(n+1)$ sert de pont pour relier $u_{n+1}$ et $u_n$.

Piège à éviter : confondre la décroissance de la fonction $f$ avec celle de la suite $(u_n)$ elle-même — il faut passer par l''élément intermédiaire $f(n+1)$.

Ce que l''examinateur attend : la chaîne d''inégalités $u_{n+1}\le f(n+1)\le u_n$.', '[{"criterion":"Preuve de la décroissance de (un) via la chaîne d''inégalités","points":0.5}]'::jsonb, '2024', 'Exercice 3 - 4-3i', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'Montrer que la suite $(u_n)$ est convergente.', 'Pour $t\in[n,n+1]$, $f(t)\ge0$, donc par positivité de l''intégrale, $u_n\ge0$ : la suite est minorée par $0$.

Étant décroissante (question précédente) et minorée, d''après le théorème de la limite monotone, $(u_n)$ converge.

Réponse : $(u_n)$ est décroissante et minorée, donc convergente.', 'Toute suite réelle décroissante et minorée converge (théorème de la limite monotone) ; ici la minoration par $0$ découle directement de la positivité de $f$ sur le domaine d''intégration.

Ce que l''examinateur attend : l''affirmation que $u_n\ge0$ (minorée), et la citation explicite du théorème sur les suites décroissantes et minorées.', '[{"criterion":"Minorant et citation du théorème de convergence monotone","points":0.5}]'::jsonb, '2024', 'Exercice 3 - 4-3ii', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Le plan complexe est rapporté à un repère orthonormé direct $(O,\vec u,\vec v)$. $(\Gamma)$ est l''ensemble des points de coordonnées $(x,y)$ telles que $3x^2-y^2-6x-1=0$. Montrer que l''équation de $(\Gamma)$ peut encore s''écrire $\dfrac{(x-1)^2}\alpha-\dfrac{y^2}\beta=1$ où $\alpha$ et $\beta$ sont deux réels strictement positifs à déterminer.', 'Regroupons les termes en $x$ :
$$3(x^2-2x)-y^2-1=0 \implies 3\big[(x-1)^2-1\big]-y^2-1=0 \implies 3(x-1)^2-y^2-4=0$$
$$3(x-1)^2-y^2=4$$

En divisant par $4$ :
$$\frac{3(x-1)^2}4-\frac{y^2}4=1 \iff \frac{(x-1)^2}{4/3}-\frac{y^2}4=1$$

Réponse : $\alpha=\dfrac43$ et $\beta=4$.', 'On met le terme en $x$ sous forme canonique $(x^2-2x=(x-1)^2-1)$, on isole la constante, puis on divise par elle pour obtenir un second membre égal à $1$ ; le coefficient $3$ passe alors au dénominateur du terme en $(x-1)^2$.

Piège à éviter : erreur de signe dans le développement de $3[(x-1)^2-1]$, ou inverser $\alpha=\frac43$ en $\frac34$.

Ce que l''examinateur attend : la démarche complète de mise sous forme canonique, et l''identification exacte de $\alpha$ et $\beta$.', '[{"criterion":"Forme canonique et réduction","points":0.5},{"criterion":"Identification de α=4/3 et β=4","points":0.5}]'::jsonb, '2024', 'Exercice 4 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'En déduire que $(\Gamma)$ est une hyperbole dont on déterminera le centre et les sommets par leurs coordonnées dans le repère $(O,\vec u,\vec v)$.', 'L''équation réduite $\dfrac{(x-1)^2}{a^2}-\dfrac{y^2}{b^2}=1$ avec $a^2=\frac43\implies a=\frac2{\sqrt3}=\frac{2\sqrt3}3$, $b^2=4\implies b=2$, caractérise une hyperbole d''axe focal parallèle à $(O,\vec u)$.

Centre : $\Omega(1,0)$.

Sommets, à distance $a$ du centre sur l''axe focal :
$$S_1\left(1-\frac{2\sqrt3}3,0\right)=\left(\frac{3-2\sqrt3}3,0\right), \qquad S_2\left(1+\frac{2\sqrt3}3,0\right)=\left(\frac{3+2\sqrt3}3,0\right)$$

Réponse : $(\Gamma)$ est une hyperbole de centre $\Omega(1,0)$ et de sommets $S_1\left(\frac{3-2\sqrt3}3,0\right)$, $S_2\left(\frac{3+2\sqrt3}3,0\right)$.', 'Une équation de la forme $\frac{(x-x_0)^2}{a^2}-\frac{(y-y_0)^2}{b^2}=1$ caractérise une hyperbole d''axe focal horizontal, de centre $(x_0,y_0)$ et de sommets à distance $a$ du centre le long de cet axe.

Piège à éviter : confondre $a^2$ et $a$ (prendre $a=\frac43$ au lieu de $\sqrt{4/3}$).

Ce que l''examinateur attend : l''identification de la nature (hyperbole), les coordonnées exactes du centre, et celles des deux sommets sous forme simplifiée.', '[{"criterion":"Nature (hyperbole) et centre Ω(1,0)","points":0.5},{"criterion":"Calcul des sommets S1 et S2","points":0.5}]'::jsonb, '2024', 'Exercice 4 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Déterminer la demi-distance focale et l''excentricité de $(\Gamma)$.', 'Pour une hyperbole, $c^2=a^2+b^2=\dfrac43+4=\dfrac{16}3$, donc $c=\dfrac4{\sqrt3}=\dfrac{4\sqrt3}3$.

Excentricité : $e=\dfrac ca=\dfrac{4/\sqrt3}{2/\sqrt3}=\dfrac42=2$.

Réponse : $c=\dfrac{4\sqrt3}3$ et $e=2$.', 'Pour une hyperbole (contrairement à l''ellipse), la relation fondamentale est $c^2=a^2+b^2$ ; l''excentricité $e=c/a$ vaut ici $2>1$, cohérent avec la nature hyperbolique.

Piège à éviter : utiliser par erreur la formule de l''ellipse $c^2=a^2-b^2$.

Ce que l''examinateur attend : l''utilisation de $c^2=a^2+b^2$ avec les valeurs exactes, et le calcul de $e=c/a$ simplifié.', '[{"criterion":"Demi-distance focale c","points":0.25},{"criterion":"Excentricité e","points":0.25}]'::jsonb, '2024', 'Exercice 4 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Soit $S$ l''application affine du plan dans lui-même qui, à un point d''affixe $z$, associe le point d''affixe $z''$ telle que $z''=2e^{i\pi/6}z+1-\sqrt3-i$. Donner la nature et les éléments caractéristiques de $S$.', '$z''=az+b$ avec $a=2e^{i\pi/6}$, $b=1-\sqrt3-i$. Comme $|a|=2\ne1$ et $a\notin\mathbb{R}$, $S$ est une similitude directe.

Rapport : $k=|a|=2$. Angle : $\theta=\arg(a)=\dfrac\pi6\ [2\pi]$.

Centre $\Omega_S$ d''affixe $\omega=\dfrac b{1-a}$. Avec $a=2\left(\frac{\sqrt3}2+\frac12i\right)=\sqrt3+i$ :
$$1-a = 1-\sqrt3-i = b$$
$$\omega = \frac{1-\sqrt3-i}{1-\sqrt3-i} = 1$$

Réponse : $S$ est la similitude directe de centre $\Omega_S(1,0)$, de rapport $k=2$ et d''angle $\theta=\dfrac\pi6$.', 'Une écriture $z''=az+b$ avec $a\in\mathbb{C}\setminus\mathbb{R}$ et $|a|\ne1$ définit une similitude directe de rapport $|a|$ et d''angle $\arg(a)$ ; le centre est le point fixe $\omega=\frac b{1-a}$.

Piège à éviter : erreur dans la forme algébrique de $a=2e^{i\pi/6}$, ou erreur d''inversion dans la division complexe $\frac b{1-a}$.

Ce que l''examinateur attend : l''identification précise de la nature, et les valeurs exactes du rapport, de l''angle et du centre.', '[{"criterion":"Nature, rapport et angle","points":0.5},{"criterion":"Recherche et affixe exacte du centre","points":0.5}]'::jsonb, '2024', 'Exercice 4 - 4-1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Soit $I$ le point de coordonnées $(1,0)$, $M$ un point de $(\Gamma)$, et $N$ le point tel que $IN=2IM$ et $\text{Mes}(\widehat{\vec{IM},\vec{IN}})=\dfrac\pi6$. Montrer que $N$ est l''image de $M$ par une transformation du plan, dont on donnera la nature et les éléments caractéristiques.', 'En affixes, les conditions $IN=2IM$ et l''angle orienté $\frac\pi6$ se traduisent par :
$$\frac{z_N-z_I}{z_M-z_I} = 2e^{i\pi/6}$$

Avec $z_I=1$ :
$$z_N-1 = 2e^{i\pi/6}(z_M-1) \implies z_N = 2e^{i\pi/6}z_M + 1-2e^{i\pi/6}$$

Or $2e^{i\pi/6}=\sqrt3+i$, donc $1-2e^{i\pi/6}=1-\sqrt3-i$ :
$$z_N = 2e^{i\pi/6}z_M+1-\sqrt3-i$$

C''est exactement l''expression de $S$ (question 4.1).

Réponse : $N$ est l''image de $M$ par la similitude directe $S$ de centre $I(1,0)$, de rapport $k=2$ et d''angle $\dfrac\pi6$.', 'Un rapport de distances constant et un angle orienté constant, tous deux mesurés depuis un même point $I$, définissent exactement une similitude directe de centre $I$ ; en traduisant ces deux conditions en une seule égalité complexe, on retrouve directement l''expression de $S$ déjà étudiée.

Piège à éviter : ne pas faire le lien avec la transformation $S$ définie à la question précédente.

Ce que l''examinateur attend : la traduction complexe exacte des conditions géométriques, et l''identification de la transformation comme étant $S$.', '[{"criterion":"Traduction géométrique/complexe","points":0.5},{"criterion":"Identification de la similitude S avec ses éléments","points":0.5}]'::jsonb, '2024', 'Exercice 4 - 4-2a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'En déduire la nature de l''ensemble $(\Gamma'')$, décrit par $N$ lorsque le point $M$ décrit l''ensemble $(\Gamma)$, puis préciser l''excentricité de $(\Gamma'')$.', '$(\Gamma'')=S((\Gamma))$, image de $(\Gamma)$ par la similitude directe $S$.

Une similitude transforme toute conique en une conique de même nature : $(\Gamma'')$ est donc une hyperbole.

Une similitude conserve l''excentricité (invariant de forme, indépendant de l''échelle : $a''=ka$, $c''=kc$, donc $e''=c''/a''=c/a=e$). Comme $e=2$ (question 3) :
$$e'' = 2$$

Réponse : $(\Gamma'')$ est une hyperbole, d''excentricité $e''=2$.', 'Une similitude transforme toute conique en une conique de même nature et de même excentricité (seules les longueurs sont mises à l''échelle par le rapport $k$, mais leur rapport $c/a$ reste inchangé).

Piège à éviter : penser que l''excentricité est multipliée par le rapport $k=2$ (ce qui donnerait $e''=4$) — c''est une erreur classique.

Ce que l''examinateur attend : la déclaration que l''image d''une hyperbole par une similitude est une hyperbole, et l''argument de conservation de l''excentricité concluant $e''=2$.', '[{"criterion":"Nature de (Γ'') (hyperbole)","points":0.25},{"criterion":"Valeur exacte de l''excentricité (e''=2)","points":0.25}]'::jsonb, '2024', 'Exercice 4 - 4-2b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a15a76a3-840a-4f10-8918-c007475d4b57', 'Deux étangs d''un pisciculteur comprennent respectivement 250 maquereaux et 450 carpes. Les maquereaux ont un taux de multiplication de 20% par mois. Un produit ne peut être administré à une espèce que lorsque sa population a au moins doublé. Après combien de temps minimum doit-on administrer ce produit aux maquereaux ?', 'Un taux de multiplication constant de $20\%$ par mois définit une suite géométrique de raison $1{,}2$ : $M(t)=250\times(1{,}2)^t$.

On cherche le temps minimum $t_M$ tel que $M(t_M)\ge2\times250=500$ :
$$250\times(1{,}2)^{t_M}\ge500 \iff (1{,}2)^{t_M}\ge2$$

En passant au logarithme népérien (croissant, et $\ln(1{,}2)>0$) :
$$t_M \ge \frac{\ln2}{\ln1{,}2} \approx \frac{0{,}6931}{0{,}1823} \approx 3{,}80$$

Réponse : il faut un minimum de $3{,}80$ mois (soit au cours du $4^{\text{ème}}$ mois) pour que la population de maquereaux ait doublé.', 'Un taux de croissance constant par période définit une suite géométrique ; « doubler » se traduit par $(1{,}2)^t\ge2$, que l''on résout en passant au logarithme népérien (croissant, donc le sens de l''inégalité est préservé puisque $\ln1{,}2>0$).

Piège à éviter : utiliser un modèle linéaire au lieu d''exponentiel/géométrique, ou arrondir par défaut à 3 mois alors que $(1{,}2)^3=1{,}728<2$ (la population n''a pas encore doublé).

Ce que l''examinateur attend : l''identification du modèle de croissance géométrique, la mise en inéquation avec le logarithme népérien, et le calcul exact avec conclusion pratique.', '[{"criterion":"Identification du modèle de croissance géométrique","points":0.5},{"criterion":"Utilisation correcte du logarithme népérien","points":0.5},{"criterion":"Calcul exact et conclusion","points":0.5}]'::jsonb, '2024', 'Partie B - Tâche 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'La vitesse d''accroissement de la population de carpes (450 initialement) à l''instant $t$ (en mois) constitue le cinquantième de la population de carpes à cet instant $t$. Après combien de temps minimum doit-on administrer le produit aux carpes (une fois leur population doublée) ?', '« Vitesse d''accroissement » = $C''(t)$ ; « cinquantième de la population » = $\frac1{50}C(t)$. D''où l''équation différentielle :
$$C''(t) = \frac1{50}C(t) = 0{,}02\,C(t)$$

Les solutions sont $C(t)=Ke^{0{,}02t}$. Avec $C(0)=450$ : $K=450$, donc $C(t)=450\,e^{0{,}02t}$.

On cherche $t_C$ tel que $C(t_C)\ge2\times450=900$ :
$$450\,e^{0{,}02t_C}\ge900 \iff e^{0{,}02t_C}\ge2 \iff 0{,}02t_C\ge\ln2 \iff t_C\ge50\ln2\approx34{,}66$$

Réponse : il faut un minimum de $50\ln2\approx34{,}66$ mois (soit au cours du $35^{\text{ème}}$ mois) pour que la population de carpes ait doublé.', 'On traduit d''abord la phrase en équation différentielle $y''=ay$, dont les solutions sont exponentielles $Ke^{at}$ ; on détermine $K$ par la condition initiale, puis on résout la condition de doublement par passage au logarithme.

Piège à éviter : mal interpréter « vitesse d''accroissement » et modéliser par une suite géométrique discrète au lieu d''une équation différentielle continue.

Ce que l''examinateur attend : la traduction correcte en équation différentielle, la résolution explicite avec la condition initiale, et le calcul de $t_C=50\ln2$ avec conclusion.', '[{"criterion":"Établissement de l''équation différentielle","points":0.5},{"criterion":"Résolution C(t)=450e^0,02t","points":0.5},{"criterion":"Calcul de tC et réponse","points":0.5}]'::jsonb, '2024', 'Partie B - Tâche 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Un troisième étang contient 45 carpes et 55 maquereaux. Deux clients arrivent et passent commande, dans l''ordre, d''un maquereau puis d''une carpe. Lorsqu''un client passe commande, on pêche un poisson à la fois ; si ce n''est pas l''espèce commandée, on le remet dans l''étang et on continue la prise, jusqu''à obtenir l''espèce voulue, avant de servir la commande suivante. Le restaurateur a-t-il au moins une chance sur deux de servir les deux clients dans l''ordre des commandes passées ?', 'Le protocole décrit consiste, pour chaque client, à répéter la pêche avec remise jusqu''à obtenir l''espèce commandée, avant de passer à la commande suivante.

Pour le premier client (un maquereau) : à chaque tentative, la probabilité de pêcher un maquereau est $p_1=\frac{55}{100}=\frac{11}{20}>0$. Comme le poisson est systématiquement remis à l''eau en cas d''échec et que la pêche continue indéfiniment jusqu''au succès, la probabilité de finir par pêcher un maquereau vaut $1$ (c''est un événement presque sûr : la somme de la série géométrique $\sum_{k\ge1}(1-p_1)^{k-1}p_1$ vaut $1$).

Une fois le maquereau servi, l''étang contient $54$ maquereaux et $45$ carpes ($99$ poissons). Pour le second client (une carpe), le même raisonnement s''applique avec $p_2=\frac{45}{99}>0$ : la probabilité de finir par pêcher une carpe vaut également $1$.

Comme le protocole ne sert jamais un client avec la mauvaise espèce (tout poisson erroné est remis à l''eau sans être servi), les deux clients sont nécessairement servis dans l''ordre de leurs commandes, avec probabilité $1$.

Réponse : oui — d''après le protocole décrit (pêche avec remise jusqu''à obtenir l''espèce voulue), le restaurateur est certain (probabilité $1\ge0{,}5$) de servir les deux clients dans l''ordre de leurs commandes.', 'Le point clé est que le protocole décrit dans l''énoncé (« si le poisson pêché n''est pas de l''espèce commandée, on le remet dans l''étang et on continue la prise ») ne permet jamais de servir un client avec la mauvaise espèce : chaque commande est nécessairement honorée tôt ou tard, avec l''espèce exacte demandée, avant de passer à la commande suivante. Le respect de l''ordre des commandes est donc garanti par construction, indépendamment des probabilités de pêche à chaque essai — ce n''est pas une question de « chance », mais un événement certain.

Piège à éviter : calculer la probabilité de pêcher directement les deux bonnes espèces dès le tout premier essai de chacun ($\frac{55}{100}\times\frac{45}{99}=\frac14$) — ce calcul répond à une question différente (réussir sans aucun raté), qui n''est pas ce que demande l''énoncé, puisque le protocole autorise explicitement plusieurs essais par commande.

Ce que l''examinateur attend : la reconnaissance que le protocole de pêche-avec-remise-jusqu''au-succès rend chaque commande certaine d''être honorée (probabilité $1$ à chaque étape, via la somme d''une série géométrique), et donc que l''ordre des commandes est nécessairement respecté.', '[{"criterion":"Modélisation du protocole de pêche répétée jusqu''au succès","points":0.5},{"criterion":"Justification que chaque commande est honorée avec probabilité 1","points":0.5},{"criterion":"Conclusion correcte : ordre garanti, réponse oui","points":0.5}]'::jsonb, '2024', 'Partie B - Tâche 3', 'C', 'draft');
COMMIT;