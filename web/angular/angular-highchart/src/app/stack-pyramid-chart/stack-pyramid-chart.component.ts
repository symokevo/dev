import { Component } from '@angular/core';
import * as Highcharts from 'highcharts';
import More from 'highcharts/highcharts-more';
More(Highcharts);

@Component({
  selector: 'app-stack-pyramid-chart',
  templateUrl: './stack-pyramid-chart.component.html',
  styleUrls: ['./stack-pyramid-chart.component.css']
})
export class StackPyramidChartComponent {
  title = 'myHighChartsApp';
  Highcharts: typeof Highcharts = Highcharts;
  chartOptions: Highcharts.Options = {
    chart: {
      type: 'columnpyramid'
    }, 
    title: {
      text: 'Stack Column Pyramid Chart'
    },
    xAxis: {
      categories: ['Maths', 'Science', 'History', 'Social Science', 'English']
    },
    yAxis: {
      min: 0,
      title: {
        text: 'Total Hour Studied'
      },
      stackLabels: {
        enabled: true,
        style: {
          fontWeight: 'bold',
          color: 'gray'
        }
      }
    }, 
    legend: {
      align: 'right',
      x: -30,
      verticalAlign: 'top',
      y: 25,
      floating: true,
      backgroundColor: 'white',
      borderColor: '#CCC',
      borderWidth: 1,
      shadow: false
    },
    tooltip: {
      headerFormat: '<b>{point.x}</b><br>',
      pointFormat: '{series.name}: {point.y}<br>Total: {point.stackTotal}'
    },
    plotOptions: {
      columnpyramid: {
        stacking: 'normal',
        dataLabels: {
          enabled: true,
          color: 'white'
        }
      }
    }, 
    series: [{
      type: 'columnpyramid',
      name: 'Rocy',
      data: [4, 2, 1, 8, 9]
    }, 
    { type: 'columnpyramid', 
    name: 'Luies', 
    data: [1, 5, 1, 4, 2]
  }, {
    type: 'columnpyramid', 
    name: 'simon',
    data: [7, 2, 3, 1, 4]
  }]
  }
}
