@echo off
set ver=1.3.4
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
set msg_notchopin=Device is not Chopin!
set msg_exit=Press Enter to exit...
set msg_found=found
set msg_notfound=not found
set msg_eraseerror=erase error
set msg_flasherror=flash error
set msg_activateaerror=set_active a error
set msg_verityerror=Disable verity is not success. Check vbmeta.img
set msg_bllockerror=Bootloader lock error
set msg_vbmeta=vbmeta.img not found, skipping disable verity option
set msg_patreon=Do you want to support developer [Y/N]?
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
set msg_flashing=MIUI yukleniyor...
set msg_success=Basarili!
set msg_askverity=Verity'i kapatmak ister misiniz [Y/N]?
set msg_verity=Verity kapatildi!
set msg_notverity=Verity kapatilmadi!
set msg_askbllock=BOOTLOADER kilitlensin mi [Y/N]?
set msg_bllock=Bootloader kilitlendi!
set msg_notbllock=Bootloader kilitlenmedi!
set msg_romerr1=Fastboot ROM'unun tgz dosyasindaki "images" klasorunu cikarttiğiniza emin olun ve skripti tekrar calistirin.
set msg_romerr2=Fastboot ROM'unun tgz dosyasini Winrar ile acabilirsiniz.
set msg_reboot=Telefonunuzu yeniden baslatmak icin Enter'a basin...
set msg_notchopin=Cihaz Chopin degil!
set msg_exit=Cikmak icin Enter'a basin...
set msg_found=bulundu
set msg_notfound=bulunamadi
set msg_eraseerror=silinemedi
set msg_flasherror=flaslanamadi
set msg_activateaerror=set_active a hatasi
set msg_verityerror=Verity kapatilamadi. vbmeta.img'i kontrol edin
set msg_bllockerror=Bootloader kilitlenemedi
set msg_vbmeta=vbmeta.img bulunamadi, verity kapatma secenegi atlaniyor
set msg_patreon=Gelistiriciyi desteklemek ister misiniz [Y/N]?
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
set msg_notchopin=Perangkat bukan Chopin!
set msg_exit=Tekan Enter untuk keluar...
set msg_found=ditemukan
set msg_notfound=tidak ditemukan
set msg_eraseerror=kesalahan penghapusan
set msg_flasherror=kesalahan flash
set msg_activateaerror=kesalahan set_active a
set msg_verityerror=Penonaktifan verity gagal. Periksa vbmeta.img
set msg_bllockerror=Kesalahan penguncian bootloader
set msg_vbmeta=vbmeta.img tidak ditemukan, lewati opsi nonaktifkan kebenaran
set msg_patreon=Apakah Anda ingin mendukung pengembang [Y/N]?
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
if exist images\lk.img (@echo  +lk.img %msg_found%) else (@echo  -lk.img %msg_notfound%)
if exist images\dpm.img (@echo  +dpm.img %msg_found%) else (@echo  -dpm.img %msg_notfound%)
if exist images\preloader_chopin.bin (@echo  +preloader_chopin.bin %msg_found%) else (@echo  -preloader_chopin.bin %msg_notfound%)
if exist images\preloader_raw.img (@echo  +preloader_raw.img %msg_found%) else (@echo  -preloader_raw.img %msg_notfound%)
if exist images\tee.img (@echo  +tee.img %msg_found%) else (@echo  -tee.img %msg_notfound%)
if exist images\mitee.img (@echo  +mitee.img %msg_found%) else (@echo  -mitee.img %msg_notfound%)
if exist images\sspm.img (@echo  +sspm.img %msg_found%) else (@echo  -sspm.img %msg_notfound%)
if exist images\gz.img (@echo  +gz.img %msg_found%) else (@echo  -gz.img %msg_notfound%)
if exist images\scp.img (@echo  +scp.img %msg_found%) else (@echo  -scp.img %msg_notfound%)
if exist images\logo.bin (@echo  +logo.bin %msg_found%) else (@echo  -logo.bin %msg_notfound%)
if exist images\dtbo.img (@echo  +dtbo.img %msg_found%) else (@echo  -dtbo.img %msg_notfound%)
if exist images\spmfw.img (@echo  +spmfw.img %msg_found%) else (@echo  -spmfw.img %msg_notfound%)
if exist images\mcupm.img (@echo  +mcupm.img %msg_found%) else (@echo  -mcupm.img %msg_notfound%)
if exist images\pi_img.img (@echo  +pi_img.img %msg_found%) else (@echo  -pi_img.img %msg_notfound%)
if exist images\md1img.img (@echo  +md1img.img %msg_found%) else (@echo  -md1img.img %msg_notfound%)
if exist images\cam_vpu1.img (@echo  +cam_vpu1.img %msg_found%) else (@echo  -cam_vpu1.img %msg_notfound%)
if exist images\cam_vpu2.img (@echo  +cam_vpu2.img %msg_found%) else (@echo  -cam_vpu2.img %msg_notfound%)
if exist images\cam_vpu3.img (@echo  +cam_vpu3.img %msg_found%) else (@echo  -cam_vpu3.img %msg_notfound%)
if exist images\audio_dsp.img (@echo  +audio_dsp.img %msg_found%) else (@echo  -audio_dsp.img %msg_notfound%)
if exist images\super.img (@echo  +super.img %msg_found%) else (@echo  -super.img %msg_notfound%)
if exist images\super.img.0 (@echo  +super.img.1 %msg_found%) else (@echo  -super.img.1 %msg_notfound%)
if exist images\super.img.1 (@echo  +super.img.1 %msg_found%) else (@echo  -super.img.1 %msg_notfound%)
if exist images\super.img.2 (@echo  +super.img.2 %msg_found%) else (@echo  -super.img.2 %msg_notfound%)
if exist images\super.img.3 (@echo  +super.img.3 %msg_found%) else (@echo  -super.img.3 %msg_notfound%)
if exist images\super.img.4 (@echo  +super.img.4 %msg_found%) else (@echo  -super.img.4 %msg_notfound%)
if exist images\super.img.5 (@echo  +super.img.5 %msg_found%) else (@echo  -super.img.5 %msg_notfound%)
if exist images\super.img.6 (@echo  +super.img.6 %msg_found%) else (@echo  -super.img.6 %msg_notfound%)
if exist images\super.img.7 (@echo  +super.img.7 %msg_found%) else (@echo  -super.img.7 %msg_notfound%)
if exist images\super.img.8 (@echo  +super.img.8 %msg_found%) else (@echo  -super.img.8 %msg_notfound%)
if exist images\super.img.9 (@echo  +super.img.9 %msg_found%) else (@echo  -super.img.9 %msg_notfound%)
if exist images\super.img.10 (@echo  +super.img.10 %msg_found%) else (@echo  -super.img.10 %msg_notfound%)
if exist images\super.img.11 (@echo  +super.img.11 %msg_found%) else (@echo  -super.img.11 %msg_notfound%)
if exist images\super.img.12 (@echo  +super.img.12 %msg_found%) else (@echo  -super.img.12 %msg_notfound%)
if exist images\super.img.13 (@echo  +super.img.13 %msg_found%) else (@echo  -super.img.13 %msg_notfound%)
if exist images\super.img.14 (@echo  +super.img.14 %msg_found%) else (@echo  -super.img.14 %msg_notfound%)
if exist images\super.img.15 (@echo  +super.img.15 %msg_found%) else (@echo  -super.img.15 %msg_notfound%)
if exist images\super.img.16 (@echo  +super.img.16 %msg_found%) else (@echo  -super.img.16 %msg_notfound%)
if exist images\super.img.17 (@echo  +super.img.17 %msg_found%) else (@echo  -super.img.17 %msg_notfound%)
if exist images\super.img.18 (@echo  +super.img.18 %msg_found%) else (@echo  -super.img.18 %msg_notfound%)
if exist images\super.img.19 (@echo  +super.img.19 %msg_found%) else (@echo  -super.img.19 %msg_notfound%)
if exist images\super.img.20 (@echo  +super.img.20 %msg_found%) else (@echo  -super.img.20 %msg_notfound%)
if exist images\super.img.21 (@echo  +super.img.21 %msg_found%) else (@echo  -super.img.21 %msg_notfound%)
if exist images\super.img.22 (@echo  +super.img.22 %msg_found%) else (@echo  -super.img.22 %msg_notfound%)
if exist images\super.img.23 (@echo  +super.img.23 %msg_found%) else (@echo  -super.img.23 %msg_notfound%)
if exist images\super.img.24 (@echo  +super.img.24 %msg_found%) else (@echo  -super.img.24 %msg_notfound%)
if exist images\bhlnk.img (@echo  +bhlnk.img %msg_found%) else (@echo  -bhlnk.img %msg_notfound%)
if exist images\rescue.img (@echo  +rescue.img %msg_found%) else (@echo  -rescue.img %msg_notfound%)
if exist images\cust.img (@echo  +cust.img %msg_found%) else (@echo  -cust.img %msg_notfound%)
if exist images\cust.img.0 (@echo  +cust.img.1 %msg_found%) else (@echo  -cust.img.0 %msg_notfound%)
if exist images\cust.img.1 (@echo  +cust.img.2 %msg_found%) else (@echo  -cust.img.1 %msg_notfound%)
if exist images\vbmeta.img (@echo  +vbmeta.img %msg_found%) else (@echo  -vbmeta.img %msg_notfound%)
if exist images\vbmeta_system.img (@echo  +vbmeta_system.img %msg_found%) else (@echo  -vbmeta_system.img %msg_notfound%)
if exist images\vbmeta_vendor.img (@echo  +vbmeta_vendor.img %msg_found%) else (@echo  -vbmeta_vendor.img %msg_notfound%)
if exist images\userdata.img (@echo  +userdata.img %msg_found%) else (@echo  -userdata.img %msg_notfound%)
if exist images\boot.img (@echo  +boot.img %msg_found%) else (@echo  -boot.img %msg_notfound%)
goto checkdevice

:notcheckromfiles
echo %msg_romskip%
goto checkdevice

:checkdevice
if not "%debug%"=="1" (
echo Will add device check here in future releases > nul
)
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
 fastboot erase metadata || @echo  -metadata %msg_eraseerror%
 fastboot erase userdata || @echo  -userdata %msg_eraseerror%
 fastboot erase expdb || @echo  -expdb %msg_eraseerror%
 fastboot flash userdata images\userdata.img || @echo  -userdata %msg_flasherror%
)
echo.
goto startflashing

:noterase
echo %msg_savinguserdata%
echo.
goto startflashing

:startflashing
echo %msg_flashing%
if not "%debug%"=="1" (
 fastboot set_active a || @echo  -%msg_activateaerror%
 if exist images\boot.img fastboot erase boot_ab || @echo  -boot %msg_eraseerror%
 if exist images\preloader_chopin.bin (
  fastboot flash preloader_ab images\preloader_chopin.bin || @echo  -preloader %msg_flasherror%
 )
 if exist images\preloader_raw.img (
  fastboot flash preloader_ab images\preloader_raw.img || @echo  -preloader %msg_flasherror%
 )
 fastboot flash lk_ab images\lk.img || @echo  -lk_ab %msg_flasherror%
 fastboot flash dpm_ab images\dpm.img || @echo  -dpm_ab %msg_flasherror%
 fastboot flash tee_ab images\tee.img || @echo  -tee_ab %msg_flasherror%
 fastboot flash mitee_ab images\mitee.img || @echo  -mitee_ab %msg_flasherror%
 fastboot flash sspm_ab images\sspm.img || @echo  -sspm_ab %msg_flasherror%
 fastboot flash gz_ab images\gz.img || @echo  -gz_ab %msg_flasherror%
 fastboot flash scp_ab images\scp.img || @echo  -scp_ab %msg_flasherror%
 fastboot flash logo images\logo.bin || @echo  -logo %msg_flasherror%
 fastboot flash dtbo_ab images\dtbo.img || @echo  -dtbo_ab %msg_flasherror%
 fastboot flash spmfw_ab images\spmfw.img || @echo  -spmfw_ab %msg_flasherror%
 fastboot flash mcupm_ab images\mcupm.img || @echo  -mcupm_ab %msg_flasherror%
 fastboot flash pi_img_ab images\pi_img.img || @echo  -pi_img_ab %msg_flasherror%
 fastboot flash md1img_ab images\md1img.img || @echo  -md1img_ab %msg_flasherror%
 fastboot flash cam_vpu1_ab images\cam_vpu1.img || @echo  -cam_vpu1_ab %msg_flasherror%
 fastboot flash cam_vpu2_ab images\cam_vpu2.img || @echo  -cam_vpu2_ab %msg_flasherror%
 fastboot flash cam_vpu3_ab images\cam_vpu3.img || @echo  -cam_vpu3_ab %msg_flasherror%
 fastboot flash audio_dsp_ab images\audio_dsp.img || @echo  -audio_dsp %msg_flasherror%
 fastboot flash rescue images\rescue.img || @echo  -rescue %msg_flasherror%
 fastboot flash vbmeta_ab images\vbmeta.img || @echo  -vbmeta_ab %msg_flasherror%
 fastboot flash vbmeta_system_ab images\vbmeta_system.img || @echo  -vbmeta_system_ab %msg_flasherror%
 fastboot flash vbmeta_vendor_ab images\vbmeta_vendor.img || @echo  -vbmeta_vendor_ab %msg_flasherror%
 fastboot flash boot_ab images\boot.img || @echo  -boot_ab %msg_flasherror%
 if exist images\cust.img (
  fastboot flash cust images\cust.img || @echo  -cust %msg_flasherror%
 ) else (
  fastboot flash cust images\cust.img.1 || @echo  -cust1 %msg_flasherror%
  fastboot flash cust images\cust.img.2 || @echo  -cust2 %msg_flasherror%
 )
 if exist images\super.img (
  fastboot flash super images\super.img || @echo  -super %msg_flasherror%
 )
 if exist images\bhlnk.img (
  fastboot flash super images\bhlnk.img || @echo  -bhlnk %msg_flasherror%
 )
 if exist images\super.img.0 (
  fastboot flash super images\super.img.0 || @echo  -super0 %msg_flasherror%
  fastboot flash super images\super.img.1 || @echo  -super1 %msg_flasherror%
  fastboot flash super images\super.img.2 || @echo  -super2 %msg_flasherror%
  fastboot flash super images\super.img.3 || @echo  -super3 %msg_flasherror%
  fastboot flash super images\super.img.4 || @echo  -super4 %msg_flasherror%
  fastboot flash super images\super.img.5 || @echo  -super5 %msg_flasherror%
  fastboot flash super images\super.img.6 || @echo  -super6 %msg_flasherror%
  fastboot flash super images\super.img.7 || @echo  -super7 %msg_flasherror%
  fastboot flash super images\super.img.8 || @echo  -super8 %msg_flasherror%
  fastboot flash super images\super.img.9 || @echo  -super9 %msg_flasherror%
  fastboot flash super images\super.img.10 || @echo  -super10 %msg_flasherror%
  fastboot flash super images\super.img.11 || @echo  -super11 %msg_flasherror%
  fastboot flash super images\super.img.12 || @echo  -super12 %msg_flasherror%
  fastboot flash super images\super.img.13 || @echo  -super13 %msg_flasherror%
  fastboot flash super images\super.img.14 || @echo  -super14 %msg_flasherror%
  fastboot flash super images\super.img.15 || @echo  -super15 %msg_flasherror%
  fastboot flash super images\super.img.16 || @echo  -super16 %msg_flasherror%
  fastboot flash super images\super.img.17 || @echo  -super17 %msg_flasherror%
  fastboot flash super images\super.img.18 || @echo  -super18 %msg_flasherror%
  fastboot flash super images\super.img.19 || @echo  -super19 %msg_flasherror%
  fastboot flash super images\super.img.20 || @echo  -super20 %msg_flasherror%
  fastboot flash super images\super.img.21 || @echo  -super21 %msg_flasherror%
  fastboot flash super images\super.img.22 || @echo  -super22 %msg_flasherror%
  fastboot flash super images\super.img.23 || @echo  -super23 %msg_flasherror%
  fastboot flash super images\super.img.24 || @echo  -super24 %msg_flasherror%
 )
 if exist images\super.img.25 (
  fastboot flash super images\super.img.25 || @echo  -super25 %msg_flasherror%
 )
 if exist images\super.img.26 (
  fastboot flash super images\super.img.26 || @echo  -super26 %msg_flasherror%
 )
 if exist images\super.img.27 (
  fastboot flash super images\super.img.27 || @echo  -super27 %msg_flasherror%
 )
 if exist images\super.img.28 (
  fastboot flash super images\super.img.28 || @echo  -super28 %msg_flasherror%
 )
 if exist images\super.img.29 (
  fastboot flash super images\super.img.29 || @echo  -super29 %msg_flasherror%
 )
 if exist images\super.img.30 (
  fastboot flash super images\super.img.30 || @echo  -super30 %msg_flasherror%
 )
 fastboot oem cdms
)
echo.
goto checkverity

:checkverity
if exist images\vbmeta.img (
 goto verityconfirm
) else (
 echo %msg_vbmeta%
 echo.
 goto bllockconfirm
)

:verityconfirm
set /P c=%msg_askverity%
if /I "%c%" EQU "Y" goto verity
if /I "%c%" EQU "N" goto notverity
if /I "%c%" EQU "D" goto debug
goto verityconfirm

:verity
if not "%debug%"=="1" (
 fastboot flash vbmeta --disable-verity --disable-verification images\vbmeta.img || @echo %msg_verityerror%
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
 fastboot flash oem lock || @echo %msg_bllockerror%
)
echo %msg_bllock%
echo.
goto reboot

:notbllock
echo %msg_notbllock%
echo.
goto reboot

:notchopin
echo %msg_notchopin%
echo %msg_exit%
pause > nul
exit

:reboot
echo %msg_reboot%
pause > nul
if not "%debug%"=="1" (
 fastboot reboot
)
echo %msg_success%
echo.
goto patreon

:patreon
set /P c=%msg_patreon%
if /I "%c%" EQU "Y" start "" "https://avalibeyaz.com/patreon"
if /I "%c%" EQU "N" goto exit
if /I "%c%" EQU "D" goto debug

:exit
echo.
echo %msg_exit%
pause > nul
exit