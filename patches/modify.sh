cp patches/*.conf micropython/ports/zephyr/boards
sed -i -e 's/zephyr\/zephyr.h/zephyr\/kernel.h/g' micropython/ports/zephyr/*.c
sed -i -e 's/zephyr\/zephyr.h/zephyr\/kernel.h/g' micropython/ports/zephyr/*.h
sed -i -e 's/zephyr\/zephyr.h/zephyr\/kernel.h/g' micropython/ports/zephyr/src/*.c
sed -i -e 's/FLASH_AREA_LABEL_EXISTS/FIXED_PARTITION_EXISTS/g' micropython/ports/zephyr/zephyr_storage.c
sed -i -e 's/FLASH_AREA_LABEL_EXISTS/FIXED_PARTITION_EXISTS/g' micropython/ports/zephyr/main.c
sed -i -e 's/FLASH_AREA_ID/FIXED_PARTITION_ID/g' micropython/ports/zephyr/zephyr_storage.c
sed -i -e 's/FLASH_AREA_ID/FIXED_PARTITION_ID/g' micropython/ports/zephyr/main.c
sed -i -e 's/(storage)/\(storage_partition\)/g' micropython/ports/zephyr/zephyr_storage.c
sed -i -e 's/(storage)/\(storage_partition\)/g' micropython/ports/zephyr/main.c
