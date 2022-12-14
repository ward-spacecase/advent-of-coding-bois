//
//  Day7.swift
//  AOC
//
//  Created by Brayden Lemke on 12/13/22.
//

import Foundation

protocol SystemSpace {
    var name: String {get}
    var isDirectory: Bool {get}
}

struct Day7 {

    let input = """
    $ cd /
    $ ls
    dir fnsvfbzt
    dir hqdssf
    dir jwphbz
    dir lncqsmj
    dir mhqs
    dir trwqgzsb
    132067 vjw
    dir wbsph
    $ cd fnsvfbzt
    $ ls
    62158 sfwnts.hbj
    $ cd ..
    $ cd hqdssf
    $ ls
    45626 cvcbmcm
    dir dlsmjsbz
    dir hqdssf
    dir mhqs
    dir mtw
    dir sfccfsrd
    dir shzgg
    $ cd dlsmjsbz
    $ ls
    9205 qcqbgd.lzd
    $ cd ..
    $ cd hqdssf
    $ ls
    105963 mhqs.zrn
    87909 slwshm.nwr
    $ cd ..
    $ cd mhqs
    $ ls
    dir ctfl
    45923 jvvl.rcs
    dir jzjm
    dir lncqsmj
    dir mhqs
    dir wfbvtfmr
    $ cd ctfl
    $ ls
    dir shzgg
    $ cd shzgg
    $ ls
    18097 cvcbmcm
    289064 mhqs
    208557 slwshm.nwr
    283449 vjw
    dir wfbvtfmr
    $ cd wfbvtfmr
    $ ls
    263560 dssbpgnl.szh
    dir hnqjmq
    76551 jvvl.rcs
    195911 lncqsmj
    185776 slwshm.nwr
    $ cd hnqjmq
    $ ls
    3307 rjd.lgh
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd jzjm
    $ ls
    31719 rjjrg.pjq
    $ cd ..
    $ cd lncqsmj
    $ ls
    dir mhqs
    $ cd mhqs
    $ ls
    138296 wfbvtfmr
    $ cd ..
    $ cd ..
    $ cd mhqs
    $ ls
    175499 jvvl.rcs
    dir rqznrr
    108476 slwshm.nwr
    199853 vjw
    $ cd rqznrr
    $ ls
    105075 shslmlt.spg
    $ cd ..
    $ cd ..
    $ cd wfbvtfmr
    $ ls
    131522 rjjrg.pjq
    $ cd ..
    $ cd ..
    $ cd mtw
    $ ls
    dir dcgpfrsf
    dir gwqm
    188911 hqdssf
    34693 jvvl.rcs
    dir shzgg
    $ cd dcgpfrsf
    $ ls
    47863 dfwthflp.jwq
    203815 dqbqbps.prq
    dir mhqs
    183653 rqjqpm.bbr
    220694 vjw
    $ cd mhqs
    $ ls
    74450 tjpn
    $ cd ..
    $ cd ..
    $ cd gwqm
    $ ls
    dir trghjhvs
    $ cd trghjhvs
    $ ls
    dir shzgg
    2620 slwshm.nwr
    $ cd shzgg
    $ ls
    73435 shzgg.bbf
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd shzgg
    $ ls
    184378 rjjrg.pjq
    $ cd ..
    $ cd ..
    $ cd sfccfsrd
    $ ls
    87317 ccvs.phq
    dir cqmgf
    dir cssmfv
    dir hhhqdmz
    17971 mhqs
    dir mvjttqr
    264394 slwshm.nwr
    dir stdzptb
    dir tcddd
    dir zmrt
    dir zqqtb
    $ cd cqmgf
    $ ls
    202804 tcrqqlgs
    $ cd ..
    $ cd cssmfv
    $ ls
    13440 jnhzrtfd
    $ cd ..
    $ cd hhhqdmz
    $ ls
    dir fdbpld
    272827 jftd.lml
    dir prqbhbv
    dir wbzvmz
    $ cd fdbpld
    $ ls
    dir bgrnz
    dir dcdj
    78284 jqqfc.tzz
    147731 lbdsh.plp
    269235 ntf.gmq
    $ cd bgrnz
    $ ls
    dir qzs
    dir rcv
    dir wmrmhdd
    $ cd qzs
    $ ls
    156779 lncqsmj.gnf
    $ cd ..
    $ cd rcv
    $ ls
    224927 dvbw.svf
    dir hqdssf
    dir jjmsqft
    255189 mhqs.pcl
    dir mvgqtlm
    dir pjs
    dir sljw
    $ cd hqdssf
    $ ls
    63099 blpdwd
    96035 jvvl.rcs
    40533 lvpsmzw
    205031 rjjrg.pjq
    59874 shzgg.ldg
    dir zdnfpwlw
    $ cd zdnfpwlw
    $ ls
    109325 hqdssf.fmj
    41775 jfqhq.tdn
    203744 nprghch.zjb
    dir qfs
    dir rzctqrgm
    dir shzgg
    $ cd qfs
    $ ls
    234449 vjw
    $ cd ..
    $ cd rzctqrgm
    $ ls
    99041 cvcbmcm
    $ cd ..
    $ cd shzgg
    $ ls
    149752 mhqs.bds
    126331 rjjrg.pjq
    75464 vbcjqdjv
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd jjmsqft
    $ ls
    47522 shzgg
    $ cd ..
    $ cd mvgqtlm
    $ ls
    dir tgtbj
    dir tmrsn
    dir vpv
    $ cd tgtbj
    $ ls
    86585 lbmv.jcr
    202755 rjjrg.pjq
    $ cd ..
    $ cd tmrsn
    $ ls
    150980 hqdssf.hmh
    $ cd ..
    $ cd vpv
    $ ls
    197783 jvvl.rcs
    $ cd ..
    $ cd ..
    $ cd pjs
    $ ls
    216539 cvcbmcm
    159509 jgfphj
    195297 pdgnb.qjd
    162974 rjjrg.pjq
    $ cd ..
    $ cd sljw
    $ ls
    61689 hqdssf.bbn
    $ cd ..
    $ cd ..
    $ cd wmrmhdd
    $ ls
    92888 msgcqfbf
    $ cd ..
    $ cd ..
    $ cd dcdj
    $ ls
    99280 mclcnw
    $ cd ..
    $ cd ..
    $ cd prqbhbv
    $ ls
    102589 bqlcds.pqp
    107625 mhqs
    281871 mvwvdtd.dzf
    $ cd ..
    $ cd wbzvmz
    $ ls
    287371 tnwgfw
    $ cd ..
    $ cd ..
    $ cd mvjttqr
    $ ls
    dir dtf
    dir frcqdb
    dir hqdssf
    55645 slwshm.nwr
    dir zdzchmtq
    $ cd dtf
    $ ls
    121764 cvcbmcm
    279094 lncqsmj
    68484 slwshm.nwr
    278387 vjw
    $ cd ..
    $ cd frcqdb
    $ ls
    233216 lncqsmj.mbd
    217901 slwshm.nwr
    $ cd ..
    $ cd hqdssf
    $ ls
    dir dgdtm
    260973 qnt
    231311 thdrddd.zmj
    160399 vjw
    dir vpqjmmf
    197241 vqvzsv.nzg
    $ cd dgdtm
    $ ls
    dir cnshbf
    173312 vjw
    $ cd cnshbf
    $ ls
    72788 hqdssf.mhc
    122945 rjjrg.pjq
    $ cd ..
    $ cd ..
    $ cd vpqjmmf
    $ ls
    127969 hqdssf.stc
    267724 lncqsmj
    55890 mhqs.mql
    dir tsbtz
    $ cd tsbtz
    $ ls
    244065 qqfnbd.nqv
    59649 qttbcgd.vtj
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd zdzchmtq
    $ ls
    271886 lmphsmv
    dir nncghrr
    $ cd nncghrr
    $ ls
    180468 rjjrg.pjq
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd stdzptb
    $ ls
    19398 frsztqqz.mnc
    $ cd ..
    $ cd tcddd
    $ ls
    dir hqdssf
    71084 jvvl.rcs
    dir wnzhld
    $ cd hqdssf
    $ ls
    178907 gcslqrn
    $ cd ..
    $ cd wnzhld
    $ ls
    206073 hpdnj
    $ cd ..
    $ cd ..
    $ cd zmrt
    $ ls
    dir bmfgjr
    dir bpztq
    dir chsh
    dir dpjhn
    288144 mhqs.zvb
    $ cd bmfgjr
    $ ls
    189592 jhmgm
    $ cd ..
    $ cd bpztq
    $ ls
    184906 rjjrg.pjq
    $ cd ..
    $ cd chsh
    $ ls
    110753 jvvl.rcs
    dir lncqsmj
    dir njdgplj
    dir qhpplfnd
    190460 rjjrg.pjq
    144668 wfbvtfmr.flv
    $ cd lncqsmj
    $ ls
    dir pzd
    $ cd pzd
    $ ls
    287833 vhfjdg.jrz
    $ cd ..
    $ cd ..
    $ cd njdgplj
    $ ls
    dir cbvz
    dir vfhj
    $ cd cbvz
    $ ls
    dir rtpcsrf
    $ cd rtpcsrf
    $ ls
    240018 wfbvtfmr
    $ cd ..
    $ cd ..
    $ cd vfhj
    $ ls
    152840 cbbrgc.wnq
    243656 hqdssf
    36325 hqdssf.fhn
    $ cd ..
    $ cd ..
    $ cd qhpplfnd
    $ ls
    206490 dfththnq.vnm
    $ cd ..
    $ cd ..
    $ cd dpjhn
    $ ls
    127322 rjjrg.pjq
    dir shzgg
    $ cd shzgg
    $ ls
    165774 cvcbmcm
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd zqqtb
    $ ls
    dir ljnmbqvd
    60485 pcz.snl
    274930 slwshm.nwr
    131928 vqm
    51341 wfbvtfmr.stc
    $ cd ljnmbqvd
    $ ls
    268048 bdbjn
    dir fjh
    dir qpclpbz
    dir rqpljw
    dir tzjftf
    255809 vjw
    243604 wfbvtfmr.rzb
    $ cd fjh
    $ ls
    180021 hqdssf.rqs
    $ cd ..
    $ cd qpclpbz
    $ ls
    109952 blmm.nsv
    dir dltbt
    dir htbzp
    287761 mfbd
    dir mhqs
    dir vgbvrwvn
    dir wmhd
    $ cd dltbt
    $ ls
    205121 dfzlcv.hjf
    56409 hpqhhmb.sss
    233277 hqdssf.qcb
    187838 mbmcfhf.fnj
    dir rrqjn
    dir swrgj
    151306 tqjzq.dmg
    $ cd rrqjn
    $ ls
    240447 lncqsmj
    $ cd ..
    $ cd swrgj
    $ ls
    dir lnnwdbt
    dir sgjsn
    dir wfbvtfmr
    $ cd lnnwdbt
    $ ls
    213111 tnn.bhq
    $ cd ..
    $ cd sgjsn
    $ ls
    dir wpprqhs
    $ cd wpprqhs
    $ ls
    dir hqdssf
    $ cd hqdssf
    $ ls
    209286 qbdfzdzw.sgp
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd wfbvtfmr
    $ ls
    199298 hqdssf.chs
    123953 rjjrg.pjq
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd htbzp
    $ ls
    dir bmfr
    68162 bzwcswr.mlv
    284074 dtzwf
    270421 jpsvh.ncc
    dir mwbvz
    95631 shzgg.tbf
    44434 vjw
    $ cd bmfr
    $ ls
    19937 shzgg
    $ cd ..
    $ cd mwbvz
    $ ls
    156668 rjjrg.pjq
    $ cd ..
    $ cd ..
    $ cd mhqs
    $ ls
    111821 ftrv.zcw
    dir jsnlcn
    dir mhqs
    dir rjdwmb
    dir sfmrwgd
    $ cd jsnlcn
    $ ls
    7527 smqts.cnc
    dir svdw
    $ cd svdw
    $ ls
    173846 vjtrp
    $ cd ..
    $ cd ..
    $ cd mhqs
    $ ls
    dir hswdjgg
    30326 rjjrg.pjq
    $ cd hswdjgg
    $ ls
    285037 jvvl.rcs
    $ cd ..
    $ cd ..
    $ cd rjdwmb
    $ ls
    219498 twl.lmw
    $ cd ..
    $ cd sfmrwgd
    $ ls
    168290 ltwpm.fjl
    $ cd ..
    $ cd ..
    $ cd vgbvrwvn
    $ ls
    dir bswv
    dir hqdssf
    dir mhqs
    $ cd bswv
    $ ls
    121032 cncdt
    dir jrbmlg
    dir lncqsmj
    dir mhmgn
    65380 rjjrg.pjq
    dir wfbvtfmr
    $ cd jrbmlg
    $ ls
    37975 shzgg.bnq
    $ cd ..
    $ cd lncqsmj
    $ ls
    114558 jvvl.rcs
    dir mhqs
    dir nfn
    dir nhlbfq
    141816 phtt.phj
    181530 vjw
    224510 zmzp.jwg
    $ cd mhqs
    $ ls
    dir wpnw
    $ cd wpnw
    $ ls
    286077 lncqsmj.cld
    $ cd ..
    $ cd ..
    $ cd nfn
    $ ls
    269740 cvcbmcm
    87123 mhqs.nst
    61029 mhqs.vhb
    211712 slwshm.nwr
    $ cd ..
    $ cd nhlbfq
    $ ls
    247458 lncqsmj
    $ cd ..
    $ cd ..
    $ cd mhmgn
    $ ls
    85806 vjw
    $ cd ..
    $ cd wfbvtfmr
    $ ls
    275888 cvvhvg.pwv
    151703 gnbm
    61419 grcfbwdp
    150382 gzdmzj.wpc
    dir mtrqcwrd
    112827 nbtjlnt.srg
    $ cd mtrqcwrd
    $ ls
    273564 shzgg.tbm
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd hqdssf
    $ ls
    72227 ccvwdrs.dsf
    141028 dctbz.spr
    dir shzgg
    277461 slwshm.nwr
    94390 stgp.trm
    24297 vgdzsrrl.dhg
    $ cd shzgg
    $ ls
    143437 lncqsmj.vpl
    78418 pbdwbmtd.nlp
    28173 vlfj.tps
    $ cd ..
    $ cd ..
    $ cd mhqs
    $ ls
    97312 jvvl.rcs
    dir qqfbsz
    42472 rjjrg.pjq
    dir wfbvtfmr
    $ cd qqfbsz
    $ ls
    dir lncqsmj
    dir mhqs
    $ cd lncqsmj
    $ ls
    186873 wfbvtfmr.lfh
    $ cd ..
    $ cd mhqs
    $ ls
    dir wfbvtfmr
    $ cd wfbvtfmr
    $ ls
    234441 gsjwsn
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd wfbvtfmr
    $ ls
    55214 dgf
    dir fdtz
    6756 jvvl.rcs
    226995 rpsjvr.wpb
    68993 vjw
    $ cd fdtz
    $ ls
    dir rdzsjm
    $ cd rdzsjm
    $ ls
    dir mjgfpvc
    $ cd mjgfpvc
    $ ls
    dir vfcq
    $ cd vfcq
    $ ls
    dir fmtfm
    $ cd fmtfm
    $ ls
    200137 dvbqjq
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd wmhd
    $ ls
    dir hnn
    dir rzt
    $ cd hnn
    $ ls
    16335 wfbvtfmr.vhw
    262909 zgtln.dwc
    $ cd ..
    $ cd rzt
    $ ls
    285086 mhqs.vsg
    dir qnr
    $ cd qnr
    $ ls
    290611 llnp.hsh
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd rqpljw
    $ ls
    267152 jbv
    $ cd ..
    $ cd tzjftf
    $ ls
    258707 cnfb.dgv
    17087 hqdssf.dtd
    92075 nwvtww
    dir qblrnn
    dir tdg
    $ cd qblrnn
    $ ls
    dir brrqp
    dir frqcc
    25504 jvvl.rcs
    dir lncqsmj
    dir mhqs
    107908 rjjrg.pjq
    286918 rngbhp.ntg
    dir shzgg
    dir wcnh
    dir wfbvtfmr
    $ cd brrqp
    $ ls
    270783 wfbvtfmr
    $ cd ..
    $ cd frqcc
    $ ls
    dir clj
    7502 lncqsmj
    dir mnsbr
    73859 scwltjwh.cqd
    29920 vjw
    dir wpplgrc
    $ cd clj
    $ ls
    31407 grm.pwv
    $ cd ..
    $ cd mnsbr
    $ ls
    dir wfbvtfmr
    99467 whsrtf.gff
    $ cd wfbvtfmr
    $ ls
    81283 cvcbmcm
    $ cd ..
    $ cd ..
    $ cd wpplgrc
    $ ls
    285496 lncqsmj.hwq
    $ cd ..
    $ cd ..
    $ cd lncqsmj
    $ ls
    8972 jvvl.rcs
    $ cd ..
    $ cd mhqs
    $ ls
    119520 hqdssf.tbn
    $ cd ..
    $ cd shzgg
    $ ls
    180825 lncqsmj.rsg
    23507 wfbvtfmr
    $ cd ..
    $ cd wcnh
    $ ls
    98662 tmwrh
    220468 wml.sht
    $ cd ..
    $ cd wfbvtfmr
    $ ls
    283178 hqdssf.ctf
    $ cd ..
    $ cd ..
    $ cd tdg
    $ ls
    283636 cvcbmcm
    117742 gsqzjfn.pmp
    176660 lncqsmj
    dir pbdgbsts
    dir znvv
    $ cd pbdgbsts
    $ ls
    92092 vjw
    $ cd ..
    $ cd znvv
    $ ls
    41213 hqdssf.rnn
    dir pcttrtd
    $ cd pcttrtd
    $ ls
    16759 mhqs.gpb
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd shzgg
    $ ls
    19544 bcn.rws
    dir fqwpwcq
    dir hngpzst
    dir hqdssf
    dir shzgg
    dir vgjr
    dir wfbvtfmr
    $ cd fqwpwcq
    $ ls
    269576 mhqs
    dir pmfv
    $ cd pmfv
    $ ls
    175725 jvvl.rcs
    29161 pnbm.mlr
    $ cd ..
    $ cd ..
    $ cd hngpzst
    $ ls
    18430 cvcbmcm
    dir fgzlgbm
    dir hqdssf
    378 rjjrg.pjq
    dir zjlnsztt
    $ cd fgzlgbm
    $ ls
    134751 dwlfbfjp
    dir hqdssf
    227313 jvvl.rcs
    dir lncqsmj
    dir mhqs
    dir qfjmtvpv
    dir qzm
    114934 shzgg.jdf
    187091 zpgbdnl.twq
    $ cd hqdssf
    $ ls
    87131 bdmdpdf.cqg
    dir fdc
    dir gwgp
    $ cd fdc
    $ ls
    116738 cvcbmcm
    $ cd ..
    $ cd gwgp
    $ ls
    dir qdvss
    dir rpwzw
    dir wfbvtfmr
    $ cd qdvss
    $ ls
    111546 wqnsrnh
    $ cd ..
    $ cd rpwzw
    $ ls
    183614 lfjqvff
    129803 rdwd
    $ cd ..
    $ cd wfbvtfmr
    $ ls
    266779 mhqs
    189793 slwshm.nwr
    279894 sncqtvwp.mff
    40520 vjw
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd lncqsmj
    $ ls
    257714 dtcjv.lsd
    69877 shzgg
    267645 vjw
    $ cd ..
    $ cd mhqs
    $ ls
    257031 stsfrb.gvs
    $ cd ..
    $ cd qfjmtvpv
    $ ls
    dir mhqs
    $ cd mhqs
    $ ls
    91378 wldhvhl
    $ cd ..
    $ cd ..
    $ cd qzm
    $ ls
    dir shn
    $ cd shn
    $ ls
    dir jmmlsvdg
    $ cd jmmlsvdg
    $ ls
    41383 rnlgl.vjv
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd hqdssf
    $ ls
    dir mzj
    $ cd mzj
    $ ls
    169639 sgdn
    $ cd ..
    $ cd ..
    $ cd zjlnsztt
    $ ls
    78315 jfj.sgg
    $ cd ..
    $ cd ..
    $ cd hqdssf
    $ ls
    906 rjjrg.pjq
    $ cd ..
    $ cd shzgg
    $ ls
    163015 mhqs.cnb
    $ cd ..
    $ cd vgjr
    $ ls
    129546 hclg.vbl
    286437 hqdssf
    dir lncqsmj
    1552 nhgwff
    279693 qmpdlw
    83645 slwshm.nwr
    $ cd lncqsmj
    $ ls
    233355 fhpjbpjl.tbh
    $ cd ..
    $ cd ..
    $ cd wfbvtfmr
    $ ls
    218452 jvvl.rcs
    47525 rjjrg.pjq
    109880 tctz.rnd
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd jwphbz
    $ ls
    dir bqbwds
    dir mwnzw
    113414 qgdsgfg.ngj
    141013 qtp
    10795 slwshm.nwr
    $ cd bqbwds
    $ ls
    18049 shzgg
    $ cd ..
    $ cd mwnzw
    $ ls
    169353 dtqlr
    dir hlrgzlph
    dir mhqs
    238527 vjw
    $ cd hlrgzlph
    $ ls
    249097 hqdssf
    86490 pwdmzwb
    $ cd ..
    $ cd mhqs
    $ ls
    176337 rjjrg.pjq
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd lncqsmj
    $ ls
    dir jmsw
    dir mcgm
    dir mpc
    233050 rjjrg.pjq
    30757 shzgg
    250575 slwshm.nwr
    $ cd jmsw
    $ ls
    dir hqdssf
    dir nmsbdqhm
    dir wfbvtfmr
    $ cd hqdssf
    $ ls
    44806 lvzm
    $ cd ..
    $ cd nmsbdqhm
    $ ls
    dir czzp
    dir gcp
    dir gsrnmq
    dir rmngvc
    dir vpfq
    dir vpzvb
    dir wccgblsq
    43981 wfbvtfmr
    $ cd czzp
    $ ls
    95330 slwshm.nwr
    82000 wfbvtfmr
    $ cd ..
    $ cd gcp
    $ ls
    229303 ddsppspd.fcn
    $ cd ..
    $ cd gsrnmq
    $ ls
    dir hrsstlt
    dir rzc
    40890 sfpt
    $ cd hrsstlt
    $ ls
    18477 mnpc.tmh
    $ cd ..
    $ cd rzc
    $ ls
    33078 dmfwf
    149792 wfbvtfmr.jnz
    dir zsnmz
    $ cd zsnmz
    $ ls
    dir gzsnl
    69834 lplszs.rvg
    213489 slwshm.nwr
    dir vrnqh
    $ cd gzsnl
    $ ls
    109060 jvvl.rcs
    122307 svtppnvt.wrz
    $ cd ..
    $ cd vrnqh
    $ ls
    94389 jvvl.rcs
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd rmngvc
    $ ls
    dir jljbrrgg
    $ cd jljbrrgg
    $ ls
    128554 cvcbmcm
    $ cd ..
    $ cd ..
    $ cd vpfq
    $ ls
    73628 rjjrg.pjq
    $ cd ..
    $ cd vpzvb
    $ ls
    265609 rjjrg.pjq
    $ cd ..
    $ cd wccgblsq
    $ ls
    110134 hffzwm.zfr
    $ cd ..
    $ cd ..
    $ cd wfbvtfmr
    $ ls
    209356 jvvl.rcs
    286105 mtsb.bwd
    234687 vcgnlc.cft
    $ cd ..
    $ cd ..
    $ cd mcgm
    $ ls
    203407 cvcbmcm
    $ cd ..
    $ cd mpc
    $ ls
    dir shzgg
    $ cd shzgg
    $ ls
    dir bnb
    $ cd bnb
    $ ls
    232449 lncqsmj.czs
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd ..
    $ cd mhqs
    $ ls
    116955 jvvl.rcs
    $ cd ..
    $ cd trwqgzsb
    $ ls
    88439 jgphdrnq
    $ cd ..
    $ cd wbsph
    $ ls
    dir mhqs
    dir vgh
    $ cd mhqs
    $ ls
    133965 rfh.zdb
    $ cd ..
    $ cd vgh
    $ ls
    36092 rjjrg.pjq
    """

    let testInput = """
    $ cd /
    $ ls
    dir a
    14848514 b.txt
    8504156 c.dat
    dir d
    $ cd a
    $ ls
    dir e
    29116 f
    2557 g
    62596 h.lst
    $ cd e
    $ ls
    584 i
    $ cd ..
    $ cd ..
    $ cd d
    $ ls
    4060174 j
    8033020 d.log
    5626152 d.ext
    7214296 k
    """



    class StorageLinkedList {
        private let root = SystemDirectory(name: "/", isDirectory: true, children: [], parent: nil)
        private var part1 = 0
        private var unusedSpaceGoal = 30000000
        private var part2Candidate: Int = Int.max
        private var spaceUsed: Int {
            root.totalSize
        }
        private var unusedSpace: Int {
            70000000 - spaceUsed
        }
            
        init(input: String) {
            var commands = input.components(separatedBy: "\n")
            createFileSystem(commands: commands, currentIndex: 0, currentWorkingDirectory: root)
            calculateDirectorySizes()
        }
        
        private func createFileSystem(commands: [String], currentIndex: Int, currentWorkingDirectory: SystemDirectory) {
            guard currentIndex < commands.count else { return }
            
            let components = commands[currentIndex].split(separator: " ")
            if components[0] == "$" && components[1] == "cd" {
                if components[2] == ".." {
                    //Move up a directory
                    createFileSystem(commands: commands, currentIndex: currentIndex+1, currentWorkingDirectory: currentWorkingDirectory.parent!)
                }
                if components[2] == "/" {
                    createFileSystem(commands: commands, currentIndex: currentIndex+1, currentWorkingDirectory: root)
                }
                for child in currentWorkingDirectory.children {
                    if child.name == components[2] {
                        createFileSystem(commands: commands, currentIndex: currentIndex+1, currentWorkingDirectory: child as! StorageLinkedList.SystemDirectory)
                        break
                    }
                }
            } else if let size = Int(components[0]) {
                //We have a file
                currentWorkingDirectory.totalSize+=size
                
                var isCopy = false
                for child in currentWorkingDirectory.children {
                    if child.name == components[1] {
                        isCopy = true
                        break
                    }
                }
                if(!isCopy) {
                    currentWorkingDirectory.children.append(SystemFile(name: String(components[1]), isDirectory: false, size: size, parent: currentWorkingDirectory))
                }
            } else if components[0] == "dir" {
                var isCopy = false
                for child in currentWorkingDirectory.children {
                    if child.name == components[1] {
                        isCopy = true
                        break
                    }
                }
                if(!isCopy) {
                    currentWorkingDirectory.children.append(SystemDirectory(name: String(components[1]), isDirectory: true, children: [], parent: currentWorkingDirectory))
                }
            }
            if components[1] != "cd" {
                createFileSystem(commands: commands, currentIndex: currentIndex+1, currentWorkingDirectory: currentWorkingDirectory)
            }
        }
        
        func addItemToFileSystem(item: SystemSpace, to directoryId: UUID) {
            addItemToFileSystem(item: item, to: directoryId, currentDir: root)
        }
        
        private func addItemToFileSystem(item: SystemSpace, to directoryId: UUID, currentDir: SystemDirectory) {
            if directoryId == currentDir.id {
                currentDir.children.append(item)
            } else {
                for child in currentDir.children {
                    if child.isDirectory {
                        addItemToFileSystem(item: item, to: directoryId, currentDir: child as! StorageLinkedList.SystemDirectory)
                    }
                }
            }
        }
        
        private func calculateDirectorySizes() {
            calcuateDirectorySizes(parentDirectory: root)
        }
        
        private func calcuateDirectorySizes(parentDirectory: SystemDirectory) -> Int {
            var totalSize = 0
            for child in parentDirectory.children {
                if let file = child as? SystemFile {
                    totalSize+=file.size
                } else {
                    let directory = child as! SystemDirectory
                    let directorySize = calcuateDirectorySizes(parentDirectory: directory)
                    parentDirectory.totalSize+=directorySize
                    totalSize+=directorySize
                }
            }
            return totalSize
        }
        
        func part1TotalSizeForDirectoriesUnder100_000() -> Int {
            part1 = 0
            part1(currentWorkingDirectory: root)
            return part1
        }
        
        private func part1(currentWorkingDirectory: SystemDirectory) {
            var total = 0
            for child in currentWorkingDirectory.children {
                if let directory = child as? SystemDirectory {
                    part1(currentWorkingDirectory: directory)
                    if directory.totalSize <= 100_000 {
                        total+=directory.totalSize
                    }
                }
            }
            part1+=total
        }
        
        func part2WhichDirectoryToDelete() -> Int {
            part2Candidate = Int.max
            part2(currentWorkingDirectory: root)
            return part2Candidate
        }
        
        private func part2(currentWorkingDirectory: SystemDirectory) {
            for child in currentWorkingDirectory.children {
                if let directory = child as? SystemDirectory {
                    if directory.totalSize < part2Candidate && directory.totalSize > (unusedSpaceGoal - unusedSpace) {
                        part2Candidate = directory.totalSize
                    }
                    part2(currentWorkingDirectory: directory)
                }
            }
        }

        func printFileSystem() {
            print("- / (dir, size=\(root.totalSize))")
            printFileSystem(children: root.children, layer: 1)
        }
        
        private func printFileSystem(children: [SystemSpace], layer: Int) {
            let space = String(repeating: "  ", count: layer)
            for child in children {
                if let file = child as? SystemFile {
                    print(space + "- \(file.name) (file, size=\(file.size))")
                } else {
                    let directory = child as! SystemDirectory
                    print(space + "- \(directory.name) (dir, size=\(directory.totalSize))")
                    printFileSystem(children: directory.children, layer: layer + 1)
                }
            }
        }
        
        class SystemDirectory: SystemSpace {
            var id: UUID = UUID()
            var name: String
            var isDirectory: Bool
            var parent: SystemDirectory?
            var children: [SystemSpace]
            var totalSize: Int = 0
            
            init(name: String, isDirectory: Bool, children: [SystemFile], parent: SystemDirectory?) {
                self.name = name
                self.isDirectory = isDirectory
                self.children = children
                self.parent = parent
            }
        }
        
        class SystemFile: SystemSpace {
            var name: String
            var isDirectory: Bool
            var size: Int
            var parent: SystemDirectory
            
            init(name: String, isDirectory: Bool, size: Int, parent: SystemDirectory) {
                self.name = name
                self.isDirectory = isDirectory
                self.size = size
                self.parent = parent
            }
        }
    }

//    var myFileSystem = StorageLinkedList(input: input)


//    myFileSystem.part2WhichDirectoryToDelete()


}
