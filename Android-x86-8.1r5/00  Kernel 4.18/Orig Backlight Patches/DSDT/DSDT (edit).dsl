/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of DSDT.aml, Tue Aug  6 22:06:11 2019
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000F8C8 (63688)
 *     Revision         0x02
 *     Checksum         0xAB
 *     OEM ID           "INSYDE"
 *     OEM Table ID     "INSYDE"
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "DSDT", 2, "INSYDE", "INSYDE", 0x00000003)
{
    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but only 0 were resolved (2 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0._PPC, UnknownObj)
    External (_SB_.DPTF, UnknownObj)
    External (_SB_.PCI0.LPCB.TPM_.PTS_, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.TCHG, UnknownObj)
    External (CFGD, IntObj)
    External (NDN3, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)

    Method (ADBG, 1, Serialized)
    {
        Return (Zero)
    }

    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (SP1O, 0x4E)
    Name (PMBS, 0x0400)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PFDR, 0xFED03034)
    Name (PMCB, 0xFED03000)
    Name (PCLK, 0xFED03060)
    Name (PUNB, 0xFED05000)
    Name (IBAS, 0xFED08000)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x1000)
    Name (HPTB, 0xFED00000)
    Name (MCHB, 0xFED14000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x02)
    Name (DSLC, 0x03)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (PSSS, 0x67)
    Name (SOOT, 0x35)
    Name (ESCS, 0x6A)
    Name (SDGV, 0x1C)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (FTBL, 0x04)
    OperationRegion (GNVS, SystemMemory, 0x7A91EA90, 0x0334)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        Offset (0x15), 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        BNUM,   8, 
        B0SC,   8, 
        B1SC,   8, 
        B2SC,   8, 
        B0SS,   8, 
        B1SS,   8, 
        B2SS,   8, 
        Offset (0x28), 
        APIC,   8, 
        MPEN,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        W381,   8, 
        NPCE,   8, 
        Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IDMM,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        Offset (0x14C), 
        USEL,   8, 
        PU1E,   8, 
        PU2E,   8, 
        LPE0,   32, 
        LPE1,   32, 
        LPE2,   32, 
        ACST,   8, 
        BTST,   8, 
        PFLV,   8, 
        Offset (0x15F), 
        AOAC,   8, 
        XHCI,   8, 
        PMEN,   8, 
        LPEE,   8, 
        ISPA,   32, 
        ISPD,   8, 
        PCIB,   32, 
        PCIT,   32, 
        D10A,   32, 
        D10L,   32, 
        D11A,   32, 
        D11L,   32, 
        P10A,   32, 
        P10L,   32, 
        P11A,   32, 
        P11L,   32, 
        P20A,   32, 
        P20L,   32, 
        P21A,   32, 
        P21L,   32, 
        U10A,   32, 
        U10L,   32, 
        U11A,   32, 
        U11L,   32, 
        U20A,   32, 
        U20L,   32, 
        U21A,   32, 
        U21L,   32, 
        SP0A,   32, 
        SP0L,   32, 
        SP1A,   32, 
        SP1L,   32, 
        D20A,   32, 
        D20L,   32, 
        D21A,   32, 
        D21L,   32, 
        I10A,   32, 
        I10L,   32, 
        I11A,   32, 
        I11L,   32, 
        I20A,   32, 
        I20L,   32, 
        I21A,   32, 
        I21L,   32, 
        I30A,   32, 
        I30L,   32, 
        I31A,   32, 
        I31L,   32, 
        I40A,   32, 
        I40L,   32, 
        I41A,   32, 
        I41L,   32, 
        I50A,   32, 
        I50L,   32, 
        I51A,   32, 
        I51L,   32, 
        I60A,   32, 
        I60L,   32, 
        I61A,   32, 
        I61L,   32, 
        I70A,   32, 
        I70L,   32, 
        I71A,   32, 
        I71L,   32, 
        EM0A,   32, 
        EM0L,   32, 
        EM1A,   32, 
        EM1L,   32, 
        SI0A,   32, 
        SI0L,   32, 
        SI1A,   32, 
        SI1L,   32, 
        SD0A,   32, 
        SD0L,   32, 
        SD1A,   32, 
        SD1L,   32, 
        MH0A,   32, 
        MH0L,   32, 
        MH1A,   32, 
        MH1L,   32, 
        OSSL,   8, 
        Offset (0x294), 
        DPTE,   8, 
        THM0,   8, 
        THM1,   8, 
        THM2,   8, 
        THM3,   8, 
        THM4,   8, 
        CHGR,   8, 
        DDSP,   8, 
        DSOC,   8, 
        DPSR,   8, 
        DPCT,   32, 
        DPPT,   32, 
        DGC0,   32, 
        DGP0,   32, 
        DGC1,   32, 
        DGP1,   32, 
        DGC2,   32, 
        DGP2,   32, 
        DGC3,   32, 
        DGP3,   32, 
        DGC4,   32, 
        DGP4,   32, 
        DLPM,   8, 
        DSC0,   32, 
        DSC1,   32, 
        DSC2,   32, 
        DSC3,   32, 
        DSC4,   32, 
        DDBG,   8, 
        LPOE,   32, 
        LPPS,   32, 
        LPST,   32, 
        LPPC,   32, 
        LPPF,   32, 
        DPME,   8, 
        BCSL,   8, 
        NFCS,   8, 
        Offset (0x2FC), 
        TPMA,   32, 
        TPML,   32, 
        ITSA,   8, 
        S0IX,   8, 
        SDMD,   8, 
        EMVR,   8, 
        BMBD,   32, 
        USBM,   8, 
        BDID,   8, 
        FBID,   8, 
        OTGM,   8, 
        STEP,   8, 
        SOCS,   8, 
        AMTE,   8, 
        SCPE,   8, 
        SARE,   8, 
        PSSD,   8, 
        EDPV,   8, 
        DIDX,   32, 
        PAVB,   32, 
        PAVL,   32, 
        PMID,   8, 
        PMIS,   8, 
        ADOS,   8, 
        MIPS,   8, 
        WIFS,   8, 
        BTSL,   8, 
        GPSS,   8, 
        RCAS,   8, 
        FCAS,   8, 
        CHRS,   8, 
        FUES,   8, 
        ALSS,   8, 
        GYRS,   8, 
        ACCS,   8, 
        SARS,   8, 
        SKUI,   8, 
        BTOI,   8
    }

    Scope (_SB)
    {
        Device (RTC)
        {
            Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x00,               // Alignment
                    0x02,               // Length
                    )
                IRQNoFlags(){10}
            })
        }

        Device (HPET)
        {
            Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000400,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000008,
                    }
                })
                Return (RBUF) /* \_SB_.HPET._CRS.RBUF */
            }
        }

        Name (PR00, Package (0x12)
        {
            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x11)
        {
            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR01, Package (0x10)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKG, 
                Zero
            }
        })
        Name (AR01, Package (0x10)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x16
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PR00) /* \_SB_.PR00 */
            }

            Device (VLVC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (HBUS, PCI_Config, Zero, 0xFF)
                Field (HBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0), 
                    SMCR,   32, 
                    SMDR,   32, 
                    MCRX,   32
                }

                Method (RMBR, 2, Serialized)
                {
                    Or (ShiftLeft (Arg0, 0x10), ShiftLeft (Arg1, 0x08), Local0)
                    Or (0x100000F0, Local0, SMCR) /* \_SB_.PCI0.VLVC.SMCR */
                    Return (SMDR) /* \_SB_.PCI0.VLVC.SMDR */
                }

                Method (WMBR, 3, Serialized)
                {
                    Store (Arg2, SMDR) /* \_SB_.PCI0.VLVC.SMDR */
                    Or (ShiftLeft (Arg0, 0x10), ShiftLeft (Arg1, 0x08), Local0)
                    Or (0x110000F0, Local0, SMCR) /* \_SB_.PCI0.VLVC.SMCR */
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (TPMP)
                {
                    CreateDWordField (RES0, \_SB.PCI0._Y00._LEN, TPML)  // _LEN: Length
                    Store (0x1000, TPML) /* \_SB_.PCI0._CRS.TPML */
                }

                CreateDWordField (RES0, \_SB.PCI0._Y01._MIN, ISMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._MAX, ISMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._LEN, ISLN)  // _LEN: Length
                If (LEqual (ISPD, One))
                {
                    Store (ISPA, ISMN) /* \_SB_.PCI0._CRS.ISMN */
                    Add (ISMN, ISLN, ISMX) /* \_SB_.PCI0._CRS.ISMX */
                    Subtract (ISMX, One, ISMX) /* \_SB_.PCI0._CRS.ISMX */
                }
                Else
                {
                    Store (Zero, ISMN) /* \_SB_.PCI0._CRS.ISMN */
                    Store (Zero, ISMX) /* \_SB_.PCI0._CRS.ISMX */
                    Store (Zero, ISLN) /* \_SB_.PCI0._CRS.ISLN */
                }

                CreateDWordField (RES0, \_SB.PCI0._Y02._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._LEN, M1LN)  // _LEN: Length
                And (BMBD, 0xFF000000, M1MN) /* \_SB_.PCI0._CRS.M1MN */
                Store (PCIT, M1MX) /* \_SB_.PCI0._CRS.M1MX */
                Add (Subtract (M1MX, M1MN), One, M1LN) /* \_SB_.PCI0._CRS.M1LN */
                Subtract (M1MX, One, M1MX) /* \_SB_.PCI0._CRS.M1MX */
                CreateDWordField (RES0, \_SB.PCI0._Y03._MIN, GSMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._MAX, GSMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._LEN, GSLN)  // _LEN: Length
                Store (^GFX0.GSTM, GSMN) /* \_SB_.PCI0._CRS.GSMN */
                ShiftLeft (^GFX0.GUMA, 0x19, GSLN) /* \_SB_.PCI0._CRS.GSLN */
                Add (GSMN, GSLN, GSMX) /* \_SB_.PCI0._CRS.GSMX */
                Subtract (GSMX, One, GSMX) /* \_SB_.PCI0._CRS.GSMX */
                Return (RES0) /* \_SB_.PCI0.RES0 */
            }

            Name (RES0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0077,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x006F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0070,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0078,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0C80,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7A000000,         // Range Minimum
                    0x7A3FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00400000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7C000000,         // Range Minimum
                    0x7FFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x04000000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x60000000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED40FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00001000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
            })
            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (LAnd (LEqual (Arg0, GUID), NEXP))
                {
                    Store (CDW2, SUPP) /* \_SB_.PCI0.SUPP */
                    Store (CDW3, CTRL) /* \_SB_.PCI0.CTRL */
                    If (Not (And (CDW1, One)))
                    {
                        If (And (CTRL, 0x02))
                        {
                            NHPG ()
                        }

                        If (And (CTRL, 0x04))
                        {
                            NPME ()
                        }
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1) /* \_SB_.PCI0._OSC.CDW1 */
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1) /* \_SB_.PCI0._OSC.CDW1 */
                    }

                    Store (CTRL, CDW3) /* \_SB_.PCI0._OSC.CDW3 */
                    Store (CTRL, OSCC) /* \OSCC */
                    Return (Local0)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1) /* \_SB_.PCI0._OSC.CDW1 */
                    Return (Local0)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (ILBR, SystemMemory, IBAS, 0x8C)
                    Field (ILBR, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0x88), 
                            ,   3, 
                        UI3E,   1, 
                        UI4E,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PARC, 0x80, PARC) /* \_SB_.PARC */
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA) /* \_SB_.PRSA */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0) /* \_SB_.LNKA._CRS.IRQ0 */
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0) /* \_SB_.LNKA._CRS.IRQ0 */
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC) /* \_SB_.PARC */
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PBRC, 0x80, PBRC) /* \_SB_.PBRC */
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB) /* \_SB_.PRSB */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0) /* \_SB_.LNKB._CRS.IRQ0 */
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0) /* \_SB_.LNKB._CRS.IRQ0 */
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC) /* \_SB_.PBRC */
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PCRC, 0x80, PCRC) /* \_SB_.PCRC */
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC) /* \_SB_.PRSC */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0) /* \_SB_.LNKC._CRS.IRQ0 */
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0) /* \_SB_.LNKC._CRS.IRQ0 */
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC) /* \_SB_.PCRC */
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PDRC, 0x80, PDRC) /* \_SB_.PDRC */
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD) /* \_SB_.PRSD */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0) /* \_SB_.LNKD._CRS.IRQ0 */
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0) /* \_SB_.LNKD._CRS.IRQ0 */
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC) /* \_SB_.PDRC */
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PERC, 0x80, PERC) /* \_SB_.PERC */
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE) /* \_SB_.PRSE */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0) /* \_SB_.LNKE._CRS.IRQ0 */
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0) /* \_SB_.LNKE._CRS.IRQ0 */
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC) /* \_SB_.PERC */
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PFRC, 0x80, PFRC) /* \_SB_.PFRC */
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF) /* \_SB_.PRSF */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0) /* \_SB_.LNKF._CRS.IRQ0 */
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0) /* \_SB_.LNKF._CRS.IRQ0 */
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC) /* \_SB_.PFRC */
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PGRC, 0x80, PGRC) /* \_SB_.PGRC */
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG) /* \_SB_.PRSG */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0) /* \_SB_.LNKG._CRS.IRQ0 */
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0) /* \_SB_.LNKG._CRS.IRQ0 */
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC) /* \_SB_.PGRC */
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            Or (PHRC, 0x80, PHRC) /* \_SB_.PHRC */
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH) /* \_SB_.PRSH */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0) /* \_SB_.LNKH._CRS.IRQ0 */
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0) /* \_SB_.LNKH._CRS.IRQ0 */
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC) /* \_SB_.PHRC */
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, Zero, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    SRID,   8, 
                    Offset (0x80), 
                    C1EN,   1, 
                    Offset (0x84)
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x0600,             // Range Minimum
                            0x0600,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (IUR3)
                {
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (LEqual (USEL, Zero))
                        {
                            If (LEqual (PU1E, One))
                            {
                                Store (One, UI3E) /* \_SB_.UI3E */
                                Store (One, UI4E) /* \_SB_.UI4E */
                                Store (One, C1EN) /* \_SB_.PCI0.LPCB.C1EN */
                                Return (0x0F)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (Zero, UI3E) /* \_SB_.UI3E */
                        Store (Zero, UI4E) /* \_SB_.UI4E */
                        Store (Zero, C1EN) /* \_SB_.PCI0.LPCB.C1EN */
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        })
                        Name (BUF1, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        })
                        If (LLessEqual (SRID, 0x04))
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPCB.IUR3._CRS.BUF0 */
                        }
                        Else
                        {
                            Return (BUF1) /* \_SB_.PCI0.LPCB.IUR3._CRS.BUF1 */
                        }
                    }
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8, 
                    Offset (0x02), 
                    Offset (0x03), 
                    Offset (0x04), 
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (LEqual (PKBD, 0xFF), LEqual (PKBC, 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (And (LEqual (PKBD, 0xFF), LEqual (PKBC, 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                }
            }
        }
    }

    Scope (\)
    {
        OperationRegion (PMIO, SystemIO, PMBS, 0x46)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            PWBS,   1, 
            Offset (0x20), 
                ,   13, 
            PMEB,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
                ,   4, 
            PSCI,   1, 
            SCIS,   1
        }

        OperationRegion (PMCR, SystemMemory, PFDR, 0x04)
        Field (PMCR, DWordAcc, Lock, Preserve)
        {
            L10D,   1, 
            L11D,   1, 
            L12D,   1, 
            L13D,   1, 
            L14D,   1, 
            L15D,   1, 
            Offset (0x01), 
            SD1D,   1, 
            SD2D,   1, 
            SD3D,   1, 
            HSID,   1, 
                ,   1, 
            LPED,   1, 
            OTGD,   1, 
            Offset (0x02), 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   1, 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            L20D,   1, 
            L21D,   1, 
            L22D,   1, 
            L23D,   1, 
            L24D,   1, 
            L25D,   1, 
            L26D,   1, 
            L27D,   1
        }

        OperationRegion (CLKC, SystemMemory, PCLK, 0x18)
        Field (CLKC, DWordAcc, Lock, Preserve)
        {
            CKC0,   2, 
            CKF0,   1, 
            Offset (0x04), 
            CKC1,   2, 
            CKF1,   1, 
            Offset (0x08), 
            CKC2,   2, 
            CKF2,   1, 
            Offset (0x0C), 
            CKC3,   2, 
            CKF3,   1, 
            Offset (0x10), 
            CKC4,   2, 
            CKF4,   1, 
            Offset (0x14), 
            CKC5,   2, 
            CKF5,   1, 
            Offset (0x18)
        }
    }

    Scope (_SB)
    {
        Device (LPEA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F28" /* Intel SST Audio DSP */)  // _HID: Hardware ID
            Name (_CID, "80860F28" /* Intel SST Audio DSP */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Low Power Audio Controller - 80860F28")  // _DDN: DOS Device Name
            Name (_SUB, "1179F970")  // _SUB: Subsystem ID
            Name (_UID, One)  // _UID: Unique ID
            Name (ADEP, Package (0x01)
            {
                ^I2C2.TTLV
            })
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                ^I2C2.RTEK
            })
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PLPE
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                And (SKUI, 0x10, Local0)
                If (LGreater (Local0, One))
                {
                    Store ("1179F971", _SUB) /* \_SB_.LPEA._SUB */
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LAnd (LEqual (LPEE, 0x02), LEqual (LPED, Zero)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x12345678,         // Address Base
                    0x00200000,         // Address Length
                    _Y04)
                Memory32Fixed (ReadWrite,
                    0xFE830000,         // Address Base
                    0x00001000,         // Address Length
                    _Y05)
                Memory32Fixed (ReadWrite,
                    0x55AA55AA,         // Address Base
                    0x00200000,         // Address Length
                    _Y06)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001D,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000018,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000019,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001A,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001B,
                }
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001C,
                }
                GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullNone, 0x0000,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001C
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.LPEA._Y04._BAS, B0BA)  // _BAS: Base Address
                Store (LPE0, B0BA) /* \_SB_.LPEA._CRS.B0BA */
                CreateDWordField (RBUF, \_SB.LPEA._Y05._BAS, B1BA)  // _BAS: Base Address
                Store (LPE1, B1BA) /* \_SB_.LPEA._CRS.B1BA */
                CreateDWordField (RBUF, \_SB.LPEA._Y06._BAS, B2BA)  // _BAS: Base Address
                Store (LPE2, B2BA) /* \_SB_.LPEA._CRS.B2BA */
                Return (RBUF) /* \_SB_.LPEA.RBUF */
            }

            OperationRegion (KEYS, SystemMemory, LPE1, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            PowerResource (PLPE, 0x05, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (One)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.LPEA.PSAT */
                    Store (PSAT, Local0)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Or (PSAT, 0x03, PSAT) /* \_SB_.LPEA.PSAT */
                    Store (PSAT, Local0)
                }
            }

            Device (ADMA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ADMA0F28" /* Intel Audio DMA */)  // _HID: Hardware ID
                Name (_CID, "ADMA0F28" /* Intel Audio DMA */)  // _CID: Compatible ID
                Name (_DDN, "Intel(R) Audio  DMA0 - DMA0F28")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF498000,         // Address Base
                            0x00001000,         // Address Length
                            _Y07)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x00000018,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.ADMA._CRS._Y07._BAS, B0BA)  // _BAS: Base Address
                    Store (LPE0, B0BA) /* \_SB_.LPEA.ADMA._CRS.B0BA */
                    Return (RBUF) /* \_SB_.LPEA.ADMA._CRS.RBUF */
                }
            }

            Device (SSP1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SSPX0000" /* Intel SSP Device */)  // _HID: Hardware ID
                Name (_CID, "SSPX0000" /* Intel SSP Device */)  // _CID: Compatible ID
                Name (_DDN, "Intel(R) SSP Device")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF4A1000,         // Address Base
                            0x00001000,         // Address Length
                            _Y08)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x0000001B,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.SSP1._CRS._Y08._BAS, B0BA)  // _BAS: Base Address
                    Add (LPE0, 0x000A1000, B0BA) /* \_SB_.LPEA.SSP1._CRS.B0BA */
                    Return (RBUF) /* \_SB_.LPEA.SSP1._CRS.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, ToUUID ("886a3f26-600c-4401-b7b1-01e9c2e7e77e")))
                    {
                        Return ("BLUET")
                    }

                    If (LEqual (Arg0, ToUUID ("30d3f83e-2ee1-4bf0-86e9-f69ded2887ee")))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, ToUUID ("208b1400-f7c8-4325-ab32-53cd79b7d0a6")))
                    {
                        Return (0xFF2A1000)
                    }

                    If (LEqual (Arg0, ToUUID ("e6e37c60-e78b-4fbd-bd26-5bd3667a6c9a")))
                    {
                        Switch (ToInteger (Arg1))
                        {
                            Case (0x08)
                            {
                                Return (Buffer (0x05)
                                {
                                     0x00, 0x00, 0x00, 0x00, 0x01                     // .....
                                })
                            }
                            Case (0x10)
                            {
                                Return (Buffer (0x05)
                                {
                                     0x06, 0x02, 0x00, 0x0E, 0x10                     // .....
                                })
                            }
                            Case (0x30)
                            {
                                Return (Buffer (0x05)
                                {
                                     0x06, 0x02, 0x00, 0x0E, 0x10                     // .....
                                })
                            }

                        }

                        Return ("ERR-T")
                    }

                    Return ("ERR-M")
                }
            }
        }

        Device (TIMC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "TIMC0F28")  // _HID: Hardware ID
            Name (_CID, "TIMC0F28")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Audio Machine Driver - TIMC0F28")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                GPO2, 
                ^I2C2.TTLV
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001B
                        }
                })
                Return (RBUF) /* \_SB_.TIMC._CRS.RBUF */
            }
        }

        Device (AMCR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "AMCR0F28" /* Intel Audio Machine Driver */)  // _HID: Hardware ID
            Name (_CID, "AMCR0F28" /* Intel Audio Machine Driver */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Audio Machine Driver - AMCR0F28")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                GPO2, 
                ^I2C2.RTEK
            })
            Name (_STA, Zero)  // _STA: Status
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001B
                        }
                })
                Return (RBUF) /* \_SB_.AMCR._CRS.RBUF */
            }
        }

        Device (HAD)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "HAD0F28" /* Intel HDMI Audio Driver */)  // _HID: Hardware ID
            Name (_CID, "HAD0F28" /* Intel HDMI Audio Driver */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HDMI Audio Driver - HAD")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00065800,         // Address Base
                        0x00000140,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.HAD_._CRS.RBUF */
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (XHC1)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            Name (_DDN, "Baytrail XHCI controller (CCG core/Host only)")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_STR, Unicode ("Baytrail XHCI controller (CCG core/Host only)"))  // _STR: Description String
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (MSET, Zero)
            Name (DDST, Zero)
            OperationRegion (PCSL, SystemMemory, 0xE00A0074, One)
            Field (PCSL, ByteAcc, NoLock, WriteAsZeros)
            {
                PMPS,   2
            }

            OperationRegion (PCSH, SystemMemory, 0xE00A0075, One)
            Field (PCSH, ByteAcc, NoLock, Preserve)
            {
                PMCH,   8
            }

            OperationRegion (XMSE, SystemMemory, 0xE00A0000, 0x0100)
            Field (XMSE, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                    ,   1, 
                CMSE,   1, 
                Offset (0x10), 
                BAR0,   32, 
                Offset (0x74), 
                PMCS,   16, 
                Offset (0xB0), 
                    ,   13, 
                PHY2,   2, 
                    ,   13, 
                USHP,   1, 
                    ,   1, 
                SCFG,   1
            }

            Method (PWOF, 0, Serialized)
            {
                P8XH (Zero, 0xAA)
                Store (One, SCFG) /* \_SB_.PCI0.XHC1.SCFG */
            }

            Method (PWON, 0, Serialized)
            {
                P8XH (Zero, 0xBB)
                Store (Zero, SCFG) /* \_SB_.PCI0.XHC1.SCFG */
            }

            OperationRegion (XPRT, SystemMemory, Add (PEBS, 0x000A0000), 0x0100)
            Field (XPRT, AnyAcc, NoLock, Preserve)
            {
                DVID,   16, 
                Offset (0x74), 
                D0D3,   2, 
                Offset (0x75), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0xB0), 
                    ,   13, 
                MB13,   1, 
                MB14,   1, 
                Offset (0xB4), 
                Offset (0xD0), 
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            OperationRegion (XHCP, SystemMemory, Add (PEBS, 0x000A0000), 0x0100)
            Field (XHCP, AnyAcc, Lock, Preserve)
            {
                Offset (0x04), 
                PDBM,   16, 
                Offset (0x10), 
                MEMB,   32
            }

            Name (PCHS, Zero)
            Name (SRMB, 0x90800000)
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                ADBG ("XHC D0")
                P8XH (Zero, 0xA0)
                If (LEqual (DVID, 0xFFFF))
                {
                    Return (Zero)
                }

                And (MEMB, 0xFFFFFFF0, SRMB) /* \_SB_.PCI0.XHC1.SRMB */
                Store (MEMB, Local2)
                Store (PDBM, Local1)
                And (PDBM, 0xFFFFFFFFFFFFFFF9, PDBM) /* \_SB_.PCI0.XHC1.PDBM */
                Store (SRMB, MEMB) /* \_SB_.PCI0.XHC1.MEMB */
                Or (PDBM, 0x02, PDBM) /* \_SB_.PCI0.XHC1.PDBM */
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x510), 
                    R510,   32, 
                    Offset (0x520), 
                    R520,   32, 
                    Offset (0x530), 
                    R530,   32, 
                    Offset (0x540), 
                    R540,   32, 
                    Offset (0x8058), 
                    Offset (0x8059), 
                    CDES,   1, 
                    Offset (0x805A), 
                    STSP,   1, 
                        ,   3, 
                    CFEC,   1, 
                    Offset (0x8060), 
                        ,   25, 
                    EPRE,   1, 
                    Offset (0x8094), 
                        ,   14, 
                    CMMF,   1, 
                        ,   6, 
                    ESSP,   1, 
                        ,   1, 
                    DAPA,   1, 
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x80FC), 
                        ,   25, 
                    PPL1,   1, 
                    Offset (0x8110), 
                        ,   1, 
                    CRNC,   1, 
                    Offset (0x8111), 
                    EPTD,   1, 
                        ,   2, 
                    HTPP,   1, 
                        ,   8, 
                    TRMC,   1, 
                    Offset (0x8140), 
                    MIDS,   12, 
                    AWPC,   12, 
                    EIHR,   8, 
                        ,   6, 
                    SSII,   1, 
                    SSIO,   1, 
                    HSII,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x8164), 
                    ETBC,   1, 
                    ERBC,   1, 
                    ESAI,   1, 
                    ETMA,   1, 
                    EOAI,   1, 
                    EIAI,   1, 
                    TTEA,   1, 
                    ECMA,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1, 
                    Offset (0x8188), 
                    Offset (0x818B), 
                    FIDD,   1, 
                        ,   1, 
                    FTSS,   1
                }

                Store (D0D3, Local3)
                If (LEqual (Local3, 0x03))
                {
                    Store (Zero, D0D3) /* \_SB_.PCI0.XHC1.D0D3 */
                    Sleep (0x0A)
                }

                If (LEqual (PCHS, 0x02))
                {
                    Store (Zero, MB13) /* \_SB_.PCI0.XHC1.MB13 */
                    Store (Zero, MB14) /* \_SB_.PCI0.XHC1.MB14 */
                    Store (Zero, CLK0) /* \_SB_.PCI0.XHC1._PS0.CLK0 */
                    Store (Zero, CLK1) /* \_SB_.PCI0.XHC1._PS0.CLK1 */
                }

                Store (One, CLK2) /* \_SB_.PCI0.XHC1._PS0.CLK2 */
                Store (One, CDES) /* \_SB_.PCI0.XHC1._PS0.CDES */
                Store (One, STSP) /* \_SB_.PCI0.XHC1._PS0.STSP */
                Store (Zero, CFEC) /* \_SB_.PCI0.XHC1._PS0.CFEC */
                Store (One, EPRE) /* \_SB_.PCI0.XHC1._PS0.EPRE */
                Store (One, DAPA) /* \_SB_.PCI0.XHC1._PS0.DAPA */
                Store (One, ESSP) /* \_SB_.PCI0.XHC1._PS0.ESSP */
                Store (One, CMMF) /* \_SB_.PCI0.XHC1._PS0.CMMF */
                Store (One, PPL1) /* \_SB_.PCI0.XHC1._PS0.PPL1 */
                Store (Zero, CRNC) /* \_SB_.PCI0.XHC1._PS0.CRNC */
                Store (Zero, EPTD) /* \_SB_.PCI0.XHC1._PS0.EPTD */
                Store (One, HTPP) /* \_SB_.PCI0.XHC1._PS0.HTPP */
                Store (One, TRMC) /* \_SB_.PCI0.XHC1._PS0.TRMC */
                Store (0x3C, MIDS) /* \_SB_.PCI0.XHC1._PS0.MIDS */
                Store (0x0F, AWPC) /* \_SB_.PCI0.XHC1._PS0.AWPC */
                Store (0xFF, EIHR) /* \_SB_.PCI0.XHC1._PS0.EIHR */
                Store (One, SSII) /* \_SB_.PCI0.XHC1._PS0.SSII */
                Store (One, SSIO) /* \_SB_.PCI0.XHC1._PS0.SSIO */
                Store (One, HSII) /* \_SB_.PCI0.XHC1._PS0.HSII */
                Store (One, ERBC) /* \_SB_.PCI0.XHC1._PS0.ERBC */
                Store (One, ETBC) /* \_SB_.PCI0.XHC1._PS0.ETBC */
                Store (One, ESAI) /* \_SB_.PCI0.XHC1._PS0.ESAI */
                Store (One, ETMA) /* \_SB_.PCI0.XHC1._PS0.ETMA */
                Store (One, EOAI) /* \_SB_.PCI0.XHC1._PS0.EOAI */
                Store (One, EIAI) /* \_SB_.PCI0.XHC1._PS0.EIAI */
                Store (One, TTEA) /* \_SB_.PCI0.XHC1._PS0.TTEA */
                Store (One, ECMA) /* \_SB_.PCI0.XHC1._PS0.ECMA */
                Store (One, FIDD) /* \_SB_.PCI0.XHC1._PS0.FIDD */
                Store (One, FTSS) /* \_SB_.PCI0.XHC1._PS0.FTSS */
                Store (Zero, USHP) /* \_SB_.PCI0.XHC1.USHP */
                If (LEqual (PCHS, 0x02))
                {
                    While (LOr (LOr (LEqual (And (R510, 0x03FB), 0x02E0), LEqual (And (R520, 
                        0x03FB), 0x02E0)), LOr (LEqual (And (R530, 0x03FB), 0x02E0), LEqual (And (R540, 
                        0x03FB), 0x02E0))))
                    {
                        Stall (0x32)
                    }

                    Store (R510, Local0)
                    If (LEqual (And (Local0, 0x000203FB), 0x02A0))
                    {
                        Or (Local0, 0x80000000, R510) /* \_SB_.PCI0.XHC1._PS0.R510 */
                        While (LEqual (And (R510, 0x00180000), Zero))
                        {
                            Stall (0x32)
                        }

                        And (R510, 0xFFFFFFFFFFFFFFFD, Local0)
                        Or (Local0, 0x00FE0000, R510) /* \_SB_.PCI0.XHC1._PS0.R510 */
                    }

                    Store (R520, Local0)
                    If (LEqual (And (Local0, 0x000203FB), 0x02A0))
                    {
                        Or (Local0, 0x80000000, R520) /* \_SB_.PCI0.XHC1._PS0.R520 */
                        While (LEqual (And (R520, 0x00180000), Zero))
                        {
                            Stall (0x32)
                        }

                        And (R520, 0xFFFFFFFFFFFFFFFD, Local0)
                        Or (Local0, 0x00FE0000, R520) /* \_SB_.PCI0.XHC1._PS0.R520 */
                    }

                    Store (R530, Local0)
                    If (LEqual (And (Local0, 0x000203FB), 0x02A0))
                    {
                        Or (Local0, 0x80000000, R530) /* \_SB_.PCI0.XHC1._PS0.R530 */
                        While (LEqual (And (R530, 0x00180000), Zero))
                        {
                            Stall (0x32)
                        }

                        And (R530, 0xFFFFFFFFFFFFFFFD, Local0)
                        Or (Local0, 0x00FE0000, R530) /* \_SB_.PCI0.XHC1._PS0.R530 */
                    }

                    Store (R540, Local0)
                    If (LEqual (And (Local0, 0x000203FB), 0x02A0))
                    {
                        Or (Local0, 0x80000000, R540) /* \_SB_.PCI0.XHC1._PS0.R540 */
                        While (LEqual (And (R540, 0x00180000), Zero))
                        {
                            Stall (0x32)
                        }

                        And (R540, 0xFFFFFFFFFFFFFFFD, Local0)
                        Or (Local0, 0x00FE0000, R540) /* \_SB_.PCI0.XHC1._PS0.R540 */
                    }

                    Store (One, AX15) /* \_SB_.PCI0.XHC1._PS0.AX15 */
                }

                If (LEqual (Local3, 0x03))
                {
                    ADBG ("PS0->D3")
                    P8XH (Zero, 0xA1)
                    Store (0x03, D0D3) /* \_SB_.PCI0.XHC1.D0D3 */
                }
                Else
                {
                    P8XH (Zero, 0xA2)
                }

                And (PDBM, 0xFFFFFFFFFFFFFFFD, PDBM) /* \_SB_.PCI0.XHC1.PDBM */
                Store (Local2, MEMB) /* \_SB_.PCI0.XHC1.MEMB */
                Store (Local1, PDBM) /* \_SB_.PCI0.XHC1.PDBM */
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                ADBG ("XHC D3")
                P8XH (Zero, 0xB0)
                If (LEqual (DVID, 0xFFFF))
                {
                    Return (Zero)
                }

                And (MEMB, 0xFFFFFFF0, SRMB) /* \_SB_.PCI0.XHC1.SRMB */
                Store (MEMB, Local2)
                Store (PDBM, Local1)
                And (PDBM, 0xFFFFFFFFFFFFFFF9, PDBM) /* \_SB_.PCI0.XHC1.PDBM */
                Store (SRMB, MEMB) /* \_SB_.PCI0.XHC1.MEMB */
                Or (PDBM, 0x02, PDBM) /* \_SB_.PCI0.XHC1.PDBM */
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1, 
                    Offset (0x8170)
                }

                Store (D0D3, Local3)
                If (LEqual (Local3, 0x03))
                {
                    Store (Zero, D0D3) /* \_SB_.PCI0.XHC1.D0D3 */
                }

                If (LEqual (PCHS, 0x02))
                {
                    Store (One, MB13) /* \_SB_.PCI0.XHC1.MB13 */
                    Store (One, MB14) /* \_SB_.PCI0.XHC1.MB14 */
                    Store (One, CLK0) /* \_SB_.PCI0.XHC1._PS3.CLK0 */
                    Store (One, CLK1) /* \_SB_.PCI0.XHC1._PS3.CLK1 */
                }

                Store (Zero, CLK2) /* \_SB_.PCI0.XHC1._PS3.CLK2 */
                If (LEqual (PCHS, 0x02))
                {
                    Store (Zero, AX15) /* \_SB_.PCI0.XHC1._PS3.AX15 */
                }

                If (LEqual (PMEE, One))
                {
                    Store (One, USHP) /* \_SB_.PCI0.XHC1.USHP */
                }

                If (LEqual (Local3, 0x03))
                {
                    ADBG ("PS3->D3")
                    P8XH (Zero, 0xB1)
                    Store (0x03, D0D3) /* \_SB_.PCI0.XHC1.D0D3 */
                }
                Else
                {
                    P8XH (Zero, 0xB2)
                }

                And (PDBM, 0xFFFFFFFFFFFFFFFD, PDBM) /* \_SB_.PCI0.XHC1.PDBM */
                Store (Local2, MEMB) /* \_SB_.PCI0.XHC1.MEMB */
                Store (Local1, PDBM) /* \_SB_.PCI0.XHC1.PDBM */
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (XHCI, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (SSP1)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x06, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM11")
                        If (LEqual (Arg0, ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM12")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM13")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("SSP1 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("SSP1 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x06, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS01._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS01._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM21")
                        If (LEqual (Arg0, ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM22")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM23")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HS01 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HS01 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (UPCR, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (LEqual (BDID, 0x02))
                        {
                            Return (UPCR) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCR */
                        }
                        Else
                        {
                            Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCP */
                        }
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x41, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // A.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Name (PLDR, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x41, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // A.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        If (LEqual (BDID, 0x02))
                        {
                            Return (PLDR) /* \_SB_.PCI0.XHC1.RHUB.HS02._PLD.PLDR */
                        }
                        Else
                        {
                            Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS02._PLD.PLDP */
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM31")
                        If (LEqual (Arg0, ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM32")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM33")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HS02 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HS02 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_DEP, Package (0x01)  // _DEP: Dependencies
                    {
                        GPO2
                    })
                    Name (PSTS, Zero)
                    PowerResource (WWPR, 0x00, 0x0000)
                    {
                        Name (_DEP, Package (0x01)  // _DEP: Dependencies
                        {
                            GPO2
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (Zero)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If (LEqual (PSTS, Zero))
                            {
                                If (LEqual (\_SB.GPO2.AVBL, One))
                                {
                                    Sleep (0x0200)
                                    Store (One, PSTS) /* \_SB_.PCI0.XHC1.RHUB.HS03.PSTS */
                                }
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If (LEqual (\_SB.GPO2.AVBL, One))
                            {
                                Store (Zero, PSTS) /* \_SB_.PCI0.XHC1.RHUB.HS03.PSTS */
                            }
                        }
                    }

                    Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        WWPR
                    })
                    Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                    {
                        WWPR
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        WWPR
                    })
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS03._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS03._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM41")
                        If (LEqual (Arg0, ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM42")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM43")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HS03 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HS03 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Device (MODM)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                        {
                            WWPR
                        })
                        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                        {
                            WWPR
                        })
                        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                        {
                            WWPR
                        })
                    }
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS04._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS04._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM51")
                        If (LEqual (Arg0, ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM52")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM53")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HS04 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HS04 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HSC1)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HSC1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HSC1._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM61")
                        If (LEqual (Arg0, ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM62")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM63")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HSIC1 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HSIC1 DSM")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (One)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HSC2)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HSC2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HSC2._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM71")
                        If (LEqual (Arg0, ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM72")
                            If (LEqual (Arg1, Zero))
                            {
                                ADBG ("DSM73")
                                If (LEqual (Arg2, Zero))
                                {
                                    ADBG ("HSIC2 QUERY")
                                    Store ("Method _DSM Function Query", Debug)
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If (LEqual (Arg2, 0x02))
                                {
                                    ADBG ("HSIC2 DSM called")
                                    Store ("Method _DSM Function Index2", Debug)
                                    Return (One)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }
            }
        }

        Device (OTG1)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Name (_DDN, "Baytrail XHCI controller (Synopsys core/OTG)")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("Baytrail XHCI controller (Synopsys core/OTG)"))  // _STR: Description String
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            OperationRegion (GENR, PCI_Config, 0xA0, 0x10)
            Field (GENR, WordAcc, NoLock, Preserve)
            {
                    ,   18, 
                CPME,   1, 
                U2EN,   1, 
                U3EN,   1
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Store (One, CPME) /* \_SB_.PCI0.OTG1.CPME */
                Store (One, U2EN) /* \_SB_.PCI0.OTG1.U2EN */
                Store (One, U3EN) /* \_SB_.PCI0.OTG1.U3EN */
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                Store (Zero, CPME) /* \_SB_.PCI0.OTG1.CPME */
                Store (Zero, U2EN) /* \_SB_.PCI0.OTG1.U2EN */
                Store (Zero, U3EN) /* \_SB_.PCI0.OTG1.U3EN */
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (OTGM, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (\_SB)
        {
            PowerResource (USBC, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    Store (Ones, PWUC) /* \_SB_.PCI0.EHC1.PWUC */
                }
                Else
                {
                    Store (Zero, PWUC) /* \_SB_.PCI0.EHC1.PWUC */
                }
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        ToPLD (
                            PLD_Revision           = 0x1,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x0,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "UNKNOWN",
                            PLD_VerticalPosition   = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape              = "UNKNOWN",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x0,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0)

                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If (LEqual (SDGV, 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If (LEqual (SDGV, 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If (LEqual (SDGV, 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If (LEqual (Arg0, ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If (LEqual (Arg1, One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If (LEqual (SDGV, 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }
                }
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (USBR, PCI_Config, 0x54, 0x04)
            Field (USBR, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (XHCI, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }
        }

        Device (SEC0)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y09)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (LEqual (PAVP, 0x02))
                {
                    CreateDWordField (RBUF, \_SB.PCI0.SEC0._Y09._BAS, B0BA)  // _BAS: Base Address
                    CreateDWordField (RBUF, \_SB.PCI0.SEC0._Y09._LEN, B0LN)  // _LEN: Length
                    Store (PAVB, B0BA) /* \_SB_.PCI0.SEC0._CRS.B0BA */
                    Store (PAVL, B0LN) /* \_SB_.PCI0.SEC0._CRS.B0LN */
                    Return (RBUF) /* \_SB_.PCI0.SEC0.RBUF */
                }

                Return (Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C4, 
                PEPD
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x002C, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2C4",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (SBUF) /* \_SB_.PCI0.GFX0._CRS.SBUF */
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
            {
                Store (And (Arg0, 0x07), DSEN) /* \DSEN */
            }

            Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
            {
                Store (Zero, NDID) /* \NDID */
                If (LNotEqual (DIDL, Zero))
                {
                    Store (SDDL (DIDL), DID1) /* \DID1 */
                }

                If (LNotEqual (DDL2, Zero))
                {
                    Store (SDDL (DDL2), DID2) /* \DID2 */
                }

                If (LNotEqual (DDL3, Zero))
                {
                    Store (SDDL (DDL3), DID3) /* \DID3 */
                }

                If (LNotEqual (DDL4, Zero))
                {
                    Store (SDDL (DDL4), DID4) /* \DID4 */
                }

                If (LNotEqual (DDL5, Zero))
                {
                    Store (SDDL (DDL5), DID5) /* \DID5 */
                }

                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x02)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP1, One))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP1, One))
                    }

                    Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                }

                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x03)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP2, 0x02))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP2, 0x02))
                    }

                    Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                }

                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP3, One))
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP3, 0x03))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP3, 0x03))
                    }

                    Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                }

                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x05)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP4, One))
                    Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP4, 0x04))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP4, 0x04))
                    }

                    Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                }

                If (LGreater (NDID, 0x04))
                {
                    Name (TMP5, Package (0x06)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP5, One))
                    Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                    If (LLess (SOCS, 0x02))
                    {
                        Store (0x00020F39, Index (TMP5, 0x05))
                    }
                    Else
                    {
                        Store (0x00020F38, Index (TMP5, 0x05))
                    }

                    Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                }

                If (LLess (SOCS, 0x02))
                {
                    Return (Package (0x02)
                    {
                        0x0400, 
                        0x00020F39
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x0400, 
                        0x00020F38
                    })
                }
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID1), 0x0400))
                    {
                        Store (One, EDPV) /* \EDPV */
                        Store (DID1, DIDX) /* \DIDX */
                        Return (One)
                    }

                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE) /* \CSTE */
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID2), 0x0400))
                    {
                        Store (0x02, EDPV) /* \EDPV */
                        Store (DID2, DIDX) /* \DIDX */
                        Return (0x02)
                    }

                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE) /* \CSTE */
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID3), 0x0400))
                    {
                        Store (0x03, EDPV) /* \EDPV */
                        Store (DID3, DIDX) /* \DIDX */
                        Return (0x03)
                    }

                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE) /* \CSTE */
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID4), 0x0400))
                    {
                        Store (0x04, EDPV) /* \EDPV */
                        Store (DID4, DIDX) /* \DIDX */
                        Return (0x04)
                    }

                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE) /* \CSTE */
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID5), 0x0400))
                    {
                        Store (0x05, EDPV) /* \EDPV */
                        Store (DID5, DIDX) /* \DIDX */
                        Return (0x05)
                    }

                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE) /* \CSTE */
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID6), 0x0400))
                    {
                        Store (0x06, EDPV) /* \EDPV */
                        Store (DID6, DIDX) /* \DIDX */
                        Return (0x06)
                    }

                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE) /* \CSTE */
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID7), 0x0400))
                    {
                        Store (0x07, EDPV) /* \EDPV */
                        Store (DID7, DIDX) /* \DIDX */
                        Return (0x07)
                    }

                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE) /* \CSTE */
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (And (0x0F00, DID8), 0x0400))
                    {
                        Store (0x08, EDPV) /* \EDPV */
                        Store (DID8, DIDX) /* \DIDX */
                        Return (0x08)
                    }

                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE) /* \CSTE */
                    }
                }
            }

            Device (DD1F)
            {
                Method (_ADR, 0, Serialized)  // _ADR: Address
                {
                    If (LEqual (EDPV, Zero))
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DIDX))
                    }
                }

                Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                {
                    If (LEqual (EDPV, Zero))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (CDDS (DIDX))
                    }
                }

                Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                {
                    Return (NDDS (DIDX))
                }

                Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE) /* \CSTE */
                    }
                }

                Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                {
                    And (SKUI, 0x10, Local0)
                    If (LGreater (Local0, One))
                    {
                        Return (Package (0x67)
                        {
                            0x50, 
                            0x32, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C, 
                            0x1D, 
                            0x1E, 
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22, 
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26, 
                            0x27, 
                            0x28, 
                            0x28, 
                            0x29, 
                            0x2A, 
                            0x2B, 
                            0x2C, 
                            0x2D, 
                            0x2E, 
                            0x2F, 
                            0x30, 
                            0x31, 
                            0x32, 
                            0x33, 
                            0x34, 
                            0x35, 
                            0x36, 
                            0x37, 
                            0x38, 
                            0x39, 
                            0x3A, 
                            0x3B, 
                            0x3C, 
                            0x3C, 
                            0x3D, 
                            0x3E, 
                            0x3F, 
                            0x40, 
                            0x41, 
                            0x42, 
                            0x43, 
                            0x44, 
                            0x45, 
                            0x46, 
                            0x47, 
                            0x48, 
                            0x49, 
                            0x4A, 
                            0x4B, 
                            0x4C, 
                            0x4D, 
                            0x4E, 
                            0x4F, 
                            0x50, 
                            0x50, 
                            0x51, 
                            0x52, 
                            0x53, 
                            0x54, 
                            0x55, 
                            0x56, 
                            0x57, 
                            0x58, 
                            0x59, 
                            0x5A, 
                            0x5B, 
                            0x5C, 
                            0x5D, 
                            0x5E, 
                            0x5F, 
                            0x60, 
                            0x61, 
                            0x62, 
                            0x63, 
                            0x64, 
                            0x64
                        })
                    }
                    Else
                    {
                        Return (Package (0x67)
                        {
                            0x50, 
                            0x32, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C, 
                            0x1D, 
                            0x1E, 
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22, 
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26, 
                            0x27, 
                            0x28, 
                            0x28, 
                            0x29, 
                            0x2A, 
                            0x2B, 
                            0x2C, 
                            0x2D, 
                            0x2E, 
                            0x2F, 
                            0x30, 
                            0x31, 
                            0x32, 
                            0x33, 
                            0x34, 
                            0x35, 
                            0x36, 
                            0x37, 
                            0x38, 
                            0x39, 
                            0x3A, 
                            0x3B, 
                            0x3C, 
                            0x3C, 
                            0x3D, 
                            0x3E, 
                            0x3F, 
                            0x40, 
                            0x41, 
                            0x42, 
                            0x43, 
                            0x44, 
                            0x45, 
                            0x46, 
                            0x47, 
                            0x48, 
                            0x49, 
                            0x4A, 
                            0x4B, 
                            0x4C, 
                            0x4D, 
                            0x4E, 
                            0x4F, 
                            0x50, 
                            0x50, 
                            0x51, 
                            0x52, 
                            0x53, 
                            0x54, 
                            0x55, 
                            0x56, 
                            0x57, 
                            0x58, 
                            0x59, 
                            0x5A, 
                            0x5B, 
                            0x5C, 
                            0x5D, 
                            0x5E, 
                            0x5F, 
                            0x60, 
                            0x61, 
                            0x62, 
                            0x63, 
                            0x64, 
                            0x64
                        })
                    }
                }

                Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                {
                    If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                    {
                        AINT (One, Arg0)
                        Store (Arg0, BRTL) /* \BRTL */
                    }
                }

                Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                {
                    Return (BRTL) /* \BRTL */
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (0x1D)
                }

                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (Zero)
                }

                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL8, Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            OperationRegion (IGDP, PCI_Config, Zero, 0x0100)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                MADR,   32, 
                Offset (0x50), 
                    ,   1, 
                GIVD,   1, 
                    ,   1, 
                GUMA,   5, 
                Offset (0x52), 
                Offset (0x54), 
                    ,   4, 
                GMFN,   1, 
                Offset (0x58), 
                Offset (0x5C), 
                GSTM,   32, 
                Offset (0xE0), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                Offset (0xE4), 
                ASLE,   8, 
                Offset (0xE8), 
                Offset (0xFC), 
                ASLS,   32
            }

            OperationRegion (IGMM, SystemMemory, MADR, 0x3000)
            Field (IGMM, AnyAcc, NoLock, Preserve)
            {
                Offset (0x20C8), 
                    ,   4, 
                DCFE,   4
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CAD1,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
                ASLP,   32, 
                TIDX,   32, 
                CHPD,   32, 
                CLID,   32, 
                CDCK,   32, 
                SXSW,   32, 
                EVTS,   32, 
                CNOT,   32, 
                NRDY,   32, 
                Offset (0x200), 
                SCIE,   1, 
                GEFC,   4, 
                GXFC,   3, 
                GESF,   8, 
                Offset (0x204), 
                PARM,   32, 
                DSLP,   32, 
                Offset (0x300), 
                ARDY,   32, 
                ASLC,   32, 
                TCHE,   32, 
                ALSI,   32, 
                BCLP,   32, 
                PFIT,   32, 
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x06)
            {
                Package (0x01)
                {
                    0xA0
                }, 

                Package (0x01)
                {
                    0xC8
                }, 

                Package (0x01)
                {
                    0x010B
                }, 

                Package (0x01)
                {
                    0x0140
                }, 

                Package (0x01)
                {
                    0x0164
                }, 

                Package (0x01)
                {
                    0x0190
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0279, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (0x0240, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (IBTT, PARM, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Add (PARM, 0x0100, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Add (PARM, 0x00010000, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (PARM, ShiftLeft (IBLC, 0x12), PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        XOr (PARM, One, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (PARM, ShiftLeft (GMFN, One), PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (PARM, 0x1800, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (PARM, ShiftLeft (IDMS, 0x11), PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Or (ShiftLeft (DerefOf (Index (CDCT, DCFE)), 0x15), PARM, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Store (One, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        }

                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        If (LEqual (PFLV, FMBL))
                        {
                            Store (0x000F87FD, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        }

                        If (LEqual (PFLV, FDTP))
                        {
                            Store (0x000F87BD, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        }

                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (And (PARM, 0x0F), ITVF) /* \ITVF */
                        Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM) /* \ITVM */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)
                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID) /* \_SB_.PCI0.GFX0.CLID */
                                GLID (CLID)
                            }
                        }

                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT) /* \IBTT */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC) /* \IPSC */
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT) /* \IPAT */
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x12), 0x03, IBLC) /* \IBLC */
                        And (ShiftRight (PARM, 0x14), 0x07, IBIA) /* \IBIA */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E) /* \IF1E */
                        And (ShiftRight (PARM, 0x11), 0x0F, IDMS) /* \IDMS */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Add (PARM, 0x0100, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC) /* \ISSC */
                            }
                            Else
                            {
                                Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                                Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC) /* \ISSC */
                        }

                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP) /* \PAVP */
                        Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                        Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC) /* \_SB_.PCI0.GFX0.GXFC */
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC) /* \_SB_.PCI0.GFX0.GXFC */
                }

                Store (Zero, GEFC) /* \_SB_.PCI0.GFX0.GEFC */
                Store (One, SCIS) /* \SCIS */
                Store (Zero, GSSE) /* \_SB_.PCI0.GFX0.GSSE */
                Store (Zero, SCIE) /* \_SB_.PCI0.GFX0.SCIE */
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (LNot (DRDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (DRDY))
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }

                Return (LEqual (CSTS, 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                Store (Arg0, CEVT) /* \_SB_.PCI0.GFX0.CEVT */
                Store (0x03, CSTS) /* \_SB_.PCI0.GFX0.CSTS */
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                Notify (GFX0, 0x80) // Status Change
                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX) /* \_SB_.PCI0.GFX0.TIDX */
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                Store (Arg0, CLID) /* \_SB_.PCI0.GFX0.CLID */
                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK) /* \_SB_.PCI0.GFX0.CDCK */
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (ARDY))
            }

            Method (AINT, 2, NotSerialized)
            {
                If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                            }
                            ElseIf (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                            }
                            Else
                            {
                                Store (One, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                            }
                        }

                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                            }
                            ElseIf (And (Local1, One))
                            {
                                Store (One, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                            }
                            Else
                            {
                                Store (0x06, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                            }
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                            }
                            ElseIf (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                            }
                            Else
                            {
                                Store (0x08, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                    }

                    Or (PFIT, 0x80000000, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                    Store (0x04, ASLC) /* \_SB_.PCI0.GFX0.ASLC */
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP) /* \_SB_.PCI0.GFX0.BCLP */
                    Or (BCLP, 0x80000000, BCLP) /* \_SB_.PCI0.GFX0.BCLP */
                    Store (0x02, ASLC) /* \_SB_.PCI0.GFX0.ASLC */
                }
                ElseIf (LEqual (Arg0, Zero))
                {
                    Store (Arg1, ALSI) /* \_SB_.PCI0.GFX0.ALSI */
                    Store (One, ASLC) /* \_SB_.PCI0.GFX0.ASLC */
                }
                Else
                {
                    Return (One)
                }

                Store (One, ASLE) /* \_SB_.PCI0.GFX0.ASLE */
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }

                Return (Zero)
            }

            Device (ISP0)
            {
                Name (_ADR, 0x0F38)  // _ADR: Address
                Name (_DDN, "VLV2 ISP - 80860F38")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    PEPD
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (Zero)
                    }

                    If (LGreaterEqual (SOCS, 0x02))
                    {
                        If (LEqual (ISPD, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    Else
                    {
                        Store (0x0F39, _ADR) /* \_SB_.PCI0.GFX0.ISP0._ADR */
                        Store ("VLV2 ISP - 80860F39", _DDN) /* \_SB_.PCI0.GFX0.ISP0._DDN */
                        If (LEqual (ISPD, One))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Name (SBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x90C00000,         // Address Base
                        0x00400000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (SBUF) /* \_SB_.PCI0.GFX0.ISP0.SBUF */
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, One))
                    {
                        Return (One)
                    }
                    ElseIf (LEqual (Arg0, 0x02))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000000, 0x00){}
        Processor (CPU1, 0x02, 0x00000000, 0x00){}
        Processor (CPU2, 0x03, 0x00000000, 0x00){}
        Processor (CPU3, 0x04, 0x00000000, 0x00){}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D) /* \P80D */
        }

        If (LEqual (Arg0, One))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)), P80D) /* \P80D */
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)), P80D) /* \P80D */
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)), P80D) /* \P80D */
        }

        Store (P80D, P80H) /* \P80H */
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC) /* \GPIC */
        Store (Arg0, PICM) /* \PICM */
    }

    OperationRegion (SWC0, SystemIO, 0x0610, 0x0F)
    Field (SWC0, ByteAcc, NoLock, Preserve)
    {
        G1S,    8, 
        Offset (0x04), 
        G1E,    8, 
        Offset (0x0A), 
        G1S2,   8, 
        G1S3,   8
    }

    OperationRegion (SWC1, SystemIO, PMBS, 0x2C)
    Field (SWC1, DWordAcc, NoLock, Preserve)
    {
        Offset (0x20), 
        G0S,    32, 
        Offset (0x28), 
        G0EN,   32
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Zero, P80D) /* \P80D */
        P8XH (Zero, Arg0)
        Store (ToInteger (Arg0), DAX0) /* \DAX0 */
        \WMI0.TSMI (One, 0x91, 0xFFD1)
        Store (Ones, G1S3) /* \G1S3 */
        Store (Ones, G1S2) /* \G1S2 */
        Store (One, G1S) /* \G1S_ */
        Store (One, G1E) /* \G1E_ */
        Store (Ones, G0S) /* \G0S_ */
        If (CondRefOf (TCGM))
        {
            \_SB.PCI0.LPCB.TPM.PTS (Arg0)
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        If (NEXP)
        {
            If (And (OSCC, 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If (And (OSCC, 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LEqual (PFLV, FMBL))
            {
                If (LEqual (Arg0, 0x04))
                {
                    PNOT ()
                }
            }

            If (And (CFGD, 0x01000000)){}
            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (\_PR.CPU0._PPC, Zero))
                    {
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC) /* External reference */
                        PNOT ()
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC) /* External reference */
                        PNOT ()
                    }
                    Else
                    {
                        Add (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC) /* External reference */
                        PNOT ()
                        Subtract (\_PR.CPU0._PPC, One, \_PR.CPU0._PPC) /* External reference */
                        PNOT ()
                    }
                }
            }
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If (And (PDC2, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If (And (PDC3, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    Scope (_SB)
    {
        Name (CRTT, 0x6E)
        Name (ACTT, 0x55)
        Name (SCR0, 0x0102)
        Name (SCR1, 0x0102)
        Name (SCR2, 0x0102)
        Name (SCR3, 0x0102)
        Name (GCR0, 0x46)
        Name (GCR1, 0x46)
        Name (GCR2, 0x46)
        Name (GCR3, 0x46)
        Name (GCR4, 0x46)
        Name (PST0, 0x3C)
        Name (PST1, 0x3C)
        Name (PST2, 0x3C)
        Name (PST3, 0x3C)
        Name (PST4, 0x3C)
        Name (LPMV, 0x03)
        Name (PDBG, Zero)
        Name (PDPM, One)
        Name (PDBP, One)
        Name (DLPO, Package (0x06)
        {
            One, 
            One, 
            One, 
            0x19, 
            One, 
            One
        })
        Name (BRQD, Zero)
        Name (PSC1, Zero)
        Name (PSC2, Zero)
        Name (PSC3, Zero)
        Name (PSA1, Zero)
        Name (PSA2, Zero)
        Name (PSA3, Zero)
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (DPCT, CRTT) /* \_SB_.CRTT */
            Store (DPPT, ACTT) /* \_SB_.ACTT */
            Store (DGC0, GCR0) /* \_SB_.GCR0 */
            Store (DGC1, GCR1) /* \_SB_.GCR1 */
            Store (DGC2, GCR2) /* \_SB_.GCR2 */
            Store (DGC3, GCR3) /* \_SB_.GCR3 */
            Store (DGC4, GCR4) /* \_SB_.GCR4 */
            Store (DGP0, PST0) /* \_SB_.PST0 */
            Store (DGP1, PST1) /* \_SB_.PST1 */
            Store (DGP2, PST2) /* \_SB_.PST2 */
            Store (DGP3, PST3) /* \_SB_.PST3 */
            Store (DGP4, PST4) /* \_SB_.PST4 */
            Store (DSC0, SCR0) /* \_SB_.SCR0 */
            Store (DSC1, SCR1) /* \_SB_.SCR1 */
            Store (DSC2, SCR2) /* \_SB_.SCR2 */
            Store (DSC3, SCR3) /* \_SB_.SCR3 */
            Store (DLPM, LPMV) /* \_SB_.LPMV */
            Store (DDBG, PDBG) /* \_SB_.PDBG */
            Store (LPOE, Index (DLPO, One))
            Store (LPPS, Index (DLPO, 0x02))
            Store (LPST, Index (DLPO, 0x03))
            Store (LPPC, Index (DLPO, 0x04))
            Store (LPPF, Index (DLPO, 0x05))
            Store (DPME, PDPM) /* \_SB_.PDPM */
        }

        Scope (PCI0)
        {
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (0x07D0, OSYS) /* \OSYS */
                If (CondRefOf (\_OSI, Local0))
                {
                    If (_OSI ("Windows 2001"))
                    {
                        Store (0x07D1, OSYS) /* \OSYS */
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        Store (0x07D1, OSYS) /* \OSYS */
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        Store (0x07D2, OSYS) /* \OSYS */
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        Store (0x07D6, OSYS) /* \OSYS */
                    }

                    If (_OSI ("Windows 2009"))
                    {
                        Store (0x07D9, OSYS) /* \OSYS */
                    }

                    If (_OSI ("Windows 2012"))
                    {
                        Store (0x07DC, OSYS) /* \OSYS */
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        Store (0x07DD, OSYS) /* \OSYS */
                    }
                }
            }

            Method (NHPG, 0, Serialized)
            {
            }

            Method (NPME, 0, Serialized)
            {
            }
        }

        Device (GPED)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT0002" /* Virtual GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT0002" /* Virtual GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "Virtual GPIO controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (INST, One)
            Name (XTMP, Zero)
            OperationRegion (SCIS, SystemMemory, 0xFED030C0, 0x04)
            Field (SCIS, DWordAcc, NoLock, Preserve)
            {
                LGBE,   1, 
                LHAD,   1, 
                LATA,   1, 
                LDIO,   1, 
                LARD,   1, 
                LIO1,   1, 
                LCEP,   1, 
                LANB,   1, 
                LHCI,   1, 
                LOTG,   1, 
                LECI,   1, 
                LHSI,   1
            }

            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("8b38b469-6f95-4b08-9b02-2defcc2d2c35")))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                    }

                    If (LEqual (Arg2, One))
                    {
                        Return (Add (PMBS, 0x20))
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000009,
                    }
                })
                Return (RBUF) /* \_SB_.GPED._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.GPED", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (RBUF) /* \_SB_.GPED._AEI.RBUF */
            }

            Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If (LEqual (XHCI, Zero))
                {
                    If (LEqual (^^PCI0.EHC1.PMES, One))
                    {
                        Store (Zero, ^^PCI0.EHC1.PMEE) /* \_SB_.PCI0.EHC1.PMEE */
                        Store (^^PCI0.EHC1.PMEE, Local0)
                        Notify (^^PCI0.EHC1, 0x02) // Device Wake
                    }
                }
                ElseIf (LGreater (SOCS, 0x05))
                {
                    And (^^PCI0.XHC1.PMCS, 0x8000, XTMP) /* \_SB_.GPED.XTMP */
                    If (LEqual (XTMP, 0x8000))
                    {
                        Notify (^^PCI0.XHC1, 0x02) // Device Wake
                    }
                }
                ElseIf (LGreater (SOCS, 0x02))
                {
                    And (^^PCI0.XHC1.PMCS, 0x8000, XTMP) /* \_SB_.GPED.XTMP */
                    If (LEqual (XTMP, 0x8000))
                    {
                        Store (0x81, ^^PCI0.XHC1.PMCH) /* \_SB_.PCI0.XHC1.PMCH */
                        Notify (^^PCI0.XHC1, 0x02) // Device Wake
                    }
                }
                Else
                {
                    And (^^PCI0.XHC1.PMCS, 0x0103, XTMP) /* \_SB_.GPED.XTMP */
                    If (LEqual (XTMP, 0x0103))
                    {
                        Store (0x0100, ^^PCI0.XHC1.PMCS) /* \_SB_.PCI0.XHC1.PMCS */
                        Sleep (0x0A)
                        And (^^PCI0.XHC1.PMCS, 0x8000, XTMP) /* \_SB_.GPED.XTMP */
                        If (LEqual (XTMP, 0x8000))
                        {
                            Store (0x81, ^^PCI0.XHC1.PMCH) /* \_SB_.PCI0.XHC1.PMCH */
                        }
                        Else
                        {
                            Store (0x0103, ^^PCI0.XHC1.PMCS) /* \_SB_.PCI0.XHC1.PMCS */
                        }

                        Sleep (0x0A)
                        Notify (^^PCI0.XHC1, 0x02) // Device Wake
                    }
                    Else
                    {
                        Store (0x81, ^^PCI0.XHC1.PMCH) /* \_SB_.PCI0.XHC1.PMCH */
                        Sleep (0x0A)
                    }
                }

                If (LNotEqual (OTGM, Zero))
                {
                    If (LEqual (^^PCI0.OTG1.PMES, One))
                    {
                        ADBG ("OTG wake")
                        Store (Zero, ^^PCI0.OTG1.PMEE) /* \_SB_.PCI0.OTG1.PMEE */
                        Store (Zero, ^^PCI0.OTG1.CPME) /* \_SB_.PCI0.OTG1.CPME */
                        Store (Zero, ^^PCI0.OTG1.U2EN) /* \_SB_.PCI0.OTG1.U2EN */
                        Store (Zero, ^^PCI0.OTG1.U3EN) /* \_SB_.PCI0.OTG1.U3EN */
                        Notify (^^PCI0.OTG1, 0x02) // Device Wake
                    }
                }

                If (LEqual (^^PCI0.SEC0.PMES, One))
                {
                    Store (Zero, ^^PCI0.SEC0.PMEE) /* \_SB_.PCI0.SEC0.PMEE */
                    Store (^^PCI0.SEC0.PMEE, Local0)
                    Notify (^^PCI0.SEC0, 0x02) // Device Wake
                }
            }
        }

        Device (GPO0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "ValleyView General Purpose Input/Output (GPIO) controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0C000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000031,
                    }
                })
                Return (RBUF) /* \_SB_.GPO0._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x08))
                {
                    Store (Arg1, AVBL) /* \_SB_.GPO0.AVBL */
                }
            }
        }

        Device (GPO1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "ValleyView GPNCORE controller")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0D000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000030,
                    }
                })
                Return (RBUF) /* \_SB_.GPO1._CRS.RBUF */
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x08))
                {
                    Store (Arg1, AVBL) /* \_SB_.GPO1.AVBL */
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0019
                        }
                ), 
                WFD3,   1, 
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001A
                        }
                ), 
                TCD3,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (GPO2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "ValleyView GPSUS controller")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0E000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000032,
                    }
                })
                Return (RBUF) /* \_SB_.GPO2._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (WBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                Name (EBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                And (SKUI, 0x07, Local0)
                If (LGreater (Local0, One))
                {
                    Return (EBUF) /* \_SB_.GPO2._AEI.EBUF */
                }

                Return (WBUF) /* \_SB_.GPO2._AEI.WBUF */
            }

            Method (_E02, 0, NotSerialized)  // _Exx: Edge-Triggered GPE
            {
                Store (Zero, Local0)
                ADBG ("Charger INTR")
                If (CondRefOf (\_SB.I2C1.BATC, Local1))
                {
                    Store (^^I2C1.BATC.INTC (), Local0)
                    If (LEqual (One, And (Local0, One)))
                    {
                        ADBG ("Charger Refresh")
                        Notify (ADP1, 0x80) // Status Change
                    }

                    If (LEqual (0x04, And (Local0, 0x04)))
                    {
                        Notify (^^I2C1.BATC, 0x80) // Status Change
                        Notify (^^I2C1.BATC, 0x81) // Information Change
                    }

                    If (LEqual (0x08, And (Local0, 0x08)))
                    {
                        Store (^^I2C1.BATC.PWRE (), Local1)
                        If (LNotEqual (Local1, Zero))
                        {
                            Notify (VALZ, 0x8E) // Device-Specific
                        }
                    }
                }

                If (CondRefOf (\_SB.DPTF, Local3))
                {
                    Notify (DPTF, 0x86) // Device-Specific
                    Notify (TCHG, 0x80) // Status Change
                }
            }

            Method (_E09, 0, NotSerialized)  // _Exx: Edge-Triggered GPE
            {
                If (CondRefOf (\_SB.I2C1.BATC, Local1))
                {
                    Store (^^I2C1.BATC.INTC (), Local0)
                    If (LEqual (One, Local0))
                    {
                        Notify (ADP1, 0x80) // Status Change
                        If (CondRefOf (\_SB.DPTF, Local3))
                        {
                            And (Local0, 0x8800, Local1)
                            If (LNotEqual (Local1, Zero))
                            {
                                Notify (DPTF, 0x86) // Device-Specific
                                Notify (TCHG, 0x80) // Status Change
                            }
                        }
                    }

                    If (LEqual (0x04, Local0))
                    {
                        Notify (^^I2C1.BATC, 0x80) // Status Change
                        Notify (^^I2C1.BATC, 0x81) // Information Change
                    }
                }
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x08))
                {
                    Store (Arg1, AVBL) /* \_SB_.GPO2.AVBL */
                }
            }
        }

        Device (PEPD)
        {
            Name (_HID, "INT3396" /* Standard Power Management Controller */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80") /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PEPP, Zero)
            Name (DEVS, Package (0x01)
            {
                Zero
            })
            Name (DEVX, Package (0x0E)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.XHC1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SEC0", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C2", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C3", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C4", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.I2C5", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHA", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHB", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.SDHC", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT1", 
                    One
                }, 

                Package (0x02)
                {
                    "\\_SB.URT2", 
                    One
                }
            })
            Name (CDMP, Package (0x02){})
            Name (DEVY, Package (0x13)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0.ISP0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C3", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C4", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.I2C5", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.LPEA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHA", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHB", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.SDHC", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT1", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.URT2", 
                    One, 
                    Package (0x05)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x02, 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            0x03, 
                            0x03
                        }
                    }
                }
            })
            Name (BCCD, Package (0x01)
            {
                Package (0x02)
                {
                    "\\_SB.SDHA", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                Zero, 
                                0x20, 
                                Zero, 
                                0x03, 
                                Ones
                            }, 

                            Package (0x03)
                            {
                                0xFFFFFFFC, 
                                Zero, 
                                0x04
                            }, 

                            Zero
                        }
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("b8febfe0-baf8-454b-aecd-49fb91137b21")))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x0F                                             // .
                        })
                    }

                    If (LEqual (Arg2, One))
                    {
                        Store (One, PEPP) /* \_SB_.PEPD.PEPP */
                        Return (0x0F)
                    }

                    If (LEqual (Arg2, 0x02))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Return (DEVS) /* \_SB_.PEPD.DEVS */
                        }

                        If (LEqual (Arg1, One))
                        {
                            Return (DEVX) /* \_SB_.PEPD.DEVX */
                        }
                    }

                    If (LEqual (Arg2, 0x03))
                    {
                        Store ("\\_SB.SDHA", Index (CDMP, Zero))
                        Store (EM1A, Index (CDMP, One))
                        Return (CDMP) /* \_SB_.PEPD.CDMP */
                    }
                }

                If (LEqual (Arg0, ToUUID ("c4eb40a0-6cd2-11e2-bcfd-0800200c9a66")))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                             // .
                        })
                    }

                    If (LEqual (Arg2, One))
                    {
                        Return (DEVY) /* \_SB_.PEPD.DEVY */
                    }

                    If (LEqual (Arg2, 0x02))
                    {
                        Store (EM1A, Local0)
                        Add (Local0, 0x84, Local0)
                        Store (Local0, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (BCCD, 
                            Zero)), One)), Zero)), Zero)), 0x04))
                        Return (BCCD) /* \_SB_.PEPD.BCCD */
                    }
                }

                Return (One)
            }
        }

        Device (SDHA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F14" /* Intel Baytrail SDIO/MMC Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) eMMC Controller - 80860F14")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBF1, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002D,
                }
            })
            Name (RBF2, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0B)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002C,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBF1, \_SB.SDHA._Y0A._BAS, B0B1)  // _BAS: Base Address
                CreateDWordField (RBF1, \_SB.SDHA._Y0A._LEN, B0L1)  // _LEN: Length
                Store (EM0A, B0B1) /* \_SB_.SDHA._CRS.B0B1 */
                Store (EM0L, B0L1) /* \_SB_.SDHA._CRS.B0L1 */
                CreateDWordField (RBF2, \_SB.SDHA._Y0B._BAS, B0B2)  // _BAS: Base Address
                CreateDWordField (RBF2, \_SB.SDHA._Y0B._LEN, B0L2)  // _LEN: Length
                Store (EM0A, B0B2) /* \_SB_.SDHA._CRS.B0B2 */
                Store (EM0L, B0L2) /* \_SB_.SDHA._CRS.B0L2 */
                If (LEqual (EMVR, One))
                {
                    Return (RBF2) /* \_SB_.SDHA.RBF2 */
                }

                Return (RBF1) /* \_SB_.SDHA.RBF1 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.SDHA.PSAT */
                Store (PSAT, Local0)
                If (LOr (LLess (SOCS, 0x02), LAnd (LEqual (SOCS, 0x02), LEqual (EMVR, One))))
                {
                    Sleep (0x02)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.SDHA.PSAT */
                Store (PSAT, Local0)
                If (LOr (LLess (SOCS, 0x02), LAnd (LEqual (SOCS, 0x02), LEqual (EMVR, One))))
                {
                    Sleep (0x02)
                }
            }

            OperationRegion (KEYS, SystemMemory, EM1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Device (EMMD)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (SDHB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33BB" /* Intel Baytrail SD Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SDIO Controller - 80860F15")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                PEPD, 
                GPO2
            })
            Name (PSTS, Zero)
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0C)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002E,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SDHB._Y0C._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SDHB._Y0C._LEN, B0LN)  // _LEN: Length
                Store (SI0A, B0BA) /* \_SB_.SDHB._CRS.B0BA */
                Store (SI0L, B0LN) /* \_SB_.SDHB._CRS.B0LN */
                Return (RBUF) /* \_SB_.SDHB.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LLessEqual (STEP, 0x04))
                {
                    Store (SDMD, _HRV) /* \_SB_.SDHB._HRV */
                }

                If (LOr (LEqual (SI0A, Zero), LEqual (SD2D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.SDHB.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.SDHB.PSAT */
                Store (PSAT, Local0)
                If (LEqual (PSTS, Zero))
                {
                    If (LEqual (^^GPO1.AVBL, One))
                    {
                        Store (One, ^^GPO1.WFD3) /* \_SB_.GPO1.WFD3 */
                        Store (One, PSTS) /* \_SB_.SDHB.PSTS */
                    }
                }
            }

            OperationRegion (KEYS, SystemMemory, SI1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (BRCM)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO2
                })
                Name (_STA, Zero)  // _STA: Status
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                    })
                    Return (RBUF) /* \_SB_.SDHB.BRCM._CRS.RBUF */
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    If (LEqual (^^^GPO1.AVBL, One))
                    {
                        Store (Zero, ^^^GPO1.WFD3) /* \_SB_.GPO1.WFD3 */
                        Store (Zero, PSTS) /* \_SB_.SDHB.PSTS */
                    }
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    If (LEqual (PSTS, Zero))
                    {
                        If (LEqual (^^^GPO1.AVBL, One))
                        {
                            Store (One, ^^^GPO1.WFD3) /* \_SB_.GPO1.WFD3 */
                            Store (One, PSTS) /* \_SB_.SDHB.PSTS */
                        }
                    }
                }
            }

            Device (BRC2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_STA, Zero)  // _STA: Status
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (NAM, Buffer (0x0F)
                    {
                        "\\_SB.SDHB.BRCM"
                    })
                    Name (SPB, Buffer (0x0C)
                    {
                        /* 0000 */  0x8E, 0x18, 0x00, 0x01, 0x00, 0xC0, 0x02, 0x00,  // ........
                        /* 0008 */  0x00, 0x01, 0x00, 0x00                           // ....
                    })
                    Name (END, Buffer (0x02)
                    {
                         0x79, 0x00                                       // y.
                    })
                    Concatenate (SPB, NAM, Local0)
                    Concatenate (Local0, END, Local1)
                    Return (Local1)
                }
            }

            Device (RTLW)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO1
                })
                Name (_HID, "RTL8723" /* Realtek Wireless Controller */)  // _HID: Hardware ID
                Name (_CID, "RTL8723" /* Realtek Wireless Controller */)  // _CID: Compatible ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000F
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                    })
                    Return (RBUF) /* \_SB_.SDHB.RTLW._CRS.RBUF */
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    If (LEqual (^^^GPO1.AVBL, One))
                    {
                        Store (Zero, ^^^GPO1.WFD3) /* \_SB_.GPO1.WFD3 */
                        Store (Zero, PSTS) /* \_SB_.SDHB.PSTS */
                    }
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    If (LEqual (PSTS, Zero))
                    {
                        If (LEqual (^^^GPO1.AVBL, One))
                        {
                            Store (One, ^^^GPO1.WFD3) /* \_SB_.GPO1.WFD3 */
                            Store (One, PSTS) /* \_SB_.SDHB.PSTS */
                        }
                    }
                }
            }

            Device (WLAN)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    GPO1, 
                    GPO2
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (EBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                    })
                    Name (WBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                    })
                    And (SKUI, 0x07, Local0)
                    If (LGreater (Local0, One))
                    {
                        Return (EBUF) /* \_SB_.SDHB.WLAN._CRS.EBUF */
                    }

                    Return (WBUF) /* \_SB_.SDHB.WLAN._CRS.WBUF */
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                }
            }
        }

        Device (SDHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F14" /* Intel Baytrail SDIO/MMC Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SD Card Controller - 80860F16")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                PEPD, 
                GPO0, 
                ^I2C5.PMIC
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0D)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001F
                    }
            })
            Name (ABUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0E)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0028
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0029
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SDHC._Y0D._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SDHC._Y0D._LEN, B0LN)  // _LEN: Length
                Store (SD0A, B0BA) /* \_SB_.SDHC._CRS.B0BA */
                Store (SD0L, B0LN) /* \_SB_.SDHC._CRS.B0LN */
                CreateDWordField (ABUF, \_SB.SDHC._Y0E._BAS, B0BX)  // _BAS: Base Address
                CreateDWordField (ABUF, \_SB.SDHC._Y0E._LEN, B0LX)  // _LEN: Length
                Store (SD0A, B0BX) /* \_SB_.SDHC._CRS.B0BX */
                Store (SD0L, B0LX) /* \_SB_.SDHC._CRS.B0LX */
                If (And (OSSL, 0x80))
                {
                    Return (ABUF) /* \_SB_.SDHC.ABUF */
                }

                Return (RBUF) /* \_SB_.SDHC.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (SD0A, Zero), LEqual (SD3D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.SDHC.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.SDHC.PSAT */
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, SD1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (GDM1)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #1 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y0F)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002A,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GDM1._Y0F._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GDM1._Y0F._LEN, B0LN)  // _LEN: Length
                Store (D10A, B0BA) /* \_SB_.GDM1._CRS.B0BA */
                Store (D10L, B0LN) /* \_SB_.GDM1._CRS.B0LN */
                Return (RBUF) /* \_SB_.GDM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (D10A, Zero), LEqual (L10D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (GDM2)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #2 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y10)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002B,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GDM2._Y10._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GDM2._Y10._LEN, B0LN)  // _LEN: Length
                Store (D20A, B0BA) /* \_SB_.GDM2._CRS.B0BA */
                Store (D20L, B0LN) /* \_SB_.GDM2._CRS.B0LN */
                Return (RBUF) /* \_SB_.GDM2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (D20A, Zero), LEqual (L20D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (PWM1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F09" /* Intel PWM Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F09" /* Intel PWM Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #1 - 80860F08")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PWM1._Y11._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PWM1._Y11._LEN, B0LN)  // _LEN: Length
                Store (P10A, B0BA) /* \_SB_.PWM1._CRS.B0BA */
                Store (P10L, B0LN) /* \_SB_.PWM1._CRS.B0LN */
                Return (RBUF) /* \_SB_.PWM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (P10A, Zero), LEqual (L11D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (PWM2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F09" /* Intel PWM Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F09" /* Intel PWM Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #2 - 80860F09")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y12)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PWM2._Y12._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PWM2._Y12._LEN, B0LN)  // _LEN: Length
                Store (P20A, B0BA) /* \_SB_.PWM2._CRS.B0BA */
                Store (P20L, B0LN) /* \_SB_.PWM2._CRS.B0LN */
                Return (RBUF) /* \_SB_.PWM2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (P20A, Zero), LEqual (L12D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (URT1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0A" /* Intel Atom UART Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F0A" /* Intel Atom UART Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #1 - 80860F0A")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y13)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000027,
                }
                FixedDMA (0x0002, 0x0002, Width32bit, )
                FixedDMA (0x0003, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.URT1._Y13._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.URT1._Y13._LEN, B0LN)  // _LEN: Length
                Store (U10A, B0BA) /* \_SB_.URT1._CRS.B0BA */
                Store (U10L, B0LN) /* \_SB_.URT1._CRS.B0LN */
                Return (RBUF) /* \_SB_.URT1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (U10A, Zero), LEqual (L13D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.URT1.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.URT1.PSAT */
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, U11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (BTH0)
            {
                Name (_HID, "BCM2E3A")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                    })
                    Return (UBUF) /* \_SB_.URT1.BTH0._CRS.UBUF */
                }
            }

            Device (BTH1)
            {
                Name (_HID, "OBDA8723")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (EBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xC0, LittleEndian, ParityTypeEven, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                        GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                    })
                    Name (WBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xC0, LittleEndian, ParityTypeEven, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceProducer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                    })
                    And (SKUI, 0x07, Local0)
                    If (LGreater (Local0, One))
                    {
                        Return (EBUF) /* \_SB_.URT1.BTH1._CRS.EBUF */
                    }

                    Return (WBUF) /* \_SB_.URT1.BTH1._CRS.WBUF */
                }
            }
        }

        Device (URT2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0A" /* Intel Atom UART Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F0A" /* Intel Atom UART Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #2 - 80860F0C")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000028,
                }
                FixedDMA (0x0004, 0x0004, Width32bit, )
                FixedDMA (0x0005, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.URT2._Y14._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.URT2._Y14._LEN, B0LN)  // _LEN: Length
                Store (U20A, B0BA) /* \_SB_.URT2._CRS.B0BA */
                Store (U20L, B0LN) /* \_SB_.URT2._CRS.B0LN */
                Return (RBUF) /* \_SB_.URT2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (U20A, Zero), LEqual (L14D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.URT2.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.URT2.PSAT */
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, U21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (GPS0)
            {
                Name (_HID, "TOS4752")  // _HID: Hardware ID
                Name (_HRV, 0x0A00)  // _HRV: Hardware Revision
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (And (BTOI, One), Zero))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.URT2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    })
                    Return (UBUF) /* \_SB_.URT2.GPS0._CRS.UBUF */
                }
            }
        }

        Device (SPI1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0E" /* Intel SPI Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F0E" /* Intel SPI Controller */)  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) SPI Controller - 80860F0E")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y15)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000029,
                }
                FixedDMA (0x0000, 0x0000, Width32bit, )
                FixedDMA (0x0001, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SPI1._Y15._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SPI1._Y15._LEN, B0LN)  // _LEN: Length
                Store (SP0A, B0BA) /* \_SB_.SPI1._CRS.B0BA */
                Store (SP0L, B0LN) /* \_SB_.SPI1._CRS.B0LN */
                Return (RBUF) /* \_SB_.SPI1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (SP0A, Zero), LEqual (L15D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.SPI1.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.SPI1.PSAT */
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, SP1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (FPNT)
            {
                Name (_HID, "AUTH2750" /* AuthenTec AES2750 */)  // _HID: Hardware ID
                Name (_DDN, "AuthenTec AES2750")  // _DDN: DOS Device Name
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        SpiSerialBusV2 (0x0001, PolarityLow, FourWireMode, 0x08,
                            ControllerInitiated, 0x007A1200, ClockPolarityLow,
                            ClockPhaseSecond, "\\_SB.SPI1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000048,
                        }
                    })
                    Return (UBUF) /* \_SB_.SPI1.FPNT._CRS.UBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }
        }

        Device (NFC2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "NXP5442" /* NXP 5442 Near Field Communications Controller */)  // _HID: Hardware ID
            Name (_CID, "NXP5442" /* NXP 5442 Near Field Communications Controller */)  // _CID: Compatible ID
            Name (_DDN, "NXP NFC")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }

        Device (I2C1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #1 - 80860F41")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y16)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000020,
                }
                FixedDMA (0x0010, 0x0000, Width32bit, )
                FixedDMA (0x0011, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C1._Y16._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C1._Y16._LEN, B0LN)  // _LEN: Length
                Store (I10A, B0BA) /* \_SB_.I2C1._CRS.B0BA */
                Store (I10L, B0LN) /* \_SB_.I2C1._CRS.B0LN */
                Return (RBUF) /* \_SB_.I2C1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I10A, Zero), LEqual (L21D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.I2C1.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.I2C1.PSAT */
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Device (I2C2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #2 - 80860F42")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y17)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000021,
                }
                FixedDMA (0x0012, 0x0002, Width32bit, )
                FixedDMA (0x0013, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C2._Y17._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C2._Y17._LEN, B0LN)  // _LEN: Length
                Store (I20A, B0BA) /* \_SB_.I2C2._CRS.B0BA */
                Store (I20L, B0LN) /* \_SB_.I2C2._CRS.B0LN */
                Return (RBUF) /* \_SB_.I2C2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I20A, Zero), LEqual (L22D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.I2C2.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.I2C2.PSAT */
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Name (I2CD, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0038, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C2",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            OperationRegion (I2CR, GenericSerialBus, Zero, 0x0100)
            Field (I2CR, BufferAcc, NoLock, Preserve)
            {
                Connection (I2CD), 
                AccessAs (BufferAcc, AttribByte), 
                BA00,   8, 
                BA01,   8, 
                BA02,   8, 
                BA03,   8, 
                BA04,   8, 
                Offset (0x20), 
                BA20,   8, 
                BA21,   8, 
                BA22,   8, 
                BA23,   8
            }

            Method (TEST, 1, Serialized)
            {
                Store (Arg0, Local0)
                Name (BUFF, Buffer (0x03){})
                CreateByteField (BUFF, Zero, STAT)
                CreateByteField (BUFF, One, LEN)
                CreateByteField (BUFF, 0x02, DATA)
                Store (One, DATA) /* \_SB_.I2C2.TEST.DATA */
                Store (BUFF, BA04) /* \_SB_.I2C2.BA04 */
                Store (0xFF, DATA) /* \_SB_.I2C2.TEST.DATA */
                Store (BUFF, BA01) /* \_SB_.I2C2.BA01 */
                And (Local0, 0x0F, Local1)
                Store (Local1, DATA) /* \_SB_.I2C2.TEST.DATA */
                Store (BUFF, BA20) /* \_SB_.I2C2.BA20 */
                ShiftRight (Local0, 0x04, Local0)
                And (Local0, 0x0F, Local1)
                Store (Local1, DATA) /* \_SB_.I2C2.TEST.DATA */
                Store (BUFF, BA22) /* \_SB_.I2C2.BA22 */
                ShiftRight (Local0, 0x04, Local0)
                And (Local0, 0x0F, Local1)
                Store (Local1, DATA) /* \_SB_.I2C2.TEST.DATA */
                Store (BUFF, BA23) /* \_SB_.I2C2.BA23 */
                ShiftRight (Local0, 0x04, Local0)
                And (Local0, 0x0F, Local1)
                Store (Local1, DATA) /* \_SB_.I2C2.TEST.DATA */
                Store (BUFF, BA21) /* \_SB_.I2C2.BA21 */
            }

            PowerResource (CLK0, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC0) /* \CKC0 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    Store (One, CKC0) /* \CKC0 */
                    Store (One, CKF0) /* \CKF0 */
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Store (0x02, CKC0) /* \CKC0 */
                }
            }

            PowerResource (CLK1, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC1) /* \CKC1 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    Store (One, CKC1) /* \CKC1 */
                    Store (One, CKF1) /* \CKF1 */
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    Store (0x02, CKC1) /* \CKC1 */
                }
            }

            Device (RTEK)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "10EC5640" /* Realtek I2S Audio Codec */)  // _HID: Hardware ID
                Name (_CID, "10EC5640" /* Realtek I2S Audio Codec */)  // _CID: Compatible ID
                Name (_DDN, "RTEK Codec Controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (CHAN, Package (0x02)
                {
                    0x02, 
                    0x017D7840
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x001C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0004
                            }
                    })
                    Return (SBUF) /* \_SB_.I2C2.RTEK._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    Store (Zero, CKC3) /* \CKC3 */
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    Store (One, CKC3) /* \CKC3 */
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, ToUUID ("a9240c44-f032-454d-80e5-7aeed80e9551")))
                    {
                        CreateByteField (Arg3, Zero, FARG)
                        Switch (Arg2)
                        {
                            Case (0x03)
                            {
                                Switch (Arg3)
                                {
                                    Case (Zero)
                                    {
                                        Return (0x039D)
                                    }
                                    Case (0x04)
                                    {
                                        If (And (BTOI, 0x04))
                                        {
                                            Return (Buffer (0x4C)
                                            {
                                                /* 0000 */  0x09, 0x00, 0x00, 0xCE, 0x1D, 0x00, 0x01, 0x00,  // ........
                                                /* 0008 */  0x02, 0x00, 0x4A, 0x00, 0x1D, 0x00, 0x01, 0x00,  // ..J.....
                                                /* 0010 */  0x8E, 0x8E, 0x02, 0x00, 0x1D, 0x00, 0x01, 0x00,  // ........
                                                /* 0018 */  0x03, 0x40, 0xBB, 0x00, 0x1D, 0x00, 0x01, 0x00,  // .@......
                                                /* 0020 */  0x08, 0xF0, 0x70, 0x00, 0x1D, 0x00, 0x01, 0x00,  // ..p.....
                                                /* 0028 */  0x00, 0xD0, 0x45, 0x00, 0x1D, 0x00, 0x01, 0x00,  // ..E.....
                                                /* 0030 */  0xA0, 0xAD, 0x75, 0x00, 0x2D, 0x00, 0x01, 0x00,  // ..u.-...
                                                /* 0038 */  0x00, 0x00, 0x02, 0x00, 0x28, 0x00, 0x01, 0x00,  // ....(...
                                                /* 0040 */  0x17, 0x00, 0x00, 0x00, 0x23, 0x00, 0x01, 0x00,  // ....#...
                                                /* 0048 */  0xA4, 0x00, 0x00, 0x00                           // ....
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x4C)
                                            {
                                                /* 0000 */  0x09, 0x00, 0x00, 0xCE, 0x1D, 0x00, 0x01, 0x00,  // ........
                                                /* 0008 */  0x02, 0x00, 0x4A, 0x00, 0x1D, 0x00, 0x01, 0x00,  // ..J.....
                                                /* 0010 */  0x8E, 0x8E, 0x02, 0x00, 0x1D, 0x00, 0x01, 0x00,  // ........
                                                /* 0018 */  0x03, 0x40, 0xBB, 0x00, 0x1D, 0x00, 0x01, 0x00,  // .@......
                                                /* 0020 */  0x08, 0xF0, 0x70, 0x00, 0x1D, 0x00, 0x01, 0x00,  // ..p.....
                                                /* 0028 */  0x00, 0xD0, 0x45, 0x00, 0x1D, 0x00, 0x01, 0x00,  // ..E.....
                                                /* 0030 */  0xA0, 0xAD, 0x75, 0x00, 0x2D, 0x00, 0x01, 0x00,  // ..u.-...
                                                /* 0038 */  0x00, 0x00, 0x02, 0x00, 0x28, 0x00, 0x01, 0x00,  // ....(...
                                                /* 0040 */  0x17, 0x00, 0x00, 0x00, 0x23, 0x00, 0x01, 0x00,  // ....#...
                                                /* 0048 */  0x24, 0x00, 0x00, 0x00                           // $...
                                            })
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (Buffer (0xF6)
                                        {
                                            /* 0000 */  0x00, 0x30, 0x40, 0x56, 0x17, 0x00, 0x01, 0x00,  // .0@V....
                                            /* 0008 */  0xA0, 0x00, 0x10, 0x1C, 0x01, 0x00, 0xA1, 0x00,  // ........
                                            /* 0010 */  0x00, 0x00, 0x01, 0x00, 0xA2, 0x00, 0x83, 0xC8,  // ........
                                            /* 0018 */  0x01, 0x00, 0xA3, 0x00, 0x10, 0x1C, 0x01, 0x00,  // ........
                                            /* 0020 */  0xA4, 0x00, 0x00, 0x00, 0x01, 0x00, 0xA5, 0x00,  // ........
                                            /* 0028 */  0x88, 0xD5, 0x01, 0x00, 0xA6, 0x00, 0x10, 0x1C,  // ........
                                            /* 0030 */  0x01, 0x00, 0xA7, 0x00, 0x00, 0x00, 0x01, 0x00,  // ........
                                            /* 0038 */  0xA8, 0x00, 0x04, 0xE9, 0x01, 0x00, 0xA9, 0x00,  // ........
                                            /* 0040 */  0x10, 0x1C, 0x01, 0x00, 0xAA, 0x00, 0x00, 0x00,  // ........
                                            /* 0048 */  0x01, 0x00, 0xAB, 0x00, 0x00, 0x00, 0x01, 0x00,  // ........
                                            /* 0050 */  0xAC, 0x00, 0x10, 0x1C, 0x01, 0x00, 0xAD, 0x00,  // ........
                                            /* 0058 */  0x00, 0x00, 0x01, 0x00, 0xAE, 0x00, 0x36, 0x04,  // ......6.
                                            /* 0060 */  0x01, 0x00, 0xAF, 0x00, 0x00, 0x00, 0x01, 0x00,  // ........
                                            /* 0068 */  0xB0, 0x00, 0x0B, 0x1D, 0x01, 0x00, 0xB1, 0x00,  // ........
                                            /* 0070 */  0xB4, 0x02, 0x01, 0x00, 0xB2, 0x00, 0x2B, 0x1D,  // ......+.
                                            /* 0078 */  0x01, 0x00, 0xB3, 0x00, 0x00, 0x08, 0x01, 0x00,  // ........
                                            /* 0080 */  0xB4, 0x00, 0x00, 0x08, 0x00, 0x00, 0xB1, 0x00,  // ........
                                            /* 0088 */  0x00, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x60,  // .......`
                                            /* 0090 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 0098 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00A0 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00A8 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00B0 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00B8 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00C0 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00C8 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00D0 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00D8 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00E0 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00E8 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                            /* 00F0 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF               // ......
                                        })
                                    }
                                    Case (0x03)
                                    {
                                        Return (Buffer (0x42)
                                        {
                                            /* 0000 */  0x00, 0x20, 0x40, 0x56, 0x03, 0x00, 0x00, 0x00,  // . @V....
                                            /* 0008 */  0xB4, 0x00, 0x06, 0x02, 0x00, 0x02, 0xB5, 0x00,  // ........
                                            /* 0010 */  0x00, 0x1F, 0x00, 0x01, 0xB6, 0x00, 0x00, 0x00,  // ........
                                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0xBA, 0xB2, 0x30, 0x77,  // ......0w
                                            /* 0020 */  0x88, 0xF2, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01,  // ........
                                            /* 0028 */  0x00, 0xF1, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0030 */  0xA4, 0x53, 0x4B, 0x01, 0xB4, 0xCA, 0xFF, 0xFF,  // .SK.....
                                            /* 0038 */  0xA7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0040 */  0x00, 0x00                                       // ..
                                        })
                                    }
                                    Case (0x07)
                                    {
                                        Return (Buffer (0x76)
                                        {
                                            /* 0000 */  0x13, 0x42, 0x40, 0x56, 0x02, 0x00, 0xF2, 0x22,  // .B@V..."
                                            /* 0008 */  0x48, 0x00, 0x02, 0x00, 0x39, 0x23, 0x04, 0x00,  // H...9#..
                                            /* 0010 */  0x02, 0x00, 0x0D, 0x23, 0x00, 0x01, 0x02, 0x00,  // ...#....
                                            /* 0018 */  0x09, 0x23, 0x00, 0x04, 0x02, 0x00, 0x04, 0x23,  // .#.....#
                                            /* 0020 */  0x10, 0x03, 0x02, 0x00, 0x37, 0x23, 0xFE, 0xFF,  // ....7#..
                                            /* 0028 */  0x02, 0x00, 0x03, 0x23, 0x01, 0x11, 0x02, 0x00,  // ...#....
                                            /* 0030 */  0x05, 0x23, 0x01, 0x00, 0x02, 0x00, 0xA5, 0x23,  // .#.....#
                                            /* 0038 */  0x00, 0x00, 0x02, 0x00, 0x33, 0x23, 0x0C, 0x00,  // ....3#..
                                            /* 0040 */  0x02, 0x00, 0x32, 0x23, 0xA0, 0x00, 0x02, 0x00,  // ..2#....
                                            /* 0048 */  0xB3, 0x23, 0x10, 0x00, 0x02, 0x00, 0xB4, 0x23,  // .#.....#
                                            /* 0050 */  0x09, 0x00, 0x02, 0x00, 0xB7, 0x23, 0x20, 0x00,  // .....# .
                                            /* 0058 */  0x02, 0x00, 0xB8, 0x23, 0x00, 0x40, 0x02, 0x00,  // ...#.@..
                                            /* 0060 */  0xB9, 0x23, 0x00, 0x10, 0x02, 0x00, 0x2F, 0x23,  // .#..../#
                                            /* 0068 */  0x40, 0x01, 0x02, 0x00, 0x3C, 0x23, 0x00, 0x01,  // @...<#..
                                            /* 0070 */  0x02, 0x00, 0xBB, 0x23, 0x00, 0x20               // ...#. 
                                        })
                                    }
                                    Case (0x08)
                                    {
                                        Return (Buffer (0x0A)
                                        {
                                            /* 0000 */  0x01, 0x43, 0x40, 0x56, 0x02, 0x00, 0x65, 0x23,  // .C@V..e#
                                            /* 0008 */  0x00, 0x09                                       // ..
                                        })
                                    }
                                    Case (0x09)
                                    {
                                        Return (Buffer (0x28)
                                        {
                                            /* 0000 */  0x06, 0x44, 0x40, 0x56, 0x02, 0x00, 0x7A, 0x23,  // .D@V..z#
                                            /* 0008 */  0x00, 0x10, 0x02, 0x00, 0x6E, 0x23, 0x00, 0x20,  // ....n#. 
                                            /* 0010 */  0x02, 0x00, 0x64, 0x23, 0x60, 0x01, 0x02, 0x00,  // ..d#`...
                                            /* 0018 */  0x61, 0x23, 0x00, 0x20, 0x02, 0x00, 0x62, 0x23,  // a#. ..b#
                                            /* 0020 */  0x00, 0x20, 0x02, 0x00, 0x63, 0x23, 0x00, 0x20   // . ..c#. 
                                        })
                                    }
                                    Default
                                    {
                                        Return (0x80000002)
                                    }

                                }
                            }

                        }
                    }

                    Return (0x80000002)
                }
            }

            Device (TTLV)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "10TI3100")  // _HID: Hardware ID
                Name (_CID, "10TI3100")  // _CID: Compatible ID
                Name (_DDN, "TI TLV320AIC3100 Codec Controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (OBJ1, Package (0x0A)
                {
                    One, 
                    0x017D7840, 
                    One, 
                    0x97, 
                    One, 
                    0x86, 
                    One, 
                    One, 
                    0x14, 
                    0xB3
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0018, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C2.TTLV._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
            }

            Device (CAM1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33BE" /* Camera Sensor OV5693 */)  // _HID: Hardware ID
                Name (_CID, "INT33BE" /* Camera Sensor OV5693 */)  // _CID: Compatible ID
                Name (_SUB, "1179F978")  // _SUB: Subsystem ID
                Name (_DDN, "OV5693")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMIC
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28X, 
                    P18X, 
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // i.......
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.I2C2.CAM1.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0015
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C2.CAM1._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                    {
                        Return ("INT33BE")
                    }

                    If (LEqual (Arg0, ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c")))
                    {
                        Return ("OV5693")
                    }

                    If (LEqual (Arg0, ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                    {
                        Return ("CJAD542")
                    }

                    If (LEqual (Arg0, ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8")))
                    {
                        If (LEqual (BDID, 0x04))
                        {
                            If (LEqual (FBID, 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If (LEqual (FBID, 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, ToUUID ("918ab242-c37c-450a-9d0f-f47ab97c3dea")))
                    {
                        Return (0x0102)
                    }

                    If (LEqual (Arg0, ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab")))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf")))
                    {
                        Return (0x08)
                    }

                    If (LEqual (Arg0, ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d")))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015")))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6")))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f")))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x02001000)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x02000C01)
                        }
                    }

                    If (LEqual (Arg0, ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (0x02)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x01001100)
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (0x01001501)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F0" /* Camera Sensor MT9M114 */)  // _HID: Hardware ID
                Name (_CID, "INT33F0" /* Camera Sensor MT9M114 */)  // _CID: Compatible ID
                Name (_SUB, "1179F978")  // _SUB: Subsystem ID
                Name (_DDN, "MT9M114")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C5, 
                    ^^I2C5.PMIC
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28X, 
                    P18X, 
                    CLK1
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x61, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // a.......
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.I2C2.CAM2.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    And (SKUI, 0x07, Local0)
                    If (LGreater (Local0, One))
                    {
                        Name (SBUF, ResourceTemplate ()
                        {
                            GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                                "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x0012
                                }
                            I2cSerialBusV2 (0x005D, ControllerInitiated, 0x00061A80,
                                AddressingMode7Bit, "\\_SB.I2C2",
                                0x00, ResourceConsumer, , Exclusive,
                                )
                        })
                        Return (SBUF) /* \_SB_.I2C2.CAM2._CRS.SBUF */
                    }
                    Else
                    {
                        Name (BBUF, ResourceTemplate ()
                        {
                            GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                                "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x0012
                                }
                            I2cSerialBusV2 (0x0048, ControllerInitiated, 0x00061A80,
                                AddressingMode7Bit, "\\_SB.I2C2",
                                0x00, ResourceConsumer, , Exclusive,
                                )
                        })
                        Return (BBUF) /* \_SB_.I2C2.CAM2._CRS.BBUF */
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                    {
                        Return ("INT33F0")
                    }

                    If (LEqual (Arg0, ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c")))
                    {
                        Return ("MT9M114")
                    }

                    If (LEqual (Arg0, ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                    {
                        Return ("CIFDHA0")
                    }

                    If (LEqual (Arg0, ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8")))
                    {
                        If (LEqual (BDID, 0x04))
                        {
                            If (LEqual (FBID, 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If (LEqual (FBID, 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If (LEqual (Arg0, ToUUID ("918ab242-c37c-450a-9d0f-f47ab97c3dea")))
                    {
                        Return (0x0101)
                    }

                    If (LEqual (Arg0, ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab")))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf")))
                    {
                        Return (0x08)
                    }

                    If (LEqual (Arg0, ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d")))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015")))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6")))
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f")))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Arg0, ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            And (SKUI, 0x07, Local0)
                            If (LGreater (Local0, One))
                            {
                                Return (0x02005D00)
                            }
                            Else
                            {
                                Return (0x02004800)
                            }
                        }
                    }

                    If (LEqual (Arg0, ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                    {
                        If (LEqual (Arg2, One))
                        {
                            Return (One)
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (0x01001200)
                        }
                    }

                    Return (Zero)
                }
            }
        }

        Device (I2C3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #3 - 80860F43")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y18)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000022,
                }
                FixedDMA (0x0014, 0x0004, Width32bit, )
                FixedDMA (0x0015, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C3._Y18._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C3._Y18._LEN, B0LN)  // _LEN: Length
                Store (I30A, B0BA) /* \_SB_.I2C3._CRS.B0BA */
                Store (I30L, B0LN) /* \_SB_.I2C3._CRS.B0LN */
                Return (RBUF) /* \_SB_.I2C3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I30A, Zero), LEqual (L23D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.I2C3.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.I2C3.PSAT */
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I31A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (SENS)
            {
                Name (_HID, "INVN6500" /* InvenSense MPU-6500 Six Axis Gyroscope and Accelerometer */)  // _HID: Hardware ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0068, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000046,
                        }
                    })
                    Return (RBUF) /* \_SB_.I2C3.SENS._CRS.RBUF */
                }

                Name (CNF0, Package (0x04)
                {
                    Package (0x04)
                    {
                        "MPU6500", 
                        0x68, 
                        One, 
                        0x07
                    }, 

                    Package (0x04)
                    {
                        "MPU6500", 
                        0x68, 
                        One, 
                        0x07
                    }, 

                    Package (0x04)
                    {
                        "AK8963", 
                        0x0C, 
                        0x02, 
                        0x04
                    }, 

                    Package (0x01)
                    {
                        Buffer (0x5C)
                        {
                            /* 0000 */  0x5C, 0x00, 0x00, 0x00, 0x22, 0x15, 0x0D, 0xB8,  // \..."...
                            /* 0008 */  0xF1, 0x73, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00,  // .s..D...
                            /* 0010 */  0xAE, 0xF5, 0x63, 0x47, 0x93, 0xD0, 0x00, 0x00,  // ..cG....
                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x9A, 0xAD, 0xEF, 0xFF,  // ........
                            /* 0028 */  0x67, 0xEA, 0xF2, 0xFF, 0x71, 0xE5, 0xD4, 0xFF,  // g...q...
                            /* 0030 */  0xEB, 0x94, 0x2D, 0x00, 0x71, 0x3D, 0x13, 0xFF,  // ..-.q=..
                            /* 0038 */  0xEC, 0xB1, 0x5E, 0xFF, 0x5D, 0xCF, 0xF4, 0xFD,  // ..^.]...
                            /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0050 */  0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // ........
                            /* 0058 */  0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                })
                Method (CNFG, 0, NotSerialized)
                {
                    Return (CNF0) /* \_SB_.I2C3.SENS.CNF0 */
                }
            }

            Device (STAC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "STAC0303")  // _HID: Hardware ID
                Name (_CID, "INTACCL")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0019, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (RBUF) /* \_SB_.I2C3.STAC._CRS.RBUF */
                }
            }

            Device (STMA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "STMA0303")  // _HID: Hardware ID
                Name (_CID, "INTMAGN")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x001E, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (RBUF) /* \_SB_.I2C3.STMA._CRS.RBUF */
                }
            }

            Device (STGY)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "STGY0320")  // _HID: Hardware ID
                Name (_CID, "INTGYRO")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006B, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (RBUF) /* \_SB_.I2C3.STGY._CRS.RBUF */
                }
            }

            Device (FUSI)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "FUSI0001")  // _HID: Hardware ID
                Name (_CID, "INTFUSI")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0017
                            }
                        GpioInt (Edge, ActiveLow, Exclusive, PullDown, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0006
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C3.FUSI._CRS.RBUF */
                }
            }

            Device (ALSW)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "CALS3218")  // _HID: Hardware ID
                Name (_CID, "INTLALS")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (RBUF) /* \_SB_.I2C3.ALSW._CRS.RBUF */
                }
            }

            Device (SPBA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "BSBA0150")  // _HID: Hardware ID
                Name (_CID, "INTACCL")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (ACCS, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0011, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (RBUF) /* \_SB_.I2C3.SPBA._CRS.RBUF */
                }
            }

            Device (SPBM)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "BSBM0150")  // _HID: Hardware ID
                Name (_CID, "INTMAGN")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (ACCS, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0013, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (RBUF) /* \_SB_.I2C3.SPBM._CRS.RBUF */
                }
            }

            Device (SPBG)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "BSBG0160")  // _HID: Hardware ID
                Name (_CID, "INTGYRO")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (GYRS, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0068, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (RBUF) /* \_SB_.I2C3.SPBG._CRS.RBUF */
                }
            }

            Device (SAR1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SRCL0001")  // _HID: Hardware ID
                Name (_CID, "INTSRCL")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveBoth, Exclusive, PullDown, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0013
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C3.SAR1._CRS.RBUF */
                }
            }

            Device (SALS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "CALS3218")  // _HID: Hardware ID
                Name (_CID, "INTLALS")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (And (OSSL, 0x80))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveBoth, Exclusive, PullDown, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0006
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C3.SALS._CRS.RBUF */
                }
            }
        }

        Device (I2C4)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #4 - 80860F44")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y19)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000023,
                }
                FixedDMA (0x0016, 0x0006, Width32bit, )
                FixedDMA (0x0017, 0x0007, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C4._Y19._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C4._Y19._LEN, B0LN)  // _LEN: Length
                Store (I40A, B0BA) /* \_SB_.I2C4._CRS.B0BA */
                Store (I40L, B0LN) /* \_SB_.I2C4._CRS.B0LN */
                Return (RBUF) /* \_SB_.I2C4.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I40A, Zero), LEqual (L24D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                Or (PSAT, 0x03, PSAT) /* \_SB_.I2C4.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.I2C4.PSAT */
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I41A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }

            Device (TCS0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "04F30732")  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x03)  // _DEP: Dependencies
                {
                    GPO1, 
                    I2C4, 
                    I2C5
                })
                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If (LEqual (^^^GPO1.AVBL, One))
                    {
                        Store (Zero, ^^^GPO1.TCD3) /* \_SB_.GPO1.TCD3 */
                    }

                    If (LEqual (^^^I2C5.PMIC.AVBG, One))
                    {
                        Store (Zero, ^^^I2C5.PMIC.TCON) /* \_SB_.I2C5.PMIC.TCON */
                    }
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (^^^I2C5.PMIC.AVBG, One))
                    {
                        Store (One, ^^^I2C5.PMIC.TCON) /* \_SB_.I2C5.PMIC.TCON */
                    }

                    Sleep (0x1E)
                    If (LEqual (^^^GPO1.AVBL, One))
                    {
                        Store (One, ^^^GPO1.TCD3) /* \_SB_.GPO1.TCD3 */
                        Sleep (0x14)
                    }
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000044,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x001A
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C4.TCS0._CRS.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Store ("Method _DSM begin", Debug)
                    If (LEqual (Arg0, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Store ("Method _DSM Function Query", Debug)
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                Store ("Method _DSM Function HID", Debug)
                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Device (I2C5)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #5 - 80860F45")  // _DDN: DOS Device Name
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_SEM, 0, NotSerialized)
            {
                If (LOr (LOr (LEqual (PMID, 0x04), LEqual (PMID, 0x05)), LEqual (PMID, 0x06)))
                {
                    ADBG ("$COVE")
                    Return (One)
                }
                Else
                {
                    ADBG ("CCOVE")
                    Return (Zero)
                }
            }

            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000024,
                }
                FixedDMA (0x0018, 0x0000, Width32bit, )
                FixedDMA (0x0019, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C5._Y1A._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C5._Y1A._LEN, B0LN)  // _LEN: Length
                Store (I50A, B0BA) /* \_SB_.I2C5._CRS.B0BA */
                Store (I50L, B0LN) /* \_SB_.I2C5._CRS.B0LN */
                Return (RBUF) /* \_SB_.I2C5.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (I50A, Zero), LEqual (L25D, One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If (LOr (LOr (LEqual (PMID, 0x04), LEqual (PMID, 0x05)), LEqual (PMID, 0x06)))
                {
                    Return (Zero)
                }

                Or (PSAT, 0x03, PSAT) /* \_SB_.I2C5.PSAT */
                Store (PSAT, Local0)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                And (PSAT, 0xFFFFFFFC, PSAT) /* \_SB_.I2C5.PSAT */
                Store (PSAT, Local0)
            }

            OperationRegion (KEYS, SystemMemory, I51A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84), 
                PSAT,   32
            }
        }

        Scope (I2C5)
        {
            Device (PMI1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F4" /* XPOWER PMIC Controller */)  // _HID: Hardware ID
                Name (_CID, "INT33F4" /* XPOWER PMIC Controller */)  // _CID: Compatible ID
                Name (_DDN, "XPOWER PMIC Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x02)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C5
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0034, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF) /* \_SB_.I2C5.PMI1._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PMEN, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (PMID, 0x05))
                    {
                        ADBG ("XPWR_DCOVE")
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    ALD1,   32, 
                    ALD2,   32, 
                    ALD3,   32, 
                    DLD1,   32, 
                    DLD2,   32, 
                    DLD3,   32, 
                    DLD4,   32, 
                    ELD1,   32, 
                    ELD2,   32, 
                    ELD3,   32, 
                    FLD1,   32, 
                    FLD2,   32, 
                    FLD3,   32, 
                    GPI1,   32, 
                    BUC1,   32, 
                    BUC2,   32, 
                    BUC3,   32, 
                    BUC4,   32, 
                    BUC5,   32, 
                    BUC6,   32
                }
            }

            Device (PMI2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33F5" /* TI PMIC Controller */)  // _HID: Hardware ID
                Name (_CID, "INT33F5" /* TI PMIC Controller */)  // _CID: Compatible ID
                Name (_DDN, "TI PMIC Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x02)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C5
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x005E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF) /* \_SB_.I2C5.PMI2._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PMEN, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (PMID, 0x06))
                    {
                        ADBG ("TI_DCOVE")
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    LDO1,   32, 
                    LDO2,   32, 
                    LDO3,   32, 
                    LDO5,   32, 
                    LDO6,   32, 
                    LDO7,   32, 
                    LDO8,   32, 
                    LDO9,   32, 
                    LD10,   32, 
                    LD11,   32, 
                    LD12,   32, 
                    LD13,   32, 
                    LD14,   32
                }
            }

            Device (PMIF)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "DMY0001")  // _HID: Hardware ID
                Name (_CID, "DMY0001")  // _CID: Compatible ID
                Name (_DDN, "Dummy PMIC controller")  // _DDN: DOS Device Name
                Name (_HRV, Zero)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C5
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x005E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF) /* \_SB_.I2C5.PMIF._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PMEN, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (PMID, 0xFE))
                    {
                        ADBG ("DMPMIC")
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (PMIC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33FD" /* Intel Baytrail Power Management IC */)  // _HID: Hardware ID
                Name (_CID, "INT33FD" /* Intel Baytrail Power Management IC */)  // _CID: Compatible ID
                Name (_DDN, "PMIC GPIO Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x02)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C5
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF) /* \_SB_.I2C5.PMIC._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PMEN, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (PMID, One))
                    {
                        ADBG ("CCPMIC")
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32, 
                    AX00,   32, 
                    AX01,   32, 
                    TMP1,   32, 
                    AX10,   32, 
                    AX11,   32, 
                    TMP2,   32, 
                    AX20,   32, 
                    AX21,   32, 
                    TMP3,   32, 
                    AX30,   32, 
                    AX31,   32, 
                    TMP4,   32, 
                    AX40,   32, 
                    AX41,   32, 
                    TMP5,   32, 
                    AX50,   32, 
                    AX51,   32, 
                    PEN0,   32, 
                    PEN1,   32, 
                    PEN2,   32, 
                    PEN3,   32, 
                    PEN4,   32, 
                    PEN5,   32
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    VSYS,   32, 
                    SYSX,   32, 
                    SYSU,   32, 
                    SYSS,   32, 
                    V50S,   32, 
                    HOST,   32, 
                    VBUS,   32, 
                    HDMI,   32, 
                    S285,   32, 
                    X285,   32, 
                    V33A,   32, 
                    V33S,   32, 
                    V33U,   32, 
                    V33I,   32, 
                    V18A,   32, 
                    REFQ,   32, 
                    V12A,   32, 
                    V18S,   32, 
                    V18X,   32, 
                    V18U,   32, 
                    V12X,   32, 
                    V12S,   32, 
                    V10A,   32, 
                    V10S,   32, 
                    V10X,   32, 
                    V105,   32
                }

                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ), 
                    GMP0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ), 
                    GX00,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ), 
                    GX01,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ), 
                    GMP1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ), 
                    GX10,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ), 
                    GX11,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ), 
                    GMP2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ), 
                    GX20,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ), 
                    GX21,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ), 
                    GMP3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ), 
                    GX30,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ), 
                    GX31,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ), 
                    GMP4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ), 
                    GX40,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ), 
                    GX41,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ), 
                    GMP5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ), 
                    GX50,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ), 
                    GX51,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ), 
                    GEN0,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ), 
                    GEN1,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ), 
                    GEN2,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ), 
                    GEN3,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ), 
                    GEN4,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ), 
                    GEN5,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    ), 
                    GSYS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0041
                            }
                    ), 
                    GYSX,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0042
                            }
                    ), 
                    GYSU,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0043
                            }
                    ), 
                    GYSS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0044
                            }
                    ), 
                    G50S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0045
                            }
                    ), 
                    GOST,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0046
                            }
                    ), 
                    GBUS,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0047
                            }
                    ), 
                    GDMI,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ), 
                    G28S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0049
                            }
                    ), 
                    G28X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004A
                            }
                    ), 
                    G33A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004B
                            }
                    ), 
                    G33S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004C
                            }
                    ), 
                    G33U,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    ), 
                    G33I,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004E
                            }
                    ), 
                    G18A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004F
                            }
                    ), 
                    GEFQ,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0050
                            }
                    ), 
                    G12A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0051
                            }
                    ), 
                    G18S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0052
                            }
                    ), 
                    G18X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0053
                            }
                    ), 
                    G18U,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0054
                            }
                    ), 
                    G12X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0055
                            }
                    ), 
                    G12S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0056
                            }
                    ), 
                    G10A,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0057
                            }
                    ), 
                    G10S,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0058
                            }
                    ), 
                    G10X,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0059
                            }
                    ), 
                    G105,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005E
                            }
                    ), 
                    FCOT,   1, 
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000B
                            }
                    ), 
                    TCON,   1
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x08))
                    {
                        Store (Arg1, AVBG) /* \_SB_.I2C5.PMIC.AVBG */
                    }

                    If (LEqual (Arg0, 0x8D))
                    {
                        Store (Arg1, AVBL) /* \_SB_.I2C5.PMIC.AVBL */
                    }

                    If (LEqual (Arg0, 0x8C))
                    {
                        Store (Arg1, AVBD) /* \_SB_.I2C5.PMIC.AVBD */
                    }
                }

                Name (LPAT, Package (0x30)
                {
                    0x09E3, 
                    0x03D1, 
                    0x0A15, 
                    0x03C1, 
                    0x0A47, 
                    0x03AD, 
                    0x0A79, 
                    0x0395, 
                    0x0AAB, 
                    0x0377, 
                    0x0ADD, 
                    0x0355, 
                    0x0B0F, 
                    0x032D, 
                    0x0B41, 
                    0x0301, 
                    0x0B73, 
                    0x02D0, 
                    0x0BA5, 
                    0x029D, 
                    0x0BD7, 
                    0x0267, 
                    0x0C09, 
                    0x0231, 
                    0x0C3B, 
                    0x01FC, 
                    0x0C6D, 
                    0x01C8, 
                    0x0C9F, 
                    0x0197, 
                    0x0CD1, 
                    0x0165, 
                    0x0D03, 
                    0x013B, 
                    0x0D35, 
                    0x0115, 
                    0x0D67, 
                    0xF3, 
                    0x0D99, 
                    0xD4, 
                    0x0DCB, 
                    0xBA, 
                    0x0DFD, 
                    0xA2, 
                    0x0E2F, 
                    0x8C, 
                    0x0E93, 
                    0x6B
                })
            }
        }

        Scope (I2C1)
        {
            Device (IMP3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0003")  // _HID: Hardware ID
                Name (_CID, "IMPJ0003")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LEqual (PSSD, 0x02))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C1.IMP3._CRS.SBUF */
                }
            }
        }

        PowerResource (P28X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                ^I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^I2C5.PMIC.AVBG, One))
                {
                    Store (Zero, ^^I2C5.PMIC.G28X) /* \_SB_.I2C5.PMIC.G28X */
                    If (LEqual (^^I2C5.PMIC.AVBL, One))
                    {
                        Return (^^I2C5.PMIC.X285) /* \_SB_.I2C5.PMIC.X285 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (^^I2C5.PMIC.AVBL, One))
                {
                    Store (One, ^^I2C5.PMIC.X285) /* \_SB_.I2C5.PMIC.X285 */
                    If (LEqual (^^I2C5.PMIC.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMIC.G28X) /* \_SB_.I2C5.PMIC.G28X */
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (^^I2C5.PMIC.AVBL, One))
                {
                    Store (Zero, ^^I2C5.PMIC.X285) /* \_SB_.I2C5.PMIC.X285 */
                    If (LEqual (^^I2C5.PMIC.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMIC.G28X) /* \_SB_.I2C5.PMIC.G28X */
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                ^I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (^^I2C5.PMIC.AVBG, One))
                {
                    Store (Zero, ^^I2C5.PMIC.G18X) /* \_SB_.I2C5.PMIC.G18X */
                    If (LEqual (^^I2C5.PMIC.AVBL, One))
                    {
                        Return (^^I2C5.PMIC.V18X) /* \_SB_.I2C5.PMIC.V18X */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If (LEqual (^^I2C5.PMIC.AVBL, One))
                {
                    Store (One, ^^I2C5.PMIC.V18X) /* \_SB_.I2C5.PMIC.V18X */
                    If (LEqual (^^I2C5.PMIC.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMIC.G18X) /* \_SB_.I2C5.PMIC.G18X */
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If (LEqual (^^I2C5.PMIC.AVBL, One))
                {
                    Store (Zero, ^^I2C5.PMIC.V18X) /* \_SB_.I2C5.PMIC.V18X */
                    If (LEqual (^^I2C5.PMIC.AVBG, One))
                    {
                        Store (One, ^^I2C5.PMIC.G18X) /* \_SB_.I2C5.PMIC.G18X */
                        Sleep (0x1E)
                    }
                }
            }
        }

        Device (TBAD)
        {
            Name (_HID, "INTCFD9" /* Intel Baytrail SOC GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0C40" /* Standard Button Controller */)  // _CID: Compatible ID
            Name (_DDN, "Keyboard less system - 5 Button Array Device")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                GPO0, 
                GPO2, 
                I2C5, 
                ^I2C5.PMIC
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0008
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                })
                Name (ABUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0008
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                })
                Name (SMBF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                })
                Name (AMBF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                })
                ShiftRight (SKUI, 0x04, Local0)
                And (SKUI, 0x07, Local1)
                If (LEqual (Local0, One))
                {
                    If (LGreater (Local1, 0x03))
                    {
                        Return (SMBF) /* \_SB_.TBAD._CRS.SMBF */
                    }
                    Else
                    {
                        Return (SBUF) /* \_SB_.TBAD._CRS.SBUF */
                    }
                }
                ElseIf (LGreater (Local1, 0x03))
                {
                    Return (AMBF) /* \_SB_.TBAD._CRS.AMBF */
                }
                Else
                {
                    Return (ABUF) /* \_SB_.TBAD._CRS.ABUF */
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (OSYS, 0x07DD))
                {
                    Store (One, ^^I2C5.PMIC.FCOT) /* \_SB_.I2C5.PMIC.FCOT */
                }
                Else
                {
                    Store (Zero, ^^I2C5.PMIC.FCOT) /* \_SB_.I2C5.PMIC.FCOT */
                }

                If (LEqual (Arg0, ToUUID ("dfbcf3c5-e7a5-44e6-9c1f-29c76f6e059c") /* Power Button Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Case (One)
                        {
                            Return (0x07)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Return (Zero)
            }
        }

        Device (MBID)
        {
            Name (_HID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _HID: Hardware ID
            Name (_CID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _CID: Compatible ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE00000D0,         // Address Base
                        0x0000000C,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.MBID._CRS.RBUF */
            }

            OperationRegion (REGS, 0x87, Zero, 0x30)
            Field (REGS, DWordAcc, NoLock, Preserve)
            {
                PORT,   32, 
                REG,    32, 
                DATA,   32, 
                MASK,   32, 
                BE,     32, 
                OP,     32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x87))
                {
                    Store (Arg1, AVBL) /* \_SB_.MBID.AVBL */
                }
            }

            Method (READ, 3, Serialized)
            {
                Store (0xFFFFFFFF, Local0)
                If (LEqual (AVBL, One))
                {
                    Store (Zero, OP) /* \_SB_.MBID.OP__ */
                    Store (Arg0, PORT) /* \_SB_.MBID.PORT */
                    Store (Arg1, REG) /* \_SB_.MBID.REG_ */
                    Store (Arg2, BE) /* \_SB_.MBID.BE__ */
                    Store (DATA, Local0)
                }

                Return (Local0)
            }

            Method (WRIT, 4, Serialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (One, OP) /* \_SB_.MBID.OP__ */
                    Store (Arg0, PORT) /* \_SB_.MBID.PORT */
                    Store (Arg1, REG) /* \_SB_.MBID.REG_ */
                    Store (Arg2, BE) /* \_SB_.MBID.BE__ */
                    Store (Arg3, DATA) /* \_SB_.MBID.DATA */
                }
            }

            Method (MODI, 5, Serialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (0x02, OP) /* \_SB_.MBID.OP__ */
                    Store (Arg0, PORT) /* \_SB_.MBID.PORT */
                    Store (Arg1, REG) /* \_SB_.MBID.REG_ */
                    Store (Arg2, BE) /* \_SB_.MBID.BE__ */
                    Store (Arg3, DATA) /* \_SB_.MBID.DATA */
                    Store (Arg4, MASK) /* \_SB_.MBID.MASK */
                }
            }
        }

        Device (PAGD)
        {
            Name (_HID, "ACPI000C" /* Processor Aggregator Device */)  // _HID: Hardware ID
            Name (_CID, "ACPI000C" /* Processor Aggregator Device */)  // _CID: Compatible ID
            Name (IDCN, Zero)
            Name (PURP, Package (0x02)
            {
                One, 
                Zero
            })
            Method (_PUR, 0, Serialized)  // _PUR: Processor Utilization Request
            {
                Store (IDCN, Index (PURP, One))
                Return (PURP) /* \_SB_.PAGD.PURP */
            }

            Method (_OST, 3, Serialized)  // _OST: OSPM Status Indication
            {
                Store ("_OST is invoked", Debug)
            }
        }
    }

    Name (PICM, Zero)
    Scope (_SB.I2C1)
    {
        Name (AVBL, Zero)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If (LEqual (Arg0, 0x09))
            {
                Store (Arg1, AVBL) /* \_SB_.I2C1.AVBL */
            }
        }

        Device (SMUX)
        {
            Name (_HID, "SMSC3750" /* SMSC 3750 USB MUX */)  // _HID: Hardware ID
            Name (_CID, "SMSC3750" /* SMSC 3750 USB MUX */)  // _CID: Compatible ID
            Name (_DDN, "SMSC 3750 USB MUX")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0068, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0001
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C1.SMUX.RBUF */
            }
        }

        Device (GPOE)
        {
            Name (_HID, "INBC0000" /* GPIO Expander */)  // _HID: Hardware ID
            Name (_CID, "INBC0000" /* GPIO Expander */)  // _CID: Compatible ID
            Name (_DDN, "GPIO Expander")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (And (OSSL, 0x80))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0023, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C1.GPOE.RBUF */
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (TZ00)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C5, 
                \_SB.I2C5.PMIC
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                {
                    Store (Zero, \_SB.I2C5.PMIC.GMP2)
                    If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                    {
                        Return (\_SB.I2C5.PMIC.TMP2)
                    }
                }

                Return (0x0AAC)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xE0000000,         // Address Base
                    0x10000000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED01000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED03000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED04000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED0C000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED08000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED1C000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEF00000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (LEqual (And (DID1, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (LEqual (And (DID2, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (LEqual (And (DID3, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (LEqual (And (DID4, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (LEqual (And (DID5, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (CondRefOf (NDN3))
        {
            NDN3 (Arg0)
        }
    }

    Scope (_SB.I2C1)
    {
        Name (ECDB, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0048, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.I2C1",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        OperationRegion (ECBB, GenericSerialBus, Zero, 0x0100)
        Field (ECBB, BufferAcc, NoLock, Preserve)
        {
            Connection (ECDB), 
            AccessAs (BufferAcc, AttribWord), 
            BB00,   8, 
            Offset (0x02), 
            BB02,   8, 
            Offset (0x04), 
            BB04,   8, 
            Offset (0x06), 
            BB06,   8, 
            Offset (0x08), 
            BB08,   8, 
            Offset (0x0A), 
            BB0A,   8, 
            Offset (0x0C), 
            BB0C,   8, 
            Offset (0x0E), 
            BB0E,   8, 
            Offset (0x10), 
            BB10,   8, 
            Offset (0x12), 
            BB12,   8, 
            Offset (0x14), 
            BB14,   8, 
            Offset (0x16), 
            BB16,   8, 
            Offset (0x18), 
            BB18,   8, 
            Offset (0x1A), 
            BB1A,   8, 
            Offset (0x1C), 
            BB1C,   8, 
            Offset (0x1E), 
            BB1E,   8, 
            Offset (0x20), 
            BB20,   8, 
            Offset (0x22), 
            BB22,   8, 
            Offset (0x24), 
            BB24,   8, 
            Offset (0x26), 
            BB26,   8, 
            Offset (0x28), 
            BB28,   8, 
            Offset (0x2A), 
            BB2A,   8, 
            Offset (0x2C), 
            BB2C,   8, 
            Offset (0x2E), 
            AccessAs (BufferAcc, AttribByte), 
            BB2E,   8, 
            BB2F,   8, 
            Offset (0x4E), 
            BB4E,   8, 
            BB4F,   8, 
            BB50,   8, 
            BB51,   8, 
            BB52,   8, 
            BB53,   8, 
            BB54,   8, 
            Offset (0x60), 
            BB60,   8, 
            BB61,   8, 
            BB62,   8, 
            BB63,   8, 
            BB64,   8, 
            Offset (0xA0), 
            BBA0,   8, 
            BBA1,   8, 
            BBA2,   8, 
            Offset (0xC9), 
            AccessAs (BufferAcc, AttribWord), 
            BBC9,   8
        }

        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (FGDV, 0x0A)
            Name (BCCC, 0x60)
            Name (BCCE, One)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSCP, 0x132A)
            Name (DSVO, 0x0ED8)
            Name (RECT, 0x1004)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (ACMD, 0xFF)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                I2C1, 
                GPO2, 
                GPO0
            })
            Name (BUFF, Buffer (0x03)
            {
                 0x00, 0x01, 0x00                                 // ...
            })
            CreateByteField (BUFF, Zero, BYAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (BUF1, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
            })
            CreateByteField (BUF1, Zero, BSTA)
            CreateByteField (BUF1, One, BLEN)
            CreateDWordField (BUF1, 0x02, DAT1)
            Name (BUF2, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateByteField (BUF2, Zero, BSTS)
            CreateByteField (BUF2, One, SLEN)
            CreateWordField (BUF2, 0x02, WRD1)
            Name (INBU, Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            })
            CreateByteField (INBU, Zero, INST)
            CreateByteField (INBU, One, INLN)
            CreateByteField (INBU, 0x02, INT0)
            CreateByteField (INBU, 0x03, INT1)
            CreateByteField (INBU, 0x04, INT2)
            CreateByteField (INBU, 0x05, INT3)
            CreateByteField (INBU, 0x06, INT4)
            CreateByteField (INBU, 0x07, INT5)
            Name (BIXP, Package (0x14)
            {
                Zero, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0x0A, 
                0x04, 
                Zero, 
                0x00017318, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x88B8, 
                0x61A8, 
                One, 
                One, 
                "SR Real Battery", 
                "123456789", 
                "LION", 
                "Intel SR 1"
            })
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                ADBG ("BIX")
                If (LEqual (AVBL, One))
                {
                    Store (BB12, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        Store (Local1, Index (BIXP, 0x03))
                    }

                    Store (BB2A, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        Divide (Local1, 0x64, Local0, Local2)
                        Store (Local2, Index (BIXP, 0x08))
                    }
                }

                ShiftRight (SKUI, 0x04, Local0)
                If (LEqual (Local0, One))
                {
                    Store (0x0F6E, DSCP) /* \_SB_.I2C1.BATC.DSCP */
                }
                Else
                {
                    Store (0x1A90, DSCP) /* \_SB_.I2C1.BATC.DSCP */
                }

                Store (DSCP, Index (BIXP, 0x02))
                Store (DSVO, Index (BIXP, 0x05))
                Divide (DSCP, 0x0A, Local0, Local1)
                Store (Local1, Index (BIXP, 0x06))
                Divide (DSCP, 0x64, Local0, Local1)
                Store (Local1, Index (BIXP, 0x07))
                Return (BIXP) /* \_SB_.I2C1.BATC.BIXP */
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (LEqual (AVBL, One))
                {
                    ADBG ("BST")
                    Store (BB2E, BUFF) /* \_SB_.I2C1.BATC.BUFF */
                    If (LNotEqual (BYAT, One))
                    {
                        ShiftRight (DATA, 0x04, Local0)
                        And (Local0, 0x03, Local0)
                        If (LOr (LEqual (Local0, One), LEqual (Local0, 0x02)))
                        {
                            Store (0x02, Local1)
                        }

                        If (LEqual (Local0, Zero))
                        {
                            Store (One, Local1)
                        }

                        If (LEqual (Local0, 0x03))
                        {
                            Store (Zero, Local1)
                        }

                        Store (Local1, Index (BSTP, Zero))
                    }

                    Store (BB14, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        If (And (Local1, 0x8000))
                        {
                            Subtract (0xFFFF, Local1, Local1)
                        }

                        Store (Local1, Index (BSTP, One))
                    }

                    Store (BB10, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        Store (Local1, Index (BSTP, 0x02))
                        If (LLess (Local1, 0x14))
                        {
                            Add (DerefOf (Index (BSTP, Zero)), 0x04, Local0)
                            Store (Local0, Index (BSTP, Zero))
                        }
                    }

                    Store (BB08, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        Store (Local1, Index (BSTP, 0x03))
                    }
                }

                Return (BSTP) /* \_SB_.I2C1.BATC.BSTP */
            }

            Method (INTC, 0, NotSerialized)
            {
                Store (Zero, Local1)
                If (LEqual (AVBL, One))
                {
                    Store (BB4F, BUFF) /* \_SB_.I2C1.BATC.BUFF */
                    Store (DATA, Local1)
                }

                Return (Local1)
            }

            Method (PWRE, 0, NotSerialized)
            {
                Store (Zero, Local1)
                If (LEqual (AVBL, One))
                {
                    Store (BB54, BUFF) /* \_SB_.I2C1.BATC.BUFF */
                    If (LNotEqual (BYAT, One))
                    {
                        Store (DATA, Local1)
                    }
                }

                And (Local1, 0x30, Local1)
                ShiftRight (Local1, 0x04, Local2)
                Return (Local2)
            }

            Method (BVOL, 0, NotSerialized)
            {
                Store (Zero, Local1)
                If (LEqual (AVBL, One))
                {
                    Store (BB08, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                    }
                }

                Return (Local1)
            }

            Method (ECRS, 1, NotSerialized)
            {
                Or (Arg0, 0x0100, Local0)
                Store (Local0, WRD1) /* \_SB_.I2C1.BATC.WRD1 */
                Store (BUF2, BBC9) /* \_SB_.I2C1.BBC9 */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("4c2067e3-887d-475c-9720-4af1d3ed602e") /* Battery Thermal Limit */))
                {
                    If (LEqual (Arg2, 0x02))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (AVBL, One))
                {
                    Store (BB4E, BUFF) /* \_SB_.I2C1.BATC.BUFF */
                    And (DATA, One, Local0)
                    If (LNotEqual (Local0, One))
                    {
                        Return (Zero)
                    }
                }

                Return (0x1F)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (PSOC, 0, NotSerialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (BB10, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local0)
                    }

                    Store (BB12, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                    }

                    Multiply (Local0, 0x64, Local0)
                    Divide (Local0, Local1, Local2, Local3)
                    And (Local3, 0xFF, Local4)
                    ShiftRight (Local1, One, Local5)
                    If (LGreaterEqual (Local2, Local5))
                    {
                        Increment (Local4)
                    }

                    Return (Local4)
                }

                Return (Zero)
            }

            Method (ECR1, 1, NotSerialized)
            {
                Store (Arg0, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                Store (Zero, Local0)
                If (LNotEqual (BSTS, One))
                {
                    Store (WRD1, Local0)
                }

                Return (Local0)
            }

            Method (PMAX, 0, NotSerialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (BB1E, BUF2) /* \_SB_.I2C1.BATC.BUF2 */
                    If (LNotEqual (BSTS, One))
                    {
                        Store (WRD1, Local1)
                        If (And (Local1, 0x8000))
                        {
                            Subtract (0xFFFF, Local1, Local1)
                        }
                        Else
                        {
                        }

                        Divide (DSVO, 0x64, Local0)
                        Store (Divide (Multiply (Local1, Local0), 0x0A, ), Local1)
                        Return (Local1)
                    }
                }

                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (PSRC, 0, NotSerialized)
            {
                If (LEqual (AVBL, One))
                {
                    Store (BB2E, BUFF) /* \_SB_.I2C1.BATC.BUFF */
                    If (LNotEqual (BYAT, One))
                    {
                        ShiftRight (DATA, 0x06, Local0)
                        And (Local0, One, Local0)
                        Return (Local0)
                    }
                }

                Return (One)
            }

            Method (CTYP, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (ARTG, 0, NotSerialized)
            {
                Return (0x00989680)
            }
        }
    }

    Scope (_SB)
    {
        Device (ADP1)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (LEqual (PMID, One))
                {
                    If (CondRefOf (\_SB.I2C1.BATC, Local1))
                    {
                        Store (^^I2C1.BATC.PSRC (), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }

                    Return (One)
                }

                If (LEqual (PMID, 0x05))
                {
                    If (CondRefOf (\_SB.I2C5.BMBT, Local1))
                    {
                        Store (^^I2C5.BMBT.PSRC (), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Return (One)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (Package (0x02)
                {
                    _SB, 
                    ^^I2C1.BATC
                })
            }
        }
    }

    Scope (_SB.I2C5)
    {
        Device (BMDR)
        {
            Name (_HID, "INT33FE" /* XPOWER Battery Device */)  // _HID: Hardware ID
            Name (_CID, "INT33FE" /* XPOWER Battery Device */)  // _CID: Compatible ID
            Name (_DDN, "Battery Device")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C5, 
                PMI1
            })
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0068, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0001
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C5.BMDR.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (PMID, 0x05))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            OperationRegion (BMDR, 0x9E, Zero, 0x0100)
            Field (BMDR, DWordAcc, NoLock, Preserve)
            {
                SOC,    32, 
                FCCP,   32, 
                CHST,   32, 
                RMCP,   32, 
                VOLT,   32, 
                BATP,   32, 
                SRP0,   32, 
                STYP,   32, 
                CHGC,   32, 
                STPC,   32, 
                GADC,   32, 
                TTEM,   32, 
                TTCH,   32, 
                CYCL,   32, 
                BTP,    32, 
                DPCU,   32, 
                DSCP,   32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x9E))
                {
                    Store (Arg1, AVBL) /* \_SB_.I2C5.BMDR.AVBL */
                }
            }

            Method (SBTP, 0, NotSerialized)
            {
                ADBG ("SBTP")
                If (CondRefOf (\_SB.I2C5.BMBT, Local1))
                {
                    Notify (ADP1, 0x80) // Status Change
                    Notify (BMBT, 0x80) // Status Change
                    Notify (BMBT, 0x81) // Information Change
                    Return (One)
                }

                Return (Zero)
            }

            Method (PTYP, 0, NotSerialized)
            {
                ADBG ("PTYP")
                Return (PMID) /* \PMID */
            }
        }

        Device (BMBT)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BCCE, One)
            Name (OTGS, Zero)
            Name (CHPR, One)
            Name (FGDV, 0x0A)
            Name (BCCC, 0x46)
            Name (BCIL, 0x65)
            Name (BCVF, 0x93)
            Name (BCFV, 0xED)
            Name (BCCH, 0x38)
            Name (BCST, 0x05)
            Name (BCPE, 0x74)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSCP, 0x1300)
            Name (DSVO, 0x0EA6)
            Name (BTPC, Zero)
            Name (AVCU, Zero)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2C5
            })
            Name (BUFF, Buffer (0x03)
            {
                 0x00, 0x01, 0x00                                 // ...
            })
            CreateByteField (BUFF, Zero, BYAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (BUF1, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
            })
            CreateByteField (BUF1, Zero, BSTA)
            CreateByteField (BUF1, One, BLEN)
            CreateDWordField (BUF1, 0x02, DAT1)
            Name (BUF2, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateByteField (BUF2, Zero, BSTS)
            CreateByteField (BUF2, One, SLEN)
            CreateWordField (BUF2, 0x02, WRD1)
            Name (BIXP, Package (0x14)
            {
                Zero, 
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                0x0A, 
                0x04, 
                Zero, 
                0x00017318, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x88B8, 
                0x61A8, 
                One, 
                One, 
                "SR Real Battery", 
                "123456789", 
                "LION", 
                "Intel SR 1"
            })
            Name (BSTP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                ADBG ("BIX")
                If (LEqual (^^BMDR.AVBL, One))
                {
                    Store (^^BMDR.FCCP, Index (BIXP, 0x03))
                    Store (^^BMDR.CYCL, Index (BIXP, 0x08))
                    Store (^^BMDR.DSCP, Index (BIXP, 0x02))
                    Store (^^BMDR.DSCP, DSCP) /* \_SB_.I2C5.BMBT.DSCP */
                }

                Store (DSVO, Index (BIXP, 0x05))
                Divide (DSCP, 0x0A, Local0, Local1)
                Store (Local1, Index (BIXP, 0x06))
                Divide (DSCP, 0x14, Local0, Local1)
                Store (Local1, Index (BIXP, 0x07))
                Return (BIXP) /* \_SB_.I2C5.BMBT.BIXP */
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (LEqual (^^BMDR.AVBL, One))
                {
                    ADBG ("BST")
                    Store (^^BMDR.CHST, Local0)
                    And (Local0, 0x0F, Local0)
                    If (LEqual (Local0, 0x02))
                    {
                        Store (0x02, Local1)
                    }

                    If (LEqual (Local0, One))
                    {
                        Store (One, Local1)
                    }

                    If (LEqual (Local0, 0x08))
                    {
                        Store (Zero, Local1)
                    }

                    Store (Local1, Index (BSTP, Zero))
                    Store (^^BMDR.CHGC, Index (BSTP, One))
                    Store (^^BMDR.RMCP, Index (BSTP, 0x02))
                    Store (^^BMDR.VOLT, Index (BSTP, 0x03))
                    Store (BCCC, ^^BMDR.DPCU) /* \_SB_.I2C5.BMDR.DPCU */
                }

                Return (BSTP) /* \_SB_.I2C5.BMBT.BSTP */
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                Store (Arg0, BTPC) /* \_SB_.I2C5.BMBT.BTPC */
                ADBG ("BTP")
                ADBG (Arg0)
                If (LEqual (^^BMDR.AVBL, One))
                {
                    Store (Arg0, ^^BMDR.BTP) /* \_SB_.I2C5.BMDR.BTP_ */
                }
            }

            Method (_BTM, 1, NotSerialized)  // _BTM: Battery Time
            {
                ADBG ("BTM")
                If (LGreater (Arg0, 0x7530))
                {
                    Return (Zero)
                }

                Return (0xFFFFFFFF)
            }

            Method (_BCT, 1, NotSerialized)  // _BCT: Battery Charge Time
            {
                ADBG ("BCT")
                If (LOr (LGreater (Arg0, 0x64), LLess (Arg0, One)))
                {
                    Return (Zero)
                }

                Return (0xFFFFFFFF)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("4c2067e3-887d-475c-9720-4af1d3ed602e") /* Battery Thermal Limit */))
                {
                    If (LEqual (Arg2, 0x02))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (PMID, 0x05))
                {
                    Return (0x1F)
                }

                Return (Zero)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (PSOC, 0, NotSerialized)
            {
                ADBG ("PSOC")
                If (LEqual (^^BMDR.AVBL, One))
                {
                    Store (^^BMDR.SOC, Local1)
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (PMAX, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (NPWR, 0, NotSerialized)
            {
                Store (APWR (), Local3)
                Return (Zero)
            }

            Method (PSRC, 0, NotSerialized)
            {
                If (LEqual (^^BMDR.AVBL, One))
                {
                    Store (^^BMDR.STYP, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Return (Zero)
                    }

                    If (LEqual (Local0, One))
                    {
                        Return (One)
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        Return (0x02)
                    }

                    If (LEqual (Local0, 0x03))
                    {
                        Return (0x03)
                    }

                    If (LEqual (Local0, 0x04))
                    {
                        Return (0x04)
                    }

                    If (LEqual (Local0, 0x05))
                    {
                        Return (0x05)
                    }
                }

                Return (One)
            }

            Method (CTYP, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (ARTG, 0, NotSerialized)
            {
                Return (0x0365C040)
            }
        }
    }

    OperationRegion (ECMS, SystemIO, 0x72, 0x02)
    Field (ECMS, ByteAcc, Lock, Preserve)
    {
        EIND,   8, 
        EDAT,   8
    }

    IndexField (EIND, EDAT, ByteAcc, NoLock, Preserve)
    {
        Offset (0x80), 
        RAMB,   32, 
        RESV,   32, 
        PLOG,   8, 
        TES2,   8
    }

    OperationRegion (RAMW, SystemMemory, RAMB, 0x0100)
    Field (RAMW, AnyAcc, NoLock, Preserve)
    {
        TRTY,   8, 
        FSFN,   8, 
        FSTA,   16, 
        FADR,   32, 
        FSIZ,   16, 
        SLPT,   8, 
        MNAM,   64, 
        BATP,   8, 
        ALPR,   32, 
        DBR1,   8, 
        DBR2,   32, 
        DBR3,   32, 
        DBR4,   32, 
        RTCW,   16, 
        PMIM,   32, 
        WMIS,   8, 
        TSCI,   16, 
        DAX0,   16, 
        DAX1,   16, 
        DAX2,   16, 
        DAX3,   16, 
        OAFN,   16, 
        OAST,   16, 
        ODMB,   416, 
        OADK,   32, 
        SMTB,   32, 
        SMDD,   512, 
        BULA,   32, 
        BULS,   32, 
        BULI,   32
    }

    Scope (\)
    {
        OperationRegion (GPSC, SystemIO, 0xB2, 0x02)
        Field (GPSC, ByteAcc, NoLock, Preserve)
        {
            SMCM,   8, 
            SMST,   8
        }

        Method (ISMI, 1, Serialized)
        {
            Store (Arg0, SMCM) /* \SMCM */
        }

        Method (ASMI, 1, Serialized)
        {
            Store (Arg0, ALPR) /* \ALPR */
            Store (0xD6, SMCM) /* \SMCM */
            Return (ALPR) /* \ALPR */
        }

        Method (DBGR, 4, NotSerialized)
        {
            Store (Arg0, DBR1) /* \DBR1 */
            Store (Arg1, DBR2) /* \DBR2 */
            Store (Arg2, DBR3) /* \DBR3 */
            Store (Arg3, DBR4) /* \DBR4 */
            ASMI (0x80)
        }
    }

    Name (ATKP, Zero)
    Scope (\)
    {
        Device (WMI0)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WAPF, Zero)
            Name (_WDG, Buffer (0x01B8)
            {
                /* 0000 */  0x00, 0x24, 0x14, 0x39, 0xA3, 0xC6, 0xFA, 0x40,  // .$.9...@
                /* 0008 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0010 */  0x30, 0x30, 0x01, 0x01, 0x00, 0x24, 0x14, 0x49,  // 00...$.I
                /* 0018 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0020 */  0x52, 0x83, 0x41, 0x00, 0x30, 0x31, 0x01, 0x01,  // R.A.01..
                /* 0028 */  0x00, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0030 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0038 */  0x30, 0x32, 0x01, 0x01, 0x01, 0x24, 0x14, 0x49,  // 02...$.I
                /* 0040 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0048 */  0x52, 0x83, 0x41, 0x00, 0x31, 0x31, 0x01, 0x01,  // R.A.11..
                /* 0050 */  0x01, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0058 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0060 */  0x31, 0x32, 0x01, 0x01, 0x02, 0x24, 0x14, 0x49,  // 12...$.I
                /* 0068 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0070 */  0x52, 0x83, 0x41, 0x00, 0x32, 0x31, 0x01, 0x01,  // R.A.21..
                /* 0078 */  0x02, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0080 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0088 */  0x32, 0x32, 0x01, 0x01, 0x03, 0x24, 0x14, 0x49,  // 22...$.I
                /* 0090 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0098 */  0x52, 0x83, 0x41, 0x00, 0x33, 0x31, 0x01, 0x01,  // R.A.31..
                /* 00A0 */  0x03, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 00A8 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 00B0 */  0x33, 0x32, 0x01, 0x01, 0x04, 0x24, 0x14, 0x49,  // 32...$.I
                /* 00B8 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 00C0 */  0x52, 0x83, 0x41, 0x00, 0x34, 0x31, 0x01, 0x01,  // R.A.41..
                /* 00C8 */  0x04, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 00D0 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 00D8 */  0x34, 0x32, 0x01, 0x01, 0x05, 0x24, 0x14, 0x49,  // 42...$.I
                /* 00E0 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 00E8 */  0x52, 0x83, 0x41, 0x00, 0x35, 0x31, 0x01, 0x01,  // R.A.51..
                /* 00F0 */  0x05, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 00F8 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0100 */  0x35, 0x32, 0x01, 0x01, 0x06, 0x24, 0x14, 0x49,  // 52...$.I
                /* 0108 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0110 */  0x52, 0x83, 0x41, 0x00, 0x36, 0x31, 0x01, 0x01,  // R.A.61..
                /* 0118 */  0x06, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0120 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0128 */  0x36, 0x32, 0x01, 0x01, 0x07, 0x24, 0x14, 0x49,  // 62...$.I
                /* 0130 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0138 */  0x52, 0x83, 0x41, 0x00, 0x37, 0x31, 0x01, 0x01,  // R.A.71..
                /* 0140 */  0x07, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0148 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0150 */  0x37, 0x32, 0x01, 0x01, 0x00, 0x24, 0x14, 0x59,  // 72...$.Y
                /* 0158 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0160 */  0x52, 0x83, 0x41, 0x00, 0x80, 0x00, 0x01, 0x08,  // R.A.....
                /* 0168 */  0x00, 0x24, 0x14, 0x69, 0xA3, 0xC6, 0xFA, 0x40,  // .$.i...@
                /* 0170 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0178 */  0x30, 0x35, 0x01, 0x02, 0x00, 0x24, 0x14, 0x79,  // 05...$.y
                /* 0180 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0188 */  0x52, 0x83, 0x41, 0x00, 0x30, 0x36, 0x01, 0x02,  // R.A.06..
                /* 0190 */  0x00, 0x24, 0x14, 0x89, 0xA3, 0xC6, 0xFA, 0x40,  // .$.....@
                /* 0198 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 01A0 */  0x30, 0x37, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // 07..!...
                /* 01A8 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 01B0 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x01   // ..).BA..
            })
            Name (XVCD, Zero)
            Method (WQ00, 1, NotSerialized)
            {
                Return (XVCD) /* \WMI0.XVCD */
            }

            OperationRegion (\WMIA, SystemMemory, PMIM, 0x9000)
            Field (WMIA, AnyAcc, NoLock, Preserve)
            {
                WAG1,   2048, 
                WAG2,   2048, 
                WAG3,   2048, 
                WAG4,   2048, 
                WAG5,   2048, 
                WAG6,   2048, 
                WAG7,   2048, 
                WAG8,   2048, 
                Offset (0x1000), 
                WPD1,   32768, 
                WPD2,   32768, 
                WPD3,   32768, 
                WPD4,   32768, 
                WPD5,   32768, 
                WPD6,   32768, 
                WPD7,   32768, 
                WPD8,   32768
            }

            Method (WQ01, 1, NotSerialized)
            {
                Return (WAG1) /* \WMI0.WAG1 */
            }

            Method (WS01, 2, NotSerialized)
            {
                Store (Arg1, WAG1) /* \WMI0.WAG1 */
                Return (Zero)
            }

            Method (WQ02, 1, NotSerialized)
            {
                Return (WPD1) /* \WMI0.WPD1 */
            }

            Method (WS02, 2, NotSerialized)
            {
                Store (Arg1, WPD1) /* \WMI0.WPD1 */
                Return (Zero)
            }

            Method (WQ11, 1, NotSerialized)
            {
                Return (WAG2) /* \WMI0.WAG2 */
            }

            Method (WS11, 2, NotSerialized)
            {
                Store (Arg1, WAG2) /* \WMI0.WAG2 */
                Return (Zero)
            }

            Method (WQ12, 1, NotSerialized)
            {
                Return (WPD2) /* \WMI0.WPD2 */
            }

            Method (WS12, 2, NotSerialized)
            {
                Store (Arg1, WPD2) /* \WMI0.WPD2 */
                Return (Zero)
            }

            Method (WQ21, 1, NotSerialized)
            {
                Return (WAG3) /* \WMI0.WAG3 */
            }

            Method (WS21, 2, NotSerialized)
            {
                Store (Arg1, WAG3) /* \WMI0.WAG3 */
                Return (Zero)
            }

            Method (WQ22, 1, NotSerialized)
            {
                Return (WPD3) /* \WMI0.WPD3 */
            }

            Method (WS22, 2, NotSerialized)
            {
                Store (Arg1, WPD3) /* \WMI0.WPD3 */
                Return (Zero)
            }

            Method (WQ31, 1, NotSerialized)
            {
                Return (WAG4) /* \WMI0.WAG4 */
            }

            Method (WS31, 2, NotSerialized)
            {
                Store (Arg1, WAG4) /* \WMI0.WAG4 */
                Return (Zero)
            }

            Method (WQ32, 1, NotSerialized)
            {
                Return (WPD4) /* \WMI0.WPD4 */
            }

            Method (WS32, 2, NotSerialized)
            {
                Store (Arg1, WPD4) /* \WMI0.WPD4 */
                Return (Zero)
            }

            Method (WQ41, 1, NotSerialized)
            {
                Return (WAG5) /* \WMI0.WAG5 */
            }

            Method (WS41, 2, NotSerialized)
            {
                Store (Arg1, WAG5) /* \WMI0.WAG5 */
                Return (Zero)
            }

            Method (WQ42, 1, NotSerialized)
            {
                Return (WPD5) /* \WMI0.WPD5 */
            }

            Method (WS42, 2, NotSerialized)
            {
                Store (Arg1, WPD5) /* \WMI0.WPD5 */
                Return (Zero)
            }

            Method (WQ51, 1, NotSerialized)
            {
                Return (WAG6) /* \WMI0.WAG6 */
            }

            Method (WS51, 2, NotSerialized)
            {
                Store (Arg1, WAG6) /* \WMI0.WAG6 */
                Return (Zero)
            }

            Method (WQ52, 1, NotSerialized)
            {
                Return (WPD6) /* \WMI0.WPD6 */
            }

            Method (WS52, 2, NotSerialized)
            {
                Store (Arg1, WPD6) /* \WMI0.WPD6 */
                Return (Zero)
            }

            Method (WQ61, 1, NotSerialized)
            {
                Return (WAG7) /* \WMI0.WAG7 */
            }

            Method (WS61, 2, NotSerialized)
            {
                Store (Arg1, WAG7) /* \WMI0.WAG7 */
                Return (Zero)
            }

            Method (WQ62, 1, NotSerialized)
            {
                Return (WPD7) /* \WMI0.WPD7 */
            }

            Method (WS62, 2, NotSerialized)
            {
                Store (Arg1, WPD7) /* \WMI0.WPD7 */
                Return (Zero)
            }

            Method (WQ71, 1, NotSerialized)
            {
                Return (WAG8) /* \WMI0.WAG8 */
            }

            Method (WS71, 2, NotSerialized)
            {
                Store (Arg1, WAG8) /* \WMI0.WAG8 */
                Return (Zero)
            }

            Method (WQ72, 1, NotSerialized)
            {
                Return (WPD8) /* \WMI0.WPD8 */
            }

            Method (WS72, 2, NotSerialized)
            {
                Store (Arg1, WPD8) /* \WMI0.WPD8 */
                Return (Zero)
            }

            Method (WM05, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, WMA5)
                If (LEqual (WMA5, One))
                {
                    WMIG (PMIM, Add (PMIM, 0x1000), One)
                    Return (Zero)
                }

                If (LEqual (WMA5, 0x02))
                {
                    WMIG (Add (PMIM, 0x0100), Add (PMIM, 0x2000), 0x02)
                    Return (Zero)
                }

                If (LEqual (WMA5, 0x03))
                {
                    WMIG (Add (PMIM, 0x0200), Add (PMIM, 0x3000), 0x03)
                    Return (Zero)
                }

                If (LEqual (WMA5, 0x04))
                {
                    WMIG (Add (PMIM, 0x0300), Add (PMIM, 0x4000), 0x04)
                    Return (Zero)
                }

                If (LEqual (WMA5, 0x05))
                {
                    WMIG (Add (PMIM, 0x0400), Add (PMIM, 0x5000), 0x05)
                    Return (Zero)
                }

                If (LEqual (WMA5, 0x06))
                {
                    WMIG (Add (PMIM, 0x0500), Add (PMIM, 0x6000), 0x06)
                    Return (Zero)
                }

                If (LEqual (WMA5, 0x07))
                {
                    WMIG (Add (PMIM, 0x0600), Add (PMIM, 0x7000), 0x07)
                    Return (Zero)
                }

                If (LEqual (WMA5, 0x08))
                {
                    WMIG (Add (PMIM, 0x0700), Add (PMIM, 0x8000), 0x08)
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (WM06, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, WM6A)
                Store (INIT (WM6A), Local0)
                Return (Local0)
            }

            Method (WM07, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, WM7A)
                Store (WDOG (WM7A), Local0)
                Return (Local0)
            }

            Method (NTFY, 1, Serialized)
            {
                Store (Arg0, XVCD) /* \WMI0.XVCD */
                Notify (WMI0, 0x80) // Status Change
            }

            Method (WSMI, 1, Serialized)
            {
                Store (Arg0, WMIS) /* \WMIS */
                ISMI (0xDF)
                Stall (0xFF)
            }

            Name (WQBA, Buffer (0x0914)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x04, 0x09, 0x00, 0x00, 0x50, 0x67, 0x00, 0x00,  // ....Pg..
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0xC7, 0xB2, 0x00, 0x01, 0x06, 0x18, 0x42,  // (......B
                /* 0020 */  0x10, 0x2B, 0x10, 0x92, 0x2B, 0x81, 0x42, 0x04,  // .+..+.B.
                /* 0028 */  0x0A, 0x44, 0x24, 0x81, 0x30, 0x28, 0x0D, 0x20,  // .D$.0(. 
                /* 0030 */  0x92, 0x03, 0x21, 0x17, 0x4C, 0x4C, 0x80, 0x08,  // ..!.LL..
                /* 0038 */  0x08, 0x79, 0x15, 0x60, 0x53, 0x80, 0x49, 0x10,  // .y.`S.I.
                /* 0040 */  0xF5, 0xEF, 0x0F, 0x51, 0x12, 0x1C, 0x4A, 0x08,  // ...Q..J.
                /* 0048 */  0x84, 0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00,  // .$.0/@..
                /* 0050 */  0xC3, 0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31,  // ..l.0-.1
                /* 0058 */  0x24, 0x95, 0x06, 0x4E, 0x09, 0x2C, 0x05, 0x42,  // $..N.,.B
                /* 0060 */  0x42, 0x05, 0x28, 0x17, 0xE0, 0x5B, 0x80, 0x76,  // B.(..[.v
                /* 0068 */  0x44, 0x49, 0x16, 0xB0, 0xA3, 0x30, 0x09, 0x3C,  // DI...0.<
                /* 0070 */  0x8A, 0xC8, 0x46, 0xE3, 0xD0, 0xD8, 0x61, 0x58,  // ..F...aX
                /* 0078 */  0x26, 0x98, 0x06, 0x71, 0x18, 0x65, 0x23, 0x8B,  // &..q.e#.
                /* 0080 */  0xC0, 0x13, 0xEA, 0x74, 0x74, 0x05, 0x08, 0x13,  // ...tt...
                /* 0088 */  0x20, 0x1E, 0x55, 0x18, 0xCD, 0x41, 0x91, 0x08,  //  .U..A..
                /* 0090 */  0xD0, 0x28, 0x31, 0x63, 0x22, 0xB0, 0x9D, 0x63,  // .(1c"..c
                /* 0098 */  0x6B, 0x14, 0xA7, 0x51, 0xB8, 0x00, 0xE9, 0x18,  // k..Q....
                /* 00A0 */  0x1A, 0xC1, 0x71, 0x85, 0xF7, 0xC8, 0x8E, 0x90,  // ..q.....
                /* 00A8 */  0x59, 0x1C, 0x8B, 0x20, 0x43, 0x85, 0xEB, 0x10,  // Y.. C...
                /* 00B0 */  0x4E, 0x73, 0x32, 0xC8, 0x89, 0x9C, 0x49, 0xEC,  // Ns2...I.
                /* 00B8 */  0x08, 0x05, 0x09, 0xB0, 0x8E, 0x21, 0xA4, 0x58,  // .....!.X
                /* 00C0 */  0x51, 0x6A, 0xC6, 0xD3, 0x0C, 0x82, 0x34, 0x0A,  // Qj....4.
                /* 00C8 */  0xA5, 0xC9, 0x79, 0x00, 0x61, 0xC2, 0xC3, 0x20,  // ..y.a.. 
                /* 00D0 */  0x30, 0xFE, 0x11, 0x61, 0x64, 0x40, 0xC8, 0x33,  // 0..ad@.3
                /* 00D8 */  0xB2, 0x86, 0x6A, 0x02, 0xBB, 0x17, 0xE0, 0x6C,  // ..j....l
                /* 00E0 */  0x6A, 0x32, 0x36, 0x39, 0x29, 0x9B, 0x1D, 0x41,  // j269)..A
                /* 00E8 */  0x68, 0x0B, 0x5E, 0xDA, 0x04, 0x18, 0x04, 0x13,  // h.^.....
                /* 00F0 */  0x4A, 0x24, 0x0F, 0xE5, 0x78, 0xA2, 0x54, 0x88,  // J$..x.T.
                /* 00F8 */  0xA4, 0xF1, 0xC5, 0x88, 0x52, 0x1C, 0x8A, 0x60,  // ....R..`
                /* 0100 */  0x23, 0xB6, 0x86, 0x21, 0x98, 0x98, 0x21, 0xE3,  // #..!..!.
                /* 0108 */  0x07, 0xB7, 0xFD, 0x83, 0x01, 0x53, 0x00, 0xD1,  // .....S..
                /* 0110 */  0x02, 0x88, 0x22, 0x8D, 0x06, 0x75, 0x18, 0x48,  // .."..u.H
                /* 0118 */  0xF0, 0x70, 0xE0, 0x71, 0x9E, 0xD6, 0xF9, 0x1D,  // .p.q....
                /* 0120 */  0xD7, 0x41, 0x04, 0x39, 0xE1, 0xE3, 0xAA, 0xF3,  // .A.9....
                /* 0128 */  0x54, 0x40, 0x46, 0xC6, 0xFE, 0xFF, 0x58, 0x09,  // T@F...X.
                /* 0130 */  0x3A, 0x38, 0x26, 0x40, 0x71, 0x0D, 0xA8, 0x69,  // :8&@q..i
                /* 0138 */  0x3E, 0x1D, 0xB0, 0x81, 0x86, 0xC3, 0x0C, 0xD1,  // >.......
                /* 0140 */  0xA3, 0x0D, 0x77, 0x02, 0x87, 0xC8, 0x00, 0x3D,  // ..w....=
                /* 0148 */  0xA2, 0x07, 0x03, 0xEC, 0x10, 0x4F, 0xE6, 0x25,  // .....O.%
                /* 0150 */  0xA0, 0x54, 0x01, 0x66, 0x4F, 0x08, 0x9A, 0x76,  // .T.fO..v
                /* 0158 */  0x82, 0xE3, 0xF1, 0x71, 0xC0, 0xF3, 0x39, 0xE1,  // ...q..9.
                /* 0160 */  0x04, 0x96, 0x3F, 0x08, 0xD4, 0xC8, 0x0C, 0xED,  // ..?.....
                /* 0168 */  0x71, 0x9E, 0xD6, 0x5B, 0x81, 0x8F, 0x00, 0x26,  // q..[...&
                /* 0170 */  0xB0, 0x58, 0x08, 0x6D, 0x52, 0xE3, 0x01, 0x02,  // .X.mR...
                /* 0178 */  0x8A, 0x0F, 0x05, 0x42, 0x78, 0x75, 0xF0, 0x7C,  // ...Bxu.|
                /* 0180 */  0x4D, 0x30, 0x32, 0x84, 0x9C, 0x8C, 0x07, 0x35,  // M02....5
                /* 0188 */  0x0A, 0x83, 0xD6, 0x0A, 0xAE, 0x9B, 0x40, 0x02,  // ......@.
                /* 0190 */  0x47, 0x84, 0xD0, 0x67, 0xC3, 0xA2, 0x86, 0x4D,  // G..g...M
                /* 0198 */  0x8F, 0x16, 0xFC, 0x54, 0xC1, 0x20, 0xCF, 0xE0,  // ...T. ..
                /* 01A0 */  0x11, 0xC0, 0x23, 0x39, 0x21, 0x1F, 0x3E, 0x3C,  // ..#9!.><
                /* 01A8 */  0x30, 0xF8, 0xB3, 0xF0, 0x91, 0x02, 0x1C, 0x1E,  // 0.......
                /* 01B0 */  0xC1, 0x84, 0xF3, 0x0A, 0x01, 0x6B, 0xA4, 0xF0,  // .....k..
                /* 01B8 */  0x6F, 0x11, 0x46, 0xF6, 0xA9, 0xE1, 0xB5, 0x21,  // o.F....!
                /* 01C0 */  0x81, 0x0F, 0x1E, 0x81, 0xB1, 0x43, 0xB5, 0x5F,  // .....C._
                /* 01C8 */  0x01, 0x08, 0xC1, 0xA3, 0x3D, 0x0A, 0x3C, 0x7B,  // ....=.<{
                /* 01D0 */  0x44, 0x78, 0xDC, 0xC0, 0xFC, 0xFF, 0x8F, 0x1B,  // Dx......
                /* 01D8 */  0xB0, 0x09, 0x8A, 0x1C, 0x20, 0x7A, 0x0C, 0xFC,  // .... z..
                /* 01E0 */  0x04, 0x71, 0x0A, 0xF1, 0xC3, 0x1F, 0xC3, 0x11,  // .q......
                /* 01E8 */  0x45, 0x89, 0x7C, 0x48, 0x3E, 0x9C, 0x18, 0xE1,  // E.|H>...
                /* 01F0 */  0x10, 0x9E, 0x49, 0xCE, 0xC0, 0x07, 0x0C, 0x4F,  // ..I....O
                /* 01F8 */  0xEB, 0x14, 0x5E, 0x24, 0x3C, 0x02, 0x4C, 0xA0,  // ..^$<.L.
                /* 0200 */  0x43, 0x0C, 0x8D, 0xB2, 0x7E, 0x45, 0x80, 0x41,  // C...~E.A
                /* 0208 */  0x9D, 0x63, 0x00, 0x57, 0x30, 0xCF, 0x31, 0xE0,  // .c.W0.1.
                /* 0210 */  0x3B, 0x3E, 0xF0, 0x6B, 0x00, 0xE6, 0x7C, 0xF2,  // ;>.k..|.
                /* 0218 */  0x14, 0x03, 0x07, 0x97, 0x81, 0xBC, 0x04, 0xC4,  // ........
                /* 0220 */  0x79, 0x77, 0xF1, 0xCD, 0xC4, 0xD7, 0x02, 0xE3,  // yw......
                /* 0228 */  0x3E, 0xC4, 0x80, 0x61, 0x60, 0x0F, 0x31, 0xE0,  // >..a`.1.
                /* 0230 */  0xFC, 0xFF, 0x1F, 0x62, 0xE0, 0x05, 0x3F, 0xC4,  // ...b..?.
                /* 0238 */  0x00, 0x34, 0x91, 0x77, 0xBE, 0x90, 0x91, 0x55,  // .4.w...U
                /* 0240 */  0xF8, 0x10, 0x83, 0xBA, 0x21, 0x9C, 0xCF, 0x43,  // ....!..C
                /* 0248 */  0xCA, 0xD3, 0x01, 0x93, 0x73, 0xCE, 0xA0, 0x87,  // ....s...
                /* 0250 */  0x18, 0xE0, 0x01, 0x88, 0xF7, 0x3E, 0x65, 0x32,  // .....>e2
                /* 0258 */  0x82, 0x33, 0x35, 0xA0, 0x51, 0x7D, 0xAE, 0x00,  // .35.Q}..
                /* 0260 */  0xC7, 0x79, 0x82, 0xFF, 0xFF, 0xCF, 0x13, 0x18,  // .y......
                /* 0268 */  0xBC, 0xD7, 0x0A, 0x76, 0x0C, 0x60, 0x67, 0x0A,  // ...v.`g.
                /* 0270 */  0x38, 0x57, 0x0A, 0x9F, 0x5A, 0x7C, 0x4E, 0xF0,  // 8W..Z|N.
                /* 0278 */  0x18, 0xF9, 0x58, 0x0C, 0x1A, 0xF2, 0x41, 0xC0,  // ..X...A.
                /* 0280 */  0x0B, 0xB4, 0xAC, 0xB3, 0x0D, 0x68, 0x2E, 0x13,  // .....h..
                /* 0288 */  0xCF, 0x3D, 0xD8, 0xA3, 0x0D, 0x18, 0x90, 0x2A,  // .=.....*
                /* 0290 */  0xBD, 0x05, 0xE8, 0x02, 0x82, 0x23, 0xF0, 0xC1,  // .....#..
                /* 0298 */  0x06, 0xF8, 0xC4, 0x3A, 0xD5, 0xD0, 0x30, 0x63,  // ...:..0c
                /* 02A0 */  0x54, 0x10, 0x18, 0xD4, 0xC1, 0x06, 0x70, 0x75,  // T.....pu
                /* 02A8 */  0xE8, 0xF0, 0xC1, 0x06, 0x3C, 0xFF, 0xFF, 0x11,  // ....<...
                /* 02B0 */  0xB2, 0xC1, 0x9C, 0x44, 0x98, 0xA3, 0x08, 0xF6,  // ...D....
                /* 02B8 */  0x2C, 0xE1, 0x9B, 0x0D, 0x78, 0xB0, 0xB1, 0x27,  // ,...x..'
                /* 02C0 */  0x1B, 0xB0, 0x9C, 0x09, 0x9E, 0x6C, 0x80, 0x49,  // .....l.I
                /* 02C8 */  0xF8, 0x93, 0x0D, 0x40, 0x1E, 0xD8, 0x27, 0x81,  // ...@..'.
                /* 02D0 */  0x77, 0x80, 0xFF, 0xFF, 0x93, 0x0D, 0x60, 0xF1,  // w.....`.
                /* 02D8 */  0x4A, 0x81, 0x3D, 0xD9, 0x40, 0x5E, 0xBC, 0x4E,  // J.=.@^.N
                /* 02E0 */  0x36, 0xE0, 0x3A, 0x03, 0x82, 0xED, 0x08, 0x02,  // 6.:.....
                /* 02E8 */  0xF3, 0x6C, 0x03, 0x9C, 0xCE, 0x80, 0xC0, 0xE1,  // .l......
                /* 02F0 */  0xFF, 0x7F, 0x06, 0x04, 0x1C, 0x9E, 0x5B, 0x9E,  // ......[.
                /* 02F8 */  0x01, 0xC1, 0x75, 0xF2, 0x64, 0x67, 0x40, 0x70,  // ..u.dg@p
                /* 0300 */  0xA1, 0x3C, 0x03, 0x02, 0x66, 0xFF, 0xFF, 0x67,  // .<..f..g
                /* 0308 */  0x40, 0xC0, 0xD2, 0xE9, 0x80, 0x9D, 0x01, 0x01,  // @.......
                /* 0310 */  0x4E, 0xFD, 0xFF, 0x2F, 0x20, 0xFC, 0x0C, 0x08,  // N../ ...
                /* 0318 */  0x30, 0xEC, 0x66, 0x03, 0x1B, 0x1B, 0x7B, 0xB2,  // 0.f...{.
                /* 0320 */  0x01, 0xCB, 0x19, 0x10, 0x77, 0xB2, 0x01, 0xEF,  // ....w...
                /* 0328 */  0xFF, 0xFF, 0x0C, 0x08, 0x30, 0xE9, 0x64, 0x03,  // ....0.d.
                /* 0330 */  0x58, 0xFB, 0xFF, 0x9F, 0x01, 0x01, 0x63, 0x67,  // X.....cg
                /* 0338 */  0x1B, 0x60, 0x75, 0x06, 0x04, 0xBC, 0xFF, 0xFF,  // .`u.....
                /* 0340 */  0xCF, 0x80, 0xF8, 0x63, 0xCB, 0x33, 0x20, 0xB8,  // ...c.3 .
                /* 0348 */  0x70, 0x9F, 0x01, 0xC1, 0x87, 0xF1, 0x0C, 0x08,  // p.......
                /* 0350 */  0xF0, 0xEF, 0x74, 0xC0, 0x8E, 0x36, 0xFC, 0xFF,  // ..t..6..
                /* 0358 */  0x7F, 0x06, 0x04, 0x18, 0x75, 0x10, 0x60, 0x67,  // ....u.`g
                /* 0360 */  0x40, 0xC0, 0xD3, 0xFF, 0xFF, 0x0C, 0x08, 0x58,  // @......X
                /* 0368 */  0xBB, 0xD9, 0xC0, 0xC6, 0xC6, 0x9E, 0x6C, 0xC0,  // ......l.
                /* 0370 */  0x72, 0x06, 0xC4, 0x9D, 0x6C, 0xC0, 0x7F, 0x06,  // r...l...
                /* 0378 */  0x04, 0x5C, 0xFD, 0xFF, 0xCF, 0x80, 0x80, 0x95,  // .\......
                /* 0380 */  0x93, 0x0D, 0xE0, 0xF1, 0x0C, 0x08, 0xF8, 0x39,  // .......9
                /* 0388 */  0x0A, 0xFC, 0xFF, 0x9F, 0x01, 0x01, 0x6E, 0xCD,  // ......n.
                /* 0390 */  0xE1, 0x19, 0x10, 0x5C, 0x33, 0xF3, 0x19, 0x10,  // ...\3...
                /* 0398 */  0x6C, 0xF7, 0x1A, 0x9F, 0x01, 0xC1, 0xFF, 0xFF,  // l.......
                /* 03A0 */  0x3F, 0x03, 0x02, 0xEC, 0x39, 0x1D, 0xB0, 0xA3,  // ?...9...
                /* 03A8 */  0x0D, 0xE0, 0xEE, 0xFF, 0x7F, 0x06, 0x04, 0xEC,  // ........
                /* 03B0 */  0x1C, 0x04, 0xD8, 0x19, 0x10, 0xE0, 0xD6, 0xFF,  // ........
                /* 03B8 */  0xFF, 0x66, 0x03, 0x1F, 0x1B, 0x7B, 0xB2, 0x01,  // .f...{..
                /* 03C0 */  0xCB, 0x19, 0x10, 0x77, 0xB2, 0x01, 0xFF, 0x19,  // ...w....
                /* 03C8 */  0x10, 0x60, 0xD0, 0xC9, 0x06, 0xF6, 0xFF, 0xFF,  // .`......
                /* 03D0 */  0x0C, 0x08, 0x30, 0xE9, 0x6C, 0x03, 0xAC, 0xCE,  // ..0.l...
                /* 03D8 */  0x80, 0xC0, 0xEF, 0xFF, 0x7F, 0x06, 0x04, 0x3C,  // .......<
                /* 03E0 */  0xDD, 0x5B, 0x9E, 0x01, 0xC1, 0x85, 0xFB, 0x0C,  // .[......
                /* 03E8 */  0x08, 0x3E, 0x88, 0x67, 0x40, 0xC0, 0xFA, 0xFF,  // .>.g@...
                /* 03F0 */  0xFF, 0x0C, 0x08, 0x98, 0x38, 0x1D, 0xB0, 0x33,  // ....8..3
                /* 03F8 */  0x20, 0xC0, 0xAC, 0x83, 0x00, 0x3B, 0xD8, 0xE0,  //  ....;..
                /* 0400 */  0xFF, 0xFF, 0x67, 0x40, 0x80, 0x4D, 0x37, 0x1B,  // ..g@.M7.
                /* 0408 */  0xD8, 0xD8, 0xD8, 0x93, 0x0D, 0x58, 0xCE, 0x80,  // .....X..
                /* 0410 */  0xB8, 0x93, 0x0D, 0xF8, 0xCF, 0x80, 0x70, 0xFE,  // ......p.
                /* 0418 */  0xFF, 0x67, 0x40, 0x80, 0x2D, 0x27, 0x1B, 0xC0,  // .g@.-'..
                /* 0420 */  0xE3, 0x95, 0x02, 0xF3, 0xFF, 0x3F, 0x03, 0x02,  // .....?..
                /* 0428 */  0x56, 0xCE, 0x36, 0xC0, 0xEA, 0x0C, 0x08, 0xF0,  // V.6.....
                /* 0430 */  0xE0, 0xE0, 0xF2, 0x66, 0x83, 0xF9, 0xFF, 0x9F,  // ...f....
                /* 0438 */  0x01, 0xC1, 0x80, 0xFB, 0x0C, 0x08, 0xBE, 0xFB,  // ........
                /* 0440 */  0xC1, 0x33, 0x20, 0xC0, 0xBF, 0xD3, 0x01, 0x3B,  // .3 ....;
                /* 0448 */  0xDA, 0x80, 0xE3, 0xFF, 0x7F, 0x06, 0x04, 0x58,  // .......X
                /* 0450 */  0x73, 0x10, 0x60, 0x67, 0x40, 0xC0, 0xE1, 0xFF,  // s.`g@...
                /* 0458 */  0xFF, 0x0C, 0x08, 0x98, 0xB9, 0xD9, 0xC0, 0xC6,  // ........
                /* 0460 */  0xC6, 0x9E, 0x6C, 0xC0, 0x72, 0x06, 0xC4, 0x9D,  // ..l.r...
                /* 0468 */  0x6C, 0xC0, 0x7F, 0x06, 0x04, 0x3C, 0xFE, 0xFF,  // l....<..
                /* 0470 */  0xCF, 0x80, 0xC0, 0xFC, 0x64, 0x03, 0x78, 0x3C,  // ....d.x<
                /* 0478 */  0x03, 0x02, 0x7E, 0xCE, 0x36, 0xB0, 0xFF, 0xFF,  // ..~.6...
                /* 0480 */  0x67, 0x40, 0x80, 0x3F, 0xDE, 0xCE, 0x80, 0x20,  // g@.?... 
                /* 0488 */  0xC3, 0x7D, 0x06, 0x04, 0xDF, 0xFD, 0xE0, 0x19,  // .}......
                /* 0490 */  0x10, 0xD8, 0xFD, 0xFF, 0xCF, 0x80, 0x00, 0x43,  // .......C
                /* 0498 */  0x4E, 0x07, 0xEC, 0x0C, 0x08, 0x78, 0xFD, 0xFF,  // N....x..
                /* 04A0 */  0x9F, 0x01, 0x01, 0x03, 0x07, 0x01, 0x76, 0x06,  // ......v.
                /* 04A8 */  0x04, 0xD8, 0x75, 0xB3, 0x81, 0xF9, 0xFF, 0xBF,  // ..u.....
                /* 04B0 */  0x60, 0xC1, 0x38, 0xD9, 0x80, 0xE5, 0x0C, 0x88,  // `.8.....
                /* 04B8 */  0x3B, 0xD9, 0x80, 0xFF, 0x0C, 0x08, 0x30, 0xE8,  // ;.....0.
                /* 04C0 */  0x64, 0x03, 0xE6, 0xFF, 0xFF, 0x19, 0x10, 0x60,  // d......`
                /* 04C8 */  0xCB, 0xD9, 0x06, 0x58, 0x9D, 0x01, 0x81, 0xFB,  // ...X....
                /* 04D0 */  0xFF, 0xFF, 0x0C, 0x08, 0xB8, 0x38, 0x1A, 0x3C,  // .....8.<
                /* 04D8 */  0x03, 0x82, 0xEB, 0x96, 0xE0, 0x33, 0x20, 0xD8,  // .....3 .
                /* 04E0 */  0xEE, 0x07, 0xCF, 0x80, 0x00, 0x23, 0xFE, 0xFF,  // .....#..
                /* 04E8 */  0x67, 0x40, 0x60, 0x7B, 0x3A, 0x60, 0x67, 0x40,  // g@`{:`g@
                /* 04F0 */  0x80, 0x59, 0x07, 0x01, 0x76, 0xB0, 0x01, 0xD7,  // .Y..v...
                /* 04F8 */  0xFF, 0xFF, 0x0C, 0x08, 0x30, 0xE6, 0x66, 0x03,  // ....0.f.
                /* 0500 */  0x1B, 0x1B, 0x7B, 0xB2, 0x01, 0xCB, 0x19, 0x10,  // ..{.....
                /* 0508 */  0x77, 0xB2, 0x01, 0xFF, 0x19, 0x10, 0x7C, 0xFF,  // w.....|.
                /* 0510 */  0xFF, 0x33, 0x20, 0xC0, 0x88, 0x93, 0x0D, 0xE0,  // .3 .....
                /* 0518 */  0xF1, 0x0C, 0x08, 0x96, 0xFF, 0xFF, 0x19, 0x10,  // ........
                /* 0520 */  0x98, 0x9F, 0x6D, 0x80, 0x55, 0xB4, 0x83, 0x0D,  // ..m.U...
                /* 0528 */  0x2A, 0xCC, 0xD9, 0x06, 0x10, 0x3D, 0xEF, 0x87,  // *....=..
                /* 0530 */  0x0F, 0x1F, 0x0C, 0x7C, 0x10, 0xC0, 0xDC, 0x6C,  // ...|...l
                /* 0538 */  0xE0, 0xDC, 0x2A, 0x7C, 0x5D, 0xF1, 0x41, 0xC4,  // ..*|].A.
                /* 0540 */  0x87, 0x07, 0xF6, 0xFF, 0x87, 0x8A, 0x13, 0x9E,  // ........
                /* 0548 */  0x9F, 0x1C, 0x7C, 0xB6, 0x81, 0x7D, 0x9A, 0x79,  // ..|..}.y
                /* 0550 */  0x08, 0xC4, 0x21, 0x3C, 0xDB, 0x80, 0xFD, 0x4D,  // ..!<...M
                /* 0558 */  0xE1, 0x63, 0x81, 0xCF, 0x36, 0x00, 0x3F, 0x44,  // .c..6.?D
                /* 0560 */  0x1C, 0x30, 0xE4, 0x64, 0x3C, 0xA8, 0x51, 0x58,  // .0.d<.QX
                /* 0568 */  0xE3, 0x25, 0x81, 0x4C, 0xDB, 0x04, 0x43, 0x43,  // .%.L..CC
                /* 0570 */  0xE8, 0xB4, 0xE4, 0xB3, 0x0D, 0x38, 0xFF, 0xFF,  // .....8..
                /* 0578 */  0x67, 0x1B, 0x70, 0x9E, 0x4E, 0xF0, 0x67, 0x1B,  // g.p.N.g.
                /* 0580 */  0x30, 0x9D, 0x25, 0x30, 0x04, 0x1E, 0x32, 0xFC,  // 0.%0..2.
                /* 0588 */  0xD3, 0x0C, 0x3F, 0x3E, 0xBC, 0x3F, 0x24, 0xF0,  // ..?>.?$.
                /* 0590 */  0xB9, 0x0F, 0x6C, 0xA7, 0x0E, 0x38, 0x87, 0x19,  // ..l..8..
                /* 0598 */  0x60, 0x32, 0x26, 0xDC, 0x91, 0xC2, 0x43, 0xE0,  // `2&...C.
                /* 05A0 */  0x03, 0x68, 0x75, 0x7E, 0xE4, 0x58, 0x78, 0x56,  // .hu~.XxV
                /* 05A8 */  0xB8, 0xB3, 0x0C, 0x1F, 0x15, 0xE6, 0x74, 0x83,  // ......t.
                /* 05B0 */  0x8B, 0xF2, 0x3E, 0x30, 0x81, 0x82, 0xBC, 0x0B,  // ..>0....
                /* 05B8 */  0x24, 0xF2, 0x81, 0x40, 0x61, 0x7C, 0xBA, 0x01,  // $..@a|..
                /* 05C0 */  0x8E, 0xFF, 0xFF, 0xD3, 0x0D, 0xF0, 0x98, 0xA4,  // ........
                /* 05C8 */  0x4F, 0x37, 0x60, 0x83, 0x88, 0x18, 0xAC, 0x68,  // O7`....h
                /* 05D0 */  0x30, 0xDD, 0x9A, 0x70, 0xB7, 0x1B, 0x1C, 0x5E,  // 0..p...^
                /* 05D8 */  0xB8, 0x18, 0xA7, 0xC3, 0x10, 0xA2, 0x3C, 0xB0,  // ......<.
                /* 05E0 */  0x18, 0x99, 0x1F, 0x03, 0xC1, 0x70, 0x9B, 0x79,  // .....p.y
                /* 05E8 */  0xB6, 0x01, 0x2E, 0xE1, 0x0E, 0x05, 0xFA, 0x43,  // .......C
                /* 05F0 */  0xF9, 0x6C, 0x03, 0xF8, 0xFC, 0xFF, 0x9F, 0x6D,  // .l.....m
                /* 05F8 */  0x80, 0xCF, 0x41, 0x04, 0x77, 0x32, 0x01, 0xC3,  // ..A.w2..
                /* 0600 */  0x89, 0x01, 0xD6, 0xB1, 0x0D, 0xB8, 0x88, 0x5B,  // .......[
                /* 0608 */  0xA9, 0x4E, 0x3B, 0x16, 0x06, 0x22, 0x1B, 0x87,  // .N;.."..
                /* 0610 */  0x45, 0x3A, 0x54, 0x0B, 0xA1, 0xD2, 0x90, 0x7C,  // E:T....|
                /* 0618 */  0x04, 0x3A, 0xBB, 0x47, 0x85, 0xE7, 0x04, 0x01,  // .:.G....
                /* 0620 */  0x09, 0xD4, 0x10, 0x0E, 0x0F, 0xA1, 0xE8, 0xA3,  // ........
                /* 0628 */  0xA1, 0xC0, 0x0E, 0x0B, 0x46, 0x41, 0x3C, 0x7A,  // ....FA<z
                /* 0630 */  0x07, 0x81, 0xD0, 0xA1, 0x08, 0x7F, 0x62, 0xF0,  // ......b.
                /* 0638 */  0x7C, 0xDE, 0xF8, 0x4D, 0xF0, 0xB0, 0xF1, 0xB4,  // |..M....
                /* 0640 */  0x00, 0xEB, 0x62, 0xE0, 0x63, 0x00, 0x3F, 0x13,  // ..b.c.?.
                /* 0648 */  0xE2, 0x0F, 0xFD, 0x26, 0xE0, 0xC7, 0x1E, 0xF0,  // ...&....
                /* 0650 */  0x09, 0x3C, 0x0D, 0x80, 0x02, 0xC8, 0x93, 0xF7,  // .<......
                /* 0658 */  0xB1, 0xE6, 0x01, 0x80, 0xCD, 0xE1, 0xC9, 0xC6,  // ........
                /* 0660 */  0x68, 0xFF, 0xFF, 0x47, 0x1A, 0x9C, 0x8C, 0x95,  // h..G....
                /* 0668 */  0xEA, 0x4B, 0xE3, 0x33, 0xA3, 0xC7, 0xC5, 0xCF,  // .K.3....
                /* 0670 */  0x03, 0x3E, 0xB8, 0xB0, 0xB3, 0x01, 0xEE, 0x0C,  // .>......
                /* 0678 */  0x85, 0x81, 0xF5, 0x48, 0x39, 0xAC, 0xD1, 0xC2,  // ...H9...
                /* 0680 */  0x1E, 0xF0, 0x43, 0x83, 0x2F, 0x1C, 0x9E, 0x99,  // ..C./...
                /* 0688 */  0xCF, 0x28, 0x3E, 0x6A, 0x80, 0xE5, 0x38, 0x05,  // .(>j..8.
                /* 0690 */  0xFF, 0xB0, 0x82, 0x3B, 0xC9, 0xC0, 0x9D, 0xE6,  // ...;....
                /* 0698 */  0x23, 0xC1, 0xA3, 0x9E, 0x87, 0x1E, 0xDE, 0x47,  // #......G
                /* 06A0 */  0x18, 0xCF, 0x2E, 0x88, 0xAF, 0x9D, 0xFC, 0xF2,  // ........
                /* 06A8 */  0x7D, 0x5A, 0xBE, 0xEF, 0xF8, 0xE8, 0x63, 0xA0,  // }Z....c.
                /* 06B0 */  0x27, 0x86, 0xA8, 0xAF, 0x27, 0x9E, 0x00, 0xBF,  // '...'...
                /* 06B8 */  0x50, 0x38, 0xC6, 0xA9, 0x88, 0x06, 0x5A, 0xA9,  // P8....Z.
                /* 06C0 */  0xA4, 0xAE, 0x99, 0xC2, 0xF8, 0x54, 0x04, 0xB8,  // .....T..
                /* 06C8 */  0x8A, 0x30, 0x78, 0x50, 0xFC, 0xFF, 0x4F, 0x45,  // .0xP..OE
                /* 06D0 */  0xD8, 0x1B, 0x86, 0x2F, 0x03, 0x3E, 0x14, 0x81,  // .../.>..
                /* 06D8 */  0xE5, 0x40, 0xE2, 0x89, 0xBD, 0x04, 0xF8, 0xDC,  // .@......
                /* 06E0 */  0x80, 0xC3, 0x39, 0x03, 0x7E, 0x32, 0x02, 0xC3,  // ..9.~2..
                /* 06E8 */  0x5D, 0xFB, 0xC9, 0x08, 0xB8, 0x44, 0x3B, 0x19,  // ]....D;.
                /* 06F0 */  0x01, 0x34, 0x39, 0xDF, 0xE1, 0xFE, 0xFF, 0x27,  // .49....'
                /* 06F8 */  0x23, 0x30, 0x9C, 0x1A, 0x60, 0x1C, 0x8C, 0x80,  // #0..`...
                /* 0700 */  0x8B, 0xA4, 0x83, 0x11, 0x95, 0x73, 0x30, 0x82,  // .....s0.
                /* 0708 */  0x72, 0x84, 0xC0, 0x1D, 0x8C, 0xC0, 0x3F, 0xA6,  // r.....?.
                /* 0710 */  0x33, 0x7A, 0x1D, 0x38, 0x75, 0x1F, 0x8C, 0x00,  // 3z.8u...
                /* 0718 */  0x73, 0xC3, 0xF5, 0xC1, 0x08, 0xF8, 0xFC, 0xFF,  // s.......
                /* 0720 */  0x0F, 0x46, 0xC0, 0xE5, 0x70, 0xE1, 0x83, 0x11,  // .F..p...
                /* 0728 */  0xB8, 0x0F, 0x0B, 0xFC, 0x10, 0x83, 0x25, 0x28,  // ......%(
                /* 0730 */  0xFE, 0x35, 0x64, 0x02, 0x85, 0x5A, 0xA4, 0x24,  // .5d..Z.$
                /* 0738 */  0x2F, 0x97, 0xC2, 0xF8, 0x4C, 0x04, 0xB8, 0x8A,  // /...L...
                /* 0740 */  0x71, 0x26, 0x02, 0x21, 0xC6, 0xE3, 0xB1, 0x11,  // q&.!....
                /* 0748 */  0xCF, 0x38, 0x6C, 0xB8, 0xE7, 0x8B, 0xA7, 0x22,  // .8l...."
                /* 0750 */  0xB0, 0xCF, 0xE1, 0x0C, 0xFA, 0xBC, 0x6E, 0xE9,  // ......n.
                /* 0758 */  0x54, 0x84, 0xFF, 0xFF, 0x9F, 0x8A, 0x60, 0x1C,  // T.....`.
                /* 0760 */  0x83, 0x9E, 0x8A, 0x80, 0x4B, 0xBC, 0x53, 0x11,  // ....K.S.
                /* 0768 */  0x40, 0x93, 0x13, 0xC4, 0x53, 0x11, 0xB8, 0xCE,  // @...S...
                /* 0770 */  0x0D, 0x30, 0xCF, 0x45, 0xE0, 0xFB, 0xFF, 0x9F,  // .0.E....
                /* 0778 */  0x8B, 0xE0, 0x3E, 0x08, 0x7C, 0x18, 0x22, 0xE7,  // ..>.|.".
                /* 0780 */  0x22, 0x74, 0x78, 0x2A, 0x1D, 0x22, 0x70, 0xB1,  // "tx*."p.
                /* 0788 */  0xCF, 0x45, 0x74, 0xD8, 0x0E, 0x4C, 0xA2, 0x43,  // .Et..L.C
                /* 0790 */  0xBD, 0xCF, 0x45, 0x3C, 0xE6, 0x91, 0x86, 0x82,  // ..E<....
                /* 0798 */  0x18, 0xD0, 0x19, 0xCE, 0x45, 0x68, 0x15, 0xE7,  // ....Eh..
                /* 07A0 */  0x22, 0xE4, 0x20, 0xDF, 0x16, 0xD8, 0xEC, 0x7C,  // ". ....|
                /* 07A8 */  0x0F, 0xE0, 0x37, 0x15, 0x5F, 0x8B, 0x18, 0x6E,  // ..7._..n
                /* 07B0 */  0x35, 0xD7, 0x1D, 0x14, 0x98, 0x6F, 0x45, 0x18,  // 5....oE.
                /* 07B8 */  0x5D, 0xA7, 0x22, 0x90, 0xE9, 0xBB, 0x14, 0x81,  // ].".....
                /* 07C0 */  0x1C, 0x9D, 0x9F, 0xA8, 0xC0, 0x87, 0xFF, 0x3C,  // .......<
                /* 07C8 */  0xE0, 0x21, 0x3C, 0x51, 0xC1, 0x3D, 0x13, 0xBC,  // .!<Q.=..
                /* 07D0 */  0xF5, 0xF8, 0x44, 0x05, 0xFB, 0x90, 0x4B, 0x4E,  // ..D...KN
                /* 07D8 */  0x54, 0x40, 0xE3, 0xFF, 0x7F, 0xA2, 0x02, 0x5F,  // T@....._
                /* 07E0 */  0xEC, 0x13, 0x15, 0xA0, 0xE7, 0x08, 0x82, 0x3B,  // .......;
                /* 07E8 */  0xB9, 0x82, 0xF5, 0x98, 0x81, 0x51, 0x68, 0xD3,  // .....Qh.
                /* 07F0 */  0xA7, 0x46, 0xA3, 0x56, 0x0D, 0xCA, 0xD4, 0x28,  // .F.V...(
                /* 07F8 */  0xD3, 0xA0, 0x56, 0x9F, 0x4A, 0x8D, 0x19, 0xBB,  // ..V.J...
                /* 0800 */  0x0F, 0x58, 0xE2, 0x3B, 0x41, 0xC3, 0x75, 0x40,  // .X.;A.u@
                /* 0808 */  0x10, 0x1A, 0x89, 0x42, 0x20, 0x8E, 0xF2, 0xA7,  // ...B ...
                /* 0810 */  0x10, 0x88, 0x85, 0x78, 0x00, 0x61, 0x42, 0x57,  // ...x.aBW
                /* 0818 */  0x24, 0x10, 0x8B, 0x5B, 0x9B, 0x40, 0x1C, 0x0D,  // $..[.@..
                /* 0820 */  0x84, 0x46, 0x5F, 0x9D, 0x40, 0x1C, 0xD8, 0x07,  // .F_.@...
                /* 0828 */  0x08, 0x93, 0xFB, 0x26, 0x10, 0x88, 0xE3, 0x18,  // ...&....
                /* 0830 */  0x01, 0x61, 0x11, 0x5E, 0x54, 0x3A, 0x06, 0x10,  // .a.^T:..
                /* 0838 */  0x2B, 0x20, 0x4C, 0xA0, 0x16, 0x10, 0x26, 0xCB,  // + L...&.
                /* 0840 */  0x0C, 0x08, 0x0B, 0x05, 0x42, 0x43, 0x7F, 0x39,  // ....BC.9
                /* 0848 */  0x04, 0xE2, 0xA0, 0x76, 0x40, 0x98, 0x4C, 0x3D,  // ...v@.L=
                /* 0850 */  0x20, 0x2C, 0x86, 0x1F, 0x10, 0x26, 0x5E, 0xD1,  //  ,...&^.
                /* 0858 */  0x60, 0x28, 0x08, 0x95, 0xF6, 0xE6, 0xD2, 0x61,  // `(.....a
                /* 0860 */  0x82, 0x78, 0x02, 0x61, 0x61, 0x40, 0xE8, 0xFF,  // .x.aa@..
                /* 0868 */  0x3F, 0xAC, 0x28, 0x10, 0x16, 0xD1, 0xD5, 0x60,  // ?.(....`
                /* 0870 */  0xE8, 0xDB, 0x40, 0x20, 0x0E, 0xF0, 0x4C, 0x0A,  // ..@ ..L.
                /* 0878 */  0x42, 0x44, 0x3F, 0x25, 0x04, 0xE2, 0xC8, 0x20,  // BD?%... 
                /* 0880 */  0x54, 0xD2, 0x1F, 0x42, 0x43, 0x25, 0x7F, 0xA5,  // T..BC%..
                /* 0888 */  0x83, 0x61, 0x20, 0x34, 0xE6, 0x83, 0xE9, 0x50,  // .a 4...P
                /* 0890 */  0xD9, 0x5F, 0x4B, 0x20, 0x16, 0xA6, 0x0E, 0x84,  // ._K ....
                /* 0898 */  0x09, 0x77, 0x37, 0x54, 0xFA, 0x19, 0xD1, 0x60,  // .w7T...`
                /* 08A0 */  0x08, 0x08, 0x15, 0xF3, 0xA8, 0xD0, 0x50, 0xC9,  // ......P.
                /* 08A8 */  0x83, 0x22, 0x08, 0x91, 0x0F, 0x42, 0xE3, 0xBD,  // ."...B..
                /* 08B0 */  0x04, 0x34, 0x54, 0xF2, 0x21, 0xD0, 0x60, 0xC8,  // .4T.!.`.
                /* 08B8 */  0x1B, 0x47, 0x20, 0x96, 0xFC, 0x4A, 0xD3, 0x50,  // .G ..J.P
                /* 08C0 */  0xC9, 0x43, 0x41, 0x20, 0x0E, 0x09, 0x42, 0x45,  // .CA ..BE
                /* 08C8 */  0xBC, 0x72, 0x82, 0x90, 0xF0, 0xCF, 0x8B, 0x20,  // .r..... 
                /* 08D0 */  0x44, 0xBA, 0xD1, 0x41, 0xD0, 0xE7, 0xC5, 0x83,  // D..A....
                /* 08D8 */  0x01, 0xB3, 0x0A, 0xC2, 0x04, 0x69, 0x1D, 0x36,  // .....i.6
                /* 08E0 */  0x7D, 0x28, 0x14, 0xF0, 0x15, 0xD0, 0xE1, 0x20,  // }(..... 
                /* 08E8 */  0x88, 0x80, 0x2C, 0xD2, 0xED, 0x80, 0x29, 0x08,  // ..,...).
                /* 08F0 */  0x15, 0x63, 0x17, 0x90, 0x49, 0x03, 0x11, 0x90,  // .c..I...
                /* 08F8 */  0xE3, 0x0A, 0x06, 0x61, 0x62, 0x5F, 0x14, 0x41,  // ...ab_.A
                /* 0900 */  0x48, 0xAE, 0xE7, 0x51, 0x40, 0x12, 0x12, 0x44,  // H..Q@..D
                /* 0908 */  0xC7, 0x03, 0xF2, 0x84, 0x13, 0x90, 0xC3, 0x81,  // ........
                /* 0910 */  0x08, 0xC8, 0xFF, 0x7F                           // ....
            })
            Method (TSMI, 3, Serialized)
            {
                Store (Arg2, TSCI) /* \TSCI */
                ISMI (Arg1)
            }
        }
    }

    Scope (WMI0)
    {
        Name (WMIP, Zero)
        Method (INIT, 1, NotSerialized)
        {
            Store (One, WMIP) /* \WMI0.WMIP */
            Return (Zero)
        }

        Name (PCDV, Zero)
        Method (WDOG, 1, NotSerialized)
        {
            Return (Zero)
        }

        Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
        {
            Return (Arg0)
        }

        Method (WMIG, 3, Serialized)
        {
            Store (WGFN (Arg0), Local0)
            Store (And (ShiftRight (Local0, 0x10), 0xFFFF), Local1)
            And (Local0, 0xFFFF, Local0)
            If (CWAC (Arg0, Local0, Local1, Arg2))
            {
                Return (Zero)
            }

            WGLN (Arg0, Arg1, Local0, Local1, Arg2)
            OperationRegion (\WMIF, SystemMemory, Arg0, 0x0100)
            Field (WMIF, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                STAS,   8, 
                REST,   8
            }

            If (LNotEqual (LAnd (STAS, One), One))
            {
                Return (Zero)
            }

            Store (0x82, STAS) /* \WMI0.WMIG.STAS */
            Store (One, REST) /* \WMI0.WMIG.REST */
            Return (Zero)
        }

        Method (WGFN, 1, NotSerialized)
        {
            OperationRegion (\PAR, SystemMemory, Arg0, 0x08)
            Field (PAR, DWordAcc, NoLock, Preserve)
            {
                FUNC,   32, 
                Offset (0x06), 
                STAS,   8, 
                EROR,   8
            }

            Store (Zero, EROR) /* \WMI0.WGFN.EROR */
            Store (One, STAS) /* \WMI0.WGFN.STAS */
            Return (FUNC) /* \WMI0.WGFN.FUNC */
        }

        Name (WGSL, Package (0x05)
        {
            0x66, 
            One, 
            0x6A, 
            One, 
            0xFFFFFFFF
        })
        Method (CWAC, 4, NotSerialized)
        {
            Store (Zero, Local0)
            While (One)
            {
                Store (DerefOf (Index (WGSL, Local0)), Local1)
                If (LEqual (Local1, 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                Add (Local0, One, Local0)
                Store (DerefOf (Index (WGSL, Local0)), Local2)
                If (LEqual (Local1, Arg1))
                {
                    If (LEqual (Local2, Arg2))
                    {
                        Break
                    }
                }

                Add (Local0, One, Local0)
            }

            OperationRegion (\WMIC, SystemMemory, Arg0, 0x0100)
            Field (WMIC, DWordAcc, NoLock, Preserve)
            {
                Offset (0x07), 
                REST,   8
            }

            Store (Arg3, WMIS) /* \WMIS */
            ISMI (0xDE)
            Return (REST) /* \WMI0.CWAC.REST */
        }
    }

    Scope (WMI0)
    {
        Method (WGLN, 5, NotSerialized)
        {
            MF62 (Arg0, Arg1, Arg2, Arg3, Arg4)
            MF64 (Arg0, Arg1, Arg2, Arg3, Arg4)
            WFLH (Arg0, Arg1, Arg2, Arg3, Arg4)
            MF21 (Arg0, Arg1, Arg2, Arg3, Arg4)
            MF1F (Arg0, Arg1, Arg2, Arg3, Arg4)
            MF1X (Arg0, Arg1, Arg2, Arg3, Arg4)
        }
    }

    Scope (WMI0)
    {
        Method (MF62, 5, NotSerialized)
        {
            If (LNotEqual (Arg2, 0x62))
            {
                Return (Zero)
            }

            OperationRegion (FM62, SystemMemory, Arg0, 0x08)
            Field (FM62, DWordAcc, NoLock, Preserve)
            {
                MFUN,   16, 
                SFUN,   16, 
                LEN,    16, 
                SM62,   8, 
                EM62,   8
            }

            If (LEqual (Arg3, One))
            {
                M621 (Arg4)
            }
            Else
            {
                Store (One, EM62) /* \WMI0.MF62.EM62 */
            }

            If (LEqual (EM62, Zero))
            {
                Store (0x80, SM62) /* \WMI0.MF62.SM62 */
            }
            Else
            {
                Store (0x82, SM62) /* \WMI0.MF62.SM62 */
            }

            Return (Zero)
        }

        Method (M621, 1, NotSerialized)
        {
            WSMI (Arg0)
        }
    }

    Scope (WMI0)
    {
        Method (MF63, 5, NotSerialized)
        {
            If (LNotEqual (Arg2, 0x63))
            {
                Return (Zero)
            }

            OperationRegion (FM63, SystemMemory, Arg0, 0x08)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8
            }

            If (LEqual (Arg3, 0x02))
            {
                M632 (Arg0, Arg4)
            }
            Else
            {
                Store (One, EM63) /* \WMI0.MF63.EM63 */
            }

            If (LEqual (EM63, Zero))
            {
                Store (0x80, SM63) /* \WMI0.MF63.SM63 */
            }
            Else
            {
                Store (0x82, SM63) /* \WMI0.MF63.SM63 */
            }

            Return (Zero)
        }

        Method (M632, 2, NotSerialized)
        {
            OperationRegion (FM63, SystemMemory, Arg0, 0x10)
            Field (FM63, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                DEVS,   8, 
                DEVT,   16
            }

            If (LEqual (DEVS, Zero))
            {
                WSMI (Arg1)
            }
            ElseIf (LEqual (DEVS, One))
            {
                WSMI (Arg1)
            }
            ElseIf (LEqual (DEVS, 0x02))
            {
                WSMI (Arg1)
            }
            Else
            {
                Store (One, EM63) /* \WMI0.M632.EM63 */
            }
        }
    }

    Scope (WMI0)
    {
        Method (MF64, 5, NotSerialized)
        {
            If (LNotEqual (Arg2, 0x64))
            {
                Return (Zero)
            }

            WSMI (Arg4)
            Return (Zero)
        }
    }

    Scope (WMI0)
    {
        Method (MF21, 5, NotSerialized)
        {
            If (LNotEqual (Arg2, 0x21))
            {
                Return (Zero)
            }

            OperationRegion (FM21, SystemMemory, Arg0, 0x08)
            Field (FM21, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM21,   8, 
                EM21,   8
            }

            If (LEqual (Arg3, 0x32))
            {
                WVLZ (Arg0)
            }
            Else
            {
                Store (One, EM21) /* \WMI0.MF21.EM21 */
            }

            If (LEqual (EM21, Zero))
            {
                Store (0x80, SM21) /* \WMI0.MF21.SM21 */
            }
            Else
            {
                Store (0x82, SM21) /* \WMI0.MF21.SM21 */
            }

            Return (Zero)
        }

        Method (GVA0, 1, NotSerialized)
        {
            OperationRegion (\GV0X, SystemMemory, Arg0, 0x20)
            Field (GV0X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Return (VAG0) /* \WMI0.GVA0.VAG0 */
        }

        Method (GVA1, 1, NotSerialized)
        {
            OperationRegion (\GV1X, SystemMemory, Arg0, 0x20)
            Field (GV1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Return (VAG1) /* \WMI0.GVA1.VAG1 */
        }

        Method (GVA2, 1, NotSerialized)
        {
            OperationRegion (\GV2X, SystemMemory, Arg0, 0x20)
            Field (GV2X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Return (VAG2) /* \WMI0.GVA2.VAG2 */
        }

        Method (GVA3, 1, NotSerialized)
        {
            OperationRegion (\GV3X, SystemMemory, Arg0, 0x20)
            Field (GV3X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Return (VAG3) /* \WMI0.GVA3.VAG3 */
        }

        Method (GVA4, 1, NotSerialized)
        {
            OperationRegion (\GV4X, SystemMemory, Arg0, 0x20)
            Field (GV4X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Return (VAG4) /* \WMI0.GVA4.VAG4 */
        }

        Method (GVA5, 1, NotSerialized)
        {
            OperationRegion (\GV5X, SystemMemory, Arg0, 0x20)
            Field (GV5X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Return (VAG5) /* \WMI0.GVA5.VAG5 */
        }

        Method (SVA0, 2, NotSerialized)
        {
            OperationRegion (\SV0X, SystemMemory, Arg0, 0x20)
            Field (SV0X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Store (Arg1, VAG0) /* \WMI0.SVA0.VAG0 */
        }

        Method (SVA1, 2, NotSerialized)
        {
            OperationRegion (\SV1X, SystemMemory, Arg0, 0x20)
            Field (SV1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Store (Arg1, VAG1) /* \WMI0.SVA1.VAG1 */
        }

        Method (SVA2, 2, NotSerialized)
        {
            OperationRegion (\SV2X, SystemMemory, Arg0, 0x20)
            Field (SV2X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Store (Arg1, VAG2) /* \WMI0.SVA2.VAG2 */
        }

        Method (SVA3, 2, NotSerialized)
        {
            OperationRegion (\SV3X, SystemMemory, Arg0, 0x20)
            Field (SV3X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Store (Arg1, VAG3) /* \WMI0.SVA3.VAG3 */
        }

        Method (SVA4, 2, NotSerialized)
        {
            OperationRegion (\SV4X, SystemMemory, Arg0, 0x20)
            Field (SV4X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Store (Arg1, VAG4) /* \WMI0.SVA4.VAG4 */
        }

        Method (SVA5, 2, NotSerialized)
        {
            OperationRegion (\SV5X, SystemMemory, Arg0, 0x20)
            Field (SV5X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                VAG0,   32, 
                VAG1,   32, 
                VAG2,   32, 
                VAG3,   32, 
                VAG4,   32, 
                VAG5,   32
            }

            Store (Arg1, VAG5) /* \WMI0.SVA5.VAG5 */
        }

        Method (WVLZ, 1, Serialized)
        {
            Store (GVA0 (Arg0), Local0)
            Store (GVA1 (Arg0), Local1)
            Store (GVA2 (Arg0), Local2)
            Store (GVA3 (Arg0), Local3)
            Store (GVA4 (Arg0), Local4)
            Store (GVA5 (Arg0), Local5)
            Store (\_SB.VALZ.SPFC (Local0, Local1, Local2, Local3, Local4, Local5), Local6)
            SVA0 (Arg0, DerefOf (Index (Local6, Zero)))
            SVA1 (Arg0, DerefOf (Index (Local6, One)))
            SVA2 (Arg0, DerefOf (Index (Local6, 0x02)))
            SVA3 (Arg0, DerefOf (Index (Local6, 0x03)))
            SVA4 (Arg0, DerefOf (Index (Local6, 0x04)))
            SVA5 (Arg0, DerefOf (Index (Local6, 0x05)))
            Return (Zero)
        }
    }

    Scope (WMI0)
    {
        Method (MF1F, 5, NotSerialized)
        {
            If (LEqual (Arg2, 0x1F))
            {
                OperationRegion (F01F, SystemMemory, Arg0, 0x08)
                Field (F01F, DWordAcc, NoLock, Preserve)
                {
                    MFUN,   16, 
                    SFUN,   16, 
                    LEN,    16, 
                    STAS,   8, 
                    EROR,   8
                }

                WSMI (Arg4)
                And (STAS, 0xFE, STAS) /* \WMI0.MF1F.STAS */
            }
        }
    }

    Scope (WMI0)
    {
        Method (MF1X, 5, NotSerialized)
        {
            If (LNotEqual (And (Arg2, 0xF0), 0x10))
            {
                Return (Zero)
            }

            If (LEqual (Arg2, 0x1F))
            {
                Return (Zero)
            }

            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            If (LEqual (Arg2, 0x10))
            {
                MF10 (Arg0, Arg3)
            }
            ElseIf (LEqual (Arg2, 0x11))
            {
                MF11 (Arg0, Arg3, Arg4)
            }
            ElseIf (LEqual (Arg2, 0x16))
            {
                MF16 (Arg0, Arg3, Arg4)
            }
            ElseIf (LEqual (Arg2, 0x17))
            {
                MF17 (Arg0, Arg3, Arg4)
            }
            Else
            {
                Store (One, EM1X) /* \WMI0.MF1X.EM1X */
            }

            If (LEqual (EM1X, Zero))
            {
                Store (0x80, SM1X) /* \WMI0.MF1X.SM1X */
            }
            Else
            {
                Store (0x82, SM1X) /* \WMI0.MF1X.SM1X */
            }

            Return (Zero)
        }

        Method (MF10, 2, NotSerialized)
        {
            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            If (LEqual (Arg1, Zero))
            {
                G10V (Arg0)
            }
            ElseIf (LEqual (Arg1, One))
            {
                SRTC (Arg0)
            }
            Else
            {
                Store (One, EM1X) /* \WMI0.MF10.EM1X */
            }
        }

        Method (G10V, 1, NotSerialized)
        {
            OperationRegion (\F100, SystemMemory, Arg0, 0x10)
            Field (F100, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER) /* \WMI0.G10V.MVER */
            Store (Zero, SVER) /* \WMI0.G10V.SVER */
        }

        Method (SRTC, 1, NotSerialized)
        {
            OperationRegion (\F101, SystemMemory, Arg0, 0x10)
            Field (F101, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DLTM,   16
            }

            And (DLTM, 0xFF, DLTM) /* \WMI0.SRTC.DLTM */
            \_SB.I2C1.BATC.ECRS (DLTM)
        }

        Method (MF11, 3, NotSerialized)
        {
            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            If (LEqual (Arg1, 0x02))
            {
                ASBR (Arg0)
            }
            Else
            {
                Store (One, EM1X) /* \WMI0.MF11.EM1X */
            }
        }

        Method (ASBR, 1, Serialized)
        {
            OperationRegion (\F112, SystemMemory, Arg0, 0x10)
            Field (F112, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8, 
                BATN,   8, 
                ACCT,   8, 
                REGN,   8, 
                RDAT,   16
            }

            If (LNotEqual (BATN, Zero))
            {
                Store (0x11, EM1X) /* \WMI0.ASBR.EM1X */
            }
            ElseIf (LEqual (ACCT, One))
            {
                Store (0x10, EM1X) /* \WMI0.ASBR.EM1X */
            }
            ElseIf (LNotEqual (\_SB.I2C1.AVBL, One))
            {
                Store (0x20, EM1X) /* \WMI0.ASBR.EM1X */
            }
            Else
            {
                Switch (REGN)
                {
                    Case (0x08)
                    {
                        Store (\_SB.I2C1.BATC.ECR1 (\_SB.I2C1.BB06), Local0)
                    }
                    Case (0x09)
                    {
                        Store (\_SB.I2C1.BATC.ECR1 (\_SB.I2C1.BB08), Local0)
                    }
                    Case (0x0B)
                    {
                        Store (\_SB.I2C1.BATC.ECR1 (\_SB.I2C1.BB14), Local0)
                    }
                    Case (0x0D)
                    {
                        Store (\_SB.I2C1.BATC.PSOC (), Local0)
                    }
                    Case (0x0F)
                    {
                        Store (\_SB.I2C1.BATC.ECR1 (\_SB.I2C1.BB10), Local0)
                    }
                    Case (0x10)
                    {
                        Store (\_SB.I2C1.BATC.ECR1 (\_SB.I2C1.BB12), Local0)
                    }
                    Case (0x17)
                    {
                        Store (\_SB.I2C1.BATC.ECR1 (\_SB.I2C1.BB2A), Local0)
                    }
                    Default
                    {
                        Store (Zero, Local0)
                    }

                }

                And (Local0, 0xFF00, Local1)
                ShiftRight (Local1, 0x08, Local2)
                And (Local0, 0xFF, Local1)
                ShiftLeft (Local1, 0x08, Local3)
                Store (Add (Local3, Local2), Local0)
                Store (Local0, RDAT) /* \WMI0.ASBR.RDAT */
            }
        }

        Method (MF16, 3, NotSerialized)
        {
            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            If (LEqual (Arg1, 0x02))
            {
                WSMI (Arg2)
            }
            Else
            {
                Store (One, EM1X) /* \WMI0.MF16.EM1X */
            }
        }

        Method (MF17, 3, NotSerialized)
        {
            OperationRegion (FM1X, SystemMemory, Arg0, 0x08)
            Field (FM1X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8
            }

            If (LEqual (Arg1, Zero))
            {
                G17V (Arg0)
            }
            ElseIf (LEqual (Arg1, 0x03))
            {
                WSMI (Arg2)
            }
            Else
            {
                Store (One, EM1X) /* \WMI0.MF17.EM1X */
            }
        }

        Method (G17V, 1, NotSerialized)
        {
            OperationRegion (\F170, SystemMemory, Arg0, 0x10)
            Field (F170, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                SVER,   16, 
                MVER,   16
            }

            Store (Zero, MVER) /* \WMI0.G17V.MVER */
            Store (Zero, SVER) /* \WMI0.G17V.SVER */
        }
    }

    Scope (WMI0)
    {
        Method (FSMI, 1, NotSerialized)
        {
            Store (Arg0, FSFN) /* \FSFN */
            Or (Arg0, 0xA0, Local0)
            ISMI (0xDC)
            Return (FSTA) /* \FSTA */
        }

        Method (WFLH, 5, Serialized)
        {
            If (LEqual (Arg2, 0x66))
            {
                If (LEqual (Arg3, One))
                {
                    OperationRegion (\WFLS, SystemMemory, Arg0, 0x0100)
                    Field (WFLS, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x06), 
                        STAS,   8, 
                        REST,   8, 
                        FSFN,   8, 
                        FSTA,   16, 
                        FADR,   32, 
                        FSIZ,   16
                    }

                    And (STAS, 0xFE, STAS) /* \WMI0.WFLH.STAS */
                    Or (STAS, 0x80, STAS) /* \WMI0.WFLH.STAS */
                    Store (0xDC, TRTY) /* \TRTY */
                    Store (FSFN, \FSFN)
                    Store (FSTA, \FSTA)
                    Store (FADR, \FADR)
                    Store (FSIZ, \FSIZ)
                    If (LEqual (FSFN, One))
                    {
                        Store (Arg1, \FADR)
                    }
                    ElseIf (LEqual (FSFN, 0x80))
                    {
                        Store (Arg1, FADR) /* \WMI0.WFLH.FADR */
                        Store (0x012C, Local0)
                        While (LAnd (Local0, TRTY))
                        {
                            Sleep (One)
                            Decrement (Local0)
                        }
                    }

                    ISMI (0xDC)
                    Store (\FSFN, FSFN) /* \WMI0.WFLH.FSFN */
                    Store (\FSTA, FSTA) /* \WMI0.WFLH.FSTA */
                    Store (\FADR, FADR) /* \WMI0.WFLH.FADR */
                    Store (\FSIZ, FSIZ) /* \WMI0.WFLH.FSIZ */
                    And (STAS, 0xFE, STAS) /* \WMI0.WFLH.STAS */
                    Or (STAS, 0x80, STAS) /* \WMI0.WFLH.STAS */
                }
                Else
                {
                    WSMI (Arg4)
                }
            }
        }
    }

    Scope (_SB)
    {
        OperationRegion (PSMI, SystemIO, 0xB2, 0x02)
        Field (PSMI, ByteAcc, NoLock, Preserve)
        {
            APMC,   8
        }

        Mutex (LSMI, 0x00)
        Method (HSMI, 1, NotSerialized)
        {
            Acquire (LSMI, 0xFFFF)
            Store (Arg0, OAFN) /* \OAFN */
            Store (0xC6, APMC) /* \_SB_.APMC */
            Stall (0xFF)
            Stall (0xFF)
            Stall (0xFF)
            Stall (0xFF)
            Stall (0xFF)
            Stall (0xFF)
            Release (LSMI)
        }

        Device (VALZ)
        {
            Name (_HID, EisaId ("TOS1900"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Store (Zero, PLOG) /* \PLOG */
                Return (0x0B)
            }

            Name (_DDN, "VALZeneral")  // _DDN: DOS Device Name
            Name (HKEV, 0x0B)
            Name (HKNT, Zero)
            Name (OSMD, Zero)
            Name (ENFG, Zero)
            Mutex (MUEV, 0x00)
            Name (EVCT, Zero)
            Name (EVCD, Package (0x64){})
            Name (RETP, Package (0x06){})
            Name (USFN, Package (0x06)
            {
                0x8000, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (NULP, Package (0x06)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (BRIL, Zero)
            Name (STA5, Zero)
            Name (BSY5, Zero)
            Name (BATV, Zero)
            Name (CRFR, Zero)
            Name (FADR, Zero)
            Name (ST06, Zero)
            Name (ST08, Zero)
            Name (ST09, Zero)
            Name (ST10, Zero)
            Name (ST11, Zero)
            Name (ST12, Zero)
            Name (ST16, Zero)
            Name (CNT1, Zero)
            Name (CNT2, Zero)
            Name (CNT3, Zero)
            Name (CNT4, Zero)
            Name (CNT5, Zero)
            Name (BACR, Zero)
            Name (BATP, Zero)
            Name (REFM, 0x10)
            Name (TIMC, Zero)
            Name (GCV1, Zero)
            Name (ACAV, Zero)
            Name (ACAC, Zero)
            Name (GCV2, Zero)
            Name (GBS1, Zero)
            Name (GBS2, Zero)
            Name (GBS3, Zero)
            Name (GBS4, Zero)
            Name (GBS5, Zero)
            Name (CTOV, Zero)
            Name (CTO1, Zero)
            Name (PCCF, Zero)
            Name (CTPN, Buffer (0x0C){})
            Name (NNAM, Buffer (0x0C){})
            Name (MDAT, Buffer (0x02){})
            Name (SNUM, Buffer (0x02){})
            Name (TST0, Package (0x06)
            {
                Buffer (0x1C){}, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (TST1, Package (0x06)
            {
                "0000000000000000000000000000", 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (HMBB, Buffer (0x1C){})
            Name (HMTP, Buffer (0x1C){})
            Name (CYCT, Zero)
            Name (EVCS, Zero)
            Name (HPCS, Zero)
            Name (TEMP, Zero)
            Name (INDX, 0xFF)
            Name (LCDS, One)
            Name (LLCD, Zero)
            Name (FRST, One)
            Name (MSRV, Zero)
            Name (AVR0, Zero)
            Name (AVR1, Zero)
            Name (AVR2, Zero)
            Name (AVR3, Zero)
            Name (AVR4, Zero)
            Name (AVR5, Zero)
            Name (AVR6, Zero)
            Name (AVR7, Zero)
            Name (AVR8, Zero)
            Name (AVR9, Zero)
            Name (AV10, Zero)
            Name (AV11, Zero)
            Name (AV12, Zero)
            Name (AV13, Zero)
            Name (AV14, Zero)
            Name (AV15, Zero)
            Name (ISFT, One)
            Name (ISAC, Zero)
            Name (ISDC, Zero)
            Name (ENLE, Zero)
            Name (USCF, Zero)
            Name (UDT1, Zero)
            Name (UDT2, Zero)
            Name (SCPT, Zero)
            Name (BLIM, 0x0A)
            Name (BSCF, 0x04)
            Name (UPSW, One)
            Name (STMD, Zero)
            Name (CMMD, Zero)
            Name (PSMD, Zero)
            Name (IMMD, Zero)
            Name (IPMD, Zero)
            Name (RLMD, Zero)
            Name (STMP, Zero)
            Name (OA30, Buffer (0x34){})
            CreateField (OA30, Zero, 0x20, OA01)
            CreateField (OA30, 0x20, 0x20, OA02)
            CreateField (OA30, 0x40, 0x20, OA03)
            CreateField (OA30, 0x60, 0x20, OA04)
            CreateField (OA30, 0x80, 0x20, OA05)
            CreateField (OA30, 0xA0, 0x20, OA06)
            CreateField (OA30, 0xC0, 0x20, OA07)
            CreateField (OA30, 0xE0, 0x20, OA08)
            CreateField (OA30, 0x0100, 0x20, OA09)
            CreateField (OA30, 0x0120, 0x20, OA0A)
            CreateField (OA30, 0x0140, 0x20, OA0B)
            CreateField (OA30, 0x0160, 0x20, OA0C)
            CreateField (OA30, 0x0180, 0x20, OA0D)
            Name (PKFG, Zero)
            Name (STTD, Zero)
            Name (STTH, Zero)
            Name (STTM, Zero)
            Name (STTS, Zero)
            Name (STPD, Zero)
            Name (STPH, Zero)
            Name (STPM, Zero)
            Name (STPS, Zero)
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
            }

            Method (VWAK, 1, Serialized)
            {
            }

            Method (VPTS, 1, Serialized)
            {
            }

            Method (ENAB, 0, Serialized)
            {
                Store (One, ENFG) /* \_SB_.VALZ.ENFG */
            }

            Method (PCTP, 1, Serialized)
            {
            }

            Method (PCAR, 1, Serialized)
            {
            }

            Method (PCAP, 1, Serialized)
            {
            }

            Method (T2SC, 3, Serialized)
            {
                Multiply (Arg0, 0x3C, Local0)
                Add (Local0, Arg1, Local0)
                Multiply (Local0, 0x3C, Local0)
                Add (Local0, Arg2, Local0)
                Return (Local0)
            }

            Method (SPFC, 6, Serialized)
            {
                Store (One, OSMD) /* \_SB_.VALZ.OSMD */
                CopyObject (NULP, RETP) /* \_SB_.VALZ.RETP */
                If (LEqual (CMST (Arg0, Arg1, Arg2, Arg3, Arg4, Arg5), Zero))
                {
                    Return (USFN) /* \_SB_.VALZ.USFN */
                }

                Store (Zero, Local0)
                Store (Zero, Local1)
                Store (Zero, Local2)
                Store (Zero, Local3)
                If (ISFT)
                {
                    PINT ()
                    Store (Zero, ISFT) /* \_SB_.VALZ.ISFT */
                }

                If (LEqual (ToInteger (Arg1), 0x010D)){}
                If (LEqual (ToInteger (Arg1), 0x010E)){}
                If (LEqual (ToInteger (Arg1), 0x010F))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Store (Zero, Index (RETP, Zero))
                        Store (0x8004, Index (RETP, One))
                        Store (0x3C, Index (RETP, 0x02))
                        Store (0x3C, Index (RETP, 0x03))
                        Store (0x3C, Index (RETP, 0x04))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        ^^I2C1.BATC.ECRS (0x3C)
                        Return (NULP) /* \_SB_.VALZ.NULP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0130)){}
                If (LEqual (ToInteger (Arg1), 0x0137)){}
                If (LEqual (ToInteger (Arg1), 0x014E))
                {
                    If (LAnd (LAnd (LEqual (ToInteger (Arg0), 0xF300), LEqual (ToInteger (Arg2), 
                        Zero)), LEqual (ToInteger (Arg3), Zero))){}
                    If (LAnd (LEqual (ToInteger (Arg0), 0xF400), LEqual (ToInteger (Arg3), Zero))){}
                }

                If (LEqual (ToInteger (Arg1), 0x0157)){}
                If (LEqual (ToInteger (Arg1), 0x015C)){}
                If (LEqual (ToInteger (Arg1), 0x015D)){}
                If (LEqual (ToInteger (Arg1), 0x0167)){}
                If (LEqual (ToInteger (Arg1), 0x0169)){}
                If (LEqual (ToInteger (Arg1), 0x016B)){}
                If (LEqual (ToInteger (Arg1), 0x0300)){}
                If (LEqual (ToInteger (Arg1), 0x0406)){}
                If (LEqual (ToInteger (Arg1), 0x050C)){}
                If (LEqual (ToInteger (Arg1), 0x050E)){}
                If (LEqual (ToInteger (Arg1), 0x0522))
                {
                    If (LNotEqual (ToInteger (Arg3), Zero))
                    {
                        Store (0x8300, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LOr (LNotEqual (ToInteger (Arg4), Zero), LNotEqual (ToInteger (Arg5
                        ), Zero)))
                    {
                        Store (0x8300, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        \WMI0.TSMI (One, 0x90, 0x0522)
                        Store (One, Index (RETP, Zero))
                        Store (Zero, Index (RETP, One))
                        Store (DAX0, Index (RETP, 0x02))
                        Store (DAX1, Index (RETP, 0x04))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Store (ToInteger (Arg2), DAX0) /* \DAX0 */
                        \WMI0.TSMI (One, 0x91, 0x0522)
                        Store (One, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0700)){}
                If (LEqual (ToInteger (Arg1), 0x0705))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Store (0x8000, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Store (0x8000, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x11)){}
                If (LEqual (ToInteger (Arg1), 0x1E))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, Zero))
                        Store (HKEV, Index (RETP, 0x02))
                        Store (HKNT, Index (RETP, 0x03))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LEqual (ToInteger (Arg0), 0xFF00))
                    {
                        If (LGreater (ToInteger (Arg3), One))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (ToInteger (Arg2), HKEV) /* \_SB_.VALZ.HKEV */
                        Store (ToInteger (Arg3), HKNT) /* \_SB_.VALZ.HKNT */
                        Return (NULP) /* \_SB_.VALZ.NULP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x2A))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        Store (Zero, Index (RETP, Zero))
                        GBNL ()
                        Store (BRIL, Index (RETP, 0x02))
                        Store (0x07, Local0)
                        ShiftLeft (Local0, 0x0D, Local0)
                        Store (Local0, Index (RETP, 0x03))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x42))
                {
                    If (LEqual (ToInteger (Arg0), 0xFF00))
                    {
                        If (LEqual (ToInteger (Arg2), One))
                        {
                            Store (One, REFM) /* \_SB_.VALZ.REFM */
                            Store (Zero, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LEqual (ToInteger (Arg2), 0x10))
                        {
                            Store (0x10, REFM) /* \_SB_.VALZ.REFM */
                            Store (Zero, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (0x8300, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x47))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, 0x02))
                        Store (Zero, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LEqual (ToInteger (Arg0), 0xFF00))
                    {
                        If (LEqual (ToInteger (Arg2), 0x5A00))
                        {
                            If (LNotEqual (ToInteger (Arg3), Zero))
                            {
                                Store (0x8000, Index (RETP, Zero))
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }

                            If (LNotEqual (ToInteger (Arg4), Zero))
                            {
                                Store (0x8000, Index (RETP, Zero))
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }

                            If (LNotEqual (ToInteger (Arg5), Zero))
                            {
                                Store (0x8000, Index (RETP, Zero))
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }

                            Store (Zero, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x56))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        If (LEqual (ToInteger (Arg3), One))
                        {
                            Store (Zero, Local0)
                            If (And (^^GPO1.WFD3, One))
                            {
                                Store (0x0200, Local0)
                            }

                            Store (Zero, Index (RETP, Zero))
                            Store (Local0, Index (RETP, 0x02))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }
                        Else
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Store (Zero, Index (RETP, 0x02))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }
                    }

                    If (LEqual (ToInteger (Arg0), 0xFF00))
                    {
                        If (LEqual (ToInteger (Arg3), 0x0200))
                        {
                            If (LEqual (ToInteger (Arg2), One))
                            {
                                Store (One, ^^GPO1.WFD3) /* \_SB_.GPO1.WFD3 */
                            }
                            Else
                            {
                                Store (Zero, ^^GPO1.WFD3) /* \_SB_.GPO1.WFD3 */
                            }

                            Return (NULP) /* \_SB_.VALZ.NULP */
                        }

                        Store (0x8300, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x5A)){}
                If (LEqual (ToInteger (Arg1), 0x62))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        Store (Zero, Index (RETP, Zero))
                        Store (Zero, Index (RETP, One))
                        Store (Zero, Index (RETP, 0x02))
                        Store (0x21, Index (RETP, 0x03))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x67)){}
                If (LEqual (ToInteger (Arg1), 0x7F)){}
                If (LEqual (ToInteger (Arg1), 0x8C))
                {
                    If (LAnd (LAnd (LEqual (ToInteger (Arg0), 0xFE00), LEqual (ToInteger (Arg2), 
                        Zero)), LEqual (ToInteger (Arg3), Zero)))
                    {
                        Return (NULP) /* \_SB_.VALZ.NULP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFF00), LEqual (ToInteger (Arg3), Zero)))
                    {
                        If (LEqual (And (ToInteger (Arg2), One), Zero)){}
                        Else
                        {
                        }

                        If (LEqual (And (ToInteger (Arg2), 0x02), Zero)){}
                        Else
                        {
                        }

                        Return (NULP) /* \_SB_.VALZ.NULP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x92))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        Store (ToInteger (Arg2), Local0)
                        If (LEqual (And (Local0, 0xFF00), Zero))
                        {
                            If (LEqual (And (Local0, 0xFF), Zero))
                            {
                                Store (Zero, Local2)
                                Store (Zero, BULS) /* \BULS */
                                Store (ToInteger (Arg3), BULA) /* \BULA */
                                While (LLess (Local2, 0x20))
                                {
                                    Store (Local2, BULI) /* \BULI */
                                    \WMI0.TSMI (One, 0x90, 0x92)
                                    If (BULS)
                                    {
                                        Break
                                    }

                                    Increment (Local2)
                                }

                                Store (BULS, Index (RETP, Zero))
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }

                            If (LEqual (And (Local0, 0xFF), One))
                            {
                                Store (0x00020000, Local1)
                                Divide (Local1, 0x1000, Local4, Local1)
                                Store (Local1, Index (RETP, 0x02))
                                And (SKUI, 0x10, Local5)
                                If (LGreater (Local5, One))
                                {
                                    Store (0x0320, Local2)
                                    Store (0x0500, Local3)
                                }
                                Else
                                {
                                    Store (0x0500, Local2)
                                    Store (0x0320, Local3)
                                }

                                Multiply (Local2, 0x28, Local2)
                                Divide (Local2, 0x64, Local4, Local2)
                                Multiply (Local3, 0x28, Local3)
                                Divide (Local3, 0x64, Local4, Local3)
                                And (Local2, 0xFFFF, Local2)
                                ShiftLeft (And (Local3, 0xFFFF), 0x10, Local3)
                                Or (Local2, Local3, Local1)
                                Store (Local1, Index (RETP, 0x03))
                                Store (Zero, Index (RETP, Zero))
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }

                            If (LEqual (And (Local0, 0xFF), 0x02))
                            {
                                Store (0xFFD92000, Index (RETP, 0x02))
                                Store (Zero, Index (RETP, Zero))
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }

                            If (LEqual (And (Local0, 0xFF), 0x03))
                            {
                                Store (Zero, Index (RETP, 0x02))
                                Store (Zero, Index (RETP, Zero))
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }
                        }
                    }

                    If (LEqual (ToInteger (Arg0), 0xFF00))
                    {
                        Store (ToInteger (Arg2), Local0)
                        If (LEqual (And (Local0, 0xFF00), Zero))
                        {
                            If (LEqual (And (Local0, 0xFF), Zero))
                            {
                                Store (Zero, Local2)
                                Store (Zero, BULS) /* \BULS */
                                Store (ToInteger (Arg3), BULA) /* \BULA */
                                While (LLess (Local2, 0x20))
                                {
                                    Store (Local2, BULI) /* \BULI */
                                    \WMI0.TSMI (One, 0x91, 0x92)
                                    If (BULS)
                                    {
                                        Break
                                    }

                                    Increment (Local2)
                                }

                                Store (BULS, Index (RETP, Zero))
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }
                        }
                    }

                    Store (0x8300, Index (RETP, Zero))
                    Return (RETP) /* \_SB_.VALZ.RETP */
                }

                If (LEqual (ToInteger (Arg1), 0x95)){}
                If (LEqual (ToInteger (Arg1), 0x96))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        Store (Zero, Index (RETP, Zero))
                        Store (0xFF40, Index (RETP, 0x02))
                        Store (GMID (), Index (RETP, 0x03))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x9D))
                {
                    If (LEqual (ToInteger (Arg0), 0xFF00))
                    {
                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LOr (LEqual (ToInteger (Arg2), Zero), LEqual (ToInteger (Arg2), One)))
                        {
                            Store (Zero, Index (RETP, Zero))
                            Store (ToInteger (Arg2), HPCS) /* \_SB_.VALZ.HPCS */
                        }
                        Else
                        {
                            Store (0x8300, Index (RETP, Zero))
                        }

                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x9F))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        If (LEqual (ToInteger (Arg2), Zero))
                        {
                            Store (Zero, Index (RETP, Zero))
                            \WMI0.TSMI (One, 0x90, 0x9F)
                            Store (DAX0, Index (RETP, 0x03))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LEqual (ToInteger (Arg2), 0xFFFF))
                        {
                            Store (Zero, Index (RETP, Zero))
                            Store (0x0200, Index (RETP, 0x03))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (0x8300, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LEqual (ToInteger (Arg0), 0xFF00))
                    {
                        If (LEqual (ToInteger (Arg2), Zero))
                        {
                            Store (ToInteger (Arg3), Local0)
                            Store (Local0, DAX0) /* \DAX0 */
                            \WMI0.TSMI (One, 0x91, 0x9F)
                            Store (Zero, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }
                        Else
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }
                    }
                }

                If (LEqual (ToInteger (Arg1), 0xA0)){}
                If (LEqual (ToInteger (Arg1), 0xA1))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        If (LAnd (LNotEqual (ToInteger (Arg5), Zero), LNotEqual (ToInteger (Arg5
                            ), One)))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LEqual (ToInteger (Arg2), 0x02))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LEqual (ToInteger (Arg5), Zero))
                        {
                            Store (Zero, Index (RETP, Zero))
                            Store (One, STA5) /* \_SB_.VALZ.STA5 */
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LEqual (ToInteger (Arg5), One))
                        {
                            If (LEqual (STA5, Zero))
                            {
                                Store (0x8D50, Index (RETP, Zero))
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }
                            Else
                            {
                                Store (Zero, Index (RETP, Zero))
                                Store (^^I2C1.BATC.BVOL (), Local1)
                                Store (Divide (Local1, 0x64, ), Index (RETP, 0x02))
                                Store (Zero, STA5) /* \_SB_.VALZ.STA5 */
                                Return (RETP) /* \_SB_.VALZ.RETP */
                            }
                        }
                    }
                }

                If (LEqual (ToInteger (Arg1), 0xA2)){}
                If (LEqual (ToInteger (Arg1), 0xA7)){}
                If (LEqual (ToInteger (Arg1), 0xA8)){}
                If (LEqual (ToInteger (Arg1), 0xAA))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        Store (GCR2, Local0)
                        Store (PST2, Local1)
                        Store (Local0, CTOV) /* \_SB_.VALZ.CTOV */
                        Store (Local1, CTO1) /* \_SB_.VALZ.CTO1 */
                        Store (CTOV, Index (RETP, 0x02))
                        Store (CTO1, Index (RETP, 0x03))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0xBA)){}
                If (LEqual (ToInteger (Arg1), 0xD1))
                {
                    If (LEqual (ToInteger (Arg0), 0xFE00))
                    {
                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (ToInteger (Arg2), DAX0) /* \DAX0 */
                        Store (ToInteger (Arg3), DAX1) /* \DAX1 */
                        \WMI0.TSMI (One, 0x90, 0xD1)
                        Store (OAST, Index (RETP, Zero))
                        If (LEqual (OAST, Zero))
                        {
                            If (LEqual (ToInteger (Arg3), Zero))
                            {
                                Store (ToInteger (Arg2), Index (RETP, 0x02))
                                Or (ShiftLeft (DAX1, 0x10), DAX0, Index (RETP, 0x03))
                                Or (ShiftLeft (DAX3, 0x10), DAX2, Index (RETP, 0x04))
                            }

                            If (LEqual (ToInteger (Arg3), One))
                            {
                                Store (DAX0, Index (RETP, 0x02))
                                Store (DAX1, Index (RETP, 0x03))
                            }
                        }

                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LEqual (ToInteger (Arg0), 0xFF00))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (ToInteger (Arg4), Local0)
                        Store (ToInteger (Arg5), Local1)
                        Store (And (Local0, 0xFFFF), DAX0) /* \DAX0 */
                        ShiftRight (Local0, 0x10, DAX1) /* \DAX1 */
                        Store (And (Local1, 0xFFFF), DAX2) /* \DAX2 */
                        ShiftRight (Local1, 0x10, DAX3) /* \DAX3 */
                        \WMI0.TSMI (One, 0x91, 0xD1)
                        Store (OAST, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    Store (0x8300, Index (RETP, Zero))
                    Return (RETP) /* \_SB_.VALZ.RETP */
                }

                If (LEqual (ToInteger (Arg1), 0xC3)){}
                If (LEqual (And (ToInteger (Arg1), 0xFFFF), 0xC5))
                {
                    And (ToInteger (Arg1), 0x00FF0000, Local0)
                    ShiftRight (Local0, 0x10, Local0)
                    And (ToInteger (Arg1), 0xFF000000, Local1)
                    ShiftRight (Local1, 0x18, Local1)
                    If (LAnd (LEqual (ToInteger (Arg0), 0xFE00), LEqual (Local0, Zero)))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, Zero))
                        Store (Zero, Index (RETP, 0x02))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFE00), LEqual (Local0, One)))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        HSMI (Zero)
                        Store (ODMB, OA30) /* \_SB_.VALZ.OA30 */
                        Store (OAST, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFF00), LEqual (Local0, One)))
                    {
                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (OA30, ODMB) /* \ODMB */
                        Store (ToInteger (Arg2), OADK) /* \OADK */
                        HSMI (One)
                        Store (OAST, Index (RETP, Zero))
                        Store (Zero, OADK) /* \OADK */
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFF00), LEqual (Local0, 0x02)))
                    {
                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (ToInteger (Arg2), OADK) /* \OADK */
                        HSMI (0x02)
                        Store (OAST, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFE00), LEqual (Local0, 0x03)))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, Zero))
                        Store (OA01, Index (RETP, 0x02))
                        Store (OA02, Index (RETP, 0x03))
                        Store (OA03, Index (RETP, 0x04))
                        Store (OA04, Index (RETP, 0x05))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFF00), LEqual (Local0, 0x03)))
                    {
                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Arg2, OA01) /* \_SB_.VALZ.OA01 */
                        Store (Arg3, OA02) /* \_SB_.VALZ.OA02 */
                        Store (Arg4, OA03) /* \_SB_.VALZ.OA03 */
                        Store (Arg5, OA04) /* \_SB_.VALZ.OA04 */
                        Store (Zero, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFE00), LEqual (Local0, 0x04)))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, Zero))
                        Store (OA05, Index (RETP, 0x02))
                        Store (OA06, Index (RETP, 0x03))
                        Store (OA07, Index (RETP, 0x04))
                        Store (OA08, Index (RETP, 0x05))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFF00), LEqual (Local0, 0x04)))
                    {
                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, Zero))
                        Store (Arg2, OA05) /* \_SB_.VALZ.OA05 */
                        Store (Arg3, OA06) /* \_SB_.VALZ.OA06 */
                        Store (Arg4, OA07) /* \_SB_.VALZ.OA07 */
                        Store (Arg5, OA08) /* \_SB_.VALZ.OA08 */
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFE00), LEqual (Local0, 0x05)))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, Zero))
                        Store (OA09, Index (RETP, 0x02))
                        Store (OA0A, Index (RETP, 0x03))
                        Store (OA0B, Index (RETP, 0x04))
                        Store (OA0C, Index (RETP, 0x05))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFF00), LEqual (Local0, 0x05)))
                    {
                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, Zero))
                        Store (Arg2, OA09) /* \_SB_.VALZ.OA09 */
                        Store (Arg3, OA0A) /* \_SB_.VALZ.OA0A */
                        Store (Arg4, OA0B) /* \_SB_.VALZ.OA0B */
                        Store (Arg5, OA0C) /* \_SB_.VALZ.OA0C */
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFE00), LEqual (Local0, 0x06)))
                    {
                        If (LNotEqual (ToInteger (Arg2), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, Zero))
                        Store (OA0D, Index (RETP, 0x02))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xFF00), LEqual (Local0, 0x06)))
                    {
                        If (LNotEqual (ToInteger (Arg3), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg4), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (ToInteger (Arg5), Zero))
                        {
                            Store (0x8000, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        If (LNotEqual (Local1, Zero))
                        {
                            Store (0x8300, Index (RETP, Zero))
                            Return (RETP) /* \_SB_.VALZ.RETP */
                        }

                        Store (Zero, Index (RETP, Zero))
                        Store (Arg2, OA0D) /* \_SB_.VALZ.OA0D */
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0xC000)){}
                If (LAnd (LEqual (ToInteger (Arg0), 0xFF00), LEqual (ToInteger (Arg1), 0xC000)))
                {
                    If (LAnd (LEqual (ToInteger (Arg2), Zero), LEqual (ToInteger (Arg3), Zero)))
                    {
                        Store (Zero, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LAnd (LEqual (ToInteger (Arg0), 0xFF00), LEqual (ToInteger (Arg1), 0xC000)))
                {
                    If (LAnd (LEqual (ToInteger (Arg2), Zero), LEqual (ToInteger (Arg3), One)))
                    {
                        Store (Zero, Index (RETP, Zero))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LAnd (LEqual (ToInteger (Arg0), 0xFE00), LEqual (ToInteger (Arg1), 0x75)))
                {
                    Return (NULP) /* \_SB_.VALZ.NULP */
                }

                If (LAnd (LEqual (ToInteger (Arg0), 0xFE00), LEqual (ToInteger (Arg1), 0xC000)))
                {
                    If (LEqual (ToInteger (Arg2), 0x03))
                    {
                        Store (Zero, Local0)
                        ShiftLeft (Local0, 0x04, Local0)
                        Store (Zero, Index (RETP, Zero))
                        Store (Local0, Index (RETP, 0x03))
                        Return (RETP) /* \_SB_.VALZ.RETP */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x011D))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0126))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0129))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0132))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0136))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0138))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x013A))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0142))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0144))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0145))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0146))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x014F))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x015B))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0405))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0501))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0502))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x050D))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                If (LEqual (ToInteger (Arg1), 0x0511))
                {
                    If (LEqual (ToInteger (Arg0), 0xF300))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }

                    If (LEqual (ToInteger (Arg0), 0xF400))
                    {
                        Return (USFN) /* \_SB_.VALZ.USFN */
                    }
                }

                Return (USFN) /* \_SB_.VALZ.USFN */
            }

            Method (TIMR, 0, Serialized)
            {
            }

            Method (PUTE, 1, Serialized)
            {
                If (LEqual (ENFG, Zero))
                {
                    Return (Zero)
                }

                If (LNotEqual (Acquire (MUEV, 0xFFFF), Zero))
                {
                    Return (Zero)
                }

                If (LLess (EVCT, 0x64))
                {
                    Store (Arg0, Index (EVCD, EVCT))
                    Increment (EVCT)
                }

                Release (MUEV)
                And (HKEV, 0x02, Local0)
                If (LEqual (Local0, 0x02))
                {
                    Return (Zero)
                }

                Notify (VALZ, 0x80) // Status Change
                Sleep (0x64)
                Return (Zero)
            }

            Method (GETE, 0, Serialized)
            {
                If (LEqual (ENFG, Zero))
                {
                    Return (Zero)
                }

                If (LNotEqual (Acquire (MUEV, 0xFFFF), Zero))
                {
                    Return (Zero)
                }

                If (LEqual (EVCT, Zero))
                {
                    Release (MUEV)
                    Return (Zero)
                }

                Store (DerefOf (Index (EVCD, Zero)), Local0)
                Store (Zero, Local1)
                While (LLess (Local1, 0x63))
                {
                    Store (DerefOf (Index (EVCD, Add (Local1, One))), Index (EVCD, Local1
                        ))
                    Increment (Local1)
                }

                Decrement (EVCT)
                Release (MUEV)
                If (LNotEqual (EVCT, Zero))
                {
                    And (HKEV, 0x02, Local0)
                    If (LAnd (Local0, 0x02))
                    {
                        Return (Zero)
                    }

                    Notify (VALZ, 0x80) // Status Change
                    Sleep (0x64)
                }

                Return (Local0)
            }

            Method (INFO, 0, Serialized)
            {
                Store (GETE (), Local0)
                Return (Local0)
            }

            Name (MSEN, Zero)
            Method (CMST, 6, NotSerialized)
            {
                If (LEqual (MSEN, Zero))
                {
                    Store (0x02, MSEN) /* \_SB_.VALZ.MSEN */
                }

                If (LEqual (MSEN, One))
                {
                    Return (Ones)
                }
                Else
                {
                    If (LAnd (LEqual (ToInteger (Arg0), 0xF300), LEqual (ToInteger (Arg1), 0x0150)))
                    {
                        Return (Zero)
                    }

                    If (LAnd (LEqual (ToInteger (Arg0), 0xF400), LEqual (ToInteger (Arg1), 0x0150)))
                    {
                        Return (Zero)
                    }
                }

                Return (Ones)
            }

            Method (PINT, 0, NotSerialized)
            {
            }

            Method (GBNL, 0, NotSerialized)
            {
                Store (BRTL, Local1)
                ShiftLeft (Local1, 0x0D, BRIL) /* \_SB_.VALZ.BRIL */
            }

            Method (GPCT, 1, NotSerialized)
            {
            }

            Method (CPCT, 1, NotSerialized)
            {
            }

            Method (MLED, 0, Serialized)
            {
            }

            Method (HMB1, 0, NotSerialized)
            {
                Return (TST0) /* \_SB_.VALZ.TST0 */
            }

            Method (HMB2, 0, NotSerialized)
            {
                Return (TST0) /* \_SB_.VALZ.TST0 */
            }

            Method (GLPS, 0, Serialized)
            {
            }

            Method (GMID, 0, Serialized)
            {
                ShiftRight (SKUI, 0x04, Local0)
                If (LEqual (Local0, One))
                {
                    Return (0x0661)
                }
                Else
                {
                    Return (0x0660)
                }
            }

            Method (HST1, 0, Serialized)
            {
                Return (Zero)
            }

            Method (HST2, 0, Serialized)
            {
                Return (Zero)
            }

            Method (HST3, 0, Serialized)
            {
                Return (Zero)
            }

            Method (HST4, 0, Serialized)
            {
                Return (Zero)
            }

            Method (SMDW, 5, Serialized)
            {
                If (LAnd (LEqual (ToInteger (Arg2), Zero), LEqual (ToInteger (Arg3), Zero)))
                {
                    Store (ToInteger (Arg0), DAX0) /* \DAX0 */
                    Store (ToInteger (Arg1), DAX1) /* \DAX1 */
                    Store (ToBuffer (Arg4), SMDD) /* \SMDD */
                    \WMI0.TSMI (One, 0xD7, One)
                    Store (DAX0, Local0)
                    Return (Local0)
                }
                Else
                {
                    Return (0x8400)
                }
            }
        }

        Scope (\)
        {
            Method (SGPL, 3, Serialized)
            {
                Store (Arg0, Local0)
                Store (Arg1, Local1)
                Store (Arg2, Local3)
                Store (Zero, Local4)
                While (Local1)
                {
                    Store (ShiftLeft (One, Local4), Local2)
                    If (And (Local2, Local3))
                    {
                        SGLV (Local0, One)
                    }
                    Else
                    {
                        SGLV (Local0, Zero)
                    }

                    Increment (Local0)
                    Decrement (Local1)
                    Increment (Local4)
                }
            }

            Method (RGPL, 2, Serialized)
            {
                Store (Arg0, Local0)
                Store (Arg1, Local1)
                Store (Zero, Local3)
                Store (Zero, Local4)
                While (Local1)
                {
                    If (RGLV (Local0))
                    {
                        Or (ShiftLeft (One, Local4), Local3, Local3)
                    }

                    Increment (Local0)
                    Decrement (Local1)
                    Increment (Local4)
                }

                Return (Local3)
            }

            Method (PTET, 0, NotSerialized)
            {
            }

            Method (RGLV, 1, Serialized)
            {
                Return (Zero)
            }

            Method (SGLV, 2, Serialized)
            {
                Return (Zero)
            }

            Method (SWHG, 1, Serialized)
            {
                Return (One)
            }

            Method (OWLD, 1, Serialized)
            {
            }

            Method (OBTD, 1, Serialized)
            {
            }

            Method (OHWR, 0, Serialized)
            {
            }
        }
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
}

