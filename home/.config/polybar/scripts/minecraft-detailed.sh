lobby=$(minecraftdstatus lobby)
survival=$(minecraftdstatus survival)
factions=$(minecraftdstatus factions)
skyblock=$(minecraftdstatus skyblock)
criativo=$(minecraftdstatus criativo)
modpack=$(minecraftdstatus modpack)

zenity --text="Status dos Servidores:\n" --title="Servidores de Minecraft" --height=400 --width=250 \
    --list --column="Servidor" --column="Status" \
    "lobby" "$lobby" \
    "survival" "$survival" \
    "factions" "$factions" \
    "skyblock" "$skyblock" \
    "modpack" "$modpack" \
    "criativo" "$criativo"

