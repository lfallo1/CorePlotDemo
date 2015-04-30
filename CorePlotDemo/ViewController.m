//
//  ViewController.m
//  BitchFuck
//
//  Created by Lance Fallon on 4/29/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CPTGraphHostingView *hostView = [[CPTGraphHostingView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:hostView];
    
    CPTGraph *graph = [[CPTXYGraph alloc]initWithFrame:hostView.bounds];
    hostView.hostedGraph = graph;
    
    CPTXYPlotSpace *plotSpace = (CPTXYPlotSpace *)graph.defaultPlotSpace;
    
    [plotSpace setXRange:[CPTPlotRange plotRangeWithLocation:CPTDecimalFromFloat(0) length:CPTDecimalFromFloat(16)]];
    [plotSpace setYRange:[CPTPlotRange plotRangeWithLocation:CPTDecimalFromFloat(-4) length:CPTDecimalFromFloat(8)]];
    
    CPTScatterPlot *plot = [[CPTScatterPlot alloc]initWithFrame:CGRectZero];
    plot.dataSource = self;
    
    [graph addPlot:plot toPlotSpace:graph.defaultPlotSpace];
}

-(NSUInteger)numberOfRecordsForPlot:(CPTPlot *)plot{
    return 9;
}

-(NSNumber *)numberForPlot:(CPTPlot *)plot field:(NSUInteger)fieldEnum recordIndex:(NSUInteger)idx{
    NSUInteger x = idx - 4;
    if(fieldEnum == CPTScatterPlotFieldX){
        return [NSNumber numberWithUnsignedInteger: x];
    }
    else{
        return [NSNumber numberWithUnsignedInteger:x];
    }
}

@end
