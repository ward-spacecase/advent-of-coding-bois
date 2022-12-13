//
//  Day3.swift
//  AOC
//
//  Created by Brayden Lemke on 12/13/22.
//

import Foundation

struct Day3 {
    let input = """
    NGvdqJmJvpNbGRMGQgRsfgfn
    WlHTHShlLwSWjFRsncfbcwsgQc
    BHtSBHWHSCWLZHlhjTHLLdbNNqNpzpDzNvDvtPmmPp
    JJSShnTpDSJJlllfwBNVbMQWwhQhgQtt
    cTzrvrHdLwwzttQNWB
    qrFqTFvqZvrmsplsjlnDflnZ
    mhhhVHvNNddHMwBqQwlWZZtv
    fbjzjJllCtWjjrZtjq
    CbgcgpPRDJfzVHFFnSnsSDlm
    ZqBPqBQnPLmqZsFqhsvFsLZQMfSSMbbWddWbjbJSrgWgJf
    NRHnlllcDwwCNClNtttHbNJrSJNfbdWMdfbWgdrJ
    cHGlzTptHtCpncHnCpHpRGzDmvVhqLmvLPmPvLqPmzsqqmPB
    rCzVtMMbMvCmmvGlclFQFfLpJFJfJpcLHPJL
    nDGGwqGqnRTfpHLpRFpLFf
    ZNdNTDsWgNZsZBndnGrzrlMrjgrmjVGjvC
    MgFZHFTgqFFDZZDTdVdHrzQvLzCGwpCPrGLqQpzz
    JsnmbjhmffJbRNJppzPPzwzzrwdv
    lfblfthBRbBRjnjhBtBlZgdVcFSTVFDtSSWgMcdM
    hPVhVhWPCMhlDTTWdrPlTcLjfbZbFNjZBbFNBbdBFbsB
    MHSwMJpHnqJHwtqHGqGGmvqZsZFjBmsBNRBFfLbsFsZfsZ
    pqtMHHQpvqnwMpgJMCChTQhVVlclPWrCCD
    zRBBhZFwWZlBQpMZNNNJsfDpLsNsJppN
    SvggPbjvVSvvtgGVPbbnSMcCLtMrDddssJdsLdfdCD
    mTSmMgHjgmgGgqzTwZwBlBFzwB
    WLzWZHWSZPFRVSPSPM
    hmrvmGvfTCmhBGBqTfnmJFfdbQcwdMhMwRdbQMVQQcMhsQ
    JGJJnrnnCmqBTJTrNBqBLDzHFLFDNgjZlWtDNZHL
    bwbbnWwpbTwFHwRzzzmH
    ZccjZjddjPVhJmrBQHHFQRHcWF
    NVhWldsMjZZZLSnvSTGTgvMb
    ccJbHpzccZJsNpJCmHHlBTgHnlTPmF
    qvQGQfDVhhDfvVfVDSdDCbFnjmllPQjlbCmnFgjg
    hSbtWRGvhdfDVdVRfvRNpsWsZLNMZzcswLZWMM
    vlTdlBTMdtjcvLGmtb
    SSgfSsJngCSSwNFgspHFNFFpjlbGjQbbQGLthLnWtmWWhjbm
    SJsfqqgfNHwJfHgCpwzBZVMDBPMMRPTlqzBr
    VHsVhtbRHRpVHBfBCJdNfGjggGJdqLGq
    wSzSrrSMPDSDwzPjdqJjNwGdsLqGjj
    MnrnQTnWZWWzWQDMvZhtHtshhHlHBcBBsvVt
    DZbPqdTqGTZtRrzjFmZZtF
    gjQwVvBVWgfghvgmcrBNFccHFRmHtF
    QlgvWlfgVsQfdlqqjqPDbPlM
    VcfLwwcMlpnfVDrDtrtvbjMtTM
    mmgBgzSQmQdgHBFSLvvbDTJmTDvTJJDr
    RWNBHHzWNSdSdzFgSLNWWfZGwfpcwWVnnfpCCWlV
    GDZLtsJMFGLDPnbblJlNJNcJ
    BBRgSwqwqRZhTVSqjVgRwCdQcmcPmdnPPnPnmjlrbmQj
    RCqfVvhfCCShBCRfVCwztDGZMHpLWHftFptspF
    dlZqlBfBSShZhvprbCJTDrJCJjJNDh
    WGRwQwHsMVVGMsVGcRVtQWRVpNCjWNDbzbDNJnbnrCbprrNW
    HgHRRVGGwLgLBPvgSp
    QPlZSlZzVLLDwhDfBppf
    bghGGhmqrspDcfbsbs
    tTrdTgFddtnvmdgvtCTdGTTqFZjjQQPVZPSZSjlZhVVQjlRS
    BgBFHnwwSTNHqSPN
    GJmCbDdlbZGCLhsstNLsMZZZ
    JGJpCCDvmlVDVldGJBVfBBRwRjnVWWBRfN
    WTFWQgGQtTMqMCJJzDVDgCchhj
    mNPBmPlPHrWmwmNLHmShcnJjhrnzJzdcdzdjJJ
    SHssNRSmvPRmlsmLwwsmwLvpQptpQWMQbGFQFtfpFfZQ
    DgpNLVjgNjjmzGPVRmfrZrctdTcrzfwzdfMc
    bnbNqnbFNwMcMtMfwF
    svCQHHhShnbCvHChsvHlLDVhJJLRJGNpgPJPjLLD
    TmBzgTVVBgfbmTVfPmFRJcHctnHDLDDLJqqBGB
    hwvlNCCvSphMwSvrlwCCrrDcfRlJDLRtGqcqHnqRqLGR
    pMSSMMNCSwMjjWhwrrjShQNFmsPmPFWbbZzVfZsPPPZVmZ
    sTTrWGCMggpVWhSBltWp
    HNJdwLDzNcJnNLwJJPqpllqhBpqStjfwlfpj
    PJHzDzFLtLccdLggvrGGmgvFssgG
    FwCssBFRBlvbBVdQ
    jPzjDpqNGqJzZGSNHppPclFvvdfVflblbJlmFfll
    SDzDpSNqjZjjZFSrHrFZTTCMLsnTLnnnMhrLtLnn
    ScWQvvSDddGrWVrG
    fwhPFLpwTfTjrzwHdmmmGdgdsPsqdRmV
    CHlFpTpwwCjwFjwjCBnrvQBZZcBSnZtvZl
    vJvdWVNslWtJcDtDHrDf
    GCnnMZpZnSZpvDqFtftfjfZqrh
    TbGMSRCRvWbPNsWB
    NNNdsRddGNdZZTCBtqbtBgtC
    zhFHppHhzcgmzQhccjgmjhQTnvvBFtBnCBbbnTvtCCtntt
    HpjmhfSjQwfzwHmcggfzjSLfVWPDsWMsMdWdDSMsGWPPllVN
    WSvcSSwrGzFsznqPNNWqPqlllB
    djVDdHdSPRqlntjN
    LpZZgpLgLHTDHVpDSTsffvGwrcfffGwv
    wGlbWGVvGlWlrvppbFMjQjsBjCsjmCzzQzNv
    ZgfdJcfZhMNCgSBRCQRz
    hcLDZPZdqZhJPhcTHJfPHVqlqtFWMrGGrpwVGVpWrV
    dsngCgdssHDVsHdsFDvMDvmMmjTjDFTL
    qZpSqptZZGWLTLSjlLHFzl
    NZqqRpWqhQpNhqhpZRWBJQQssJbbCsdbHsCbgb
    QdGBjjbHsBsBbBdGcwwTGrCRRrFcPPTC
    ZDtvWfMDvWScSrpzPccCdr
    hhZMgffDhZNvtDgHQsQQVQmBVVHNdV
    LhQLrzVdVmqcjmTNzm
    tHMZDJDZCDDtZMWwCJjcffqqfjRmqSRqcq
    CpHpZZWWtWpWwBplZWmQbhVBVPhnPrhbLQPvvs
    FFgFSmJmSgGpZzsmgGmbDlDzMQPDNPzRQRDjQQzV
    CLwnwWBdrtthttTWBWdPnVvRVVVNMSVQPvVnnV
    BTtdLthfhTrLdftCwqrddmGFcSfpGbsmFGHpmGFHHc
    JFJnMZwQBqnJJBqZJqPqMFBlbmBHblWbrmlfbWgbvmWrgW
    spCTjtVzsNDdsNdTsjVTtNzgHfmWWgHSSrgrbSbbhHbVHS
    TfCdjjsjzLNsfTszcdqcQMnRMPPRnFRPQRFP
    VvDgDqTDtTNWTWfNFWlW
    pzPvdssRNQFQRNZF
    CCpBpsrrccGvttgGqBDG
    jmZrrjlCJqmCVFMPbFbBZPVp
    dfLLfRMGTdHbssPLLPbFwL
    QWWHHTRQdRRHRMhzWQfvddngqJqjjNgqqjlgvrtjJmtn
    sGGwJdHDDTfWbTcRzbbz
    BmjvdhNVlFBZmSZvFrWpfpcBrbzbWcbqpf
    SLmSZLhNhMhwtLswPHGssd
    mGhlPclTmhhlJRWlRTDPlJtTFMngBcLSBHHBHLHSwncFgLwB
    jQVbjprjVfzbZQrzdGnHrrBLgSGwGFLHHg
    zzZqjQjdvsRlGqThGJ
    GSPQPvVmSwpVQGVlSQmWJRcFBpnFBcBWcJcJDc
    rTTCLmhTTbZNqMNbhjfhmDzsFDWzsDnfcBWDDDzcFs
    qmjhrhCtbMCZNhZMhNTZbLjvQdHdHGgwgdtQHlllQwlQgv
    ggpCCgvjPTJWjBjWWJgCWCdVVHRZdLfZhqLdZRHZrf
    GsstmNslzzzGlMnGMnVZRZrLpZqdhZHZrZHM
    lNbDsbltmzpsmmmnnccBJTwPgWvvvTwPwFPS
    FWbTRTdWGCnThqQVBQqJ
    rrDMPrDcSrvtcJdLVhVHQMQVBQ
    rNtNwrZtDNPmZStwvcvRlGFRlzCRlpmdpplbpb
    gHrHrlFgjCrNDfCMTzwwLN
    WhvTvvWnmQvpGWNNLzwWfNzW
    vTnRZhnRRBhscBVpcBTvnsjFltPqggqHPHHjHrPcgrFg
    VzfWRVsnNzWfsvpQPvvFbdVQpQ
    SqCqqhLDTTCTTCDcSdbpPvdPFFvhMbdMvF
    BCLBDCDGLlTClCSrglrGzWmrszzmHRJmfJfJpHNz
    dwGBHGdwdcCMCBzzZJJssZFsBBgt
    NRqbRbQhLQRLrQlTggFWlZtRlTvW
    FbNDFDLqnmLmNbqbLQbhLNDpPcVHMSVMwCVHcPnVGccwjdcM
    LdHtrrrHrLZrBVbQjtPnnsVb
    TwfhhcTCTCpfJJwpTJwhDDPnbGsbFjlQnnQjFBFslsBQDl
    pwJCThfRCMMMvhchhwHSmWLZHLNHMdrdZzPg
    LbMQbHbHQLLMsWLvszvzvqCfqCCqss
    ScWlpmplWrDzlzvznJ
    RNNcZWhSZmdVdPwHbQQTTwNwjP
    jFFFtHZjwmLNmnQCFL
    sVbdsqcqHBHqrQrLPmWqQnmr
    sfGJVVzJJsczczfsczBzzvdbTMTptlTZZgDSDtGlplZSlgHt
    MgMQJdqqMDQJDggzTMgVplvffmctcCzmfjRlmmmjjR
    HrGbGswnBBtRvccBlljB
    HZPHRRGGshZHnnnwPnshnVZqMJJDdpQDVgDdVDWDpQ
    whwQRQGHRVhWRRcLLJgLmL
    jSnnzgBnpCZdCBjNmnNNJmllJTlccT
    jPSzrzpzpCjgfZZrZCFpdwQDQVVPttGDtVqQVtHqth
    mvnGFmvGhTcSCBcBpv
    bwMRzbQLwBQRWSctCcTtLpss
    JJgHZqRrbqDnmBjhDh
    MVvvGrsbGtVsgTggHjSFHJBBBg
    PPNpCpQPZppplttDNwZPBdfTFPPTSBWSFjjSTH
    CpNwChQCzDDNZwhZlpwZpqrqsGGsmmctGbbbzcmMms
    pjMbgCgdQjCgBjQQCncwcGGLDZvFtGLsZZFZtH
    zPhhrVhVVSmqVqhmzPqvDtsLLHrFWFvGFGFsvt
    SVPzVTzJNBfjDQbQTb
    CRDjjRmmLhjRFFChmHDNLZzsZNnPZNzlnnsvlv
    SSqcMwdrctQVtqTwSSgnvZnsZvnBZpcPsvlvbz
    trMGSSVdQQqdGMtwwQCmRHHhmJFhsfJGfjHh
    phJzrnJJwNNSJhSnwpwGGZzmvNfmmDvfcvcDfvbRPNcvvR
    tWtgQBqsqdLFLmZvTRTfDZcb
    ttssdgQqsHQtZFsqVdgdgdCBJGSphnljnJhjwrhnpJrrzJHl
    srzpVWrWTptbrPpPPtcWpNhNNNdfhhDgDNvfBDNNds
    jmnQHmLqlnSlGMjqnLLljRHqdNdgwHZBgfhZvBdNhDwBhhtZ
    MjSlnLmMLnCGjlSQLVWCzbrcTpPtpFbFWr
    ZnQRczHZsMSRZQcBRSZRscQwJbWFbbQwpWTjdFLJTJTWwd
    PVmGqDlGhDPVNvqDmmqtqLbbpJfFJwpbdJpdbfdjwdbl
    VGNCgGPgqVqhNvmNCNZnSsRLRsMzzgBRnHrS
    ZgMMgJMhjmZrZgggmlTTbfwTfRfbRGwlGTDf
    nPqQttNVPzSPnqpGDwDDbGfwbJ
    dJvQzzJtdSPWSthhHMjgMvrHghsv
    cMvwHCWcMnwWnScWVFzTqHpHFpVBFtFp
    bbblgRDhtlGgRPFBRqFpmzVFBTFp
    fPbtGJGhfDfDsPhQJDPbbnjjSWnwjdvQCnSSCnCSCM
    NcgDtwghTLntgNtLrjfHSSFlSbCfprlL
    ZGGMmdmVZVvsRQvMGRVVZCHPfpZSfZbFPlbPjCfH
    RVRjvRzMQQJBVmzzgWgzTWTWhNcWzN
    gsgBqdsWprWddpBghBpwwJzbLcvhCZmwZCFcJC
    PRPtStHfwmJvzPmF
    HnSHHRQDVFsVVgsgTWsG
    QRQTRrDHSLSNzzZLzZ
    dBmPwfwffWtWRtzdhhLzLzLzzLFN
    BtWnWCCVBWtCBmRPqVmqmntjjlJHJslJQVsQjsbbHrjHDQ
    TwwJrHSMnHGvWHMvvSqrrZbRrRqfqVNfbNRc
    GjhstmPFFhlFtmmjQtlgVcZVfcgqqNRNpgRcbP
    CzdCdFCtdzGWGJwWWHdW
    zfSVfSpHVpCHSZLnsttDnvDvpcsqRc
    rWzMGWFFPBFjqjDjFDFs
    PbQQWbJPrQwPrrPBwrJCVzZZLZdLSLLmfZfHJd
    gPDPLgsLNslNLHqlLqqjhjnwwjJbDjnjwTRnGD
    tzdMdMddmcRMdtcFFGWnwWjFwjFhGbTG
    mRMmttpVHNCNpNZN
    mfCFGfDDFCDWtvvstjjJ
    njnVnrggLlwVVqLpvHVpMpMsHVhhMW
    QQPPPnjlPPSgwBrnNLcdFCNNGFbmbZFcZzFf
    NzNHFNFnFrtgwwPchvGFFS
    LsjdQCVsTsLCTTdMCJtQgPPqwhPgqScPGvSZ
    jdLdVjJtCVjRCMpmpNfNNWHrNzDrNrHrmr
    NmggPPrPbPmdCbcfCNLVRRWpWTWRVTpdVVWspW
    qGhDzGqnwGQnJrjllJWttMRDFRtMVsTDTTZs
    SrnHhGQlvLmSfbfc
    DmdPCJMLlQdSjGCqjcGGccHH
    zWtBwfsgvVnBfftWtnnpTmnTRhppHpTqpc
    wzFtwZWmsVFzZtvPJSPbMFJFDJJJJd
    wrPRRSJSWrTSRzRWrqlfCLlcBfBGDqrL
    gVNQjgdVhdfqqhlDCBDs
    NmjgbtmNtjNnjbPbvRJPbpwZwZSD
    tNHGccGNthtSGmVjjVmrrVPqSB
    fgDTwRwDFmLTFlspBBqjjBgqBssB
    mLCZwZRMJMbtdWMtvd
    TPzHPPgChjsgPdPTjQvZLvnpLQnvlRQn
    GScFSzFWWrfGGMrVFMqGqmrBnplmwmnlZZlmnvvvLRnJLLvJ
    qVSVFtFtFtSzrTNNDsHhhNTHht
    NQqtqmqmNhvvclvhcljJ
    CSCfMZSgWMvfWgrbjwcMJwrrrclr
    CGSCZgSGZPRTSCWWDgGBRtnFRvqNRsLLzmsLzqpq
    tWmtCZjnWZWCGjtnnmtcwFvvlgSDTDTvVwsVgCfT
    LpLhpLdqbBMNsQPBQhpLvgFqllgfllvVvwTDTwlw
    pNQBBdLbBPpPHLmGsRWjRZJzWZHc
    WtjBSvBjWzTtzvDTjBfbbthsMNRNgCMQDgRcCcQwLRgCQgNc
    HJmqnHqHpplVnlPdqGrpGQNLCgSwLMwFwFFCgnMLRw
    SdJGpHVZmqpVVVdZVJGddsjvzzvZTsZvWTbvszWjWj
    FhRhhLZgLZhCRWZBFFWRmGbvSgHqvvbPvHTPccVncb
    wzSMpjJdwssdrdDfJJJsJSvpGVPqGpvVqTVqTnccnTvH
    rwfMMdtDjNwjzDrjDDdtChRZWSWhmCWBSmLQRW
    RWLNLWrhtrhWJmLnSStBBdVtBGVVBt
    wQqnzjCFbflqpQlQFTDDGGsGDBZBSZMsDVfG
    QvqCTwjjTqwbTqjznFzQvqjFJgmvgghJgPmgmvPNmNRJJNgN
    qLqwhztjhqqDDzjZqqjPMmFmCnVDsmgbggggTMDC
    WBhWJQrJcRmnFnWMTTCF
    lvvJSlGSvBvJQBrcpSfwwLjLPjLfhptjwNtp
    sbFjnZpPPGZLZzCRhqbJhJMCqMgS
    vtNvFHBcNwNDHffvtfQMSMJVRMBMChVqSMCBJV
    cQlvTffDlFWTlcfFTlHQNtzzGGWGdLsGWdrnzspjGdGr
    LMQtlzlMQLLrztVfVdfqDdrhrhdd
    JPJTHcvPTPTJGPZgbmvGPmcZhwRVdDBdSWfdRHSBfqBSVHqq
    sJchPZGccmcbvcmgmPcCnnnnpzppQppspFjQntMl
    qtQQtsMDqtPDGQltPHbsLFnMccRNcVLLrVNVwMVM
    LCSdzZdBZmvzZTCBfJrwnWppFcWrFpdRnWpR
    ThSgBZTLJmPHlgQHjPtq
    mrwGPrVrbjbPVmwmbdTwbGfJMDJMgsqhhDjsqjJppfqt
    SQnLnWnWHLSFCRnlQRnFhqfsDMJMppqDfcWgpDfD
    NCSvLQnRSQFBLBzdgvTbbwPrzbPZ
    FFjvvHZbHZnZpvFHZcFbgQVwgwQnJfQPVNQJGqSq
    RWmCmdClRtTzVRwVfVQPNQgN
    shwhzTsmlbhZDLbBHL
    PpPHllshHDTlsprJrsPQpltzjVzjLNggZNznLNLnhNnnjL
    qRBvSwqBdRqvmfvCRSSLjcnVcVmLgmnNZjmQVg
    vdfbSfBWffMbQqQdtprtslHJsWDGHptt
    pqQdFWlQZpGZpLpS
    wnjwJhjvVgjwvwvsgwgtsRTtssGTtLrNtrSrHS
    VDJVMGCCChjccDJDwgwVJvMBzBfzbzbDPPFBFBbffzbQqq
    gBwwBZGhcfhnFjvrQjMhrjQQ
    PPLJNdNldlNSRmzLSlpbHQvbvdMtjjbMtMtt
    lqDJmlSmlmPzqNmzmVnvnBZDgvBWgcZTfD
    HMqrwWqzWJqHzrjgGFNNtQFMFQnFBt
    LddPLdVmchPSvmcvTZlvghLLFBDNDtFGDQpRnntnFDQnFPnB
    SbSvZTSLSgqbCHJWzr
    TGcjzjgtNqjttgNNTTjmGwLhfQQfDnDLDwSQWTSCvh
    PHJRJJbBVMPRMJHbJRMPbwCQSSvfCDhVhvvwwvQLnW
    ZJPMbHbJJJsdsJplRRRZsPJztrFrqtzGrgmcrprcmFjDgN
    tlDpSbpwgbgtpddJppgJwJDtNQWGQlcGQGhlhnGGWcrcWWFr
    MTZLqzjfFLqLjRfvqsQhNPGnhGGsnchW
    LMCzjzMTTjjFRfZMBTCvRfLRDDbVVpSbSgwwwtSBSSDJgStg
    ZLVTrJmJDHFtzSTlpc
    wNhhNfhvwwvvfvPnsNPhglszqpcHcFbbFSzSzzCHzb
    NWjPwgNgRHGWvhwWPfgfGwjMDQJdQLVLJLQVVLRdBRJrZr
    CPRJCFJTqZfJlJRqssHJftCWQMnHHwMbbngMMrQMgMWwQn
    BmzVVhvvcvDdWgwVrTnrMb
    BjzvhjLLczzBjLchDLmLJtsCqFClTqsZCPtPTCjq
    DbWjNCWQCRRNsDPpFGcjjcqFqFfm
    PZdMSzSZTtZZqVmpqmmmTpgg
    ZvZMzBztzvhvddPMQlNCQDbQLBLrsRRW
    WzWFhHpWhvCpPpPLswMHswMMHLbgmH
    NNZSZTVQNrTnqDqrrwtwwLstsMGMnbntGm
    TBmQcrNqNSQVmrmQBPdpFFzhFlPzzCPF
    nBgmSrjgmjtmrbjSFGLWtLVpFVQQVGFL
    JlChvCzvqCqWffwFdFVQfPVPHPFGLV
    JzvTThZcCCMcMMwJzlbjTjmnRgRTTBnWgbBn
    rppjbbDpGnwrGprVCLLJZDzQqZzLNQqc
    htflFBFmBBlWTTgsggtZHMQLCCCcHqHMfZczHq
    gFdFTWgRhBmWWTFSGQbVnSSPnvndpv
    qFSRRGGgTgThTQhcllCWCJCctWWhfJ
    bvbdzNDMzHZNNHFHfJWWjljWNNfcnWtn
    PdbPdPBHmsdbdbPdBHBdmdmsgrTqsGQRTwSpSFrqrRSFpRwp
    pQJZZGQtChQtpWZQTTWhNtVdVWSLBrsLSVrLvrvrLdBd
    lMHnzGRgPRMSMBLcvBSS
    nglFzflzHRDGgzfzPgHRbTDQthbZbhhppNbbCqhb
    jVrvrJjpZfZCCGctwhbhMRcM
    BQQnFFTBdBndzssFsdTbRwDGTPGbcMbwtDgbcG
    HnLtQQBLtWNrVpqjJvWN
    dnVlsnJlMqnlNqJdnMRvDHBRvbBLHLpRSPPPRS
    NcGGCthFwcFwmjCTGDSfPSSHSPfPtDHfbD
    zNWNZGWNzQnWlJWVJn
    tMGSBtRtvjFcGpQrQQQQrp
    FffbJTJfPLNbTnJJmlVcQVfpQmlWVVfH
    FTdJJdhNvZhMtRSh
    pSTfMtMLSTPsPsBszP
    jdlmlFHHhVdmVHFNFRnHzHQJsGZBJbbJDvsDRPBsrGrDrJ
    VHnFjcdccjlmNVmnzmNVmCMggfqwtLLfSMwWtcWMSg
    """


    let priorities: [Character: Int] = [
        "a": 1,
        "b": 2,
        "c": 3,
        "d": 4,
        "e": 5,
        "f": 6,
        "g": 7,
        "h": 8,
        "i": 9,
        "j": 10,
        "k": 11,
        "l": 12,
        "m": 13,
        "n": 14,
        "o": 15,
        "p": 16,
        "q": 17,
        "r": 18,
        "s": 19,
        "t": 20,
        "u": 21,
        "v": 22,
        "w": 23,
        "x": 24,
        "y": 25,
        "z": 26,
        "A": 27,
        "B": 28,
        "C": 29,
        "D": 30,
        "E": 31,
        "F": 32,
        "G": 33,
        "H": 34,
        "I": 35,
        "J": 36,
        "K": 37,
        "L": 38,
        "M": 39,
        "N": 40,
        "O": 41,
        "P": 42,
        "Q": 43,
        "R": 44,
        "S": 45,
        "T": 46,
        "U": 47,
        "V": 48,
        "W": 49,
        "X": 50,
        "Y": 51,
        "Z": 52
    ]


    func totalPriorities(input: String) -> Int {
        var total = 0
        let rucksacks = input.components(separatedBy: "\n")
        
        for rucksack in rucksacks {
            let items = Array(rucksack).map { char in
                String(char)
            }
            
            let firstCompartment = items[0..<(items.count / 2)].joined()
            let secondCompartment = items[(items.count / 2)..<items.count].joined()
            
            for item in firstCompartment {
                if secondCompartment.contains(item) {
                    total+=priorities[item] ?? 0
                    break
                }
            }
        }
        
        return total
    }

    //totalPriorities(input: input)

    func totalPrioritiesPart2(input: String) -> Int {
        var total = 0
        
        let rucksacks = input.split(separator: "\n")
        
        for i in 0..<rucksacks.count / 3 {
            let index = i * 3
            for item in rucksacks[index] {
                if rucksacks[index + 1].contains(item) && rucksacks[index + 2].contains(item) {
                    total+=priorities[item] ?? 0
                    break
                }
            }
        }
        
        return total
    }

    //totalPrioritiesPart2(input: input)

}
