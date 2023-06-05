check_temperature_above:
    mov a, cur_temp     ; Lade aktuelle Temperatur in das Akkumulator-Register

    mov b, #28         ; Setze Grenzwert für Fensteröffnung auf 28 Grad
    cjne a, #28, check_temperature_below

    ; Die Temperatur ist größer oder gleich 28 Grad
    ; Setze das Fensteröffnungs-Bit
    setb window

check_temperature_below:
    mov b, #24         ; Setze Grenzwert für Fensterschließung auf 24 Grad
    cjne a, #24, end

    ; Die Temperatur ist kleiner als 24 Grad
    ; Lösche das Fensteröffnungs-Bit
    clr window

end: