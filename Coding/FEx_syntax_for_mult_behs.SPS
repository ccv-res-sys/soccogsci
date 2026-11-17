* Encoding: UTF-8.
** The following syntax allows complete analysis of all information contained in 
** three-digit F.Ex coding of behavior explanations.  I describe the most common 
** case in which each explainer provides multiple explanations for multiple 
** behaviors.  Simpler cases can be analyzed with some simplifications of the syntax. 

** The goal is to compute scores of important explanation parameters (e.g., how many
** reasons vs. causal history explanations; how many belief reasons vs. desire reasons; 
** how many marked vs. unmarked belief reasons; how many person vs. situation 
** causes; how many dispositional vs. nondispositional person causes). Where ** possible, 
** these parameters are orthogonal (e.g., how many belief reasons vs. desire reasons an 
** explainer provides is mathematically independent of how many reasons vs. causal 
** histories the explainer provides).  

** The scores are typically computed as "how many per behavior explained."   Thus, 
** how many reasons an explainer provided is an average of the reason explanations the 
** person provided for each behavior in question.  The assumption is that the 
** experiment allowed for a reliable measurement of explanations by asking people to 
** explain multiple behaviors (considered multiple items on a "test").  

** With some simplifications, the syntax below can also be used to analyze data for 
** individual behaviors explained or data that contain subsets of behaviors differing in 
** an important feature (e.g., two good behaviors vs. two bad behaviors, behaviors in 
** the actor vs. observer role). 

** The data file has to be set up in such a way that, for each case (e.g., explainer), each 
** behavior explained is represented by multiple columns of three-digit F.Ex numbers 
** (see example below).  

** Case1:
** b1.e1 | b1.e2  | b1.e3  | b1.e4  | b1.e5 |
** [row continues] b2.e1 | b2.e2  | b2.e3  | b2.e4  | b2.e5 etc. 

** How many F.Ex columns there are per behavior depends on the maximum number 
** of explanations any one or more explainers provided for that behavior.  For example, 
** if some explainers provided five explanations for behavior1, then five columns of 
** F.Ex codes are set up for behavior1 for every case.  It is then recommended that all 
** other behaviors (let's assume six) are also represented by five explanation columns.  
** In some cases, an individual explainer provided a very large number of explanations 
** for a single behavior (e.g., 13), far more than the next person (e.g., 5).  In this case, I 
** recommend that only the first five (or so) explanations are coded for the former 
** explainer.  The assumption is that those were the most important ones in the person's 
** cognitive representation.  (Ideally, experimental design should limit the number of 
** explanations that explainers can provide per behavior to a reasonable number.)

** The SPSS commands below use the COUNT command to count up explanations of a 
** certain kind (e.g., belief reasons) across the explanations of a given behavior; then 
** codes at multiple levels are formed (e.g., reasons, belief reasons, markers).   This 
** process is embedded in a DO REPEAT frame, which saves lots of space by defining 
** the various computations of F.Ex scores only once and then running them for each of 
** the six behaviors.  

** It's irrelevant that some explainers provided fewer explanations for certain behaviors 
** or didn't explain certain behaviors; those column entries are simply missing values 
** that are ignored during appropriate averaging.


DO REPEAT
  e1 = b1.e1 b2.e1 b3.e1 b4.e1 b5.e1 b6.e1
 /e2 = b1.e2 b2.e2 b3.e2 b4.e2 b5.e2 b6.e2
 /e3 = b1.e3 b2.e3 b3.e3 b4.e3 b5.e3 b6.e3
 /e4 = b1.e4 b2.e4 b3.e4 b4.e4 b5.e4 b6.e4
 /e5 = b1.e5 b2.e5 b3.e5 b4.e5 b5.e5 b6.e5
 /s_per = s_per1 s_per2 s_per3 s_per4 s_per5 s_per6
 /s_ia = s_ia1 s_ia2 s_ia3 s_ia4 s_ia5 s_ia6
 /s_sit = s_sit1 s_sit2 s_sit3 s_sit4 s_sit5 s_sit6
 /s_TR = s_TR1 s_TR2 s_TR3 s_TR4 s_TR5 s_TR6
 /s_nTR = s_nTR1 s_nTR2 s_nTR3 s_nTR4 s_nTR5 s_nTR6
 /cau_per = cau_per1 cau_per2 cau_per3 cau_per4 cau_per5 cau_per6
 /cau_ia = cau_ia1 cau_ia2 cau_ia3 cau_ia4 cau_ia5 cau_ia6
 /cau_sit = cau_sit1 cau_sit2 cau_sit3 cau_sit4 cau_sit5 cau_sit6
 /cau_TR = cau_TR1 cau_TR2 cau_TR3 cau_TR4 cau_TR5 cau_TR6
 /cau_nTR = cau_nTR1 cau_nTR2 cau_nTR3 cau_nTR4 cau_nTR5 cau_nTR6
 /chr_per = chr_per1 chr_per2 chr_per3 chr_per4 chr_per5 chr_per6
 /chr_ia = chr_ia1 chr_ia2 chr_ia3 chr_ia4 chr_ia5 chr_ia6
 /chr_sit = chr_sit1 chr_sit2 chr_sit3 chr_sit4 chr_sit5 chr_sit6
 /chr_TR = chr_TR1 chr_TR2 chr_TR3 chr_TR4 chr_TR5 chr_TR6
 /chr_nTR = chr_nTR1 chr_nTR2 chr_nTR3 chr_nTR4 chr_nTR5 chr_nTR6
 /md_per = md_per1 md_per2 md_per3 md_per4 md_per5 md_per6
 /mb_per = mb_per1 mb_per2 mb_per3 mb_per4 mb_per5 mb_per6
 /mv_per = mv_per1 mv_per2 mv_per3 mv_per4 mv_per5 mv_per6
 /ud_per = ud_per1 ud_per2 ud_per3 ud_per4 ud_per5 ud_per6
 /ub_per = ub_per1 ub_per2 ub_per3 ub_per4 ub_per5 ub_per6
 /uv_per = uv_per1 uv_per2 uv_per3 uv_per4 uv_per5 uv_per6
 /md_ia = md_ia1 md_ia2 md_ia3 md_ia4 md_ia5 md_ia6
 /mb_ia = mb_ia1 mb_ia2 mb_ia3 mb_ia4 mb_ia5 mb_ia6
 /mv_ia = mv_ia1 mv_ia2 mv_ia3 mv_ia4 mv_ia5 mv_ia6
 /ud_ia = ud_ia1 ud_ia2 ud_ia3 ud_ia4 ud_ia5 ud_ia6
 /ub_ia = ub_ia1 ub_ia2 ub_ia3 ub_ia4 ub_ia5 ub_ia6
 /uv_ia = uv_ia1 uv_ia2 uv_ia3 uv_ia4 uv_ia5 uv_ia6
 /md_sit= md_sit1 md_sit2 md_sit3 md_sit4 md_sit5 md_sit6
 /mb_sit= mb_sit1 mb_sit2 mb_sit3 mb_sit4 mb_sit5 mb_sit6
 /mv_sit= mv_sit1 mv_sit2 mv_sit3 mv_sit4 mv_sit5 mv_sit6
 /ud_sit= ud_sit1 ud_sit2 ud_sit3 ud_sit4 ud_sit5 ud_sit6
 /ub_sit= ub_sit1 ub_sit2 ub_sit3 ub_sit4 ub_sit5 ub_sit6
 /uv_sit= uv_sit1 uv_sit2 uv_sit3 uv_sit4 uv_sit5 uv_sit6
 /rea = rea1 rea2 rea3 rea4 rea5 rea6
 /int = int1 int2 int3 int4 int5 int6
 /chr = chr1 chr2 chr3 chr4 chr5 chr6
 /cau = cau1 cau2 cau3 cau4 cau5 cau6
 /d = d1 d2 d3 d4 d5 d6
 /b = b1 b2 b3 b4 b5 b6
 /v = v1 v2 v3 v4 v5 v6
 /md = md1 md2 md3 md4 md5 md6
 /mb = mb1 mb2 mb3 mb4 mb5 mb6
 /mv = mv1 mv2 mv3 mv4 mv5 mv6
 /ud = ud1 ud2 ud3 ud4 ud5 ud6
 /ub = ub1 ub2 ub3 ub4 ub5 ub6
 /uv = uv1 uv2 uv3 uv4 uv5 uv6
 /d_per = d_per1 d_per2 d_per3 d_per4 d_per5 d_per6
 /b_per = b_per1 b_per2 b_per3 b_per4 b_per5 b_per6
 /v_per = v_per1 v_per2 v_per3 v_per4 v_per5 v_per6
 /d_ia = d_ia1 d_ia2 d_ia3 d_ia4 d_ia5 d_ia6
 /b_ia = b_ia1 b_ia2 b_ia3 b_ia4 b_ia5 b_ia6
 /v_ia = v_ia1 v_ia2 v_ia3 v_ia4 v_ia5 v_ia6
 /d_sit = d_sit1 d_sit2 d_sit3 d_sit4 d_sit5 d_sit6
 /b_sit = b_sit1 b_sit2 b_sit3 b_sit4 b_sit5 b_sit6
 /v_sit = v_sit1 v_sit2 v_sit3 v_sit4 v_sit5 v_sit6
 /mr_per = mr_per1 mr_per2 mr_per3 mr_per4 mr_per5 mr_per6
 /ur_per = ur_per1 ur_per2 ur_per3 ur_per4 ur_per5 ur_per6
 /mr_ia = mr_ia1 mr_ia2 mr_ia3 mr_ia4 mr_ia5 mr_ia6
 /ur_ia = ur_ia1 ur_ia2 ur_ia3 ur_ia4 ur_ia5 ur_ia6
 /mr_sit = mr_sit1 mr_sit2 mr_sit3 mr_sit4 mr_sit5 mr_sit6
 /ur_sit = ur_sit1 ur_sit2 ur_sit3 ur_sit4 ur_sit5 ur_sit6
 /rea_per = rea_per1 rea_per2 rea_per3 rea_per4 rea_per5 rea_per6
 /rea_ia = rea_ia1 rea_ia2 rea_ia3 rea_ia4 rea_ia5 rea_ia6
 /rea_sit = rea_sit1 rea_sit2 rea_sit3 rea_sit4 rea_sit5 rea_sit6
 /m = m1 m2 m3 m4 m5 m6
 /u = u1 u2 u3 u4 u5 u6.

** These are the traditional (surface-based) person-situation codes, which are 
** computed across ALL explanation modes (reasons, causes, causal histories...)

COUNT s_per = e1 e2 e3 e4 e5 (111, 112, 113, 114, 115, 116, 117, 118, 119, 
 211, 212, 213, 214, 215, 216, 217, 218, 219, 311, 312, 313, 321, 322, 323, 
 331, 332, 333, 341, 342, 343, 351, 352, 353, 361, 362, 363, 371, 372, 373, 411, 412, 413).

COUNT s_ia = e1 e2 e3 e4 e5 (130, 150, 170, 131, 151, 171, 132, 152, 172, 133, 153,
 173, 134, 154, 174, 135, 155, 175, 136, 156, 176, 137, 157, 177, 138, 158, 178, 139,
 159, 179, 230, 250, 270, 231, 251, 271, 232, 252, 272, 233, 253, 273, 234, 254, 274,
 235, 255, 275, 236, 256, 276, 237, 257, 277, 238, 258, 278, 239, 259, 279, 431, 451,
 471, 432, 452, 472, 433, 453, 473).

COUNT s_sit = e1 e2 e3 e4 e5 (120, 140, 141, 142, 143, 144, 145, 148, 149, 160, 220,
 240, 241, 242, 243, 244, 245, 248, 249, 260, 421, 422, 423, 441, 442, 443, 461, 462, 463).

** All parameters with the suffix  _TR refer to the classic trait scores. We typically 
** focus on traits of one's personality or character (115, 119, 215, 219), but one could 
** be more inclusive and also add 217 scores into a broader "dispositional" parameter (117s 
** and 217s refer to beliefs, desires, valuings that have some temporal stability).

COUNT s_TR = e1 e2 e3 e4 e5 (115, 119, 215, 219).

** If 117s and 217s are added to the  _TR parameter, they need to be removed from the _nTR
** parameter, which refers to all other person causes that are not traits.

COUNT s_nTR = e1 e2 e3 e4 e5 (111, 112, 113, 114,116, 117, 118, 211, 212, 213, 214, 216, 217, 218).


*** CAUSES (again, traditional scores of person, interaction, situation, 
*** trait, and nontrait)

COUNT cau_per = e1 e2 e3 e4 e5 (111, 112, 113, 114, 115, 116, 117, 118, 119).

COUNT cau_ia = e1 e2 e3 e4 e5 (130, 150, 170, 131, 151, 171, 132, 152, 172, 133, 153, 173, 134,
 154, 174, 135, 155, 175, 136, 156, 176, 137, 157, 177, 138, 158, 178, 139, 159, 179).

COUNT cau_sit = e1 e2 e3 e4 e5 (120, 140, 141, 142, 143, 144, 145, 148, 149, 160). 

COUNT cau_TR = e1 e2 e3 e4 e5 (115, 119).

COUNT cau_nTR = e1 e2 e3 e4 e5 (111, 112, 113, 114, 116, 117, 118).

COMP cau = sum(cau_per, cau_ia, cau_sit).

** The following restrictions ensure that the presence or absence of 
** traits is COUNTed only when there actually was a person cause given -- it would 
** make no sense to COUNT zeros (no trait) if there wasn't the possibility for
** a disposition in the first place. In those cases, the parameter "trait" is 
** set to msissing value.

do if cau_per = 0.
recode cau_TR cau_nTR (0 = sysmis).
end if.

do if cau = 0.
recode cau_per cau_ia cau_sit  (0 = sysmis).
end if.


*** CAUSAL HISTORY OF REASON EXPLANATIONS (again, traditional scores of person, 
*** interaction, situation, Disposition, and nondisposition)

COUNT chr_per = e1 e2 e3 e4 e5 (211, 212, 213, 214, 215, 216, 217, 218, 219).

COUNT chr_ia = e1 e2 e3 e4 e5 (230, 250, 270, 231, 251, 271, 232, 252, 272, 233, 253, 273,
 234, 254, 274, 235, 255, 275, 236, 256, 276, 237, 257, 277, 238, 258, 278, 239, 259, 279).

COUNT chr_sit = e1 e2 e3 e4 e5 (220, 240, 241, 242, 243, 244, 245, 247, 249, 260).

COUNT chr_TR = e1 e2 e3 e4 e5 (215, 219).

COUNT chr_nTR = e1 e2 e3 e4 e5 (211, 212, 213, 214, 216, 217, 218).

COMP chr = sum(chr_per, chr_ia, chr_sit).
*** Excluding invalid CHR scores

do if (chr_per = 0).
recode chr_TR chr_nTR (0 = sysmis).
end if.

do if chr = 0.
recode chr_per chr_ia chr_sit  (0 = sysmis).
end if.

** All explanations of intentional behavior, both reasons and causal histories

COUNT int = e1 e2 e3 e4 e5 (200 through 499).

do if int = 0.
recode chr (0 = sysmis).
end if.


** REASONS 

** First are the "molecular" parameters: reasons of a certain type (e.g., desire) with a certain 
** content (e.g., agent) and present or absent mental state marker .

COUNT md_per = e1 e2 e3 e4 e5  (311).
COUNT mb_per = e1 e2 e3 e4 e5  (312).
COUNT mv_per = e1 e2 e3 e4 e5  (313).
COUNT ud_per = e1 e2 e3 e4 e5  (411).
COUNT ub_per = e1 e2 e3 e4 e5  (412).
COUNT uv_per = e1 e2 e3 e4 e5  (413).

COUNT md_ia = e1 e2 e3 e4 e5 (331, 351, 371).
COUNT mb_ia = e1 e2 e3 e4 e5 (332, 352, 372).
COUNT mv_ia = e1 e2 e3 e4 e5 (333, 353, 373).
COUNT ud_ia = e1 e2 e3 e4 e5 (431, 451, 471).
COUNT ub_ia = e1 e2 e3 e4 e5 (432, 452, 472).
COUNT uv_ia = e1 e2 e3 e4 e5 (433, 453, 473).

COUNT md_sit = e1 e2 e3 e4 e5 (321, 341, 361).
COUNT mb_sit = e1 e2 e3 e4 e5 (322, 342, 362).
COUNT mv_sit = e1 e2 e3 e4 e5 (323, 343, 363).
COUNT ud_sit = e1 e2 e3 e4 e5 (421, 441, 461).
COUNT ub_sit = e1 e2 e3 e4 e5 (422, 442, 462).
COUNT uv_sit = e1 e2 e3 e4 e5 (423, 443, 463).


** Creating overarching parameters

COMP rea = sum (md_per, md_ia, md_sit, mb_per, mb_ia, mb_sit,
 mv_per, mv_ia, mv_sit, ud_per, ud_ia, ud_sit, ub_per, ub_ia, ub_sit,
 uv_per, uv_ia, uv_sit).

COMP d = sum(md_per, md_ia, md_sit, ud_per, ud_ia, ud_sit).
COMP b = sum(mb_per, mb_ia, mb_sit, ub_per, ub_ia, ub_sit).
COMP v = sum(mv_per, mv_ia, mv_sit, uv_per, uv_ia, uv_sit).

* Excluding invalid codes and subcodes 

do if (d = 0).
recode md_per, md_ia, md_sit, ud_per, ud_ia, ud_sit (0 = sysmis).
end if.
do if (b = 0).
recode mb_per, mb_ia, mb_sit, ub_per, ub_ia, ub_sit (0 = sysmis).
end if.
do if (v = 0).
recode mv_per, mv_ia, mv_sit, uv_per, uv_ia, uv_sit (0 = sysmis).
end if.

do if (rea = 0).
recode d b v (0 = sysmis).
end if.

do if int = 0.
recode rea (0 = sysmis).
end if.

*** Creating intermediate-level scores 

** Marked or unmarked desires/beliefs/valuings (across contents).

COMP md = sum (md_per, md_ia, md_sit).
COMP mb = sum (mb_per, mb_ia, mb_sit).
COMP mv = sum (mv_per, mv_ia, mv_sit).
COMP ud = sum (ud_per, ud_ia, ud_sit).
COMP ub = sum (ub_per, ub_ia, ub_sit).
COMP uv = sum (uv_per, uv_ia, uv_sit).

** Desires/beliefs/valings for each content but irrespective of marked/unmarked.

COMP  d_per = sum( md_per, ud_per).
COMP  b_per = sum( mb_per, ub_per).
COMP  v_per = sum( mv_per, uv_per).
COMP  d_ia = sum( md_ia, ud_ia).
COMP  b_ia = sum( mb_ia, ub_ia).
COMP  v_ia = sum( mv_ia, uv_ia).
COMP  d_sit = sum(md_sit,ud_sit).
COMP  b_sit = sum(mb_sit,ub_sit).
COMP  v_sit = sum(mv_sit,uv_sit).
	 
** Marked/unmarked reasons with each content (across des/bel/val).
 
COMP  mr_per = sum (md_per,  mb_per,  mv_per).
COMP  ur_per = sum (ud_per,  ub_per,  uv_per).
COMP  mr_ia =  sum (md_ia,  mb_ia,  mv_ia).
COMP  ur_ia =  sum (ud_ia,  ub_ia,  uv_ia).
COMP  mr_sit = sum (md_sit, mb_sit, mv_sit).
COMP  ur_sit = sum (ud_sit, ub_sit, uv_sit).

** Preferred content across type and marker

COMP  rea_per= sum (d_per,  b_per,  v_per).
COMP  rea_ia  = sum (d_ia,  b_ia,  v_ia).
COMP  rea_sit = sum (d_sit, b_sit, v_sit).

** Overall use of markers (across type and content)

COMP m = sum (md, mb, mv).
COMP u = sum (ud, ub, uv).

END REPEAT.
EXECUTE.

** Appropriate averaging of counts to yield per-behavior scores comes next.  
** (For many analyses not all of these scores may be needed.)

COMP chr = mean(chr1, chr2, chr3, chr4, chr5, chr6).
COMP rea = mean(rea1, rea2, rea3, rea4, rea5, rea6).

COMP d = mean(d1, d2, d3, d4, d5, d6).
COMP b = mean(b1, b2, b3, b4, b5, b6).
COMP v = mean(v1, v2, v3, v4, v5, v6).

COMP md = mean(md1, md2, md3, md4, md5, md6).
COMP mb = mean(mb1, mb2, mb3, mb4, mb5, mb6).
COMP mv = mean(mv1, mv2, mv3, mv4, mv5, mv6).

COMP ud = mean(ud1, ud2, ud3, ud4, ud5, ud6).
COMP ub = mean(ub1, ub2, ub3, ub4, ub5, ub6).
COMP uv = mean(uv1, uv2, uv3, uv4, uv5, uv6).

COMP d_per = mean(d_per1,	d_per2, d_per3, d_per4, d_per5, d_per6).
COMP b_per = mean(b_per1, b_per2, b_per3, b_per4, b_per5, b_per6).
COMP v_per = mean(v_per1, v_per2, v_per3, v_per4, v_per5, v_per6).
COMP d_ia = mean(d_ia1, d_ia2, d_ia3, d_ia4, d_ia5, d_ia6).
COMP b_ia = mean(b_ia1, b_ia2, b_ia3, b_ia4, b_ia5, b_ia6).
COMP v_ia = mean(v_ia1, v_ia2, v_ia3, v_ia4, v_ia5, v_ia6).
COMP d_sit = mean(d_sit1, d_sit2, d_sit3, d_sit4, d_sit5, d_sit6).
COMP b_sit = mean(b_sit1, b_sit2, b_sit3, b_sit4, b_sit5, b_sit6).
COMP v_sit = mean(v_sit1, v_sit2, v_sit3, v_sit4, v_sit5, v_sit6).

COMP s_per = mean(s_per1, s_per2, s_per3, s_per4, s_per5, s_per6).
COMP s_ia = mean(s_ia1, s_ia2, s_ia3, s_ia4, s_ia5, s_ia6).
COMP s_sit = mean(s_sit1, s_sit2, s_sit3, s_sit4, s_sit5, s_sit6).

COMP cau_per = mean(cau_per1, cau_per2, cau_per3, cau_per4, cau_per5, cau_per6).
COMP cau_ia = mean(cau_ia1, cau_ia2, cau_ia3, cau_ia4, cau_ia5, cau_ia6).
COMP cau_sit = mean(cau_sit1, cau_sit2, cau_sit3, cau_sit4, cau_sit5, cau_sit6).

COMP cau_TR = mean(cau_TR1, cau_TR2, cau_TR3, cau_TR4, cau_TR5, cau_TR6).
COMP cau_nTR = mean(cau_nTR1, cau_nTR2, cau_nTR3, cau_nTR4, cau_nTR5, cau_nTR6).

COMP chr_per = mean(chr_per1, chr_per2, chr_per3, chr_per4, chr_per5, chr_per6).
COMP chr_ia = mean(chr_ia1, chr_ia2, chr_ia3, chr_ia4, chr_ia5, chr_ia6).
COMP chr_sit = mean(chr_sit1, chr_sit2, chr_sit3, chr_sit4, chr_sit5, chr_sit6).

COMP chr_TR = mean(chr_TR1, chr_TR2, chr_TR3, chr_TR4, chr_TR5, chr_TR6).
COMP chr_nTR = mean(chr_nTR1, chr_nTR2, chr_nTR3, chr_nTR4, chr_nTR5, chr_nTR6).

** The data can now be analyzed for each explanation parameter.  We typically run
** within-subject Anovas, contrasting reasons vs. causal histories, belief reasons 
** vs. desire reasons, etc.  
** 	Because the scores have been coded independently, one can also choose to 
** analyze the parameters as bundles of correlated multivariate dependent variables
** (e.g., the pair of rea, chr; or the triplet of d, b, v).  However, the interpretation 
** differs. The multivariate main effect (e.g., between two groups) of the reason type 
** set of d, b, v shows that the two groups differ in reasons, and the discriminant function
** coefficients for each reason type shows how much each contributes to this group difference.
** The multivariate main effect of the rea, chr set shows that the two groups differ in
** overall number of explanations, and the discriminant function coefficients show whether 
** reasons or causal histories more strongly contribute to this group difference.

manova chr rea by COND(1,2)
 /wsfact = rea_chr(2)
 /print = transform omeans signif(efsize) .

** For the reason type analyses (3-level w/s factor), we choose a pair of 
** orthogonal contrasts, (1) desire vs. belief and (2) desire/belief vs. valuing.  In
** SPSS, this contrast is called a "difference contrast," hence the /contr subcommand diff

manova d b v  by Cond( 1,2)
 /wsfact = reatype(3)
 /contr (reatype) = diff
 /rename = intercep des_bel db_val
 /print = transform omeans signif(efsize, univ) .

manova ub mb by Cond( 1,2)
 /wsfact = marked_bel(2)
 /print = transform omeans signif(efsize, univ) .

** We typically don't examine the difference between marked and unmarked _desire_ reasons,
** but there may of course be occasions in which one would (e.g., in an exploratory study 
** or when examining self-focus or mind focus).

manova ud md by Cond( 1,2)
 /wsfact = marked_des(2)
 /print = transform omeans signif(efsize, univ) .

** Below are a variety of test of the class person-situation distinction, with 
** interactions coded separately to get the cleanest possible difference.  The
** appropriate contrast is therefore again an orthogonal difference pair: person vs.
** situation and person/situation vs. interaction.

** This first one treats all explanations as part of the same "universe" and simply 
** assesses whether the explainer mentions primarily the person, the situation, or 
** an interaction. The subsequent ones test more specific person-situation differences,
** namely for causal history explanations, cause explanations (of unintentional behavior),
** and reason contents.

manova  s_per s_sit s_ia by Cond( 1,2)
 /wsfact = surface(3) 
 /contr(surface) = diff
 /rename = intercep sit_per ps_ia
 /print = transform omeans signif(efsize, univ).

manova chr_per chr_sit chr_ia by Cond( 1,2)
 /wsfact = causes(3) 
 /contr(causes) = diff
 /rename = intercep sit_per ps_ia
 /print = transform omeans signif(efsize, univ).

manova cau_per cau_sit cau_ia by Cond( 1,2)
 /wsfact = causes(3) 
 /contr(causes) = diff
 /rename = intercep sit_per ps_ia
 /print = transform omeans signif(efsize, univ).

manova  rea_per rea_sit rea_ia by Cond( 1,2)
 /wsfact = reacont(3) 
 /contr(reacont) = diff
 /rename = intercep sit_per ps_ia
 /print = transform omeans signif(efsize, univ).

** Finally, two tests examoine the contrast between traits vs. nontraits

manova s_TR s_nTR  by Cond( 1,2)
 /wsfact = traits (2)
 /print =  omeans signif(efsize).

manova cau_TR cau_nTR  by Cond( 1,2)
 /wsfact = traits (2)
 /print =  omeans signif(efsize).

manova chr_TR chr_nTR  by Cond( 1,2)
 /wsfact = traits (2)
 /print =  omeans signif(efsize).

