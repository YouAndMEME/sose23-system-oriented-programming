ds1620_reset:
clr ds1620_rst
setb ds1620_rst
ret

ds1620_start_reading:
call ds1620_send_0
call ds1620_send_1
call ds1620_send_0
call ds1620_send_1
call ds1620_send_0
call ds1620_send_1
call ds1620_send_0
call ds1620_send_1
ret

ds1620_start_convert:
call ds1620_send_0
call ds1620_send_1
call ds1620_send_1
call ds1620_send_1
call ds1620_send_0
call ds1620_send_1
call ds1620_send_1
call ds1620_send_1
ret

ds1620_get_temp:

; read 1st bit
clr ds1620_clk
mov c, ds1620_dq
mov 00h, c
setb ds1620_clk

; read 2nd bit
clr ds1620_clk
mov c, ds1620_dq
mov 01h, c
setb ds1620_clk

; read 3rd bit
clr ds1620_clk
mov c, ds1620_dq
mov 02h, c
setb ds1620_clk

; read 4th bit
clr ds1620_clk
mov c, ds1620_dq
mov 03h, c
setb ds1620_clk

; read 5th bit
clr ds1620_clk
mov c, ds1620_dq
mov 04h, c
setb ds1620_clk

; read 6th bit
clr ds1620_clk
mov c, ds1620_dq
mov 05h, c
setb ds1620_clk

; read 7th bit
clr ds1620_clk
mov c, ds1620_dq
mov 06h, c
setb ds1620_clk

; read 8th bit
clr ds1620_clk
mov c, ds1620_dq
mov 07h, c
setb ds1620_clk
mov cur_temp, 20h

; read 9th bit
clr ds1620_clk
mov c, ds1620_dq
mov is_negative, c
setb ds1620_clk
ret

ds1620_send_0:
clr ds1620_dq
clr ds1620_clk
setb ds1620_clk
ret

ds1620_send_1:
setb ds1620_dq
clr ds1620_clk
setb ds1620_clk
ret