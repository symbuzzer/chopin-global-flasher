@echo off
set ver=1.0.1
set debug=0

:head
if not "%debug%"=="1" (
 color 0a
 set titlestring=
) else (
 color 0c
 set titlestring=[DEBUG] 
)
title %titlestring%Chopin MIUI 14 / 13 / 12 Flasher Script v%ver% by Ali BEYAZ
echo.
echo Welcome to Chopin Global Flasher Script. Do it at your own risk.
echo Go fastboot mode on your phone to begin.
echo.
goto romconfirm

:romconfirm
set /P c=Do you want to check ROM files [Y/N]?
if /I "%c%" EQU "Y" goto checkromfiles
if /I "%c%" EQU "N" goto notcheckromfiles
if /I "%c%" EQU "D" goto debug
goto romconfirm

:debug
if not "%debug%"=="1" (
 set debug=1
 cls
) else (
 set debug=0
 cls
)
goto head

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
 if not exist images\super.img goto notfound
 if not exist images\rescue.img goto notfound
 if not exist images\cust.img goto notfound
 if not exist images\vbmeta.img goto notfound
 if not exist images\vbmeta_system.img goto notfound
 if not exist images\vbmeta_vendor.img goto notfound
 if not exist images\userdata.img goto notfound
 if not exist images\boot.img goto notfound
)
echo ROM files are OK
goto userdata

:notcheckromfiles
echo Skipped checking ROM files
goto userdata

:userdata
echo.
echo If you want to do flash a different region ROM, you should erase USERDATA.
set /P c=Do you want to ERASE USERDATA [Y/N]?
if /I "%c%" EQU "Y" goto erase
if /I "%c%" EQU "N" goto noterase
if /I "%c%" EQU "D" goto debug
goto userdata

:erase
echo Erasing USERDATA
if not "%debug%"=="1" (
 fastboot erase metadata || @echo "Erase metadata error"
 fastboot flash userdata images\userdata.img || @echo "Flash userdata error"
)
echo.
goto romselect

:noterase
echo Saving USERDATA
echo.
goto romselect

:romselect
set /P r=Select the MIUI version of the rom to be flashed and press Enter [14/13/12]:
if /I "%r%" EQU "14" goto startflashing14
if /I "%r%" EQU "13" goto startflashing13
if /I "%r%" EQU "12" goto startflashing12
if /I "%c%" EQU "D" goto debug
goto romselect

:startflashing14
echo Flashing MIUI 14...
:: Add MIUI %c% specific flash commands there if exists
goto startflashing

:startflashing13
echo Flashing MIUI 13...
:: Add MIUI %c% specific flash commands there if exists
goto startflashing

:startflashing12
echo Flashing MIUI 12...
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
 fastboot flash super images\super.img || @echo "Flash super error"
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
echo Success!
echo.
goto verityconfirm

:verityconfirm
set /P c=Do you want to DISABLE VERITY [Y/N]?
if /I "%c%" EQU "Y" goto verity
if /I "%c%" EQU "N" goto notverity
if /I "%c%" EQU "D" goto debug
goto verityconfirm

:verity
if not "%debug%"=="1" (
 fastboot flash vbmeta --disable-verity --disable-verification vbmeta.img || @echo "Disable verity is not success. Check vbmeta.img"
)
echo Verity disabled!
echo.
goto exit

:notverity
echo Verity not disabled!
echo.
goto exit

:notfound
echo Make sure extract "images" folder of fastboot ROM's tgz file and rerun script again.
echo You can open fastboot ROM's tgz file via Winrar.
pause
exit

:exit
echo Press Enter to reboot your phone
if not "%debug%"=="1" (
 fastboot reboot
)
pause
exit
