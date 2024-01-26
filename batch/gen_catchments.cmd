set pf="Program Files"
set config=D:\ProjDir\NetworkModel_World\cfg
set geodmsversion=GeoDMS14.9.0

rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/Africa/Store_Hierarchies
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/Asia/Store_Hierarchies
C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/Australia_Oceania/Store_Hierarchies
C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/Europe/Store_Hierarchies
C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/North_America/Store_Hierarchies
C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Obtain_Settlement_Hierarchies/South_America/Store_Hierarchies


set africa_list=DZA AGO BEN BWA BFA BDI CPV CMR CAF TCD COM CIV COD DJI EGY GNQ ERI ETH ATF GAB GMB GHA GIB GIN GNB KEN LSO LBR LBY MDG MWI MLI MRT MUS MYT MAR MOZ NAM NER NGA COG RWA REU SHN SEN SYC SLE SOM ZAF SSD SDN SWZ STP TZA TGO TUN UGA ESH ZMB ZWE
set asia_list=AFG XAD ARM AZE BHR BGD BTN IOT BRN KHM XCA Z03 CXR CCK CYP GEO Z07 IDN IRN IRQ ISR JPN JOR KAZ KWT KGZ LAO LBN MYS MDV MNG MMR NPL PRK ZNC OMN Z06 PSE XPI PHL QAT SAU SGP KOR XSP LKA SYR TWN TJK THA TLS TKM ARE UZB VNM YEM RUS
set australia_oceania_list=ASM AUS COK FJI PYF GUM KIR MHL FSM NRU NCL NZL NIU NFK MNP PLW PNG PCN WSM SLB TKL TON TUV UMI VUT WLF
set europe_list=ALB AND AUT BLR BEL BIH BGR HRV CZE DNK EST FRO FIN FRA DEU GRC GGY HUN ISL IRL IMN ITA JEY XKO LVA LIE LTU LUX MLT MDA MCO MNE NLD MKD NOR POL PRT ROU RUS SMR SRB SVK SVN ESP SJM SWE CHE UKR GBR VAT ALA TUR
set north_america_list=AIA ATG BHS BRB BLZ BMU VGB CAN CYM XCL CRI CUB DMA DOM SLV GRL GRD GLP GTM HTI HND JAM MTQ MSR MEX NIC PAN PRI KNA LCA SPM VCT BLM MAF SXM TCA USA VIR
set south_america_list=ARG ABW BOL BES BRA CHL COL CUW ECU FLK GUF GUY PRY PER SUR TTO URY VEN


for %%c in (%africa_list%) do (
	echo Running catchment generation for African countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Create_Centres_Catchments/Africa/Country_Catchments/%%c/store_catchment
)
for %%c in (%asia_list%) do (
	echo Running catchment generation for Asian countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Create_Centres_Catchments/Asia/Country_Catchments/%%c/store_catchment
)
for %%c in (%australia_oceania_list%) do (
	echo Running catchment generation for Australia and Oceanian countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Create_Centres_Catchments/Australia_Oceania/Country_Catchments/%%c/store_catchment
)
for %%c in (%europe_list%) do (
	echo Running catchment generation for European countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Create_Centres_Catchments/Europe/Country_Catchments/%%c/store_catchment
)
for %%c in (%north_america_list%) do (
	echo Running catchment generation for North American countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Create_Centres_Catchments/North_America/Country_Catchments/%%c/store_catchment
)
for %%c in (%south_america_list%) do (
	echo Running catchment generation for South American countries %%c
	C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Analyses/Create_Centres_Catchments/South_America/Country_Catchments/%%c/store_catchment
)
pause