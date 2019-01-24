clc,clear;
w = [0.2516 0.1428 0.4117 0.1939];
a = load('E:\qqfileRecv\数据归一化排序.txt');
rank = sum(a.*w,2);