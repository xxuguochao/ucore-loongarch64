ENTRY(_start)
SECTIONS
{
    . = 0x9000000000000000;
    .text : { *(.text) }
    .rodata : { *(.rodata) }
    .bss : { *(.bss) }
}