import { Component } from '@angular/core';
import * as Highcharts from 'highcharts';

@Component({
  selector: 'app-areachart2',
  templateUrl: './areachart2.component.html',
  styleUrls: ['./areachart2.component.css']
})
export class Areachart2Component {
  title = 'myHighChartsApp';
  Highcharts: typeof Highcharts = Highcharts;
  chartOptions: Highcharts.Options = {
    chart: {
      type: 'area'
    },
    title: {
      text: 'Yearly Performance of XYZ Mutual Fund'
    },
    xAxis: {
      categories: ["2018", "2019", "2020", "2021", "2022"]
    },
    yAxis: {
      title: {
        text: 'Absolute Profit in Percentage'
      }
    },
    legend: {
      layout: 'vertical',
      align: 'right',
      verticalAlign: 'middle'
    },
    series: [{
      name: 'Large Cap',
      type: 'area',
      data: [10, 8, 12, 15, -2]
    }, {
      name: 'Mid cap',
      type: 'area',
      data: [9, 6.5, 7, 18, 5]
    }, {
      name: 'Small cap',
      type: 'area',
      data: [5.6, -2, -3, 25, 3]
    }]
  }
}
