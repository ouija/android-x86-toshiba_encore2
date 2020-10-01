/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT6.aml, Tue Aug  6 22:06:11 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000763 (1891)
 *     Revision         0x01
 *     Checksum         0x88
 *     OEM ID           "INSYDE"
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "INSYDE", "CpuPm", 0x00003000)
{
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)

    Scope (\)
    {
        Name (SSDT, Package (0x0C)
        {
            "CPU0IST ", 
            0x7A787590, 
            0x00000501, 
            "APIST   ", 
            0x7A788D90, 
            0x0000015F, 
            "CPU0CST ", 
            0x7A786910, 
            0x00000433, 
            "APCST   ", 
            0x7A788F10, 
            0x0000008D
        })
        Name (CFGD, 0x73B92803)
        Name (\PDC0, 0x80000000)
        Name (\PDC1, 0x80000000)
        Name (\PDC2, 0x80000000)
        Name (\PDC3, 0x80000000)
        Name (\SDTL, Zero)
    }

    Scope (\_PR.CPU0)
    {
        Name (HI0, Zero)
        Name (HC0, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (CPDC (Arg0), Local0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)
            Return (Local0)
        }

        Method (CPDC, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Store (SizeOf (Arg0), Local0)
            Store (Subtract (Local0, 0x08), Local1)
            CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            Return (COSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953"), REVS, SIZE, Local2))
        }

        Method (COSC, 4, NotSerialized)
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, Zero, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953"))
            CreateDWordField (UID0, Zero, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (
                IID2, EID2), LEqual (IID3, EID3)))))
            {
                Store (0x06, STS0) /* \_PR_.CPU0.COSC.STS0 */
                Return (Arg3)
            }

            If (LNotEqual (Arg1, One))
            {
                Store (0x0A, STS0) /* \_PR_.CPU0.COSC.STS0 */
                Return (Arg3)
            }

            Return (Arg3)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, STS0)
            CreateDWordField (Arg0, 0x04, CAP0)
            If (LOr (LEqual (STS0, 0x06), LEqual (STS0, 0x0A)))
            {
                Return (Zero)
            }

            If (And (STS0, One))
            {
                And (CAP0, 0x0BFF, CAP0) /* \_PR_.CPU0.GCAP.CAP0 */
                Return (Zero)
            }

            Or (And (PDC0, 0x7FFFFFFF), CAP0, PDC0) /* \PDC0 */
            If (And (CFGD, One))
            {
                If (LAnd (LAnd (And (CFGD, 0x01000000), LEqual (And (PDC0, 0x09), 
                    0x09)), LNot (And (SDTL, One))))
                {
                    Or (SDTL, One, SDTL) /* \SDTL */
                    OperationRegion (IST0, SystemMemory, DerefOf (Index (SSDT, One)), DerefOf (Index (SSDT, 0x02)))
                    Load (IST0, HI0) /* \_PR_.CPU0.HI0_ */
                }
            }

            If (And (CFGD, 0x82))
            {
                If (LAnd (LAnd (And (CFGD, 0x01000000), And (PDC0, 0x18)), LNot (
                    And (SDTL, 0x02))))
                {
                    Or (SDTL, 0x02, SDTL) /* \SDTL */
                    OperationRegion (CST0, SystemMemory, DerefOf (Index (SSDT, 0x07)), DerefOf (Index (SSDT, 0x08)))
                    Load (CST0, HC0) /* \_PR_.CPU0.HC0_ */
                }
            }

            Return (Zero)
        }
    }

    Scope (\_PR.CPU1)
    {
        Name (HI1, Zero)
        Name (HC1, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, STS1)
            CreateDWordField (Arg0, 0x04, CAP1)
            If (LOr (LEqual (STS1, 0x06), LEqual (STS1, 0x0A)))
            {
                Return (Zero)
            }

            If (And (STS1, One))
            {
                And (CAP1, 0x0BFF, CAP1) /* \_PR_.CPU1.GCAP.CAP1 */
                Return (Zero)
            }

            Or (And (PDC1, 0x7FFFFFFF), CAP1, PDC1) /* \PDC1 */
            If (LEqual (And (PDC0, 0x09), 0x09))
            {
                APPT ()
            }

            If (And (PDC0, 0x18))
            {
                APCT ()
            }

            Return (Zero)
        }

        Method (APCT, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x82), LNot (And (SDTL, 0x20))))
            {
                Or (SDTL, 0x20, SDTL) /* \SDTL */
                OperationRegion (CST1, SystemMemory, DerefOf (Index (SSDT, 0x0A)), DerefOf (Index (SSDT, 0x0B)))
                Load (CST1, HC1) /* \_PR_.CPU1.HC1_ */
            }
        }

        Method (APPT, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, One), LNot (And (SDTL, 0x10))))
            {
                Or (SDTL, 0x10, SDTL) /* \SDTL */
                OperationRegion (IST1, SystemMemory, DerefOf (Index (SSDT, 0x04)), DerefOf (Index (SSDT, 0x05)))
                Load (IST1, HI1) /* \_PR_.CPU1.HI1_ */
            }
        }
    }

    Scope (\_PR.CPU2)
    {
        Name (HI1, Zero)
        Name (HC1, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, STS1)
            CreateDWordField (Arg0, 0x04, CAP1)
            If (LOr (LEqual (STS1, 0x06), LEqual (STS1, 0x0A)))
            {
                Return (Zero)
            }

            If (And (STS1, One))
            {
                And (CAP1, 0x0BFF, CAP1) /* \_PR_.CPU2.GCAP.CAP1 */
                Return (Zero)
            }

            Or (And (PDC1, 0x7FFFFFFF), CAP1, PDC1) /* \PDC1 */
            If (LEqual (And (PDC0, 0x09), 0x09))
            {
                APPT ()
            }

            If (And (PDC0, 0x18))
            {
                APCT ()
            }

            Return (Zero)
        }

        Method (APCT, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x82), LNot (And (SDTL, 0x20))))
            {
                Or (SDTL, 0x20, SDTL) /* \SDTL */
                OperationRegion (CST1, SystemMemory, DerefOf (Index (SSDT, 0x0A)), DerefOf (Index (SSDT, 0x0B)))
                Load (CST1, HC1) /* \_PR_.CPU2.HC1_ */
            }
        }

        Method (APPT, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, One), LNot (And (SDTL, 0x10))))
            {
                Or (SDTL, 0x10, SDTL) /* \SDTL */
                OperationRegion (IST1, SystemMemory, DerefOf (Index (SSDT, 0x04)), DerefOf (Index (SSDT, 0x05)))
                Load (IST1, HI1) /* \_PR_.CPU2.HI1_ */
            }
        }
    }

    Scope (\_PR.CPU3)
    {
        Name (HI1, Zero)
        Name (HC1, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_PR.CPU0.CPDC (Arg0), Local0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_PR.CPU0.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, STS1)
            CreateDWordField (Arg0, 0x04, CAP1)
            If (LOr (LEqual (STS1, 0x06), LEqual (STS1, 0x0A)))
            {
                Return (Zero)
            }

            If (And (STS1, One))
            {
                And (CAP1, 0x0BFF, CAP1) /* \_PR_.CPU3.GCAP.CAP1 */
                Return (Zero)
            }

            Or (And (PDC1, 0x7FFFFFFF), CAP1, PDC1) /* \PDC1 */
            If (LEqual (And (PDC0, 0x09), 0x09))
            {
                APPT ()
            }

            If (And (PDC0, 0x18))
            {
                APCT ()
            }

            Return (Zero)
        }

        Method (APCT, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x82), LNot (And (SDTL, 0x20))))
            {
                Or (SDTL, 0x20, SDTL) /* \SDTL */
                OperationRegion (CST1, SystemMemory, DerefOf (Index (SSDT, 0x0A)), DerefOf (Index (SSDT, 0x0B)))
                Load (CST1, HC1) /* \_PR_.CPU3.HC1_ */
            }
        }

        Method (APPT, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, One), LNot (And (SDTL, 0x10))))
            {
                Or (SDTL, 0x10, SDTL) /* \SDTL */
                OperationRegion (IST1, SystemMemory, DerefOf (Index (SSDT, 0x04)), DerefOf (Index (SSDT, 0x05)))
                Load (IST1, HI1) /* \_PR_.CPU3.HI1_ */
            }
        }
    }
}

