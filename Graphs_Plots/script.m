%% import
%import data from excel spreadsheet
weatherimportpractice = readtable('weather_import_practice.xlsx');
%% Visualization
[year,~,~,~,~,~] = datevec(weatherimportpractice.Date);
createfigure(weatherimportpractice.DayOfYear, weatherimportpractice.Year, weatherimportpractice.SolarRatio,[],weatherimportpractice.SolarRatio)
%% modelling 
idx=year~=2019;
mysolarratio=weatherimportpractice.SolarRatio(idx);
myrelhum=weatherimportpractice.AvgRelHumidity_pct(idx);
delt=weatherimportpractice.MaxTemp_C-weatherimportpractice.MinTemp_C;
mydelt=delt(idx);
model=createFit(mydelt,myrelhum,mysolarratio)
predrad=model(delt(~idx),weatherimportpractice.AvgRelHumidity_pct(~idx));%makes prediction for entire year of 2019
prederr= weatherimportpractice.SolarRatio(~idx)-predrad;%to see the prediction with the actual values we do this
stem(prederr)