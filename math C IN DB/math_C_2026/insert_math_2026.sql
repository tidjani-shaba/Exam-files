-- 2026 Baccalaureat C Mathematiques -- 24 questions (no Serie C/E split found in this paper)
-- Cleanest source of this batch -- verified essentially all math correct against independent re-derivation.
-- One minor correction: Exercice 3 Q4 -- source claimed lim(f(x)/x) as x->-infinity is -infinity; correct value is +infinity
-- (verified both algebraically and numerically). Final classification (branche parabolique de direction Oy) is unaffected either way.
-- Real official corrige with point values, condensed to house style.
-- Insert as draft; flip to ready after backfill-math-images.js runs and content is reviewed.
BEGIN;
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Dans l''espace rapporté à un repère orthonormé direct $(O,\vec i,\vec j,\vec k)$, on considère les points $A(1,-1,0)$, $B(0,-1,1)$ et $C(2,1,1)$, et le plan $(P)$ d''équation $2x-y+2z-30=0$. Démontrer que les points $A$, $B$, $C$ déterminent un plan dont on donnera une équation cartésienne.', '$\overrightarrow{AB}=(-1,0,1)$, $\overrightarrow{AC}=(1,2,1)$.

$$\overrightarrow{AB}\wedge\overrightarrow{AC} = (0\times1-1\times2,\ 1\times1-(-1)\times1,\ -1\times2-0\times1) = (-2,2,-2) \ne \vec0$$

Comme ce produit vectoriel est non nul, $\overrightarrow{AB}$ et $\overrightarrow{AC}$ ne sont pas colinéaires : $A$, $B$, $C$ déterminent un plan unique $(ABC)$.

Un vecteur normal est $\vec n=-\frac12(\overrightarrow{AB}\wedge\overrightarrow{AC})=(1,-1,1)$. Équation $x-y+z+d=0$ ; avec $A(1,-1,0)$ : $1-(-1)+0+d=0 \implies d=-2$.

Réponse : $(ABC) : x-y+z-2=0$.', 'On prouve la non-colinéarité de deux vecteurs formés à partir des points (via un produit vectoriel non nul), puis on détermine l''équation cartésienne à partir de ce même produit vectoriel comme normale.

Piège à éviter : confondre le plan $(P)$ donné dans l''énoncé avec le plan $(ABC)$ à déterminer ; erreur de signe dans le calcul du produit vectoriel.

Ce que l''examinateur attend : la preuve de non-colinéarité, la détermination du vecteur normal, et l''équation cartésienne exacte.', '[{"criterion":"Preuve que les points définissent un plan (non-colinéarité)","points":0.25},{"criterion":"Détermination du vecteur normal","points":0.25},{"criterion":"Obtention de l''équation cartésienne exacte","points":0.25}]'::jsonb, '2026', 'Exercice 1 - I - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('a4a9f4a0-5fbf-432d-a0a1-ad2fa8b82274', 'Donner l''expression analytique de la réflexion de plan $(P) : 2x-y+2z-30=0$.', 'Soit $M(x,y,z)$, $M''(x'',y'',z'')$ son image, $\vec n(2,-1,2)$ normal à $(P)$. Il existe $\lambda\in\mathbb{R}$ tel que $\overrightarrow{MM''}=\lambda\vec n$ : $x''=x+2\lambda$, $y''=y-\lambda$, $z''=z+2\lambda$.

Le milieu $I$ appartient à $(P)$ :
$$2(x+\lambda)-(y-\tfrac\lambda2)+2(z+\lambda)-30=0 \implies 9\lambda + 2x-y+2z-30=0 \implies \lambda=\frac{-4x+2y-4z+60}9$$

En substituant :

Réponse :
$$\begin{cases} x'' = \frac19x+\frac49y-\frac89z+\frac{40}3 \\ y'' = \frac49x+\frac79y+\frac49z-\frac{20}3 \\ z'' = -\frac89x+\frac49y+\frac19z+\frac{40}3 \end{cases}$$', 'Une réflexion transforme $M$ en $M''$ tel que $\overrightarrow{MM''}$ soit colinéaire à la normale et le milieu $[MM'']$ appartienne au plan ; on résout le paramètre $\lambda$ (proportionnel à $\|\vec n\|^2=9$) puis on substitue.

Piège à éviter : substituer directement $x'',y'',z''$ dans l''équation du plan au lieu des coordonnées du milieu.

Ce que l''examinateur attend : la traduction des deux conditions géométriques, la détermination de $\lambda$, et les expressions finales exactes.', '[{"criterion":"Traduction des deux propriétés géométriques","points":0.25},{"criterion":"Détermination exacte du paramètre λ","points":0.25},{"criterion":"Expressions finales exactes de x'', y'', z''","points":0.25}]'::jsonb, '2026', 'Exercice 1 - I - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'On considère l''espace vectoriel $E$ de dimension 3, de base $(\vec i,\vec j,\vec k)$, et l''endomorphisme $\varphi$ tel que $\varphi(\vec i)=\vec i-2\vec k$, $\varphi(\vec j)=\vec j+2\vec k$ et $\varphi(\vec k)=-\vec i+2\vec k$. Donner la matrice de $\varphi$ dans la base $(\vec i,\vec j,\vec k)$.', 'Les colonnes sont les coordonnées de $\varphi(\vec i)=(1,0,-2)$, $\varphi(\vec j)=(0,1,2)$, $\varphi(\vec k)=(-1,0,2)$.

Réponse :
$$M = \begin{pmatrix} 1 & 0 & -1 \\ 0 & 1 & 0 \\ -2 & 2 & 2 \end{pmatrix}$$', 'La matrice d''un endomorphisme se construit colonne par colonne, chaque colonne étant les coordonnées de l''image du vecteur de base correspondant.

Piège à éviter : disposer les composantes en lignes, ou oublier les coefficients nuls.

Ce que l''examinateur attend : la structure matricielle correctement remplie.', '[{"criterion":"Matrice 3×3 exacte","points":0.5}]'::jsonb, '2026', 'Exercice 1 - II - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Démontrer que le noyau de $\varphi$ est une droite vectorielle de base à déterminer.', 'Soit $\vec u=x\vec i+y\vec j+z\vec k$. $\vec u\in\ker\varphi \iff M\begin{pmatrix}x\\y\\z\end{pmatrix}=\vec0$ :
$$\begin{cases} x-z=0 \\ y=0 \\ -2x+2y+2z=0 \end{cases} \iff \begin{cases} x=z \\ y=0 \end{cases}$$

(la 3ème équation est automatiquement vérifiée). Donc $\vec u=z(\vec i+\vec k)$.

Réponse : $\ker\varphi=\text{Vect}(\vec e_1)$ avec $\vec e_1=\vec i+\vec k$, une droite vectorielle.', 'On résout le système homogène $\varphi(\vec u)=\vec0$ ; un paramètre libre subsiste, donnant le vecteur générateur du noyau.

Piège à éviter : ne pas vérifier que le vecteur générateur trouvé est bien non nul.

Ce que l''examinateur attend : la mise en équation et la résolution du système, et la conclusion sur la droite vectorielle avec son vecteur de base.', '[{"criterion":"Pose et résolution du système","points":0.25},{"criterion":"Vecteur de base et conclusion sur la droite vectorielle","points":0.25}]'::jsonb, '2026', 'Exercice 1 - II - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'En déduire que l''image de $\varphi$ est un plan vectoriel de base à déterminer.', 'D''après le théorème du rang : $\dim(E)=\dim(\ker\varphi)+\dim(\operatorname{Im}\varphi) \implies 3=1+\dim(\operatorname{Im}\varphi) \implies \dim(\operatorname{Im}\varphi)=2$ : un plan vectoriel.

Choisissons $\vec e_2=\varphi(\vec i)=\vec i-2\vec k$ et $\vec e_3=\varphi(\vec j)=\vec j+2\vec k$, manifestement non colinéaires.

Réponse : $\operatorname{Im}\varphi$ est un plan vectoriel de base $(\vec e_2,\vec e_3)$ avec $\vec e_2=\vec i-2\vec k$, $\vec e_3=\vec j+2\vec k$.', 'Le théorème du rang donne directement la dimension de l''image à partir de celle du noyau ; il suffit ensuite de choisir deux images de vecteurs de base non colinéaires.

Piège à éviter : refaire des calculs indépendants sans utiliser le théorème du rang, ou choisir deux vecteurs colinéaires.

Ce que l''examinateur attend : l''application du théorème du rang, et le choix de deux vecteurs libres formant une base.', '[{"criterion":"Application du théorème du rang et déduction de la dimension 2","points":0.5},{"criterion":"Explicitation d''une base du plan vectoriel","points":0.25}]'::jsonb, '2026', 'Exercice 1 - II - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Démontrer que $(\vec e_1,\vec e_2,\vec e_3)$ est une base de l''espace vectoriel $E$.', '$\dim(E)=3$ et la famille comporte 3 vecteurs : il suffit de montrer que son déterminant est non nul.
$$\det(\vec e_1,\vec e_2,\vec e_3) = \begin{vmatrix} 1 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & -2 & 2 \end{vmatrix}$$

En développant suivant la 2ème ligne : $\det = -1\times\begin{vmatrix}1&1\\1&-2\end{vmatrix} = -1\times(-2-1)=3\ne0$.

Réponse : $\det=3\ne0$, donc $(\vec e_1,\vec e_2,\vec e_3)$ est libre, donc une base de $E$.', 'Dans un espace de dimension $N$, une famille de $N$ vecteurs est une base si et seulement si elle est libre, ce qui se vérifie le plus rapidement par un déterminant non nul.

Ce que l''examinateur attend : le calcul explicite du déterminant, et la conclusion formelle.', '[{"criterion":"Calcul exact du déterminant","points":0.375},{"criterion":"Conclusion formelle","points":0.125}]'::jsonb, '2026', 'Exercice 1 - II - 4', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('8466e6f7-9c40-40c9-8a7e-61834aa61f03', 'Donner la matrice de $\varphi$ dans la base $(\vec e_1,\vec e_2,\vec e_3)$.', '$\varphi(\vec e_1)=\varphi(\vec i+\vec k)=(\vec i-2\vec k)+(-\vec i+2\vec k)=\vec0$.

$\varphi(\vec e_2)=\varphi(\vec i-2\vec k)=(\vec i-2\vec k)-2(-\vec i+2\vec k)=3\vec i-6\vec k=3\vec e_2$.

$\varphi(\vec e_3)=\varphi(\vec j+2\vec k)=(\vec j+2\vec k)+2(-\vec i+2\vec k)=-2\vec i+\vec j+6\vec k$.

Décomposons : $-2\vec i+\vec j+6\vec k=a\vec e_1+b\vec e_2+c\vec e_3$ donne $\begin{cases}a+b=-2\\c=1\\a-2b+2c=6\end{cases}$, d''où $b=-2$, $a=0$.

Donc $\varphi(\vec e_3)=-2\vec e_2+\vec e_3$.

Réponse :
$$M'' = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 3 & -2 \\ 0 & 0 & 1 \end{pmatrix}$$', 'On applique $\varphi$ à chaque vecteur de la nouvelle base, puis on exprime le résultat comme combinaison linéaire de cette même base ; $\vec e_1$ étant dans le noyau, son image est immédiate, $\vec e_2$ se retrouve multiple de lui-même, et $\vec e_3$ nécessite un petit système.

Piège à éviter : exprimer les images dans l''ancienne base au lieu de la nouvelle.

Ce que l''examinateur attend : le calcul des trois images, et leur décomposition exacte dans $(\vec e_1,\vec e_2,\vec e_3)$.', '[{"criterion":"Calcul des images des vecteurs de base","points":0.25},{"criterion":"Décomposition dans la nouvelle base","points":0.25},{"criterion":"Écriture correcte de la matrice M''","points":0.25}]'::jsonb, '2026', 'Exercice 1 - II - 5', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Une étude météo établit que chaque jour, il pleut ou il fait beau. La probabilité qu''il pleuve le premier jour est $\frac13$. S''il fait beau un jour, la probabilité qu''il fasse beau le lendemain est $\frac35$ ; s''il pleut un jour, la probabilité qu''il pleuve le lendemain est $\frac23$. Quelle est la probabilité qu''il fasse beau le deuxième jour ?', 'Soit $B_n$ « beau le jour $n$ », $P_n$ « pluie le jour $n$ ». $P(B_1)=1-\frac13=\frac23$.

$P(B_2|B_1)=\frac35$ ; $P(B_2|P_1)=1-\frac23=\frac13$ (complémentaire de $P(P_2|P_1)=\frac23$).

Par la formule des probabilités totales sur $\{B_1,P_1\}$ :
$$P(B_2) = \frac35\times\frac23+\frac13\times\frac13 = \frac6{15}+\frac19 = \frac25+\frac19 = \frac{18+5}{45} = \frac{23}{45}$$

Réponse : $P(B_2)=\dfrac{23}{45}$.', 'On applique la formule des probabilités totales sur le système complet $\{B_1,P_1\}$, en utilisant les probabilités conditionnelles données (et leurs complémentaires).

Piège à éviter : confondre les probabilités conditionnelles données avec des probabilités d''intersection.

Ce que l''examinateur attend : l''explicitation de la formule des probabilités totales, et le résultat exact.', '[{"criterion":"Application correcte de la formule des probabilités totales","points":0.25},{"criterion":"Résultat numérique exact (23/45)","points":0.25}]'::jsonb, '2026', 'Exercice 2 - I - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Quelle est la probabilité qu''il pleuve le troisième jour ?', '$P(P_2)=1-\frac{23}{45}=\frac{22}{45}$.

$$P(P_3) = P(P_3|B_2)P(B_2)+P(P_3|P_2)P(P_2) = \frac25\times\frac{23}{45}+\frac23\times\frac{22}{45} = \frac{46}{225}+\frac{44}{135}$$

Au dénominateur commun $675$ : $\frac{138}{675}+\frac{220}{675}=\frac{358}{675}$.

Réponse : $P(P_3)=\dfrac{358}{675}$.', 'On calcule d''abord $P(P_2)$ par complémentaire, puis on réapplique la formule des probabilités totales au troisième jour.

Piège à éviter : erreurs de calcul lors de la somme de fractions à grands dénominateurs.

Ce que l''examinateur attend : la déduction de $P(P_2)$, et le calcul exact de $P(P_3)$.', '[{"criterion":"Établissement de la formule","points":0.25},{"criterion":"Valeur numérique exacte (358/675)","points":0.25}]'::jsonb, '2026', 'Exercice 2 - I - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'On désigne par $P_n$ la probabilité qu''il fasse beau le $n$-ième jour. Montrer que pour tout entier naturel non nul $n$, $P_{n+1}=\dfrac4{15}P_n+\dfrac13$.', '$P(P_n)=1-P_n$. Par la formule des probabilités totales :
$$P_{n+1} = \frac35P_n+\frac13(1-P_n) = \frac35P_n+\frac13-\frac13P_n = \left(\frac35-\frac13\right)P_n+\frac13 = \frac{9-5}{15}P_n+\frac13$$

Réponse : $P_{n+1}=\dfrac4{15}P_n+\dfrac13$.', 'On généralise la relation de passage du jour $n$ au jour $n+1$, en utilisant $P(P_n)=1-P_n$ pour tout exprimer en fonction de $P_n$ seul.

Ce que l''examinateur attend : la démonstration algébrique complète partant des probabilités conditionnelles.', '[{"criterion":"Démarche et calcul algébrique complet","points":0.5}]'::jsonb, '2026', 'Exercice 2 - I - 3a', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Montrer que la suite de terme général $Q_n=P_n-\dfrac5{11}$ est une suite géométrique.', '$$Q_{n+1} = P_{n+1}-\frac5{11} = \frac4{15}P_n+\frac13-\frac5{11} = \frac4{15}P_n-\frac4{33}$$

En factorisant par $\frac4{15}$ : $Q_{n+1}=\frac4{15}\left(P_n-\frac4{33}\times\frac{15}4\right)=\frac4{15}\left(P_n-\frac{15}{33}\right)=\frac4{15}\left(P_n-\frac5{11}\right)=\frac4{15}Q_n$.

$Q_1=P_1-\frac5{11}=\frac23-\frac5{11}=\frac{22-15}{33}=\frac7{33}$.

Réponse : $(Q_n)$ est géométrique de raison $q=\dfrac4{15}$ et de premier terme $Q_1=\dfrac7{33}$.', 'On calcule $Q_{n+1}$ en substituant $P_{n+1}$, puis on factorise par la raison suspectée $\frac4{15}$ pour faire réapparaître $Q_n$.

Piège à éviter : erreur dans la simplification $\frac{15}{33}=\frac5{11}$.

Ce que l''examinateur attend : la relation $Q_{n+1}=qQ_n$ avec $q$ explicite, et le calcul de $Q_1$.', '[{"criterion":"Preuve du caractère géométrique et calcul de q","points":0.375},{"criterion":"Calcul de Q1","points":0.125}]'::jsonb, '2026', 'Exercice 2 - I - 3b', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Exprimer alors $P_n$ en fonction de $n$.', '$Q_n=Q_1\times q^{n-1}=\dfrac7{33}\left(\dfrac4{15}\right)^{n-1}$.

Comme $Q_n=P_n-\dfrac5{11}$ :

Réponse : $P_n = \dfrac7{33}\left(\dfrac4{15}\right)^{n-1}+\dfrac5{11}$, pour tout $n\ge1$.', 'On applique la formule générale d''une suite géométrique, puis on réisole $P_n$ à partir de la définition de $Q_n$.

Piège à éviter : écrire $q^n$ au lieu de $q^{n-1}$.

Ce que l''examinateur attend : l''expression exacte de $P_n$ en fonction de $n$.', '[{"criterion":"Expression finale correcte de Pn en fonction de n","points":0.5}]'::jsonb, '2026', 'Exercice 2 - I - 3c', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Dans le plan complexe rapporté à un repère orthonormé direct $(O,\vec u,\vec v)$, on considère la transformation plane $S$ d''expression analytique $x''=x\sqrt2+y\sqrt6$, $y''=-x\sqrt6+y\sqrt2$. Donner l''écriture complexe de $S$.', '$z''=x''+iy'' = (x\sqrt2+y\sqrt6)+i(-x\sqrt6+y\sqrt2) = x(\sqrt2-i\sqrt6)+y(\sqrt6+i\sqrt2)$.

Or $i(\sqrt2-i\sqrt6)=i\sqrt2+\sqrt6=\sqrt6+i\sqrt2$, donc :
$$z'' = x(\sqrt2-i\sqrt6)+iy(\sqrt2-i\sqrt6) = (\sqrt2-i\sqrt6)(x+iy) = (\sqrt2-i\sqrt6)z$$

Réponse : $z''=(\sqrt2-i\sqrt6)z$.', 'On regroupe $x''+iy''$, puis on factorise pour faire apparaître $(x+iy)=z$ en remarquant que le coefficient de $y$ est $i$ fois celui de $x$.

Piège à éviter : ne pas déceler la factorisation par $i$.

Ce que l''examinateur attend : le passage explicite de la forme analytique à la forme complexe $z''=az$.', '[{"criterion":"Écriture complexe exacte","points":0.5}]'::jsonb, '2026', 'Exercice 2 - II - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3854c086-8abd-472d-a16b-06d2d30b76ed', 'Donner la nature et les éléments caractéristiques de la transformation plane $S$.', '$z''=az$ avec $a=\sqrt2-i\sqrt6$ : similitude directe de centre $O(0,0)$.

$k=|a|=\sqrt{2+6}=\sqrt8=2\sqrt2$.

$a=2\sqrt2\left(\frac1{2}-i\frac{\sqrt3}2\right)$ (en divisant par $2\sqrt2$ : $\frac{\sqrt2}{2\sqrt2}=\frac12$, $\frac{\sqrt6}{2\sqrt2}=\frac{\sqrt3}2$), donc $\cos\theta=\frac12$, $\sin\theta=-\frac{\sqrt3}2 \implies \theta=-\frac\pi3\ [2\pi]$.

Réponse : $S$ est la similitude directe de centre $O$, de rapport $k=2\sqrt2$ et d''angle $\theta=-\dfrac\pi3$.', 'Une transformation $z''=az$ est une similitude directe de centre $O$ ; son rapport est $|a|$ et son angle $\arg(a)$, obtenus en mettant $a$ sous forme trigonométrique.

Piège à éviter : oublier le signe négatif devant la partie imaginaire lors de l''identification de l''angle.

Ce que l''examinateur attend : l''identification de la nature et du centre, et les valeurs exactes du rapport et de l''angle.', '[{"criterion":"Identification de la nature et du centre","points":0.25},{"criterion":"Calcul du rapport k=2√2","points":0.25},{"criterion":"Calcul de l''angle θ=-π/3","points":0.25}]'::jsonb, '2026', 'Exercice 2 - II - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('05d287be-15e5-4537-8727-4786c685559c', 'Prouver que $(H)$ d''équation $64x^2-36y^2=576$ est une hyperbole et donner son excentricité.', 'En divisant par $576$ : $\dfrac{64x^2}{576}-\dfrac{36y^2}{576}=1 \iff \dfrac{x^2}9-\dfrac{y^2}{16}=1$.

Forme réduite $\dfrac{x^2}{a^2}-\dfrac{y^2}{b^2}=1$ avec $a^2=9\implies a=3$, $b^2=16\implies b=4$ : une hyperbole.

$c=\sqrt{a^2+b^2}=\sqrt{9+16}=\sqrt{25}=5$.

$e=\dfrac ca=\dfrac53$.

Réponse : $(H)$ est une hyperbole (équation $\frac{x^2}{3^2}-\frac{y^2}{4^2}=1$), d''excentricité $e=\dfrac53$.', 'On ramène l''équation sous forme réduite avec $1$ au second membre, ce qui identifie directement la forme caractéristique d''une hyperbole ; l''excentricité s''obtient via $c=\sqrt{a^2+b^2}$ (et non $\sqrt{a^2-b^2}$, formule réservée à l''ellipse).

Piège à éviter : confondre la formule de $c$ pour une hyperbole avec celle d''une ellipse.

Ce que l''examinateur attend : la mise sous forme réduite, et le calcul explicite de $c$ puis de $e$.', '[{"criterion":"Équation réduite et preuve de la nature","points":0.375},{"criterion":"Calcul de c et de l''excentricité e=5/3","points":0.375}]'::jsonb, '2026', 'Exercice 2 - II - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'On considère la fonction $g$ définie sur $\mathbb{R}$ par $g(x)=2-x+e^{x-1}$. Étudier le sens de variation de $g$ et en déduire que pour tout réel $x$, $g(x)>0$.', '$g''(x)=-1+e^{x-1}$. $g''(x)=0 \iff e^{x-1}=1 \iff x=1$ ; $g''(x)>0 \iff x>1$ ; $g''(x)<0 \iff x<1$.

$g$ décroît strictement sur $]-\infty,1]$ et croît strictement sur $[1,+\infty[$.

Minimum absolu : $g(1)=2-1+e^0=1+1=2$.

Comme le minimum de $g$ sur $\mathbb{R}$ vaut $2>0$, pour tout $x\in\mathbb{R}$, $g(x)\ge2>0$.

Réponse : $g$ décroît sur $]-\infty,1]$, croît sur $[1,+\infty[$ ; pour tout $x$, $g(x)>0$.', 'On étudie le signe de $g''$ (la stricte croissance de l''exponentielle donne directement $e^{x-1}>1\iff x>1$), on identifie le minimum global en $x=1$, et comme ce minimum est strictement positif, toute la fonction l''est.

Piège à éviter : oublier de calculer la valeur explicite du minimum pour justifier la positivité stricte.

Ce que l''examinateur attend : le calcul de $g''(x)$, le tableau de variations, et l''argument du minimum pour conclure $g(x)>0$.', '[{"criterion":"Calcul de g''(x) et étude de son signe","points":0.5},{"criterion":"Sens de variation complet et preuve que g(x)>0 via le minimum","points":0.5}]'::jsonb, '2026', 'Exercice 3 - 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Calculer les limites de la fonction $f$ définie sur $\mathbb{R}$ par $f(x)=x+(x-1)e^{1-x}$ en $-\infty$ et $+\infty$.', 'En $-\infty$ : $x\to-\infty$, $(x-1)\to-\infty$, $1-x\to+\infty \implies e^{1-x}\to+\infty$, donc $(x-1)e^{1-x}\to-\infty$. Par somme : $f(x)\to-\infty$.

En $+\infty$ : $(x-1)e^{1-x} = \dfrac{x-1}{e^{x-1}}$. En posant $X=x-1\to+\infty$, par croissances comparées $\dfrac X{e^X}\to0$. Donc $f(x)\to+\infty+0=+\infty$.

Réponse : $\displaystyle\lim_{x\to-\infty}f(x)=-\infty$ et $\displaystyle\lim_{x\to+\infty}f(x)=+\infty$.', 'En $-\infty$, aucune indétermination (produit et somme de termes tous tendant vers $-\infty$). En $+\infty$, on réécrit $(x-1)e^{1-x}$ en $\frac{x-1}{e^{x-1}}$ pour appliquer directement le théorème des croissances comparées.

Piège à éviter : ne pas justifier la limite de $\frac{x-1}{e^{x-1}}$ par les croissances comparées.

Ce que l''examinateur attend : les justifications explicites de chaque terme, en particulier la croissance comparée en $+\infty$.', '[{"criterion":"Limite en -∞ justifiée","points":0.25},{"criterion":"Limite en +∞ avec croissance comparée","points":0.25}]'::jsonb, '2026', 'Exercice 3 - 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Montrer que pour tout réel $x$, $f''(x)=g(x)e^{1-x}$, puis dresser le tableau de variations de $f$.', '$$f''(x) = 1+\big[1\cdot e^{1-x}+(x-1)(-e^{1-x})\big] = 1+e^{1-x}[1-(x-1)] = 1+(2-x)e^{1-x}$$

Comme $1=e^{x-1}\cdot e^{1-x}$ :
$$f''(x) = \big(e^{x-1}+2-x\big)e^{1-x} = g(x)e^{1-x}$$

Pour tout $x\in\mathbb{R}$, $e^{1-x}>0$, et d''après la question 1, $g(x)>0$ : donc $f''(x)>0$ sur $\mathbb{R}$.

Réponse : $f''(x)=g(x)e^{1-x}$ ; $f$ est strictement croissante sur $\mathbb{R}$, de $-\infty$ à $+\infty$.', 'On dérive le produit $(x-1)e^{1-x}$, puis on factorise par $e^{1-x}$ en remarquant que le terme constant $1$ s''écrit $e^{x-1}\cdot e^{1-x}$, faisant apparaître exactement $g(x)$. Le signe de $f''$ est alors le produit de deux facteurs positifs.

Piège à éviter : oublier de dériver l''exposant $1-x$ dans $e^{1-x}$, source d''erreur de signe.

Ce que l''examinateur attend : le détail du calcul de $f''(x)$, et l''utilisation explicite de $g(x)>0$ pour le tableau de variations.', '[{"criterion":"Démonstration de l''égalité f''(x)=g(x)e^(1-x)","points":0.5},{"criterion":"Signe de f'' et tableau de variations exact","points":0.25}]'::jsonb, '2026', 'Exercice 3 - 3', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Étudier les branches infinies de $(C)$, la courbe représentative de $f$.', 'En $+\infty$ : $\displaystyle\lim_{x\to+\infty}[f(x)-x] = \lim_{x\to+\infty}(x-1)e^{1-x} = 0$ (croissances comparées). La droite $(\Delta) : y=x$ est asymptote oblique en $+\infty$.

En $-\infty$ : $\dfrac{f(x)}x = 1+\left(1-\dfrac1x\right)e^{1-x}$. Quand $x\to-\infty$ : $\left(1-\frac1x\right)\to1$ et $e^{1-x}\to+\infty$, donc le produit tend vers $+\infty$, et $\dfrac{f(x)}x\to+\infty$.

$(C)$ admet donc une branche parabolique de direction celle de l''axe des ordonnées $(Oy)$ en $-\infty$.

Réponse : $(C)$ admet l''asymptote oblique $y=x$ en $+\infty$, et une branche parabolique de direction $(Oy)$ en $-\infty$.', 'En $+\infty$, $f(x)-x\to0$ caractérise directement une asymptote oblique $y=x$. En $-\infty$, on étudie $\frac{f(x)}x$ : ce rapport tend vers $+\infty$ (le facteur $\left(1-\frac1x\right)$ tendant vers $1$ tandis que $e^{1-x}\to+\infty$), ce qui caractérise une branche parabolique verticale, quel que soit le signe de l''infini obtenu.

Piège à éviter : ne traiter la branche infinie qu''en $+\infty$ et oublier le comportement en $-\infty$.

Ce que l''examinateur attend : le calcul de $\lim(f(x)-x)$ en $+\infty$ avec conclusion sur l''asymptote, et le calcul de $\lim\frac{f(x)}x$ en $-\infty$ avec conclusion sur la branche parabolique.', '[{"criterion":"Étude complète en +∞ (asymptote y=x)","points":0.375},{"criterion":"Étude complète en -∞ (branche parabolique)","points":0.375}]'::jsonb, '2026', 'Exercice 3 - 4', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Déterminer les réels $a$ et $b$ pour que la fonction $F$ définie sur $\mathbb{R}$ par $F(x)=(ax+b)e^{1-x}$ soit une primitive sur $\mathbb{R}$ de $h(x)=(x-1)e^{1-x}$.', '$F''(x)=ae^{1-x}+(ax+b)(-e^{1-x}) = (-ax+a-b)e^{1-x}$.

Par identification avec $h(x)=(x-1)e^{1-x}$ :
$$\begin{cases} -a=1 \\ a-b=-1 \end{cases} \iff \begin{cases} a=-1 \\ b=0 \end{cases}$$

Réponse : $a=-1$, $b=0$, soit $F(x)=-xe^{1-x}$.', '$F$ est primitive de $h$ ssi $F''=h$ ; on calcule $F''$, on simplifie par le facteur strictement positif $e^{1-x}$, puis on identifie les coefficients du polynôme de degré 1.

Piège à éviter : oublier le signe issu de la dérivée de l''exposant $1-x$.

Ce que l''examinateur attend : la condition $F''(x)=h(x)$, et le système d''identification résolu exactement.', '[{"criterion":"Dérivation de F(x) et identification","points":0.25},{"criterion":"Obtention de a=-1 et b=0","points":0.25}]'::jsonb, '2026', 'Exercice 3 - 5', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Calculer l''aire, en unité d''aire, du domaine plan délimité par la courbe $(C)$, l''axe des abscisses et les droites d''équations $x=1$ et $x=3$.', 'Sur $[1,3]$, $f(x)=x+(x-1)e^{1-x}>0$ (les deux termes sont positifs).

$$\mathcal{A} = \int_1^3 f(x)\,dx = \left[\frac12x^2-xe^{1-x}\right]_1^3$$

(primitive de $x$ : $\frac12x^2$ ; primitive de $h(x)$ : $F(x)=-xe^{1-x}$, question précédente)

$$\mathcal{A} = \left(\frac92-3e^{-2}\right)-\left(\frac12-1\right) = \frac92-3e^{-2}+\frac12 = 5-3e^{-2}$$

Réponse : $\mathcal{A}=5-3e^{-2}$ unités d''aire (soit $\approx4{,}59$ u.a.).', 'L''aire sous une fonction positive est l''intégrale définie ; on décompose $f=x+h$ et on utilise la primitive de $h$ déjà trouvée à la question précédente.

Piège à éviter : oublier que $e^0=1$ lors de l''évaluation en $x=1$.

Ce que l''examinateur attend : la formule de l''intégrale, l''utilisation directe de la primitive de la question 5, et la valeur exacte du résultat.', '[{"criterion":"Pose de l''intégrale et de la primitive","points":0.25},{"criterion":"Résultat exact (5-3e⁻²) ua","points":0.25}]'::jsonb, '2026', 'Exercice 3 - 6', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('5de9aed4-bd0b-4f1a-b4d5-0fa6299cefcc', 'Une PME a recruté autant de commerciaux hommes que de commerciaux femmes. Tous parlent au moins l''une des 3 langues Ewondo, Douala et Mendjoumba. 15 parlent l''Ewondo, 20 le Mendjoumba, 10 le Douala, 8 l''Ewondo et le Mendjoumba, 9 le Douala et le Mendjoumba, et 7 le Douala et l''Ewondo. Déterminer le nombre de commerciaux femmes recrutés dans cette PME.', 'Soient $E$, $D$, $M$ les ensembles de commerciaux parlant respectivement Ewondo, Douala, Mendjoumba, et $x=|E\cap D\cap M|$.

Effectifs par région : « $E\cap M$ seul » $=8-x$ ; « $D\cap M$ seul » $=9-x$ ; « $D\cap E$ seul » $=7-x$ ; « $E$ seul » $=15-[(7-x)+(8-x)+x]=x$ ; « $D$ seul » $=10-[(7-x)+(9-x)+x]=x-6$ ; « $M$ seul » $=20-[(8-x)+(9-x)+x]=x+3$.

Toutes ces valeurs doivent être $\ge0$ : « $D$ seul » $\ge0 \implies x\ge6$ ; « $D\cap E$ seul » $\ge0 \implies x\le7$. Donc $6\le x\le7$.

Effectif total : $N=|E\cup D\cup M| = 15+10+20-(8+9+7)+x = 21+x$.

Comme il y a autant d''hommes que de femmes, $N$ doit être pair, donc $x$ impair. Le seul entier impair dans $[6,7]$ est $x=7$.

$N=21+7=28$ commerciaux au total. Nombre de femmes $=\dfrac{28}2=14$.

Réponse : le nombre de commerciaux femmes recrutés est $14$.', 'On applique le principe d''inclusion-exclusion (diagramme de Venn à 3 ensembles), en imposant que chaque région du diagramme ait un effectif positif ou nul, ce qui encadre l''inconnue $x$ (nombre de trilingues) ; la contrainte de parité (autant d''hommes que de femmes) sélectionne ensuite l''unique valeur entière valide de $x$.

Piège à éviter : oublier d''imposer la positivité de chaque région du diagramme de Venn, ou oublier de diviser par 2 à la fin pour obtenir le nombre de femmes (et non l''effectif total).

Ce que l''examinateur attend : la modélisation par inclusion-exclusion, l''argument d''équilibrage hommes/femmes, et la valeur finale exacte.', '[{"criterion":"Utilisation du principe d''inclusion-exclusion / diagramme de Venn","points":0.75},{"criterion":"Déduction de x=7 par les contraintes de positivité et de parité","points":0.75},{"criterion":"Calcul final exact du nombre de femmes (14)","points":0.75}]'::jsonb, '2026', 'Partie B - Tâche 1', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('d64a5f64-64a4-446a-bd11-40cd4bcf4837', 'Le taux d''une hormone dans l''organisme (en µg/ml) est modélisé par $\varphi(t)=5t\,e^{-\frac35t}+1$ pour $t\ge0$ (en minutes). Déterminer le taux maximal de cette hormone contenue dans l''organisme.', '$$\varphi''(t) = 5e^{-\frac35t}+5t\left(-\frac35e^{-\frac35t}\right) = 5e^{-\frac35t}\left(1-\frac35t\right)$$

Comme $5e^{-\frac35t}>0$ pour tout $t\ge0$ : $\varphi''(t)=0 \iff t=\dfrac53$ minutes.

$\varphi''(t)>0$ sur $\left[0,\frac53\right[$ (croissante), $\varphi''(t)<0$ sur $\left]\frac53,+\infty\right[$ (décroissante) : maximum en $t=\frac53$.

$$\varphi\left(\frac53\right) = 5\times\frac53\times e^{-\frac35\times\frac53}+1 = \frac{25}3e^{-1}+1 = \frac{25}{3e}+1 \approx 4{,}07\ \mu\text{g/ml}$$

Réponse : le taux maximal est $\dfrac{25}{3e}+1\ \mu\text{g/ml}$ (environ $4{,}07\ \mu\text{g/ml}$), atteint à $t=\dfrac53$ min.', 'La recherche d''un maximum passe par l''étude du signe de la dérivée : on dérive $\varphi$ (produit), on résout $\varphi''(t)=0$ pour trouver l''instant critique, puis on évalue $\varphi$ en ce point pour obtenir la valeur maximale exacte.

Piège à éviter : oublier de dériver l''exposant $-\frac35t$, ou oublier le terme constant $+1$ lors de l''évaluation finale.

Ce que l''examinateur attend : le calcul correct de $\varphi''(t)$, la résolution exacte de $\varphi''(t)=0$, et la valeur maximale exacte (avec son unité).', '[{"criterion":"Calcul de la dérivée φ''(t)","points":0.75},{"criterion":"Détermination du temps critique t=5/3","points":0.75},{"criterion":"Calcul exact et approché du taux maximal avec unité","points":0.75}]'::jsonb, '2026', 'Partie B - Tâche 2', 'C', 'draft');
INSERT INTO questions (chapter_id, question_text, answer_text, explanation_text, bareme, source_year, paper_question_number, series, status) VALUES ('3208e01e-e0d0-434d-8b59-0de5b111a5a9', 'Un terrain triangulaire (triangle rectangle) a une production minimale de $7{,}5$ tonnes/hectare. Ses dimensions sont des entiers naturels : l''hypoténuse mesure $y$ hm, et les deux autres côtés $x$ hm et $6$ hm. Évaluer la production minimale de matière première sur ce terrain.', 'Par le théorème de Pythagore : $x^2+6^2=y^2 \iff y^2-x^2=36 \iff (y-x)(y+x)=36$.

Comme $x,y\in\mathbb{N}^*$, $(y-x)$ et $(y+x)$ sont des diviseurs de $36$ de même parité (leur somme $2y$ est paire). Comme leur produit $36$ est pair, ils sont tous deux pairs : seul le couple $(2,18)$ convient (les couples $(4,9)$ et $(1,36)$ sont de parités différentes, et $(6,6)$ donne $x=0$, dégénéré).

$$\begin{cases} y-x=2 \\ y+x=18 \end{cases} \implies y=10\text{ hm}, \quad x=8\text{ hm}$$

Aire du triangle rectangle (côtés de l''angle droit $6$ et $8$ hm) :
$$A = \frac{8\times6}2 = 24\text{ hm}^2 = 24\text{ ha}$$

Production minimale $=24\times7{,}5=180$ tonnes.

Réponse : la production minimale sur ce terrain est de $180$ tonnes.', 'On traduit l''énoncé géométrique par Pythagore, obtenant une équation diophantienne $y^2-x^2=36$ que l''on factorise en $(y-x)(y+x)=36$ ; les deux facteurs doivent être de même parité (car leur somme $2y$ est paire), ce qui élimine tous les couples de diviseurs sauf $(2,18)$. On calcule ensuite l''aire du triangle (avec les côtés de l''angle droit, pas l''hypoténuse), puis on multiplie par le rendement.

Piège à éviter : confondre $1\text{ hm}^2$ avec autre chose qu''un hectare, ou utiliser l''hypoténuse $y=10$ au lieu des côtés de l''angle droit pour l''aire.

Ce que l''examinateur attend : l''application de Pythagore et la résolution diophantienne explicite, le calcul exact de la superficie, et la production finale en tonnes.', '[{"criterion":"Résolution de l''équation y²-x²=36 et obtention de x=8","points":0.75},{"criterion":"Calcul de la superficie (24 ha)","points":0.75},{"criterion":"Calcul exact de la production minimale (180 tonnes)","points":0.75}]'::jsonb, '2026', 'Partie B - Tâche 3', 'C', 'draft');
COMMIT;