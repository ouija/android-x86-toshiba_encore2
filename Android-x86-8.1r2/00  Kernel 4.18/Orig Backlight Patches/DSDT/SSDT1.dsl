/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT1.aml, Tue Aug  6 22:06:11 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000635 (1589)
 *     Revision         0x01
 *     Checksum         0x1D
 *     OEM ID           "INSYDE"
 *     OEM Table ID     "CpuDptf"
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "INSYDE", "CpuDptf", 0x00000003)
{
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, IntObj)
    External (_PR_.CPU0._PTC, MethodObj)    // 0 Arguments
    External (_PR_.CPU0._TDL, MethodObj)    // 0 Arguments
    External (_PR_.CPU0._TPC, IntObj)
    External (_PR_.CPU0._TSD, MethodObj)    // 0 Arguments
    External (_PR_.CPU0._TSS, MethodObj)    // 0 Arguments
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_SB_.ACTT, IntObj)
    External (_SB_.CRTT, IntObj)
    External (_SB_.DLPO, PkgObj)
    External (_SB_.DPTF.CTOK, MethodObj)    // 1 Arguments
    External (_SB_.MBID, UnknownObj)
    External (_SB_.PAGD, UnknownObj)
    External (_SB_.PAGD.IDCN, IntObj)
    External (_SB_.PDBG, IntObj)
    External (DPSR, FieldUnitObj)
    External (PUNB, IntObj)
    External (STEP, FieldUnitObj)

    Scope (\_SB)
    {
        Device (TCPU)
        {
            Name (_HID, EisaId ("INT3401") /* Intel Extended Thermal Model CPU */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (CTYP, Zero)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.MBID
            })
            Name (CINT, 0x04)
            Name (LSTM, Zero)
            Name (MED4, 0xE00000D4)
            Name (MED0, 0xE00000D0)
            Name (AEXL, Package (0x04)
            {
                "Svchost.exe", 
                "dllhost.exe", 
                "smss.exe", 
                "WinSAT.exe"
            })
            Name (PPCC, Package (0x03)
            {
                0x02, 
                Package (0x06)
                {
                    Zero, 
                    0x03E8, 
                    0x1388, 
                    0x03E8, 
                    0x03E8, 
                    0xC8
                }, 

                Package (0x06)
                {
                    One, 
                    0x1F40, 
                    0x1F40, 
                    0x03E8, 
                    0x03E8, 
                    0xC8
                }
            })
            Name (CLPO, Package (0x06)
            {
                One, 
                Zero, 
                One, 
                0x19, 
                One, 
                One
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (DerefOf (Index (DLPO, One)), Index (CLPO, One))
                Store (DerefOf (Index (DLPO, 0x02)), Index (CLPO, 0x02))
                Store (DerefOf (Index (DLPO, 0x03)), Index (CLPO, 0x03))
                Store (DerefOf (Index (DLPO, 0x04)), Index (CLPO, 0x04))
                Store (DerefOf (Index (DLPO, 0x05)), Index (CLPO, 0x05))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (DPSR, Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (ABUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                    {
                        0x00000056,
                    }
                })
                Name (BBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                    {
                        0x00000056,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFED05000,         // Address Base
                        0x00000800,         // Address Length
                        _Y1B)
                })
                CreateDWordField (BBUF, \_SB.TCPU._CRS._Y1B._BAS, PUNI)  // _BAS: Base Address
                Store (PUNB, PUNI) /* \_SB_.TCPU._CRS.PUNI */
                If (LLessEqual (STEP, 0x04))
                {
                    Return (ABUF) /* \_SB_.TCPU._CRS.ABUF */
                }
                Else
                {
                    Return (BBUF) /* \_SB_.TCPU._CRS.BBUF */
                }
            }

            Method (MBIW, 4, Serialized)
            {
                Store (Arg3, MED4) /* \_SB_.TCPU.MED4 */
                If (LEqual (Arg2, Zero))
                {
                    Store (0x10, Local1)
                }
                ElseIf (LEqual (Arg2, One))
                {
                    Store (0x30, Local1)
                }
                Else
                {
                    Store (0xF0, Local1)
                }

                Or (ShiftLeft (Arg0, 0x10), ShiftLeft (Arg1, 0x08), Local0)
                Or (Local0, Local1, Local0)
                Or (Local0, 0x11000000, Local0)
                Store (Local0, MED0) /* \_SB_.TCPU.MED0 */
            }

            Method (MBIR, 4, Serialized)
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (0x10, Local1)
                }
                ElseIf (LEqual (Arg2, One))
                {
                    Store (0x30, Local1)
                }
                Else
                {
                    Store (0xF0, Local1)
                }

                Or (ShiftLeft (Arg0, 0x10), ShiftLeft (Arg1, 0x08), Local0)
                Or (Local0, Local1, Local0)
                Or (Local0, 0x10000000, Local0)
                Store (Local0, MED0) /* \_SB_.TCPU.MED0 */
                Store (MED4, Arg3)
            }

            Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
            {
                Store ("cpudptf: _PPC Called", Debug)
                If (CondRefOf (\_PR.CPU0._PPC, Local0))
                {
                    Return (\_PR.CPU0._PPC) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (SPPC, 1, Serialized)
            {
                Store ("cpudptf: SPPC Called", Debug)
                Store (Arg0, \_PR.CPU0._PPC) /* External reference */
                Notify (\_PR.CPU0, 0x80) // Status Change
                Notify (\_PR.CPU1, 0x80) // Status Change
                Notify (\_PR.CPU2, 0x80) // Status Change
                Notify (\_PR.CPU3, 0x80) // Status Change
                Return (Zero)
            }

            Name (PURE, One)
            Method (SPUR, 1, Serialized)
            {
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    \_SB.PAGD
                })
                Store (Arg0, \_SB.PAGD.IDCN) /* External reference */
                Notify (\_SB.PAGD, 0x80) // Status Change
                Return (Zero)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LSTM) /* \_SB_.TCPU.LSTM */
                If (CondRefOf (\_SB.TCPU._PSV, Local0))
                {
                    Notify (TCPU, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
            {
                Store ("cpudptf: _PSS Called", Debug)
                If (CondRefOf (\_PR.CPU0._PSS, Local0))
                {
                    Return (\_PR.CPU0._PSS) /* External reference */
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }

                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
            {
                Store ("cpudptf: _TSS Called", Debug)
                If (CondRefOf (\_PR.CPU0._TSS, Local0))
                {
                    Return (\_PR.CPU0._TSS ())
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }

                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
            {
                Store ("cpudptf: _TPC Called", Debug)
                If (CondRefOf (\_PR.CPU0._TPC, Local0))
                {
                    Return (\_PR.CPU0._TPC) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
            {
                Store ("cpudptf: _PTC Called", Debug)
                If (CondRefOf (\_PR.CPU0._PTC, Local0))
                {
                    Return (\_PR.CPU0._PTC ())
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }

                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
            {
                Store ("cpudptf: _TSD Called", Debug)
                If (CondRefOf (\_PR.CPU0._TSD, Local0))
                {
                    Return (\_PR.CPU0._TSD ())
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }

                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
            {
                Store ("cpudptf: _TDL Called", Debug)
                If (CondRefOf (\_PR.CPU0._TDL, Local0))
                {
                    Return (\_PR.CPU0._TDL ())
                }
                Else
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
            {
                Store ("cpudptf: _PDL Called", Debug)
                If (CondRefOf (\_PR.CPU0._PSS, Local0))
                {
                    Name (LFMI, Zero)
                    Store (SizeOf (\_PR.CPU0._PSS), LFMI) /* \_SB_.TCPU._PDL.LFMI */
                    Decrement (LFMI)
                    Return (LFMI) /* \_SB_.TCPU._PDL.LFMI */
                }
                Else
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (CRTT))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK (Subtract (CRTT, 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (ACTT))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (LOr (LEqual (Arg0, Zero), LEqual (Arg0, One)))
                {
                    Store (Arg0, CTYP) /* \_SB_.TCPU.CTYP */
                }
            }

            Name (GTSH, 0x14)
            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }
    }
}

