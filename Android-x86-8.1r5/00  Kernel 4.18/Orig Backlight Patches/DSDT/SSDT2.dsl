/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT2.aml, Tue Aug  6 22:06:11 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001C41 (7233)
 *     Revision         0x01
 *     Checksum         0x7E
 *     OEM ID           "INSYDE"
 *     OEM Table ID     "DptfTab"
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "INSYDE", "DptfTab", 0x00000003)
{
    /*
     * iASL Warning: There were 10 external control methods found during
     * disassembly, but only 9 were resolved (1 unresolved). Additional
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
    External (_SB_.ADP1._PSR, MethodObj)    // 0 Arguments
    External (_SB_.DPTF.LPSP, PkgObj)
    External (_SB_.GCR0, IntObj)
    External (_SB_.GCR1, IntObj)
    External (_SB_.GCR2, IntObj)
    External (_SB_.GCR3, IntObj)
    External (_SB_.I2C1, UnknownObj)
    External (_SB_.I2C1.BATC, UnknownObj)
    External (_SB_.I2C1.BATC._BST, MethodObj)    // 0 Arguments
    External (_SB_.I2C1.BATC.ARTG, MethodObj)    // 0 Arguments
    External (_SB_.I2C1.BATC.BCCC, IntObj)
    External (_SB_.I2C1.BATC.BCCE, IntObj)
    External (_SB_.I2C1.BATC.CTYP, MethodObj)    // 0 Arguments
    External (_SB_.I2C1.BATC.PMAX, MethodObj)    // 0 Arguments
    External (_SB_.I2C1.BATC.PSOC, MethodObj)    // 0 Arguments
    External (_SB_.I2C1.BATC.PSRC, MethodObj)    // 0 Arguments
    External (_SB_.I2C5, UnknownObj)
    External (_SB_.I2C5.PMIC, UnknownObj)
    External (_SB_.I2C5.PMIC.AVBD, IntObj)
    External (_SB_.I2C5.PMIC.AVBG, IntObj)
    External (_SB_.I2C5.PMIC.AX00, FieldUnitObj)
    External (_SB_.I2C5.PMIC.AX01, FieldUnitObj)
    External (_SB_.I2C5.PMIC.AX10, FieldUnitObj)
    External (_SB_.I2C5.PMIC.AX11, FieldUnitObj)
    External (_SB_.I2C5.PMIC.AX20, FieldUnitObj)
    External (_SB_.I2C5.PMIC.AX21, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GEN0, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GEN1, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GEN2, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GMP0, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GMP1, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GMP2, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GX00, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GX01, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GX10, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GX11, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GX20, FieldUnitObj)
    External (_SB_.I2C5.PMIC.GX21, FieldUnitObj)
    External (_SB_.I2C5.PMIC.PEN0, FieldUnitObj)
    External (_SB_.I2C5.PMIC.PEN1, FieldUnitObj)
    External (_SB_.I2C5.PMIC.PEN2, FieldUnitObj)
    External (_SB_.I2C5.PMIC.TMP0, FieldUnitObj)
    External (_SB_.I2C5.PMIC.TMP1, FieldUnitObj)
    External (_SB_.I2C5.PMIC.TMP2, FieldUnitObj)
    External (_SB_.PCI0.GFX0.DD01._BCM, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.DD01._BQC, IntObj)
    External (_SB_.PCI0.GFX0.DD01._DCS, MethodObj)    // 0 Arguments
    External (_SB_.PDBG, IntObj)
    External (_SB_.PDBP, IntObj)
    External (_SB_.PSA2, IntObj)
    External (_SB_.PSA3, IntObj)
    External (_SB_.PSC2, IntObj)
    External (_SB_.PSC3, IntObj)
    External (_SB_.PST0, IntObj)
    External (_SB_.PST1, IntObj)
    External (_SB_.PST2, IntObj)
    External (_SB_.PST3, IntObj)
    External (_SB_.TCPU, UnknownObj)
    External (_SB_.VALZ, UnknownObj)
    External (_SB_.VALZ.ENFG, IntObj)
    External (_SB_.VALZ.PUTE, MethodObj)    // 1 Arguments
    External (AMTE, FieldUnitObj)
    External (CHGR, FieldUnitObj)
    External (DDSP, FieldUnitObj)
    External (DPTE, FieldUnitObj)
    External (DSOC, FieldUnitObj)
    External (SCPE, FieldUnitObj)
    External (SKUI, FieldUnitObj)
    External (THM0, FieldUnitObj)
    External (THM1, FieldUnitObj)
    External (THM2, FieldUnitObj)
    External (THM3, FieldUnitObj)
    External (THM4, FieldUnitObj)

    Name (BDLI, 0x1E)
    Name (BDHI, 0x64)
    Scope (\_SB)
    {
        Device (DPTF)
        {
            Name (_HID, EisaId ("INT3400") /* Intel Dynamic Power Performance Management */)  // _HID: Hardware ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C1
            })
            Name (DPSP, Package (0x01)
            {
                ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3")
            })
            Name (DCSP, Package (0x01)
            {
                ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a")
            })
            Name (DCPP, Package (0x01)
            {
                ToUUID ("16caf1b7-dd38-40ed-b1c1-1b8a1913d531")
            })
            Name (DBPP, Package (0x01)
            {
                ToUUID ("64568ccd-6597-4bfc-b9d6-9d33854013ce")
            })
            Name (TMPP, Package (0x05)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Method (IDSP, 0, Serialized)
            {
                Name (TMPI, Zero)
                Store (DerefOf (Index (DPSP, Zero)), Index (TMPP, TMPI))
                Increment (TMPI)
                Store (DerefOf (Index (DCSP, Zero)), Index (TMPP, TMPI))
                Increment (TMPI)
                Store (DerefOf (Index (DCPP, Zero)), Index (TMPP, TMPI))
                Increment (TMPI)
                If (LEqual (PDBP, One))
                {
                    Store (DerefOf (Index (DBPP, Zero)), Index (TMPP, TMPI))
                    Increment (TMPI)
                }

                Store (DerefOf (Index (LPSP, Zero)), Index (TMPP, TMPI))
                Return (TMPP) /* \_SB_.DPTF.TMPP */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (DPTE, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Name (PDRI, Package (0x02)
            {
                Package (0x04)
                {
                    0x64, 
                    \_SB.TCPU, 
                    Zero, 
                    Package (0x02)
                    {
                        0x00010002, 
                        One
                    }
                }, 

                Package (0x04)
                {
                    0x0A, 
                    \_SB.TCPU, 
                    Zero, 
                    Package (0x02)
                    {
                        0x00010002, 
                        Zero
                    }
                }
            })
            Name (PDRA, Package (0x02)
            {
                Package (0x04)
                {
                    0x64, 
                    \_SB.TCPU, 
                    Zero, 
                    Package (0x04)
                    {
                        0x00010000, 
                        0x1F40, 
                        0x00010002, 
                        One
                    }
                }, 

                Package (0x04)
                {
                    0x64, 
                    \_SB.TDSP, 
                    0x0A, 
                    Package (0x02)
                    {
                        0x00050000, 
                        0x64
                    }
                }
            })
            Method (PDRT, 0, NotSerialized)
            {
                If (LEqual (\_SB.ADP1._PSR (), Zero))
                {
                    Return (PDRI) /* \_SB_.DPTF.PDRI */
                }
                Else
                {
                    Return (PDRA) /* \_SB_.DPTF.PDRA */
                }
            }

            Name (ETRM, Package (0x09)
            {
                Package (0x04)
                {
                    \_SB.TCPU, 
                    "INT3401", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.STR0, 
                    "INT3403", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.STR1, 
                    "INT3403", 
                    0x06, 
                    "1"
                }, 

                Package (0x04)
                {
                    \_SB.STR2, 
                    "INT3403", 
                    0x06, 
                    "2"
                }, 

                Package (0x04)
                {
                    \_SB.STR3, 
                    "INT3403", 
                    0x06, 
                    "3"
                }, 

                Package (0x04)
                {
                    \_SB.TDSP, 
                    "INT3406", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.TCHG, 
                    "INT3403", 
                    0x06, 
                    "4"
                }, 

                Package (0x04)
                {
                    \_SB.TPWR, 
                    "INT3407", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.SAMB, 
                    "INT3409", 
                    0x06, 
                    "0"
                }
            })
            Name (TRTI, Package (0x07)
            {
                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.TCPU, 
                    0x64, 
                    0x32, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STR2, 
                    0x64, 
                    0x96, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TDSP, 
                    \_SB.STR2, 
                    0x50, 
                    0x96, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TDSP, 
                    \_SB.STR1, 
                    0x64, 
                    0x012C, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STR1, 
                    0x50, 
                    0x012C, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TDSP, 
                    \_SB.STR0, 
                    0x64, 
                    0x012C, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STR0, 
                    0x50, 
                    0x012C, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }
            })
            Name (TRTA, Package (0x05)
            {
                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.TCPU, 
                    0x64, 
                    0x32, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STR2, 
                    0x64, 
                    0x64, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TDSP, 
                    \_SB.STR2, 
                    0x50, 
                    0x64, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TDSP, 
                    \_SB.STR1, 
                    0x64, 
                    0x96, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STR1, 
                    0x50, 
                    0x96, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }
            })
            Name (TRTS, Package (0x05)
            {
                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.TCPU, 
                    0x64, 
                    0x32, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STR2, 
                    0x64, 
                    0x012C, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TDSP, 
                    \_SB.STR2, 
                    0x5A, 
                    0x012C, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TDSP, 
                    \_SB.STR1, 
                    0x64, 
                    0x96, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STR1, 
                    0x5A, 
                    0x96, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }
            })
            Method (_TRT, 0, NotSerialized)  // _TRT: Thermal Relationship Table
            {
                ShiftRight (SKUI, 0x04, Local0)
                If (LEqual (Local0, One))
                {
                    Return (TRTS) /* \_SB_.DPTF.TRTS */
                }
                Else
                {
                    Return (TRTA) /* \_SB_.DPTF.TRTA */
                }
            }

            Name (TRTR, One)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (NUMP, Zero)
                Name (UID2, Buffer (0x10)
                {
                    /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                    /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF   // ........
                })
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                IDSP ()
                Store (SizeOf (TMPP), NUMP) /* \_SB_.DPTF._OSC.NUMP */
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                CreateDWordField (UID2, Zero, EID0)
                CreateDWordField (UID2, 0x04, EID1)
                CreateDWordField (UID2, 0x08, EID2)
                CreateDWordField (UID2, 0x0C, EID3)
                While (NUMP)
                {
                    Store (DerefOf (Index (TMPP, Subtract (NUMP, One))), UID2) /* \_SB_.DPTF._OSC.UID2 */
                    If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (IID2, 
                        EID2), LEqual (IID3, EID3))))
                    {
                        Break
                    }

                    Decrement (NUMP)
                }

                If (LEqual (NUMP, Zero))
                {
                    And (STS1, 0xFFFFFF00, STS1) /* \_SB_.DPTF._OSC.STS1 */
                    Or (STS1, 0x06, STS1) /* \_SB_.DPTF._OSC.STS1 */
                    Return (Arg3)
                }

                If (LNotEqual (Arg1, One))
                {
                    And (STS1, 0xFFFFFF00, STS1) /* \_SB_.DPTF._OSC.STS1 */
                    Or (STS1, 0x0A, STS1) /* \_SB_.DPTF._OSC.STS1 */
                    Return (Arg3)
                }

                If (LNotEqual (Arg2, 0x02))
                {
                    And (STS1, 0xFFFFFF00, STS1) /* \_SB_.DPTF._OSC.STS1 */
                    Or (STS1, 0x02, STS1) /* \_SB_.DPTF._OSC.STS1 */
                    Return (Arg3)
                }

                Return (Arg3)
            }

            Method (KTOC, 1, NotSerialized)
            {
                If (LGreater (Arg0, 0x0AAC))
                {
                    Subtract (Arg0, 0x0AAC, Local1)
                }
                Else
                {
                    Subtract (0x0AAC, Arg0, Local1)
                    Subtract (0x0A00, Local1, Local1)
                }

                Return (Divide (Local1, 0x0A, ))
            }

            Method (CTOK, 1, NotSerialized)
            {
                If (And (Arg0, 0x80))
                {
                    And (Arg0, 0xFF, Local0)
                    Subtract (0x0100, Arg0, Local0)
                    Multiply (Local0, 0x0A, Local0)
                    Subtract (0x0AAC, Local0, Local0)
                }
                Else
                {
                    Multiply (Arg0, 0x0A, Local0)
                    Add (Local0, 0x0AAC, Local0)
                }

                Return (Local0)
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }
    }

    Scope (\_SB)
    {
        Device (TPWR)
        {
            Name (_HID, EisaId ("INT3407") /* DPTF Platform Power Meter */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PTYP, 0x11)
            Name (PROP, 0x07D0)
            Name (_STR, Unicode ("Platform Power"))  // _STR: Description String
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C1, 
                \_SB.I2C1.BATC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (DSOC, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (CondRefOf (\_SB.I2C1.BATC._BST, Local0))
                {
                    Return (\_SB.I2C1.BATC._BST ())
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }

            Method (PSOC, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.PSOC, Local0))
                {
                    Return (\_SB.I2C1.BATC.PSOC ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (PMAX, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.PMAX, Local0))
                {
                    Return (\_SB.I2C1.BATC.PMAX ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (PSRC, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.PSRC, Local0))
                {
                    Return (\_SB.I2C1.BATC.PSRC ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (ARTG, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.ARTG, Local0))
                {
                    Return (\_SB.I2C1.BATC.ARTG ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (CTYP, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.CTYP, Local0))
                {
                    Return (\_SB.I2C1.BATC.CTYP ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }
    }

    Scope (\_SB)
    {
        Device (STR0)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PTYP, 0x03)
            Name (_STR, Unicode ("T1 Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (LTM0, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C5, 
                \_SB.I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (THM0, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LTM0) /* \_SB_.STR0.LTM0 */
                If (CondRefOf (\_SB.STR0._PSV, Local0))
                {
                    Notify (STR0, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (WBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0017
                        }
                })
                Name (EBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                })
                And (SKUI, 0x07, Local0)
                If (LGreater (Local0, One))
                {
                    Return (EBUF) /* \_SB_.STR0._CRS.EBUF */
                }

                Return (WBUF) /* \_SB_.STR0._CRS.WBUF */
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                {
                    Store (Zero, \_SB.I2C5.PMIC.GMP0) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                    {
                        Return (\_SB.I2C5.PMIC.TMP0) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                {
                    Store (Arg0, \_SB.I2C5.PMIC.AX00) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GX00) /* External reference */
                    }

                    Store (Zero, \_SB.I2C5.PMIC.PEN0) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GEN0) /* External reference */
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                {
                    Store (Arg0, \_SB.I2C5.PMIC.AX01) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GX01) /* External reference */
                    }
                }
            }

            Name (GTSH, 0x14)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR0))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK (Subtract (GCR0, 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (PST0))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, One)))
                {
                    Store (Arg0, CTYP) /* \_SB_.STR0.CTYP */
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR1)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PTYP, 0x03)
            Name (_STR, Unicode ("Display Board Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (LTM1, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C5, 
                \_SB.I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (THM1, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LTM1) /* \_SB_.STR1.LTM1 */
                If (CondRefOf (\_SB.STR1._PSV, Local0))
                {
                    Notify (STR1, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (WBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                })
                Name (EBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                })
                And (SKUI, 0x07, Local0)
                If (LGreater (Local0, One))
                {
                    Return (EBUF) /* \_SB_.STR1._CRS.EBUF */
                }

                Return (WBUF) /* \_SB_.STR1._CRS.WBUF */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                {
                    Store (Zero, \_SB.I2C5.PMIC.GMP1) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                    {
                        Return (\_SB.I2C5.PMIC.TMP1) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                {
                    Store (Arg0, \_SB.I2C5.PMIC.AX10) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GX10) /* External reference */
                    }

                    Store (Zero, \_SB.I2C5.PMIC.PEN1) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GEN1) /* External reference */
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                {
                    Store (Arg0, \_SB.I2C5.PMIC.AX11) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GX11) /* External reference */
                    }
                }
            }

            Name (GTSH, 0x14)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR1))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK (Subtract (GCR1, 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (PST1))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, One)))
                {
                    Store (Arg0, CTYP) /* \_SB_.STR1.CTYP */
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR2)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_STR, Unicode ("SOC Board Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (LTM2, Zero)
            Name (ISOV, Zero)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.I2C1, 
                \_SB.I2C5, 
                \_SB.I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (THM2, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LTM2) /* \_SB_.STR2.LTM2 */
                If (CondRefOf (\_SB.STR2._PSV, Local0))
                {
                    Notify (STR2, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (WBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                })
                Name (EBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0017
                        }
                })
                And (SKUI, 0x07, Local0)
                If (LGreater (Local0, One))
                {
                    Return (EBUF) /* \_SB_.STR2._CRS.EBUF */
                }

                Return (WBUF) /* \_SB_.STR2._CRS.WBUF */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                {
                    Store (Zero, \_SB.I2C5.PMIC.GMP2) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                    {
                        Store (\_SB.I2C5.PMIC.TMP2, Local0)
                        If (LEqual (\_SB.VALZ.ENFG, One))
                        {
                            If (LAnd (LGreater (Local0, \_SB.DPTF.CTOK (GCR2)), LEqual (ISOV, Zero)))
                            {
                                Store (One, ISOV) /* \_SB_.STR2.ISOV */
                                \_SB.VALZ.PUTE (0x19B6)
                                Notify (\_SB.VALZ, 0x80) // Status Change
                            }

                            If (LAnd (LLessEqual (Local0, \_SB.DPTF.CTOK (GCR2)), LEqual (ISOV, One)))
                            {
                                Store (Zero, ISOV) /* \_SB_.STR2.ISOV */
                                \_SB.VALZ.PUTE (0x19B7)
                                Notify (\_SB.VALZ, 0x80) // Status Change
                            }
                        }

                        Return (Local0)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                {
                    Store (Arg0, \_SB.I2C5.PMIC.AX20) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GX20) /* External reference */
                    }

                    Store (Zero, \_SB.I2C5.PMIC.PEN2) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GEN2) /* External reference */
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                {
                    Store (Arg0, \_SB.I2C5.PMIC.AX21) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GX21) /* External reference */
                    }
                }
            }

            Name (GTSH, 0x14)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR2))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK (Subtract (GCR2, 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Name (MAXV, Zero)
                If (LGreater (PSC2, MAXV))
                {
                    Store (PSC2, MAXV) /* \_SB_.STR2._PSV.MAXV */
                }

                If (LGreater (PSA2, MAXV))
                {
                    Store (PSA2, MAXV) /* \_SB_.STR2._PSV.MAXV */
                }

                If (LGreater (PST2, MAXV))
                {
                    Store (PST2, MAXV) /* \_SB_.STR2._PSV.MAXV */
                }

                Return (\_SB.DPTF.CTOK (MAXV))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, One)))
                {
                    Store (Arg0, CTYP) /* \_SB_.STR2.CTYP */
                    If (LEqual (SCPE, One))
                    {
                        If (LEqual (\_SB.ADP1._PSR (), Zero))
                        {
                            Store (Zero, PSC2) /* External reference */
                        }
                        Else
                        {
                            Store (0x40, PSC2) /* External reference */
                        }

                        If (CondRefOf (\_SB.STR2._PSV, Local0))
                        {
                            Notify (\_SB.STR2, 0x91) // Device-Specific
                        }
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR3)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_STR, Unicode ("Charger Board Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (LTM3, Zero)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C1
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (THM3, Zero))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LTM3) /* \_SB_.STR3.LTM3 */
                If (CondRefOf (\_SB.STR3._PSV, Local0))
                {
                    Notify (STR3, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Name (BUFF, Buffer (0x07)
            {
                 0xFF                                             // .
            })
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, One, LEN)
            CreateByteField (BUFF, 0x02, TMP0)
            CreateByteField (BUFF, 0x03, AX00)
            CreateByteField (BUFF, 0x04, AX01)
            CreateByteField (BUFF, 0x05, AX10)
            CreateByteField (BUFF, 0x06, AX11)
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (\_SB.DPTF.CTOK (Zero))
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
            }

            Method (PAT1, 1, Serialized)
            {
            }

            Name (GTSH, 0x14)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK (Subtract (GCR3, 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Name (MAXV, Zero)
                If (LGreater (PSC3, MAXV))
                {
                    Store (PSC3, MAXV) /* \_SB_.STR3._PSV.MAXV */
                }

                If (LGreater (PSA3, MAXV))
                {
                    Store (PSA3, MAXV) /* \_SB_.STR3._PSV.MAXV */
                }

                If (LGreater (PST3, MAXV))
                {
                    Store (PST3, MAXV) /* \_SB_.STR3._PSV.MAXV */
                }

                Return (\_SB.DPTF.CTOK (MAXV))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, One)))
                {
                    Store (Arg0, CTYP) /* \_SB_.STR3.CTYP */
                    If (LEqual (SCPE, One))
                    {
                        If (LEqual (\_SB.ADP1._PSR (), Zero))
                        {
                            Store (Zero, PSC3) /* External reference */
                        }
                        Else
                        {
                            Store (0x3A, PSC3) /* External reference */
                        }

                        If (CondRefOf (\_SB.STR3._PSV, Local0))
                        {
                            Notify (\_SB.STR3, 0x91) // Device-Specific
                        }
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (SAMB)
        {
            Name (_HID, EisaId ("INT3409"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PTYP, 0x03)
            Name (_STR, Unicode ("Ambient Temperature"))  // _STR: Description String
            Name (CPRM, 0x05AA)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C5, 
                \_SB.I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (THM4, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (WBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0017
                        }
                })
                Name (EBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                })
                And (SKUI, 0x07, Local0)
                If (LGreater (Local0, One))
                {
                    Return (EBUF) /* \_SB_.SAMB._CRS.EBUF */
                }

                Return (WBUF) /* \_SB_.SAMB._CRS.WBUF */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_ATI, 1, Serialized)
            {
                If (LEqual (AMTE, One))
                {
                    If (LOr (LLessEqual (\_SB.DPTF.KTOC (Arg0), 0x1E), LLessEqual (Arg0, 0x0AAC)))
                    {
                        Store (0x3E, \_SB.PSA2) /* External reference */
                        Store (0x39, \_SB.PSA3) /* External reference */
                    }
                    Else
                    {
                        Store (0x42, \_SB.PSA2) /* External reference */
                        Store (0x3A, \_SB.PSA3) /* External reference */
                    }

                    If (CondRefOf (\_SB.STR2._PSV, Local0))
                    {
                        Notify (\_SB.STR2, 0x91) // Device-Specific
                    }

                    If (CondRefOf (\_SB.STR3._PSV, Local1))
                    {
                        Notify (\_SB.STR3, 0x91) // Device-Specific
                    }
                }
            }

            Method (AMBT, 0, Serialized)
            {
                Return (0x0AC0)
            }

            Method (TMPC, 0, Serialized)
            {
                If (CondRefOf (\_SB.STR0._TMP, Local0))
                {
                    Return (\_SB.STR0._TMP ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TMPH, 0, Serialized)
            {
                If (CondRefOf (\_SB.STR2._TMP, Local0))
                {
                    Return (\_SB.STR2._TMP ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                {
                    Store (Arg0, \_SB.I2C5.PMIC.AX00) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GX00) /* External reference */
                    }

                    Store (Zero, \_SB.I2C5.PMIC.PEN0) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GEN0) /* External reference */
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (LEqual (\_SB.I2C5.PMIC.AVBD, One))
                {
                    Store (Arg0, \_SB.I2C5.PMIC.AX01) /* External reference */
                    If (LEqual (\_SB.I2C5.PMIC.AVBG, One))
                    {
                        Store (One, \_SB.I2C5.PMIC.GX01) /* External reference */
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (TDSP)
        {
            Name (_HID, EisaId ("INT3406") /* Intel Dynamic Platform & Thermal Framework Display Participant */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (DDSP, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (DDDL, 0, NotSerialized)
            {
                Return (BDLI) /* \BDLI */
            }

            Method (DDPC, 0, NotSerialized)
            {
                Return (BDHI) /* \BDHI */
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (Package (0x16)
                {
                    0x50, 
                    0x32, 
                    0x05, 
                    0x0A, 
                    0x0F, 
                    0x14, 
                    0x19, 
                    0x1E, 
                    0x23, 
                    0x28, 
                    0x2D, 
                    0x32, 
                    0x37, 
                    0x3C, 
                    0x41, 
                    0x46, 
                    0x4B, 
                    0x50, 
                    0x55, 
                    0x5A, 
                    0x5F, 
                    0x64
                })
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                {
                    \_SB.PCI0.GFX0.DD01._BCM (Arg0)
                }
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (\_SB.PCI0.GFX0.DD01._BQC) /* External reference */
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Return (\_SB.PCI0.GFX0.DD01._DCS ())
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (TCHG)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (PTYP, 0x0B)
            Name (_STR, Unicode ("Intel DPTF Charger Participant"))  // _STR: Description String
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C1, 
                \_SB.I2C1.BATC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (CHGR, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Name (PPSS, Package (0x04)
            {
                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x60, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    0x40, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x02, 
                    0x20, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x03, 
                    Zero, 
                    "mA", 
                    Zero
                }
            })
            Method (PPPC, 0, NotSerialized)
            {
                Store (SizeOf (PPSS), Local2)
                Decrement (Local2)
                If (LEqual (\_SB.ADP1._PSR (), Zero))
                {
                    Return (Local2)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (SPPC, 1, NotSerialized)
            {
                Store (SizeOf (PPSS), Local2)
                Decrement (Local2)
                If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, Local2)))
                {
                    Store (DerefOf (Index (DerefOf (Index (PPSS, Arg0)), 0x05)), Local1)
                    Store (Local1, \_SB.I2C1.BATC.BCCC) /* External reference */
                    Store (One, \_SB.I2C1.BATC.BCCE) /* External reference */
                    Notify (\_SB.I2C1.BATC, 0x80) // Status Change
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }
    }
}

