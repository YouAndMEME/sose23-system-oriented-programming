cseg at 0h
ljmp init
org 100h

init:
.include "declaration.asm"
call ds1620_reset
call ds1620_start_convert

main:
call ds1620_reset
call ds1620_start_reading
call ds1620_get_temp
call check_temperature_above
ajmp main

.include "ds1620.asm"
.include "window.asm"

end