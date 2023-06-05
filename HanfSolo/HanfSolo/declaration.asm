; buttons
t_cur equ P0.0
t_min equ P0.1
t_max equ P0.2

; sensor
ds1620_dq equ P0.5
ds1620_clk equ P0.6
ds1620_rst equ P0.7

; internal stuff
is_negative equ 20h
window equ 30h
cur_temp equ r0