import { ComponentFixture, TestBed } from '@angular/core/testing';

import { StackPyramidChartComponent } from './stack-pyramid-chart.component';

describe('StackPyramidChartComponent', () => {
  let component: StackPyramidChartComponent;
  let fixture: ComponentFixture<StackPyramidChartComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ StackPyramidChartComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(StackPyramidChartComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
