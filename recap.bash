#seq -f "%02g" 6
#seq -f "%02g" 19
https://www.howtoforge.com/linux-seq-command/


split -b 20K PRD.TKT.D210423.CD210424_T002800.Th1_noRF sp_

for a in `ls sp3_*`; do     mv $a ${a}_u3; done
YYYY=2021
MM=04
DD=26
oDir=/ama/FCR/pdtdata/vcochard/IR/RA38
for a in `ls sp3_*_u3`
for a in `ls sp2_bm_u2_line_*`
do
   FNAME=$a
   NBTKTFED -c TKT -l ${DD}.${MM}.${YYYY} -f ${oDir}/${FNAME} -Y 2> ${oDir}/${FNAME}_${YYYY}${MM}${DD}_${run}.err 1> ${oDir}/${FNAME}_${YYYY}${MM}${DD}_${run}.out&
done



FNAME=PRD.TKT.D210426.CD210427_T002800.Th0_1_2to5000
oDir=/ama/FCR/pdtdata/vcochard/KBF/TKT
oDir=/ama/FCR/pdtdata/vcochard/IR/RA38
NBTKTFED -c TKT -l ${DD}.${MM}.${YYYY} -f ${oDir}/${FNAME} -Y 2> ${oDir}/${FNAME}_${YYYY}${MM}${DD}_${run}.err 1> ${oDir}/${FNAME}_${YYYY}${MM}${DD}_${run}.out



split -b 20K sp_an_u1 sp2_
split -b 1K sp2_bm_u2 sp3_

[pdtfcr@fcravt10] /ama/FCR/pdtdata/vcochard/IR/RA38 $ grep -c -E "Segment TTN not valid" sp2*err | grep bm
sp2_bm_u2_20210426_.err:2
[pdtfcr@fcravt10] /ama/FCR/pdtdata/vcochard/IR/RA38 $ grep -c -E "Segment TTN not valid" sp3*err
sp3_aa_u3_20210426_.err:0
sp3_ab_u3_20210426_.err:0
sp3_ac_u3_20210426_.err:0
sp3_ad_u3_20210426_.err:1
sp3_ae_u3_20210426_.err:0
sp3_af_u3_20210426_.err:0
sp3_ag_u3_20210426_.err:0
sp3_ah_u3_20210426_.err:0
sp3_ai_u3_20210426_.err:0
sp3_aj_u3_20210426_.err:0
sp3_ak_u3_20210426_.err:0
sp3_al_u3_20210426_.err:0
sp3_am_u3_20210426_.err:0
sp3_an_u3_20210426_.err:0
sp3_ao_u3_20210426_.err:0
sp3_ap_u3_20210426_.err:0
sp3_aq_u3_20210426_.err:0
sp3_ar_u3_20210426_.err:0
sp3_as_u3_20210426_.err:0
sp3_at_u3_20210426_.err:0
