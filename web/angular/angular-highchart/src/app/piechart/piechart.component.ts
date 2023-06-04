import { Component } from '@angular/core';
import * as Highcharts from 'highcharts'

@Component({
  selector: 'app-piechart',
  templateUrl: './piechart.component.html',
  styleUrls: ['./piechart.component.css']
})
export class PiechartComponent {
  title = 'Pie Chart';
  highcharts = Highcharts;
  chartOptions: Highcharts.Options = {
    chart: {
      type: 'pie'
    },
    title: {
      text: 'Programming languages used by Developers Worldwide'
    },
    plotOptions: {
      pie:{
        allowPointSelect: true,
        showInLegend: true,
        // slicedOffset: 50,
        cursor: 'pointer',
        dataLabels: {
          enabled: true,
          format: '<b>{point.name}</b>: {point.percentage:.1f}%'
        }
      }
    },
    tooltip: {
      pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    series: [{
      type: "pie",
      name: 'Uses',
      colorByPoint: true,
      data: [{
        name: 'C#',
        y: 55,
        sliced: true,
        selected: true
      }, {
        name: 'VB',
        y: 25
      }, {
        name: 'J#',
        y: 10
      }, {
        name: 'VC++',
        y: 10
      }]
    }]
  };
}
