set pf="Program Files"
set config=D:\ProjDir\NetworkModel_World\cfg
set geodmsversion=GeoDMS14.7.0

set continentlist=Africa Asia Australia_Oceania Europe North_America South_America

for %%c in (%continentlist%) do (
echo Running network generation for %%c
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Service_distribution/RegionalCentres/%%c/Network/settlement_dependencies_by_threshold/nofilter/all_centres
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Service_distribution/RegionalCentres/%%c/Network/settlement_dependencies_by_threshold/StoreAll
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Functional_Rural_Areas/create_custom_catchments/%%c/settlement_dependencies/ST_10MIN/all_centres
rem BY LAU2 BORDERS
rem C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /Functional_Rural_Areas/iterate_by_Memberstates_LAU2/%%c/ResultsByVariant/button/runAll
rem BY GRID CATCHMENT
C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /NetworkSetup/Per_Continent/%%c/Store_Network1
C:\%pf%\ObjectVision\%geodmsversion%\GeoDmsRun.exe %config%\main.dms /NetworkSetup/Per_Continent/%%c/Store_Network2

)
)

pause