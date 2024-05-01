* 256x256 SRAM Array Netlist
.include "/home/taf27/hspice/libs/CMOS_180nm_L49.lib"
.include "sram_cell.sp"
.include "write_driver.sp"
.include "read_driver.sp"
.include "column_pull_up.sp"


*+++++++++++++++++++++++++++++++++
*++++++++++++SOURCES++++++++++++++
*+++++++++++++++++++++++++++++++++
Vdd vdd 0 1.8
Vwl0 word0 0 0
Vwl1 word1 0 0
Vwl2 word2 0 0
Vwl3 word3 0 0
Vwl4 word4 0 0
Vwl5 word5 0 0
Vwl6 word6 0 0
Vword word7 gnd pwl 0 0 (20n) 0 (21n) 1.8 50n 1.8 (51n) 0
Vwl8 word8 0 0
Vwl9 word9 0 0
Vwl10 word10 0 0
Vwl11 word11 0 0
Vwl12 word12 0 0
Vwl13 word13 0 0
Vwl14 word14 0 0
Vwl15 word15 0 0
Vwl16 word16 0 0
Vwl17 word17 0 0
Vwl18 word18 0 0
Vwl19 word19 0 0
Vwl20 word20 0 0
Vwl21 word21 0 0
Vwl22 word22 0 0
Vwl23 word23 0 0
Vwl24 word24 0 0
Vwl25 word25 0 0
Vwl26 word26 0 0
Vwl27 word27 0 0
Vwl28 word28 0 0
Vwl29 word29 0 0
Vwl30 word30 0 0
Vwl31 word31 0 0
Vwl32 word32 0 0
Vwl33 word33 0 0
Vwl34 word34 0 0
Vwl35 word35 0 0
Vwl36 word36 0 0
Vwl37 word37 0 0
Vwl38 word38 0 0
Vwl39 word39 0 0
Vwl40 word40 0 0
Vwl41 word41 0 0
Vwl42 word42 0 0
Vwl43 word43 0 0
Vwl44 word44 0 0
Vwl45 word45 0 0
Vwl46 word46 0 0
Vwl47 word47 0 0
Vwl48 word48 0 0
Vwl49 word49 0 0
Vwl50 word50 0 0
Vwl51 word51 0 0
Vwl52 word52 0 0
Vwl53 word53 0 0
Vwl54 word54 0 0
Vwl55 word55 0 0
Vwl56 word56 0 0
Vwl57 word57 0 0
Vwl58 word58 0 0
Vwl59 word59 0 0
Vwl60 word60 0 0
Vwl61 word61 0 0
Vwl62 word62 0 0
Vwl63 word63 0 0
Vwl64 word64 0 0
Vwl65 word65 0 0
Vwl66 word66 0 0
Vwl67 word67 0 0
Vwl68 word68 0 0
Vwl69 word69 0 0
Vwl70 word70 0 0
Vwl71 word71 0 0
Vwl72 word72 0 0
Vwl73 word73 0 0
Vwl74 word74 0 0
Vwl75 word75 0 0
Vwl76 word76 0 0
Vwl77 word77 0 0
Vwl78 word78 0 0
Vwl79 word79 0 0
Vwl80 word80 0 0
Vwl81 word81 0 0
Vwl82 word82 0 0
Vwl83 word83 0 0
Vwl84 word84 0 0
Vwl85 word85 0 0
Vwl86 word86 0 0
Vwl87 word87 0 0
Vwl88 word88 0 0
Vwl89 word89 0 0
Vwl90 word90 0 0
Vwl91 word91 0 0
Vwl92 word92 0 0
Vwl93 word93 0 0
Vwl94 word94 0 0
Vwl95 word95 0 0
Vwl96 word96 0 0
Vwl97 word97 0 0
Vwl98 word98 0 0
Vwl99 word99 0 0
Vwl100 word100 0 0
Vwl101 word101 0 0
Vwl102 word102 0 0
Vwl103 word103 0 0
Vwl104 word104 0 0
Vwl105 word105 0 0
Vwl106 word106 0 0
Vwl107 word107 0 0
Vwl108 word108 0 0
Vwl109 word109 0 0
Vwl110 word110 0 0
Vwl111 word111 0 0
Vwl112 word112 0 0
Vwl113 word113 0 0
Vwl114 word114 0 0
Vwl115 word115 0 0
Vwl116 word116 0 0
Vwl117 word117 0 0
Vwl118 word118 0 0
Vwl119 word119 0 0
Vwl120 word120 0 0
Vwl121 word121 0 0
Vwl122 word122 0 0
Vwl123 word123 0 0
Vwl124 word124 0 0
Vwl125 word125 0 0
Vwl126 word126 0 0
Vwl127 word127 0 0
Vwl128 word128 0 0
Vwl129 word129 0 0
Vwl130 word130 0 0
Vwl131 word131 0 0
Vwl132 word132 0 0
Vwl133 word133 0 0
Vwl134 word134 0 0
Vwl135 word135 0 0
Vwl136 word136 0 0
Vwl137 word137 0 0
Vwl138 word138 0 0
Vwl139 word139 0 0
Vwl140 word140 0 0
Vwl141 word141 0 0
Vwl142 word142 0 0
Vwl143 word143 0 0
Vwl144 word144 0 0
Vwl145 word145 0 0
Vwl146 word146 0 0
Vwl147 word147 0 0
Vwl148 word148 0 0
Vwl149 word149 0 0
Vwl150 word150 0 0
Vwl151 word151 0 0
Vwl152 word152 0 0
Vwl153 word153 0 0
Vwl154 word154 0 0
Vwl155 word155 0 0
Vwl156 word156 0 0
Vwl157 word157 0 0
Vwl158 word158 0 0
Vwl159 word159 0 0
Vwl160 word160 0 0
Vwl161 word161 0 0
Vwl162 word162 0 0
Vwl163 word163 0 0
Vwl164 word164 0 0
Vwl165 word165 0 0
Vwl166 word166 0 0
Vwl167 word167 0 0
Vwl168 word168 0 0
Vwl169 word169 0 0
Vwl170 word170 0 0
Vwl171 word171 0 0
Vwl172 word172 0 0
Vwl173 word173 0 0
Vwl174 word174 0 0
Vwl175 word175 0 0
Vwl176 word176 0 0
Vwl177 word177 0 0
Vwl178 word178 0 0
Vwl179 word179 0 0
Vwl180 word180 0 0
Vwl181 word181 0 0
Vwl182 word182 0 0
Vwl183 word183 0 0
Vwl184 word184 0 0
Vwl185 word185 0 0
Vwl186 word186 0 0
Vwl187 word187 0 0
Vwl188 word188 0 0
Vwl189 word189 0 0
Vwl190 word190 0 0
Vwl191 word191 0 0
Vwl192 word192 0 0
Vwl193 word193 0 0
Vwl194 word194 0 0
Vwl195 word195 0 0
Vwl196 word196 0 0
Vwl197 word197 0 0
Vwl198 word198 0 0
Vwl199 word199 0 0
Vwl200 word200 0 0
Vwl201 word201 0 0
Vwl202 word202 0 0
Vwl203 word203 0 0
Vwl204 word204 0 0
Vwl205 word205 0 0
Vwl206 word206 0 0
Vwl207 word207 0 0
Vwl208 word208 0 0
Vwl209 word209 0 0
Vwl210 word210 0 0
Vwl211 word211 0 0
Vwl212 word212 0 0
Vwl213 word213 0 0
Vwl214 word214 0 0
Vwl215 word215 0 0
Vwl216 word216 0 0
Vwl217 word217 0 0
Vwl218 word218 0 0
Vwl219 word219 0 0
Vwl220 word220 0 0
Vwl221 word221 0 0
Vwl222 word222 0 0
Vwl223 word223 0 0
Vwl224 word224 0 0
Vwl225 word225 0 0
Vwl226 word226 0 0
Vwl227 word227 0 0
Vwl228 word228 0 0
Vwl229 word229 0 0
Vwl230 word230 0 0
Vwl231 word231 0 0
Vwl232 word232 0 0
Vwl233 word233 0 0
Vwl234 word234 0 0
Vwl235 word235 0 0
Vwl236 word236 0 0
Vwl237 word237 0 0
Vwl238 word238 0 0
Vwl239 word239 0 0
Vwl240 word240 0 0
Vwl241 word241 0 0
Vwl242 word242 0 0
Vwl243 word243 0 0
Vwl244 word244 0 0
Vwl245 word245 0 0
Vwl246 word246 0 0
Vwl247 word247 0 0
Vwl248 word248 0 0
Vwl249 word249 0 0
Vwl250 word250 0 0
Vwl251 word251 0 0
Vwl252 word252 0 0
Vwl253 word253 0 0
Vwl254 word254 0 0
Vwl255 word255 0 0
*Column access, activates at 110n
Vcol col gnd pwl 0 1.8 (30n) 1.8 (31n) 0 50n 0 (51n) 1.8
*Precharge, activates at 10n
Vpc pc gnd pwl 0 1.8 10n 1.8 11n 0 50n 0 51n 1.8
*Sense amp bias supply
Vsa sa_vcs gnd dc 0.7


*+++++++++++++++++++++++++++++++++
*++++++BITLINE CAPACITANCES+++++++
*+++++++++++++++++++++++++++++++++
*Bitline Capacitances 
Cb bit gnd 330f 
Cbb bitb gnd 330f
X2 bit bitb pc vdd gnd column_pull_up 
X3 bit bitb col sa_vcs sa_out vdd gnd read_driver 


*+++++++++++++++++++++++++++++++++
*+++++++++++SRAM CELLS++++++++++++
*+++++++++++++++++++++++++++++++++
.ic q0=0
.ic qb0=1.8
.ic q1=0
.ic qb1=1.8
.ic q2=0
.ic qb2=1.8
.ic q3=0
.ic qb3=1.8
.ic q4=0
.ic qb4=1.8
.ic q5=0
.ic qb5=1.8
.ic q6=0
.ic qb6=1.8
.ic q7=0
.ic qb7=1.8
.ic q8=0
.ic qb8=1.8
.ic q9=0
.ic qb9=1.8
.ic q10=0
.ic qb10=1.8
.ic q11=0
.ic qb11=1.8
.ic q12=0
.ic qb12=1.8
.ic q13=0
.ic qb13=1.8
.ic q14=0
.ic qb14=1.8
.ic q15=0
.ic qb15=1.8
.ic q16=0
.ic qb16=1.8
.ic q17=0
.ic qb17=1.8
.ic q18=0
.ic qb18=1.8
.ic q19=0
.ic qb19=1.8
.ic q20=0
.ic qb20=1.8
.ic q21=0
.ic qb21=1.8
.ic q22=0
.ic qb22=1.8
.ic q23=0
.ic qb23=1.8
.ic q24=0
.ic qb24=1.8
.ic q25=0
.ic qb25=1.8
.ic q26=0
.ic qb26=1.8
.ic q27=0
.ic qb27=1.8
.ic q28=0
.ic qb28=1.8
.ic q29=0
.ic qb29=1.8
.ic q30=0
.ic qb30=1.8
.ic q31=0
.ic qb31=1.8
.ic q32=0
.ic qb32=1.8
.ic q33=0
.ic qb33=1.8
.ic q34=0
.ic qb34=1.8
.ic q35=0
.ic qb35=1.8
.ic q36=0
.ic qb36=1.8
.ic q37=0
.ic qb37=1.8
.ic q38=0
.ic qb38=1.8
.ic q39=0
.ic qb39=1.8
.ic q40=0
.ic qb40=1.8
.ic q41=0
.ic qb41=1.8
.ic q42=0
.ic qb42=1.8
.ic q43=0
.ic qb43=1.8
.ic q44=0
.ic qb44=1.8
.ic q45=0
.ic qb45=1.8
.ic q46=0
.ic qb46=1.8
.ic q47=0
.ic qb47=1.8
.ic q48=0
.ic qb48=1.8
.ic q49=0
.ic qb49=1.8
.ic q50=0
.ic qb50=1.8
.ic q51=0
.ic qb51=1.8
.ic q52=0
.ic qb52=1.8
.ic q53=0
.ic qb53=1.8
.ic q54=0
.ic qb54=1.8
.ic q55=0
.ic qb55=1.8
.ic q56=0
.ic qb56=1.8
.ic q57=0
.ic qb57=1.8
.ic q58=0
.ic qb58=1.8
.ic q59=0
.ic qb59=1.8
.ic q60=0
.ic qb60=1.8
.ic q61=0
.ic qb61=1.8
.ic q62=0
.ic qb62=1.8
.ic q63=0
.ic qb63=1.8
.ic q64=0
.ic qb64=1.8
.ic q65=0
.ic qb65=1.8
.ic q66=0
.ic qb66=1.8
.ic q67=0
.ic qb67=1.8
.ic q68=0
.ic qb68=1.8
.ic q69=0
.ic qb69=1.8
.ic q70=0
.ic qb70=1.8
.ic q71=0
.ic qb71=1.8
.ic q72=0
.ic qb72=1.8
.ic q73=0
.ic qb73=1.8
.ic q74=0
.ic qb74=1.8
.ic q75=0
.ic qb75=1.8
.ic q76=0
.ic qb76=1.8
.ic q77=0
.ic qb77=1.8
.ic q78=0
.ic qb78=1.8
.ic q79=0
.ic qb79=1.8
.ic q80=0
.ic qb80=1.8
.ic q81=0
.ic qb81=1.8
.ic q82=0
.ic qb82=1.8
.ic q83=0
.ic qb83=1.8
.ic q84=0
.ic qb84=1.8
.ic q85=0
.ic qb85=1.8
.ic q86=0
.ic qb86=1.8
.ic q87=0
.ic qb87=1.8
.ic q88=0
.ic qb88=1.8
.ic q89=0
.ic qb89=1.8
.ic q90=0
.ic qb90=1.8
.ic q91=0
.ic qb91=1.8
.ic q92=0
.ic qb92=1.8
.ic q93=0
.ic qb93=1.8
.ic q94=0
.ic qb94=1.8
.ic q95=0
.ic qb95=1.8
.ic q96=0
.ic qb96=1.8
.ic q97=0
.ic qb97=1.8
.ic q98=0
.ic qb98=1.8
.ic q99=0
.ic qb99=1.8
.ic q100=0
.ic qb100=1.8
.ic q101=0
.ic qb101=1.8
.ic q102=0
.ic qb102=1.8
.ic q103=0
.ic qb103=1.8
.ic q104=0
.ic qb104=1.8
.ic q105=0
.ic qb105=1.8
.ic q106=0
.ic qb106=1.8
.ic q107=0
.ic qb107=1.8
.ic q108=0
.ic qb108=1.8
.ic q109=0
.ic qb109=1.8
.ic q110=0
.ic qb110=1.8
.ic q111=0
.ic qb111=1.8
.ic q112=0
.ic qb112=1.8
.ic q113=0
.ic qb113=1.8
.ic q114=0
.ic qb114=1.8
.ic q115=0
.ic qb115=1.8
.ic q116=0
.ic qb116=1.8
.ic q117=0
.ic qb117=1.8
.ic q118=0
.ic qb118=1.8
.ic q119=0
.ic qb119=1.8
.ic q120=0
.ic qb120=1.8
.ic q121=0
.ic qb121=1.8
.ic q122=0
.ic qb122=1.8
.ic q123=0
.ic qb123=1.8
.ic q124=0
.ic qb124=1.8
.ic q125=0
.ic qb125=1.8
.ic q126=0
.ic qb126=1.8
.ic q127=0
.ic qb127=1.8
.ic q128=0
.ic qb128=1.8
.ic q129=0
.ic qb129=1.8
.ic q130=0
.ic qb130=1.8
.ic q131=0
.ic qb131=1.8
.ic q132=0
.ic qb132=1.8
.ic q133=0
.ic qb133=1.8
.ic q134=0
.ic qb134=1.8
.ic q135=0
.ic qb135=1.8
.ic q136=0
.ic qb136=1.8
.ic q137=0
.ic qb137=1.8
.ic q138=0
.ic qb138=1.8
.ic q139=0
.ic qb139=1.8
.ic q140=0
.ic qb140=1.8
.ic q141=0
.ic qb141=1.8
.ic q142=0
.ic qb142=1.8
.ic q143=0
.ic qb143=1.8
.ic q144=0
.ic qb144=1.8
.ic q145=0
.ic qb145=1.8
.ic q146=0
.ic qb146=1.8
.ic q147=0
.ic qb147=1.8
.ic q148=0
.ic qb148=1.8
.ic q149=0
.ic qb149=1.8
.ic q150=0
.ic qb150=1.8
.ic q151=0
.ic qb151=1.8
.ic q152=0
.ic qb152=1.8
.ic q153=0
.ic qb153=1.8
.ic q154=0
.ic qb154=1.8
.ic q155=0
.ic qb155=1.8
.ic q156=0
.ic qb156=1.8
.ic q157=0
.ic qb157=1.8
.ic q158=0
.ic qb158=1.8
.ic q159=0
.ic qb159=1.8
.ic q160=0
.ic qb160=1.8
.ic q161=0
.ic qb161=1.8
.ic q162=0
.ic qb162=1.8
.ic q163=0
.ic qb163=1.8
.ic q164=0
.ic qb164=1.8
.ic q165=0
.ic qb165=1.8
.ic q166=0
.ic qb166=1.8
.ic q167=0
.ic qb167=1.8
.ic q168=0
.ic qb168=1.8
.ic q169=0
.ic qb169=1.8
.ic q170=0
.ic qb170=1.8
.ic q171=0
.ic qb171=1.8
.ic q172=0
.ic qb172=1.8
.ic q173=0
.ic qb173=1.8
.ic q174=0
.ic qb174=1.8
.ic q175=0
.ic qb175=1.8
.ic q176=0
.ic qb176=1.8
.ic q177=0
.ic qb177=1.8
.ic q178=0
.ic qb178=1.8
.ic q179=0
.ic qb179=1.8
.ic q180=0
.ic qb180=1.8
.ic q181=0
.ic qb181=1.8
.ic q182=0
.ic qb182=1.8
.ic q183=0
.ic qb183=1.8
.ic q184=0
.ic qb184=1.8
.ic q185=0
.ic qb185=1.8
.ic q186=0
.ic qb186=1.8
.ic q187=0
.ic qb187=1.8
.ic q188=0
.ic qb188=1.8
.ic q189=0
.ic qb189=1.8
.ic q190=0
.ic qb190=1.8
.ic q191=0
.ic qb191=1.8
.ic q192=0
.ic qb192=1.8
.ic q193=0
.ic qb193=1.8
.ic q194=0
.ic qb194=1.8
.ic q195=0
.ic qb195=1.8
.ic q196=0
.ic qb196=1.8
.ic q197=0
.ic qb197=1.8
.ic q198=0
.ic qb198=1.8
.ic q199=0
.ic qb199=1.8
.ic q200=0
.ic qb200=1.8
.ic q201=0
.ic qb201=1.8
.ic q202=0
.ic qb202=1.8
.ic q203=0
.ic qb203=1.8
.ic q204=0
.ic qb204=1.8
.ic q205=0
.ic qb205=1.8
.ic q206=0
.ic qb206=1.8
.ic q207=0
.ic qb207=1.8
.ic q208=0
.ic qb208=1.8
.ic q209=0
.ic qb209=1.8
.ic q210=0
.ic qb210=1.8
.ic q211=0
.ic qb211=1.8
.ic q212=0
.ic qb212=1.8
.ic q213=0
.ic qb213=1.8
.ic q214=0
.ic qb214=1.8
.ic q215=0
.ic qb215=1.8
.ic q216=0
.ic qb216=1.8
.ic q217=0
.ic qb217=1.8
.ic q218=0
.ic qb218=1.8
.ic q219=0
.ic qb219=1.8
.ic q220=0
.ic qb220=1.8
.ic q221=0
.ic qb221=1.8
.ic q222=0
.ic qb222=1.8
.ic q223=0
.ic qb223=1.8
.ic q224=0
.ic qb224=1.8
.ic q225=0
.ic qb225=1.8
.ic q226=0
.ic qb226=1.8
.ic q227=0
.ic qb227=1.8
.ic q228=0
.ic qb228=1.8
.ic q229=0
.ic qb229=1.8
.ic q230=0
.ic qb230=1.8
.ic q231=0
.ic qb231=1.8
.ic q232=0
.ic qb232=1.8
.ic q233=0
.ic qb233=1.8
.ic q234=0
.ic qb234=1.8
.ic q235=0
.ic qb235=1.8
.ic q236=0
.ic qb236=1.8
.ic q237=0
.ic qb237=1.8
.ic q238=0
.ic qb238=1.8
.ic q239=0
.ic qb239=1.8
.ic q240=0
.ic qb240=1.8
.ic q241=0
.ic qb241=1.8
.ic q242=0
.ic qb242=1.8
.ic q243=0
.ic qb243=1.8
.ic q244=0
.ic qb244=1.8
.ic q245=0
.ic qb245=1.8
.ic q246=0
.ic qb246=1.8
.ic q247=0
.ic qb247=1.8
.ic q248=0
.ic qb248=1.8
.ic q249=0
.ic qb249=1.8
.ic q250=0
.ic qb250=1.8
.ic q251=0
.ic qb251=1.8
.ic q252=0
.ic qb252=1.8
.ic q253=0
.ic qb253=1.8
.ic q254=0
.ic qb254=1.8
.ic q255=0
.ic qb255=1.8
.param W1=4
.param W5=2
Xsram0 q0 qb0 bit bitb word0 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram1 q1 qb1 bit bitb word1 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram2 q2 qb2 bit bitb word2 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram3 q3 qb3 bit bitb word3 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram4 q4 qb4 bit bitb word4 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram5 q5 qb5 bit bitb word5 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram6 q6 qb6 bit bitb word6 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram7 q7 qb7 bit bitb word7 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram8 q8 qb8 bit bitb word8 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram9 q9 qb9 bit bitb word9 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram10 q10 qb10 bit bitb word10 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram11 q11 qb11 bit bitb word11 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram12 q12 qb12 bit bitb word12 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram13 q13 qb13 bit bitb word13 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram14 q14 qb14 bit bitb word14 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram15 q15 qb15 bit bitb word15 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram16 q16 qb16 bit bitb word16 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram17 q17 qb17 bit bitb word17 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram18 q18 qb18 bit bitb word18 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram19 q19 qb19 bit bitb word19 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram20 q20 qb20 bit bitb word20 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram21 q21 qb21 bit bitb word21 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram22 q22 qb22 bit bitb word22 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram23 q23 qb23 bit bitb word23 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram24 q24 qb24 bit bitb word24 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram25 q25 qb25 bit bitb word25 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram26 q26 qb26 bit bitb word26 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram27 q27 qb27 bit bitb word27 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram28 q28 qb28 bit bitb word28 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram29 q29 qb29 bit bitb word29 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram30 q30 qb30 bit bitb word30 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram31 q31 qb31 bit bitb word31 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram32 q32 qb32 bit bitb word32 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram33 q33 qb33 bit bitb word33 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram34 q34 qb34 bit bitb word34 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram35 q35 qb35 bit bitb word35 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram36 q36 qb36 bit bitb word36 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram37 q37 qb37 bit bitb word37 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram38 q38 qb38 bit bitb word38 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram39 q39 qb39 bit bitb word39 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram40 q40 qb40 bit bitb word40 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram41 q41 qb41 bit bitb word41 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram42 q42 qb42 bit bitb word42 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram43 q43 qb43 bit bitb word43 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram44 q44 qb44 bit bitb word44 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram45 q45 qb45 bit bitb word45 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram46 q46 qb46 bit bitb word46 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram47 q47 qb47 bit bitb word47 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram48 q48 qb48 bit bitb word48 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram49 q49 qb49 bit bitb word49 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram50 q50 qb50 bit bitb word50 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram51 q51 qb51 bit bitb word51 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram52 q52 qb52 bit bitb word52 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram53 q53 qb53 bit bitb word53 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram54 q54 qb54 bit bitb word54 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram55 q55 qb55 bit bitb word55 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram56 q56 qb56 bit bitb word56 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram57 q57 qb57 bit bitb word57 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram58 q58 qb58 bit bitb word58 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram59 q59 qb59 bit bitb word59 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram60 q60 qb60 bit bitb word60 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram61 q61 qb61 bit bitb word61 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram62 q62 qb62 bit bitb word62 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram63 q63 qb63 bit bitb word63 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram64 q64 qb64 bit bitb word64 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram65 q65 qb65 bit bitb word65 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram66 q66 qb66 bit bitb word66 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram67 q67 qb67 bit bitb word67 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram68 q68 qb68 bit bitb word68 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram69 q69 qb69 bit bitb word69 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram70 q70 qb70 bit bitb word70 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram71 q71 qb71 bit bitb word71 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram72 q72 qb72 bit bitb word72 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram73 q73 qb73 bit bitb word73 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram74 q74 qb74 bit bitb word74 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram75 q75 qb75 bit bitb word75 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram76 q76 qb76 bit bitb word76 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram77 q77 qb77 bit bitb word77 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram78 q78 qb78 bit bitb word78 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram79 q79 qb79 bit bitb word79 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram80 q80 qb80 bit bitb word80 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram81 q81 qb81 bit bitb word81 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram82 q82 qb82 bit bitb word82 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram83 q83 qb83 bit bitb word83 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram84 q84 qb84 bit bitb word84 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram85 q85 qb85 bit bitb word85 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram86 q86 qb86 bit bitb word86 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram87 q87 qb87 bit bitb word87 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram88 q88 qb88 bit bitb word88 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram89 q89 qb89 bit bitb word89 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram90 q90 qb90 bit bitb word90 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram91 q91 qb91 bit bitb word91 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram92 q92 qb92 bit bitb word92 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram93 q93 qb93 bit bitb word93 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram94 q94 qb94 bit bitb word94 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram95 q95 qb95 bit bitb word95 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram96 q96 qb96 bit bitb word96 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram97 q97 qb97 bit bitb word97 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram98 q98 qb98 bit bitb word98 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram99 q99 qb99 bit bitb word99 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram100 q100 qb100 bit bitb word100 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram101 q101 qb101 bit bitb word101 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram102 q102 qb102 bit bitb word102 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram103 q103 qb103 bit bitb word103 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram104 q104 qb104 bit bitb word104 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram105 q105 qb105 bit bitb word105 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram106 q106 qb106 bit bitb word106 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram107 q107 qb107 bit bitb word107 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram108 q108 qb108 bit bitb word108 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram109 q109 qb109 bit bitb word109 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram110 q110 qb110 bit bitb word110 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram111 q111 qb111 bit bitb word111 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram112 q112 qb112 bit bitb word112 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram113 q113 qb113 bit bitb word113 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram114 q114 qb114 bit bitb word114 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram115 q115 qb115 bit bitb word115 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram116 q116 qb116 bit bitb word116 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram117 q117 qb117 bit bitb word117 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram118 q118 qb118 bit bitb word118 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram119 q119 qb119 bit bitb word119 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram120 q120 qb120 bit bitb word120 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram121 q121 qb121 bit bitb word121 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram122 q122 qb122 bit bitb word122 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram123 q123 qb123 bit bitb word123 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram124 q124 qb124 bit bitb word124 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram125 q125 qb125 bit bitb word125 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram126 q126 qb126 bit bitb word126 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram127 q127 qb127 bit bitb word127 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram128 q128 qb128 bit bitb word128 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram129 q129 qb129 bit bitb word129 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram130 q130 qb130 bit bitb word130 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram131 q131 qb131 bit bitb word131 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram132 q132 qb132 bit bitb word132 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram133 q133 qb133 bit bitb word133 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram134 q134 qb134 bit bitb word134 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram135 q135 qb135 bit bitb word135 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram136 q136 qb136 bit bitb word136 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram137 q137 qb137 bit bitb word137 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram138 q138 qb138 bit bitb word138 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram139 q139 qb139 bit bitb word139 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram140 q140 qb140 bit bitb word140 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram141 q141 qb141 bit bitb word141 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram142 q142 qb142 bit bitb word142 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram143 q143 qb143 bit bitb word143 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram144 q144 qb144 bit bitb word144 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram145 q145 qb145 bit bitb word145 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram146 q146 qb146 bit bitb word146 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram147 q147 qb147 bit bitb word147 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram148 q148 qb148 bit bitb word148 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram149 q149 qb149 bit bitb word149 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram150 q150 qb150 bit bitb word150 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram151 q151 qb151 bit bitb word151 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram152 q152 qb152 bit bitb word152 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram153 q153 qb153 bit bitb word153 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram154 q154 qb154 bit bitb word154 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram155 q155 qb155 bit bitb word155 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram156 q156 qb156 bit bitb word156 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram157 q157 qb157 bit bitb word157 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram158 q158 qb158 bit bitb word158 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram159 q159 qb159 bit bitb word159 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram160 q160 qb160 bit bitb word160 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram161 q161 qb161 bit bitb word161 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram162 q162 qb162 bit bitb word162 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram163 q163 qb163 bit bitb word163 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram164 q164 qb164 bit bitb word164 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram165 q165 qb165 bit bitb word165 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram166 q166 qb166 bit bitb word166 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram167 q167 qb167 bit bitb word167 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram168 q168 qb168 bit bitb word168 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram169 q169 qb169 bit bitb word169 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram170 q170 qb170 bit bitb word170 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram171 q171 qb171 bit bitb word171 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram172 q172 qb172 bit bitb word172 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram173 q173 qb173 bit bitb word173 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram174 q174 qb174 bit bitb word174 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram175 q175 qb175 bit bitb word175 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram176 q176 qb176 bit bitb word176 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram177 q177 qb177 bit bitb word177 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram178 q178 qb178 bit bitb word178 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram179 q179 qb179 bit bitb word179 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram180 q180 qb180 bit bitb word180 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram181 q181 qb181 bit bitb word181 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram182 q182 qb182 bit bitb word182 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram183 q183 qb183 bit bitb word183 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram184 q184 qb184 bit bitb word184 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram185 q185 qb185 bit bitb word185 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram186 q186 qb186 bit bitb word186 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram187 q187 qb187 bit bitb word187 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram188 q188 qb188 bit bitb word188 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram189 q189 qb189 bit bitb word189 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram190 q190 qb190 bit bitb word190 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram191 q191 qb191 bit bitb word191 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram192 q192 qb192 bit bitb word192 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram193 q193 qb193 bit bitb word193 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram194 q194 qb194 bit bitb word194 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram195 q195 qb195 bit bitb word195 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram196 q196 qb196 bit bitb word196 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram197 q197 qb197 bit bitb word197 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram198 q198 qb198 bit bitb word198 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram199 q199 qb199 bit bitb word199 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram200 q200 qb200 bit bitb word200 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram201 q201 qb201 bit bitb word201 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram202 q202 qb202 bit bitb word202 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram203 q203 qb203 bit bitb word203 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram204 q204 qb204 bit bitb word204 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram205 q205 qb205 bit bitb word205 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram206 q206 qb206 bit bitb word206 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram207 q207 qb207 bit bitb word207 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram208 q208 qb208 bit bitb word208 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram209 q209 qb209 bit bitb word209 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram210 q210 qb210 bit bitb word210 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram211 q211 qb211 bit bitb word211 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram212 q212 qb212 bit bitb word212 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram213 q213 qb213 bit bitb word213 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram214 q214 qb214 bit bitb word214 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram215 q215 qb215 bit bitb word215 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram216 q216 qb216 bit bitb word216 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram217 q217 qb217 bit bitb word217 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram218 q218 qb218 bit bitb word218 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram219 q219 qb219 bit bitb word219 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram220 q220 qb220 bit bitb word220 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram221 q221 qb221 bit bitb word221 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram222 q222 qb222 bit bitb word222 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram223 q223 qb223 bit bitb word223 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram224 q224 qb224 bit bitb word224 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram225 q225 qb225 bit bitb word225 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram226 q226 qb226 bit bitb word226 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram227 q227 qb227 bit bitb word227 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram228 q228 qb228 bit bitb word228 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram229 q229 qb229 bit bitb word229 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram230 q230 qb230 bit bitb word230 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram231 q231 qb231 bit bitb word231 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram232 q232 qb232 bit bitb word232 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram233 q233 qb233 bit bitb word233 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram234 q234 qb234 bit bitb word234 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram235 q235 qb235 bit bitb word235 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram236 q236 qb236 bit bitb word236 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram237 q237 qb237 bit bitb word237 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram238 q238 qb238 bit bitb word238 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram239 q239 qb239 bit bitb word239 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram240 q240 qb240 bit bitb word240 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram241 q241 qb241 bit bitb word241 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram242 q242 qb242 bit bitb word242 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram243 q243 qb243 bit bitb word243 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram244 q244 qb244 bit bitb word244 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram245 q245 qb245 bit bitb word245 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram246 q246 qb246 bit bitb word246 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram247 q247 qb247 bit bitb word247 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram248 q248 qb248 bit bitb word248 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram249 q249 qb249 bit bitb word249 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram250 q250 qb250 bit bitb word250 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram251 q251 qb251 bit bitb word251 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram252 q252 qb252 bit bitb word252 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram253 q253 qb253 bit bitb word253 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram254 q254 qb254 bit bitb word254 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2
Xsram255 q255 qb255 bit bitb word255 vdd gnd SRAM_cell W1=W1 L1=2 W3=4 L3=2 W5=W5 L5=2


*+++++++++++++++++++++++++++++++++
*+++++++++++SIMULATION++++++++++++
*+++++++++++++++++++++++++++++++++
.options post probe
.tran 1n 200n uic
.probe V(bit) V(bitb) V(word7) V(q7) V(qb7) V(sa_out) V(pc) V(col)
.end
