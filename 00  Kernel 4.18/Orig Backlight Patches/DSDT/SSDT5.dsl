/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT5.aml, Tue Aug  6 22:06:11 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000043A (1082)
 *     Revision         0x01
 *     Checksum         0x48
 *     OEM ID           "INSYDE"
 *     OEM Table ID     "Tpm2Tabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "INSYDE", "Tpm2Tabl", 0x00001000)
{
    External (TPMA, FieldUnitObj)
    External (TPME, FieldUnitObj)
    External (TPML, FieldUnitObj)

    Scope (\_SB)
    {
        Device (TPM)
        {
            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            Name (TPMF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1C)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (^TPMF, \_SB.TPM._Y1C._BAS, TB0A)  // _BAS: Base Address
                CreateDWordField (^TPMF, \_SB.TPM._Y1C._LEN, TB0L)  // _LEN: Length
                Store (TPMA, TB0A) /* \_SB_.TPM_._CRS.TB0A */
                Store (TPML, TB0L) /* \_SB_.TPM_._CRS.TB0L */
                Return (TPMF) /* \_SB_.TPM_.TPMF */
            }

            OperationRegion (TICR, SystemMemory, 0xE00D0000, 0x0100)
            Field (TICR, AnyAcc, NoLock, Preserve)
            {
                Offset (0x8C), 
                STAT,   32
            }

            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (TNVS, SystemMemory, 0x7A91B000, 0x27)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }

            Method (PTS, 1, Serialized)
            {
                If (LAnd (LLess (Arg0, 0x06), LGreater (Arg0, 0x03)))
                {
                    If (LNot (And (MORD, 0x10)))
                    {
                        Store (0x02, MCIP) /* \_SB_.TPM_.MCIP */
                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (TPME)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (HINF, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
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
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })
                        If (LEqual (_STA (), Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        Return ("1.2")
                    }
                    Case (0x02)
                    {
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (0x02, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x03)
                    {
                        Store (PPRQ, Index (TPM2, One))
                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }
                    Case (0x04)
                    {
                        Return (0x02)
                    }
                    Case (0x05)
                    {
                        Store (0x05, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Store (LPPR, Index (TPM3, One))
                        Store (PPRP, Index (TPM3, 0x02))
                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        Store (0x07, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x08)
                    {
                        Store (0x08, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TMCI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
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
                        Store (DerefOf (Index (Arg2, Zero)), MORD) /* \_SB_.TPM_.MORD */
                        Store (One, MCIP) /* \_SB_.TPM_.MCIP */
                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TSMI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
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
                        Store (One, STAT) /* \_SB_.TPM_.STAT */
                        Return (Zero)
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
                {
                    Return (HINF (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
                {
                    Return (TMCI (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4")))
                {
                    Return (TSMI (Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}

