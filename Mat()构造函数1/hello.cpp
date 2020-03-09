#include<opencv2/opencv.hpp>

#include<iostream>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <time.h>

using namespace std;
using namespace cv;
int getkey() {
    int character;
    struct termios orig_term_attr;
    struct termios new_term_attr;

    /* set the terminal to raw mode */
    tcgetattr(fileno(stdin), &orig_term_attr);
    memcpy(&new_term_attr, &orig_term_attr, sizeof(struct termios));
    new_term_attr.c_lflag &= ~(ECHO|ICANON);
    new_term_attr.c_cc[VTIME] = 0;
    new_term_attr.c_cc[VMIN] = 0;
    tcsetattr(fileno(stdin), TCSANOW, &new_term_attr);

    /* read a character from the stdin stream without blocking */
    /*   returns EOF (-1) if no character is available */
    character = fgetc(stdin);

    /* restore the original terminal attributes */
    tcsetattr(fileno(stdin), TCSANOW, &orig_term_attr);

    return character;
}

int main(){

   VideoCapture cap(3);  
    if(!cap.isOpened())  
    {  
        cout << "----------------摄像头没有打开！！！------------------" << endl;
        return -1;  
    }  
    Mat frame;  
    char key = 'x';
	time_t totalseconds = time(NULL);//获取总妙数
	struct tm *st = localtime(&totalseconds);
	VideoWriter writeVideo;
    string color_name=to_string(st->tm_year + 1900) + "-" + to_string(st->tm_mon + 1) + "-" + 
           to_string(st->tm_mday) + "-" + to_string(st->tm_hour) + "-" + to_string(st->tm_min) 
             + "-" + to_string(st->tm_sec) + ".avi";
    writeVideo.open(color_name,CV_FOURCC('M','J','P','G'),25,Size(640,480),1);
   while(key != 'q')  
    {  
        key = getkey();
       cap>>frame;  

        
        writeVideo.write(frame);
	
	waitKey(10);
    
    }  
	writeVideo.release();
    return 0;  

}
