/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180105 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT3.aml, Tue Aug  6 22:06:11 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000058 (88)
 *     Revision         0x01
 *     Checksum         0x4F
 *     OEM ID           "INSYDE"
 *     OEM Table ID     "LowPwrM"
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "INSYDE", "LowPwrM", 0x00000003)
{
    External (_SB_.DPTF, DeviceObj)
    External (_SB_.LPMV, IntObj)

    Scope (\_SB.DPTF)
    {
        Name (LPSP, Package (0x01)
        {
            ToUUID ("b9455b06-7949-40c6-abf2-363a70c8706c")
        })
        Method (CLPM, 0, NotSerialized)
        {
            Return (LPMV) /* \_SB_.LPMV */
        }
    }
}

