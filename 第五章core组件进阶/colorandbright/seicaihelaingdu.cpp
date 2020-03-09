#include<opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include<iostream>
#include <stdio.h>
#include <vector>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <time.h>

using namespace cv;
using namespace std;
static void on_ContrastAndBright(int,void*);
int g_nContrastValue;//对比
int g_nBrightValue;//亮度值
Mat g_srcImage ;
Mat g_dstImage;

static void on_ContrastAndBright(int,void*);
int main(){
    int j = 0;
  g_srcImage = imread("../dota_pa.png");
  if(g_srcImage.empty()){
      printf("图像载入失败!\n");
  }
  imshow("1",g_srcImage);
  g_dstImage = Mat::zeros(g_srcImage.size(),g_srcImage.type());
  g_nContrastValue = 80;
  g_nBrightValue = 80;
  namedWindow("效果窗口",1);
  createTrackbar("对比度：","效果窗口",&g_nContrastValue,300,on_ContrastAndBright);
  createTrackbar("亮度：","效果窗口",&g_nBrightValue,300,on_ContrastAndBright);
  on_ContrastAndBright(g_nContrastValue,0);//执行回调函数
  on_ContrastAndBright(g_nBrightValue,0);
  double time0 = getTickCount();
  while(char(waitKey(1))!='q'){
     

  }//等待q退出
   double time1 = (getTickCount()-time0)/getTickFrequency();
   printf("%lf",time1);
  return 0;


}

static void on_ContrastAndBright(int,void*){
   
   namedWindow("原始窗口",1);
   for(int y = 0;y<g_srcImage.rows;y++){
       for(int x=0;x<g_srcImage.cols;x++){
           for(int i = 0;i<3;i++){
               g_dstImage.at<Vec3b>(y,x)[i] = 
               saturate_cast<uchar>((g_nContrastValue*0.01)*(g_srcImage.at<Vec3b>(y,x)[i]) + g_nBrightValue);
               //增加亮度和对比度，saturate_cast是一个模板函数
               //对于一个彩色Mat图像，会返回一个由8位数组成的向量，定义为Vec3b
           }
       }
   } 
  
   imshow("原始窗口",g_srcImage);
   imshow("效果窗口",g_dstImage);
 
  
}

