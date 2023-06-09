import { Component } from '@angular/core';
import * as Highcharts from 'highcharts';

@Component({
  selector: 'app-histogram',
  templateUrl: './histogram.component.html',
  styleUrls: ['./histogram.component.css']
})
export class HistogramComponent {
  title = 'myHighChartApp';
  Highcharts: typeof Highcharts = Highcharts;
  chartOptions: Highcharts.Options = {
    chart: {
      type: 'column'
    },
    title: {
      text: 'Histogram for Rainfall'
    }, 
    xAxis: {
      categories: [
        'Jun',
        'Jul',
        'Aug',
        'Sep',
        'Oct',
      ],
      crosshair: true
    },
    yAxis: {
      title: { text: 'Rain in mm' }, 
      min: 0,
    }, 
    plotOptions: {
      column: {
        pointPadding: 0,
        borderWidth: 0,
        groupPadding: 0,
        shadow: false
      }
    }, 
    series: [{
      type: 'column',
      name: 'Month',
      data: [49.9, 71.5, 106.4, 129.2, 144.0]
    }]
  };
}
