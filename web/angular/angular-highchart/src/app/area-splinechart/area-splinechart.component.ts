import { Component } from '@angular/core';
import * as Highcharts from 'highcharts';

@Component({
  selector: 'app-area-splinechart',
  templateUrl: './area-splinechart.component.html',
  styleUrls: ['./area-splinechart.component.css']
})
export class AreaSplinechartComponent {
  title = 'myHighChartsApp';
  highcharts: typeof Highcharts = Highcharts;
  chartOptions: Highcharts.Options = {
    chart: {
      type: 'areaspline'
    },
    title: {
      text: 'Number of Visitors visited Maasai Mara in a week'
    },
    legend: {
      layout: 'vertical',
      align: 'left',
      verticalAlign: 'top'
    },
    xAxis: {
      categories: [
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday',
        'Sunday'
      ],
      plotBands: [{
        from: 5,
        to: 6,
        color: 'orange'
      }]
    },
    yAxis: {
      title: {
        text: 'Number of visitors'
      }
    },
    tooltip: {
      valueSuffix: ' people'
    },
    plotOptions: {
      areaspline: {
        fillOpacity: 0.6
      }
    },
    series: [{
      type: 'areaspline',
      name: 'Maasai Mara',
      data: [5000, 2700, 3200, 3800, 4100, 5600, 6000]
    }]
  };
}
