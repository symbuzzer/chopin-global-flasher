@echo off
set ver=1.2.0
set debug=0

:head
if not "%debug%"=="1" (
 color 0a
 set titlestring=
) else (
 color 0c
 set titlestring=[DEBUG] 
)
title %titlestring%Chopin MIUI 14 / 13 / 12 Flasher Script v%ver% - avalibeyaz.com/github
cls
goto lang

:lang
cls
echo.
echo 1 - English
echo 2 - Turkish
echo 3 - Indonesian
echo.
set /P l=
if /I "%l%" EQU "1" goto english
if /I "%l%" EQU "2" goto turkish
if /I "%l%" EQU "3" goto indonesian
if /I "%l%" EQU "D" goto debug
goto lang

:english
set msg_welcome=Welcome to Chopin Global Flasher Script. Do it at your own risk.
set msg_fastboot=Go fastboot mode on your phone to begin.
set msg_checkrom=Do you want to check ROM files [Y/N]?
set msg_romok=ROM files are OK!
set msg_romskip=Skipped checking ROM files!
set msg_askuserdata1=If you want to do flash a different region ROM, you should erase USERDATA.
set msg_askuserdata2=Do you want to ERASE USERDATA [Y/N]?
set msg_erasinguserdata=Erasing USERDATA!
set msg_savinguserdata=Saving USERDATA!
set msg_selectversion=Select the MIUI version of the rom to be flashed and press Enter [14/13/12]:
set msg_flashing=Flashing MIUI...
set msg_success=Success!
set msg_askverity=Do you want to DISABLE VERITY [Y/N]?
set msg_verity=Verity disabled!
set msg_notverity=Verity not disabled!
set msg_askbllock=Do you want to LOCK BOOTLOADER [Y/N]?
set msg_bllock=Bootloader locked!
set msg_notbllock=Bootloader lock skipped!
set msg_romerr1=Make sure extract "images" folder of fastboot ROM's tgz file and rerun script again.
set msg_romerr2=You can open fastboot ROM's tgz file via Winrar.
set msg_reboot=Press Enter to reboot your phone...
goto welcome

:turkish
set msg_welcome=Chopin Global Flasher Script'ine hos geldiniz. Sorumluluk size aittir.
set msg_fastboot=Baslamak icin telefonunuzda Fastboot'u acin.
set msg_checkrom=ROM dosyalarini kontrol etmek ister misiniz [Y/N]?
set msg_romok=ROM dosyalari OK!
set msg_romskip=ROM dosyalari kontrolu gecildi!
set msg_askuserdata1=Eger baska bir bolgeye ait ROM yukleyecekseniz USERDATA'yi formatlamaniz gerekiyor.
set msg_askuserdata2=USERDATA'yi formatlamak ister misiniz [Y/N]?
set msg_erasinguserdata=USERDATA siliniyor!
set msg_savinguserdata=USERDATA silinmedi!
set msg_selectversion=Yuklenecek MIUI versiyonunu secip Enter'e basin [14/13/12]:
set msg_flashing=MIUI yukleniyor...
set msg_success=Basarili!
set msg_askverity=VERITY'i kapatmak ister misiniz [Y/N]?
set msg_verity=Verity kapatildi!
set msg_notverity=Verity kapatilmadi!
set msg_askbllock=BOOTLOADER kilitlensin mi [Y/N]?
set msg_bllock=Bootloader kilitlendi!
set msg_notbllock=Bootloader kilitlenmedi!
set msg_romerr1=Fastboot ROM'unun tgz dosyasindaki "images" klasorunu cikarttiğiniza emin olun ve skripti tekrar calistirin.
set msg_romerr2=Fastboot ROM'unun tgz dosyasini Winrar ile acabilirsiniz.
set msg_reboot=Telefonunuzu yeniden baslatmak icin Enter'a basin...
goto welcome

:indonesian
set msg_welcome=Selamat datang di Chopin Global Flasher Script. Lakukan dengan risiko Anda sendiri.
set msg_fastboot=Pergi mode fastboot di ponsel Anda untuk memulai.
set msg_checkrom=Apakah Anda ingin memeriksa file ROM [Y/N]?
set msg_romok=File ROM OK!
set msg_romskip=Lewati pemeriksaan file ROM!
set msg_askuserdata1=Jika Anda ingin melakukan flash ROM wilayah yang berbeda, Anda harus menghapus USERDATA.
set msg_askuserdata2=Apakah Anda ingin MENGHAPUS USERDATA [Y/N]?
set msg_erasinguserdata=Menghapus USERDATA!
set msg_savinguserdata=Menyimpan USERDATA!
set msg_selectversion=Pilih versi MIUI dari rom yang akan di-flash dan tekan Enter [14/13/12]:
set msg_flashing=Flash MIUI...
set msg_success=Berhasil!
set msg_askverity=Apakah Anda ingin MENONAKTIFKAN VERITAS [Y/N]?
set msg_verity=Verity dinonaktifkan!
set msg_notverity=Verity tidak dinonaktifkan!
set msg_askbllock=Apakah Anda ingin MENGUNCI BOOTLOADER [Y/N]?
set msg_bllock=Bootloader terkunci!
set msg_notbllock=Kunci bootloader dilewati!
set msg_romerr1=Pastikan ekstrak folder "images" dari file tgz ROM fastboot dan jalankan kembali skrip.
set msg_romerr2=Anda dapat membuka file tgz fastboot ROM melalui Winrar.
set msg_reboot=Tekan Enter untuk mem-boot ulang ponsel Anda...
goto welcome

:debug
if not "%debug%"=="1" (
 set debug=1
) else (
 set debug=0
)
goto head

:welcome
cls
echo.
echo %msg_welcome%
echo %msg_fastboot%
echo.
goto romconfirm

:romconfirm
set /P c=%msg_checkrom%
if /I "%c%" EQU "Y" goto checkromfiles
if /I "%c%" EQU "N" goto notcheckromfiles
if /I "%c%" EQU "D" goto debug
goto romconfirm

:checkromfiles
if not "%debug%"=="1" (
 if not exist images\lk.img goto notfound
 if not exist images\dpm.img goto notfound
 if not exist images\preloader_chopin.bin goto notfound
 if not exist images\tee.img goto notfound
 if not exist images\mitee.img goto notfound
 if not exist images\sspm.img goto notfound
 if not exist images\gz.img goto notfound
 if not exist images\scp.img goto notfound
 if not exist images\logo.bin goto notfound
 if not exist images\dtbo.img goto notfound
 if not exist images\spmfw.img goto notfound
 if not exist images\mcupm.img goto notfound
 if not exist images\pi_img.img goto notfound
 if not exist images\md1img.img goto notfound
 if not exist images\cam_vpu1.img goto notfound
 if not exist images\cam_vpu2.img goto notfound
 if not exist images\cam_vpu3.img goto notfound
 if not exist images\audio_dsp.img goto notfound
 if not exist images\super.img (
  if not exist images\bhlnk.img goto notfound
 )
 if not exist images\rescue.img goto notfound
 if not exist images\cust.img goto notfound
 if not exist images\vbmeta.img goto notfound
 if not exist images\vbmeta_system.img goto notfound
 if not exist images\vbmeta_vendor.img goto notfound
 if not exist images\userdata.img goto notfound
 if not exist images\boot.img goto notfound
)
echo %msg_romok%
goto userdata

:notcheckromfiles
echo %msg_romskip%
goto userdata

:userdata
echo.
echo %msg_askuserdata1%
set /P c=%msg_askuserdata2%
if /I "%c%" EQU "Y" goto erase
if /I "%c%" EQU "N" goto noterase
if /I "%c%" EQU "D" goto debug
goto userdata

:erase
echo %msg_erasinguserdata%
if not "%debug%"=="1" (
 fastboot erase metadata || @echo "Erase metadata error"
 fastboot flash userdata images\userdata.img || @echo "Flash userdata error"
)
echo.
goto romselect

:noterase
echo %msg_savinguserdata%
echo.
goto romselect

:romselect
set /P r=%msg_selectversion%
if /I "%r%" EQU "14" goto startflashing14
if /I "%r%" EQU "13" goto startflashing13
if /I "%r%" EQU "12" goto startflashing12
if /I "%c%" EQU "D" goto debug
goto romselect

:startflashing14
echo %msg_flashing%
:: Add MIUI %c% specific flash commands there if exists
goto startflashing

:startflashing13
echo %msg_flashing%
:: Add MIUI %c% specific flash commands there if exists
goto startflashing

:startflashing12
echo %msg_flashing%
:: Add MIUI %c% specific flash commands there if exists
goto startflashing

:startflashing
if not "%debug%"=="1" (
 if exist images\boot.img fastboot erase boot_ab || @echo "Erase boot error"
 fastboot erase expdb || @echo "Erase expdb error"
 fastboot flash preloader_ab images\preloader_chopin.bin  || @echo "Flash preloader error"
 fastboot flash lk_ab images\lk.img || @echo "Flash lk_ab error"
 fastboot flash dpm_ab images\dpm.img || @echo "Flash dpm_ab error"
 fastboot flash tee_ab images\tee.img || @echo "Flash tee_ab error"
 fastboot flash mitee_ab images\mitee.img || @echo "Flash mitee_ab error"
 fastboot flash sspm_ab images\sspm.img || @echo "Flash sspm_ab error"
 fastboot flash gz_ab images\gz.img || @echo "Flash gz_ab error"
 fastboot flash scp_ab images\scp.img || @echo "Flash scp_ab error"
 fastboot flash logo images\logo.bin || @echo "Flash logo error"
 fastboot flash dtbo_ab images\dtbo.img || @echo "Flash dtbo_ab error"
 fastboot flash spmfw_ab images\spmfw.img || @echo "Flash spmfw_ab error"
 fastboot flash mcupm_ab images\mcupm.img || @echo "Flash mcupm_ab error"
 fastboot flash pi_img_ab images\pi_img.img || @echo "Flash pi_img_ab error"
 fastboot flash md1img_ab images\md1img.img || @echo "Flash md1img_ab error"
 fastboot flash cam_vpu1_ab images\cam_vpu1.img || @echo "Flash cam_vpu1_ab error"
 fastboot flash cam_vpu2_ab images\cam_vpu2.img || @echo "Flash cam_vpu2_ab error"
 fastboot flash cam_vpu3_ab images\cam_vpu3.img || @echo "Flash cam_vpu3_ab error"
 fastboot flash audio_dsp_ab images\audio_dsp.img  || @echo "Flash audio_dsp error"
 if exist images\super.img (
  fastboot flash super images\super.img || @echo "Flash super error"
 )
 if exist images\bhlnk.img (
  fastboot flash super images\bhlnk.img || @echo "Flash bhlnk error"
 )
 fastboot flash rescue images\rescue.img || @echo "Flash rescue error"
 fastboot flash vbmeta_ab images\vbmeta.img || @echo "Flash vbmeta_ab error"
 fastboot flash vbmeta_system_ab images\vbmeta_system.img || @echo "Flash vbmeta_system_ab error"
 fastboot flash vbmeta_vendor_ab images\vbmeta_vendor.img || @echo "Flash vbmeta_vendor_ab error"
 fastboot flash cust images\cust.img || @echo "Flash cust error"
 fastboot flash boot_ab images\boot.img || @echo "Flash boot_ab error"
 fastboot oem cdms
 fastboot set_active a || @echo "set_active a error"
 fastboot reboot || @echo "Reboot error"
)
echo.
echo %msg_success%
echo.
goto verityconfirm

:verityconfirm
set /P c=%msg_askverity%
if /I "%c%" EQU "Y" goto verity
if /I "%c%" EQU "N" goto notverity
if /I "%c%" EQU "D" goto debug
goto verityconfirm

:verity
if not "%debug%"=="1" (
 fastboot flash vbmeta --disable-verity --disable-verification vbmeta.img || @echo "Disable verity is not success. Check vbmeta.img"
)
echo %msg_verity%
echo.
goto bllockconfirm

:notverity
echo %msg_notverity%
echo.
goto bllockconfirm

:bllockconfirm
set /P c=%msg_askbllock%
if /I "%c%" EQU "Y" goto bllock
if /I "%c%" EQU "N" goto notbllock
if /I "%c%" EQU "D" goto debug
goto bllockconfirm

:bllock
if not "%debug%"=="1" (
 fastboot flash oem lock || @echo "Bootloader lock error"
)
echo %msg_bllock%
echo.
goto exit

:notverity
echo %msg_notbllock%
echo.
goto exit

:notfound
echo %msg_romerr1%
echo %msg_romerr2%
pause
exit

:exit
echo %msg_reboot%
if not "%debug%"=="1" (
 fastboot reboot
)
pause > nul
exit
