import { Component } from '@angular/core';
import * as Highcharts from 'highcharts';
import More from 'highcharts/highcharts-more';
More(Highcharts);

@Component({
  selector: 'app-pyramid-chart',
  templateUrl: './pyramid-chart.component.html',
  styleUrls: ['./pyramid-chart.component.css']
})
export class PyramidChartComponent {
  title = 'myHighChartsApp';
  Highcharts: typeof Highcharts = Highcharts;
  chartOptions: Highcharts.Options = {
    chart: {
      type: 'columnpyramid'
    }, 
    title: {
      text: 'Height of Different Students in a class'
    }, 
    colors: ['red', 'blue', 'green', 'brown', 'pink'],
    xAxis: {
      type: 'category',
      crosshair: true,
      labels: {
        style: {
          fontSize: '10px'
        }
      },
    },
    yAxis: {
      min: 0,
      title: {
        text: 'Height (cm)'
      }
    },
    tooltip: {
      valueSuffix: ' cm'
    },
    series: [{
      name: 'Height',
      type: 'columnpyramid',
      colorByPoint: true,
      showInLegend: true,
      data: [
        ['Mohan', 162.56],
        ['Ram', 177.80],
        ['Simon', 157.48],
        ['Kevin', 160.00],
        ['Mike', 175.50]
      ]
    }]
  }
}
