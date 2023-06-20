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
import { StackbarChartComponent2 } from './stackbar-chart/stackbar-chart.component';
import { Areachart2Component } from './areachart2/areachart2.component';
import { AreaSplinechartComponent } from './area-splinechart/area-splinechart.component';
import { HistogramComponent } from './histogram/histogram.component';
import { HeatmapSeriesChartComponent } from './heatmap-series-chart/heatmap-series-chart.component';
import { NewComponentComponent } from './new-component/new-component.component';
import { StackbarchartComponent } from './stackbarchart/stackbarchart.component';
import { PyramidChartComponent } from './pyramid-chart/pyramid-chart.component';
import { StackPyramidChartComponent } from './stack-pyramid-chart/stack-pyramid-chart.component';
import { GaugeChartComponent } from './gauge-chart/gauge-chart.component';

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
    StackbarchartComponent,
    StackbarChartComponent2,
    HistogramComponent,
    HeatmapSeriesChartComponent,
    NewComponentComponent,
    StackbarchartComponent,
    PyramidChartComponent,
    StackPyramidChartComponent,
    GaugeChartComponent
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
