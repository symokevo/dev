import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HighchartsChartModule } from 'highcharts-angular';
import { PiechartComponent } from './piechart/piechart.component';
import { DonutchartComponent } from './donutchart/donutchart.component';
import { DrilldownchartComponent } from './drilldownchart/drilldownchart.component';

@NgModule({
  declarations: [
    AppComponent,
    PiechartComponent,
    DonutchartComponent,
    DrilldownchartComponent
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
