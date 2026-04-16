set pf="Program Files"
set config=D:\ProjDir\NetworkModel_World\cfg
set geodmsversion=GeoDMS18.1.2

rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/Africa/Store_Hierarchies
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/Asia/Store_Hierarchies
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/Australia_Oceania/Store_Hierarchies
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/Europe/Store_Hierarchies
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/North_America/Store_Hierarchies
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/South_America/Store_Hierarchies


rem set africa_list=DZA AGO BEN BWA BFA BDI CPV CMR CAF TCD COM CIV COD DJI EGY GNQ ERI ETH ATF GAB GMB GHA GIB GIN GNB KEN LSO LBR LBY MDG MWI MLI MRT MUS MYT MAR MOZ NAM NER NGA COG RWA REU SHN SEN SYC SLE SOM ZAF SSD SDN SWZ STP TZA TGO TUN UGA ESH ZMB ZWE ESP_AFR
rem set asia_list=AFG XAD ARM AZE BHR BGD BTN IOT BRN KHM XCA CXR CCK GEO IDN IRN IRQ ISR JPN JOR KAZ KWT KGZ LAO LBN MYS MDV MNG MMR NPL PRK ZNC OMN Z06 PSE XPI PHL QAT SAU SGP KOR XSP LKA SYR TWN TJK THA TLS TKM ARE UZB VNM YEM ARUS MAC HKG PAK CHN33 CHN34 CHN35 CHN36 CHN37 CHN38 CHN39 CHN40 CHN41 CHN42 CHN43 CHN44 CHN45 CHN46 CHN47 CHN48 CHN49 CHN50 CHN51 CHN52 CHN53 CHN54 CHN55 CHN56 CHN57 CHN58 CHN59 CHN60 CHN61 CHN62 CHN63 CHN64 CHN65 CHN66 CHN67 CHN68 CHN69 CHN70 CHN71 CHN72 CHN73 CHN74 CHN75 CHN76 CHN77 CHN78 CHN79 CHN80 CHN81 CHN82 CHN83 CHN84 CHN85 CHN86 IND87 IND88 IND89 IND90 IND91 IND92 IND93 IND94 IND95 IND96 IND97 IND98 IND99 IND100 IND101 IND102 IND103 IND104 IND105 IND106 IND107 IND108 IND897 IND898 IND919 IND920 IND921 CHN922 IND926 IND932 IND937 IND938 IND939 IND944 CHN947 CHN948 CHN951 IND982
rem set australia_oceania_list=ASM AUS COK FJI PYF GUM KIR MHL FSM NRU NCL NZL NIU NFK MNP PLW PNG PCN WSM SLB TKL TON TUV UMI VUT WLF
set europe_list=ALB ANR AUT BLR BEL BIH BGR HRV CZE DNK EST FRO FIN FRA DEU GRC GGY HUN ISL IRL IMN ITA JEY KOS LVA LIE LTU LUX MLT MDA MCO MNE NLD MKD NOR POL PRT ROU ERUS SMR SRB SVK SVN ESP_EUR SJM SWE CHE UKR GBR VAT ALA TUR VCS CYP
rem set north_america_list=AIA ATG BHS BRB BLZ BMU VGB CAN CYM XCL CRI CUB DMA DOM SLV GRL GRD GLP GTM HTI HND JAM MTQ MSR MEX NIC PAN PRI KNA LCA SPM VCT BLM MAF SXM TCA VIR USA496 USA497 USA498 USA499 USA500 USA501 USA502 USA503 USA504 USA505 USA506 USA507 USA508 USA509 USA510 USA511 USA512 USA513 USA514 USA515 USA516 USA517 USA518 USA519 USA520 USA521 USA522 USA523 USA524 USA525 USA526 USA527 USA528 USA529 USA530 USA531 USA532 USA533 USA534 USA535 USA536 USA537 USA538 TTO
rem set south_america_list=ARG ABW BOL BES BRA CHL COL CUW ECU FLK GUF GUY PRY PER SUR URY VEN

rem set europe_list=CYP ESP_EUR
rem set africa_list=ESP_AFR
rem set north_america_list=TTO


for %%c in (%africa_list%) do (
	rem echo Running zt for African countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/Africa/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store1
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/Africa/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store2
)
for %%c in (%asia_list%) do (
	rem echo Running catchment generation for Asian countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/Asia/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store1
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/Asia/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store2
)
for %%c in (%australia_oceania_list%) do (
	rem echo Running catchment generation for Australia and Oceanian countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/Australia_Oceania/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store1
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/Australia_Oceania/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store2
)
for %%c in (%europe_list%) do (
	rem echo Running catchment generation for European countries %%c
	rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/Europe/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store1
	rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/Europe/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store2
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/Europe/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store_only_all_flows
)
for %%c in (%north_america_list%) do (
	rem echo Running catchment generation for North American countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/North_America/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store1
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/North_America/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store2
)
for %%c in (%south_america_list%) do (
	rem echo Running catchment generation for South American countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/South_America/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store1
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/ComputeProxy/Per_Continent/South_America/country_proxy/%%c/Results_per_distdecay/Geurs_VanEck_2003_general/store2
)
pause