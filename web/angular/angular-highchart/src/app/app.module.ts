import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HighchartsChartModule } from 'highcharts-angular';
import { PiechartComponent } from './piechart/piechart.component';
import { DonutchartComponent } from './donutchart/donutchart.component';
import { DrilldownchartComponent } from './drilldownchart/drilldownchart.component';
import { LineChartComponent } from './line-chart/line-chart.component';
import { AreachartComponent } from './areachart/areachart.component';
import { Areachart2Component } from './areachart2/areachart2.component';
import { AreaSplinechartComponent } from './area-splinechart/area-splinechart.component';
import { StackbarChartComponent } from './stackbar-chart/stackbar-chart.component';

@NgModule({
  declarations: [
    AppComponent,
    PiechartComponent,
    DonutchartComponent,
    DrilldownchartComponent,
    LineChartComponent,
    AreachartComponent,
    Areachart2Component,
    AreaSplinechartComponent,
    StackbarChartComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HighchartsChartModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
