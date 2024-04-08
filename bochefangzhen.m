function varargout = bochefangzhen(varargin)
% BOCHEFANGZHEN M-file for bochefangzhen.fig
%      BOCHEFANGZHEN, by itself, creates a new BOCHEFANGZHEN or raises the existing
%      singleton*.
%
%      H = BOCHEFANGZHEN returns the handle to a new BOCHEFANGZHEN or the handle to
%      the existing singleton*.
%
%      BOCHEFANGZHEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BOCHEFANGZHEN.M with the given input arguments.
%
%      BOCHEFANGZHEN('Property','Value',...) creates a new BOCHEFANGZHEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bochefangzhen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bochefangzhen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bochefangzhen

% Last Modified by GUIDE v2.5 30-Aug-2010 12:37:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bochefangzhen_OpeningFcn, ...
                   'gui_OutputFcn',  @bochefangzhen_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before bochefangzhen is made visible.
function bochefangzhen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bochefangzhen (see VARARGIN)

% Choose default command line output for bochefangzhen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bochefangzhen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bochefangzhen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global long;% ʹ����������ȫ�ֱ���
global width;% ʹ����������ȫ�ֱ���
global qianxuan;% ʹ����������ȫ�ֱ���
global houxuan;% ʹ����������ȫ�ֱ���
global lunjin;% ʹ����������ȫ�ֱ���
global fai;% ʹ����������ȫ�ֱ���
global x6;% ʹ����������ȫ�ֱ���
global y6;% ʹ����������ȫ�ֱ���
global x7;% ʹ����������ȫ�ֱ���
global y7;% ʹ����������ȫ�ֱ���
global x8;% ʹ����������ȫ�ֱ���
global y8;% ʹ����������ȫ�ֱ���
global x9;% ʹ����������ȫ�ֱ���
global y9;% ʹ����������ȫ�ֱ���
global ds;% ʹ����������ȫ�ֱ���
global r;% ʹ����������ȫ�ֱ���
global xd;% ʹ����������ȫ�ֱ���
global yd;% ʹ����������ȫ�ֱ���


axis([-10,20,-10,20]);
axis manual;
hold on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�������������ŵ�Ϊ�����복λ�Ѿ������������Ҫ����

%�ֶ����������

long=str2double(get(handles.edit1,'string'));
width=str2double(get(handles.edit2,'string'));
qianxuan=str2double(get(handles.edit3,'string'));
houxuan=str2double(get(handles.edit4,'string'));
lunjin=str2double(get(handles.edit5,'string'));
fai=str2double(get(handles.edit6,'string'));

x6=str2double(get(handles.edit7,'string'));
y6=str2double(get(handles.edit8,'string'));
x7=str2double(get(handles.edit9,'string'));
y7=str2double(get(handles.edit10,'string'));
x9=str2double(get(handles.edit11,'string'));
y9=str2double(get(handles.edit12,'string'));
x8=str2double(get(handles.edit13,'string'));
y8=str2double(get(handles.edit14,'string'));
ds=str2double(get(handles.edit15,'string'));

if(fai>0)
   fprintf('��ʼƫ�����벻��ȷ������������\n'); 
   return;
end


% long=6;%long Ϊ������
% width=3;%width Ϊ����
% qianxuan=1;%qianxuan Ϊ��ǰ������
% houxuan=1;% houxuan Ϊ����������
% lunjin=0.3;%lunjinΪ���ְ뾶
% fai=-(pi)/5;%fai Ϊǰһ�ι켣�ĳ�ǰ��ƫ��
% 
% 
% x6=11;
% y6=15;
% x7=18;
% y7=15;
% x8=18;
% y8=0;
% x9=11;
% y9=0;  
% 
% ds=0.3; %���沽��

%�Զ����ɲ�����
r=(long-qianxuan-houxuan)/abs(tan(fai));% �����ĺ������ĵ�ת��뾶

%theta0=(pi)/2;%theta0Ϊ��ʼ�㳵��ƫ��
xd=(x8+x9)/2;%�յ�����
yd=(y8+y9)/2+1.5;
h0=plot(xd,yd,'bo');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%����λ

%(x6,y6)����x7,y7����(x8,y8)��(x9,y9)�ֱ�Ϊ��λ���ĸ��˵�����

%���ݳ�λ���ĸ��˵㻭����λ������
  
l0=plot([x6,x7],[y6,y7],'-k');
l1=plot([x7,x8],[y7,y8],'-k');
l2=plot([x8,x9],[y8,y9],'-k');


% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
cla reset;
clear all;
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global long;% ʹ����������ȫ�ֱ���
global width;% ʹ����������ȫ�ֱ���
global qianxuan;% ʹ����������ȫ�ֱ���
global houxuan;% ʹ����������ȫ�ֱ���
global lunjin;% ʹ����������ȫ�ֱ���
global fai;% ʹ����������ȫ�ֱ���
global x6;% ʹ����������ȫ�ֱ���
global y6;% ʹ����������ȫ�ֱ���
global x7;% ʹ����������ȫ�ֱ���
global y7;% ʹ����������ȫ�ֱ���
global x8;% ʹ����������ȫ�ֱ���
global y8;% ʹ����������ȫ�ֱ���
global x9;% ʹ����������ȫ�ֱ���
global y9;% ʹ����������ȫ�ֱ���
global ds;% ʹ����������ȫ�ֱ���
global r;% ʹ����������ȫ�ֱ���
global xd;% ʹ����������ȫ�ֱ���
global yd;% ʹ����������ȫ�ֱ���

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ys=inf;
yt=inf;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if(fai>0)
   fprintf('��ʼƫ�����벻��ȷ������������\n'); 
   return;
end



%���켣,��t1,t2

[x0,y0] = ginput(1);%��ȡ�������
plot(x0,y0,'bo');

m1=-(xd-x0-r)^2-3*r^2-(yd-y0)^2;
m2=4*r*(xd-x0-r);
m3=4*r*(yd-y0);
t1=-asin(m1/(sqrt(m2^2+m3^2)))+asin(m2/(sqrt(m2^2+m3^2)));
m4=yd-y0+2*r*sin(t1);
m5=asin(m4/r);
t2=t1-m5;

x1=x0+r;
y1=y0;

x2=x1-2*r*cos(t1);
y2=y1-2*r*sin(t1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\
%Լ���ռ�����
if((sqrt((x0-xd+r)^2+(y0-yd)^2)-3*r)>0)
   fprintf('�����Զ����С�뾶���������޷�����\n'); 
   return;
end
if((t1-t2)+(pi/8)<0 | (t1-t2)-(pi/8)>0)
    fprintf('�յ㳵��ƫ�ǹ�����С�뾶���������޷�����\n');
    return;
end
%��һ�׶ι켣
 
x1=x0+r;
y1=y0;
fai1=fai;
  
for i=pi:ds:(pi+t1)
     x=x1+r*cos(i);
     y=y1+r*sin(i);
     
     theta=i-(pi/2);%theta0Ϊ��ʼ�㳵��ƫ��
     
     jiao1=atan((width/2)/(long-houxuan));
     jiao2=jiao1;
     jiao3=atan((width/2)/houxuan);
     jiao4=jiao3;
     jiao1=theta-jiao1;
     jiao2=theta+jiao2;
     jiao3=theta+pi-jiao3;
     jiao4=theta+pi+jiao4;
     
     r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
     r2=sqrt((width/2)^2+houxuan^2);
     youqianx=x+r1*cos(jiao1);
     youqiany=y+r1*sin(jiao1);
     
     zuoqianx=x+r1*cos(jiao2);
     zuoqiany=y+r1*sin(jiao2);
     
     zuohoux=x+r2*cos(jiao3);
     zuohouy=y+r2*sin(jiao3);
     
     youhoux=x+r2*cos(jiao4);
     youhouy=y+r2*sin(jiao4);
     
     h1=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
     h2=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
     h3=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
     h4=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
     jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
     jiao6=jiao5;
     jiao5=theta-jiao5;
     jiao6=theta+jiao6;
     jiao7=theta+(pi/2);
     jiao8=theta-(pi/2);
     
     jiao9=theta+fai1;
     jiaoa=theta;
     
     r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
     r4=width/2;
     
     yqianlunzx=x+r3*cos(jiao5);
     yqianlunzy=y+r3*sin(jiao5);
     yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
     yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
     yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
     yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
     h5=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     
     zqianlunzx=x+r3*cos(jiao6);
     zqianlunzy=y+r3*sin(jiao6);
     zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
     zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
     zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
     zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
     h6=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     
     zhoulunzx=x+r4*cos(jiao7);
     zhoulunzy=y+r4*sin(jiao7);
     zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
     zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
     zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
     zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
     h7=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     
     yhoulunzx=x+r4*cos(jiao8);
     yhoulunzy=y+r4*sin(jiao8);
     yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
     yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
     yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
     yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
     h8=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
     %�ڴ�����о��������ж��Ƿ��һ�׶λ������ϰ���
     if(yhoulunzx-x6>=0 & yhoulunzy-y6>=0)
         fprintf('��һ�׶����ϣ���С�뾶���������޷�����\n');
         delete(h1);
         delete(h2);
         delete(h3);
         delete(h4);
         delete(h5);
         delete(h6);
         delete(h7);
         delete(h8);
         return;
     end

     pause(0.01);
    
     delete(h1);
     delete(h2);
     delete(h3);
     delete(h4);
     delete(h5);
     delete(h6);
     delete(h7);
     delete(h8);
               
end

%�ڶ��׶ι켣
x2=x1+2*r*cos(pi+t1);
y2=y1+2*r*sin(pi+t1);
fai2=-fai;
       
for i=t1:-ds:(t1-t2)
    x=x2+r*cos(i);
    y=y2+r*sin(i);
    theta=(pi/2)+i;
     if(theta-(pi/2)<=0)
         xs=x;
         ys=y;
         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         %�յ�ƫ��Ϊ�����������һ��Ϊ��������ֱ��
         for j=ys:-2.5*ds:yd                                 
             x=xs;
             y=j;
             theta=pi/2;%theta0Ϊ��ʼ�㳵��ƫ��
     
             jiao1=atan((width/2)/(long-houxuan));
             jiao2=jiao1;
             jiao3=atan((width/2)/houxuan);
             jiao4=jiao3;
             jiao1=theta-jiao1;
             jiao2=theta+jiao2;
             jiao3=theta+pi-jiao3;
             jiao4=theta+pi+jiao4;
     
             r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
             r2=sqrt((width/2)^2+houxuan^2);
             youqianx=x+r1*cos(jiao1);
             youqiany=y+r1*sin(jiao1);
     
             zuoqianx=x+r1*cos(jiao2);
             zuoqiany=y+r1*sin(jiao2);
     
             zuohoux=x+r2*cos(jiao3);
             zuohouy=y+r2*sin(jiao3);
     
             youhoux=x+r2*cos(jiao4);
             youhouy=y+r2*sin(jiao4);
     
            l1=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
            l2=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
            l3=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
            l4=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
            jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
            jiao6=jiao5;
            jiao5=theta-jiao5;
            jiao6=theta+jiao6;
            jiao7=theta+(pi/2);
            jiao8=theta-(pi/2);
     
            jiao9=theta;
            jiaoa=theta;
     
            r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
            r4=width/2;
     
            yqianlunzx=x+r3*cos(jiao5);
            yqianlunzy=y+r3*sin(jiao5);
            yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
            yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
            yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
            yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
            l5=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     
           zqianlunzx=x+r3*cos(jiao6);
           zqianlunzy=y+r3*sin(jiao6);
           zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
           zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
           zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
           zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
           l6=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     
           zhoulunzx=x+r4*cos(jiao7);
           zhoulunzy=y+r4*sin(jiao7);
           zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
           zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
           zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
           zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
           l7=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     
           yhoulunzx=x+r4*cos(jiao8);
           yhoulunzy=y+r4*sin(jiao8);
           yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
           yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
           yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
           yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
           l8=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
           
           pause(0.1);
     
           delete(l1);
           delete(l2);
           delete(l3);
           delete(l4);
           delete(l5);
           delete(l6);
           delete(l7);
           delete(l8);
         end
         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         break;
     end
                
    
    
    jiao1=atan((width/2)/(long-houxuan));
    jiao2=jiao1;
    jiao3=atan((width/2)/houxuan);
    jiao4=jiao3;
    jiao1=theta-jiao1;
    jiao2=theta+jiao2;
    jiao3=theta+pi-jiao3;
    jiao4=theta+pi+jiao4;
    
    r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
    r2=sqrt((width/2)^2+houxuan^2);
    youqianx=x+r1*cos(jiao1);
    youqiany=y+r1*sin(jiao1);
    
    
    %�ڴ�����о��������ж��Ƿ�ڶ��׶λ������ϰ���
     if(youqianx-x6>=0 & youqiany-y6>=0)
         fprintf('�ڶ��׶����ϣ���С�뾶���������޷�����\n');
        return;
     end
   
    zuoqianx=x+r1*cos(jiao2);
    zuoqiany=y+r1*sin(jiao2);
    
    zuohoux=x+r2*cos(jiao3);
    zuohouy=y+r2*sin(jiao3);
    
     %�ڴ�����о��������ж��Ƿ�ڶ��׶λ�������λ�ĺ��
     if(zuohoux-x9>=0 & zuohouy-y9<=0)
         fprintf('�ڶ��׶�������λ�ĺ�࣬��С�뾶���������޷�����\n');
        return;
     end
    
    youhoux=x+r2*cos(jiao4);
    youhouy=y+r2*sin(jiao4);
    
    %�ڴ�����о��������ж��Ƿ�ڶ��׶λ�������λ���Ҳ�
     if(youhoux-x7>=0)
         fprintf('�ڶ��׶�������λ�Ҳ࣬��С�뾶���������޷�����\n');
        return;
     end
    
    h9=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
    h10=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
    h11=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
    h12=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
    
    jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
    jiao6=jiao5;
    jiao5=theta-jiao5;
    jiao6=theta+jiao6;
    jiao7=theta+(pi/2);
    jiao8=theta-(pi/2);
    
    jiao9=theta+fai2;
    jiaoa=theta;
    
    r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
    r4=width/2;
    
    yqianlunzx=x+r3*cos(jiao5);
    yqianlunzy=y+r3*sin(jiao5);
    yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
    yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
    yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
    yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
    h13=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
    
    zqianlunzx=x+r3*cos(jiao6);
    zqianlunzy=y+r3*sin(jiao6);
    zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
    zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
    zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
    zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
    h14=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
    
    zhoulunzx=x+r4*cos(jiao7);
    zhoulunzy=y+r4*sin(jiao7);
    zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
    zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
    zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
    zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
    h15=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
    
    yhoulunzx=x+r4*cos(jiao8);
    yhoulunzy=y+r4*sin(jiao8);
    yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
    yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
    yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
    yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
    h16=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
    
    pause(0.01) ;
    
    delete(h9);
    delete(h10);
    delete(h11);
    delete(h12);
    delete(h13);
    delete(h14);
    delete(h15);
    delete(h16);
     
    
end
%�����׶ι켣����Ϊ���յ�ʱ�����������ƫ�ǣ�����Ҫ����
  if((t1-t2)>0)
      x3=x2+2*r*cos(t1-t2);
      y3=y2+2*r*sin(t1-t2);
      for i=(pi+t1-t2):-ds:pi
       
     x=x3+r*cos(i);
     y=y3+r*sin(i);
     
     theta=i-(pi/2);%theta0Ϊ��ʼ�㳵��ƫ��
     
     jiao1=atan((width/2)/(long-houxuan));
     jiao2=jiao1;
     jiao3=atan((width/2)/houxuan);
     jiao4=jiao3;
     jiao1=theta-jiao1;
     jiao2=theta+jiao2;
     jiao3=theta+pi-jiao3;
     jiao4=theta+pi+jiao4;
     
     r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
     r2=sqrt((width/2)^2+houxuan^2);
     youqianx=x+r1*cos(jiao1);
     youqiany=y+r1*sin(jiao1);
     
    %�ڴ�����о��������ж��Ƿ�����׶λ������ϰ���
     if(youqianx-x6>=0 & youqiany-y6>=0)
         fprintf('�����׶����ϣ���С�뾶���������޷�����\n');
        return;
     end
     
     zuoqianx=x+r1*cos(jiao2);
     zuoqiany=y+r1*sin(jiao2);
     
     zuohoux=x+r2*cos(jiao3);
     zuohouy=y+r2*sin(jiao3);
     
     youhoux=x+r2*cos(jiao4);
     youhouy=y+r2*sin(jiao4);
     
     l9=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
     l10=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
     l11=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
     l12=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
     jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
     jiao6=jiao5;
     jiao5=theta-jiao5;
     jiao6=theta+jiao6;
     jiao7=theta+(pi/2);
     jiao8=theta-(pi/2);
     
     jiao9=theta+fai1;
     jiaoa=theta;
     
     r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
     r4=width/2;
     
     yqianlunzx=x+r3*cos(jiao5);
     yqianlunzy=y+r3*sin(jiao5);
     yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
     yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
     yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
     yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
     l13=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     
     zqianlunzx=x+r3*cos(jiao6);
     zqianlunzy=y+r3*sin(jiao6);
     zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
     zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
     zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
     zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
     l14=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     
     zhoulunzx=x+r4*cos(jiao7);
     zhoulunzy=y+r4*sin(jiao7);
     zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
     zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
     zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
     zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
     l15=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     
     yhoulunzx=x+r4*cos(jiao8);
     yhoulunzy=y+r4*sin(jiao8);
     yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
     yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
     yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
     yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
     l16=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
     
     
     pause(0.1);
    
     delete(l9);
     delete(l10);
     delete(l11);
     delete(l12);
     delete(l13);
     delete(l14);
     delete(l15);
     delete(l16);
      end
       %����һ�γ���������ֱ������
         xt=x;
         yt=y;
         for j=yt:-2.5*ds:yd                                 
             x=xt;
             y=j;
             theta=pi/2;%theta0Ϊ��ʼ�㳵��ƫ��
     
             jiao1=atan((width/2)/(long-houxuan));
             jiao2=jiao1;
             jiao3=atan((width/2)/houxuan);
             jiao4=jiao3;
             jiao1=theta-jiao1;
             jiao2=theta+jiao2;
             jiao3=theta+pi-jiao3;
             jiao4=theta+pi+jiao4;
     
             r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
             r2=sqrt((width/2)^2+houxuan^2);
             youqianx=x+r1*cos(jiao1);
             youqiany=y+r1*sin(jiao1);
     
             zuoqianx=x+r1*cos(jiao2);
             zuoqiany=y+r1*sin(jiao2);
     
             zuohoux=x+r2*cos(jiao3);
             zuohouy=y+r2*sin(jiao3);
     
             youhoux=x+r2*cos(jiao4);
             youhouy=y+r2*sin(jiao4);
     
            l1=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
            l2=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
            l3=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
            l4=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
            jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
            jiao6=jiao5;
            jiao5=theta-jiao5;
            jiao6=theta+jiao6;
            jiao7=theta+(pi/2);
            jiao8=theta-(pi/2);
     
            jiao9=theta;
            jiaoa=theta;
     
            r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
            r4=width/2;
     
            yqianlunzx=x+r3*cos(jiao5);
            yqianlunzy=y+r3*sin(jiao5);
            yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
            yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
            yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
            yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
            l5=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     
           zqianlunzx=x+r3*cos(jiao6);
           zqianlunzy=y+r3*sin(jiao6);
           zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
           zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
           zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
           zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
           l6=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     
           zhoulunzx=x+r4*cos(jiao7);
           zhoulunzy=y+r4*sin(jiao7);
           zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
           zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
           zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
           zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
           l7=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     
           yhoulunzx=x+r4*cos(jiao8);
           yhoulunzy=y+r4*sin(jiao8);
           yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
           yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
           yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
           yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
           l8=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
           
           pause(0.1);
     
           delete(l1);
           delete(l2);
           delete(l3);
           delete(l4);
           delete(l5);
           delete(l6);
           delete(l7);
           delete(l8);
         end
                  
  end
  
    
    s1=t1*r;
    s2=t2*r;
    s3=(t1-t2)*r;
    s4=yt-yd;
    s5=s1;
    s6=ys-yd;
        if(ys~=inf)
           fprintf('��С�뾶����������\n����תs1=%f,����תs5=%f,����s6=%f\n',s1,s5,s6);
        elseif(yt~=inf)
            fprintf('��С�뾶����������\n����תs1=%f,����תs2=%f,��ǰתs3=%f,����s4=%f\n',s1,s2,s3,s4);
        elseif(ys==inf & yt==inf & t1-t2==0)
            fprintf('��С�뾶����������\n����תs1=%f,����תs2=%f\n',s1,s2);
        end
        

% x6=str2double(get(handles.edit7,'string'));
% y6=str2double(get(handles.edit8,'string'));
% x7=str2double(get(handles.edit9,'string'));
% y7=str2double(get(handles.edit10,'string'));
% x9=str2double(get(handles.edit11,'string'));
% y9=str2double(get(handles.edit12,'string'));
% x8=str2double(get(handles.edit13,'string'));
% y8=str2double(get(handles.edit14,'string'));
% ds=str2double(get(handles.edit15,'string'));
        

function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','4.285');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','1.765');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','0.75');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)

function edit4_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','1.025');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)

function edit5_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','0.31');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)

function edit6_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','-0.4870');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)

function edit7_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','12');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)

function edit14_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','0');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)

function edit15_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','0.03');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)

function edit12_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','0');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)

function edit13_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','15');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)

function edit10_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','7.5');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)

function edit11_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','12');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)

function edit8_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','7.5');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)

function edit9_CreateFcn(hObject, eventdata, handles)
set(hObject,'string','15');
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)

function pushbutton4_Callback(hObject, eventdata, handles)
global long;% ʹ����������ȫ�ֱ���
global width;% ʹ����������ȫ�ֱ���
global qianxuan;% ʹ����������ȫ�ֱ���
global houxuan;% ʹ����������ȫ�ֱ���
global lunjin;% ʹ����������ȫ�ֱ���
global fai;% ʹ����������ȫ�ֱ���
global x6;% ʹ����������ȫ�ֱ���
global y6;% ʹ����������ȫ�ֱ���
global x7;% ʹ����������ȫ�ֱ���
global y7;% ʹ����������ȫ�ֱ���
global x8;% ʹ����������ȫ�ֱ���
global y8;% ʹ����������ȫ�ֱ���
global x9;% ʹ����������ȫ�ֱ���
global y9;% ʹ����������ȫ�ֱ���
global ds;% ʹ����������ȫ�ֱ���
global r;% ʹ����������ȫ�ֱ���
global xd;% ʹ����������ȫ�ֱ���
global yd;% ʹ����������ȫ�ֱ���

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ys=inf;
yt=inf;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if(fai>0)
   fprintf('��ʼƫ�����벻��ȷ������������\n'); 
   return;
end


%���켣,��t1,t2

[x0,y0] = ginput(1);%��ȡ�������
plot(x0,y0,'bo');

m1=-(xd-x0-r)^2-3*r^2-(yd-y0)^2;
m2=4*r*(xd-x0-r);
m3=4*r*(yd-y0);
t1=-asin(m1/(sqrt(m2^2+m3^2)))+asin(m2/(sqrt(m2^2+m3^2)));
m4=yd-y0+2*r*sin(t1);
m5=asin(m4/r);
t2=t1-m5;

x1=x0+r;
y1=y0;

x2=x1-2*r*cos(t1);
y2=y1-2*r*sin(t1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\
%Լ���ռ�����
if((sqrt((x0-xd+r)^2+(y0-yd)^2)-3*r)>0)
   fprintf('�����Զ����С�뾶���������޷�����\n'); 
   return;
end
if((t1-t2)+(pi/8)<0 | (t1-t2)-(pi/8)>0)
    fprintf('�յ㳵��ƫ�ǹ�����С�뾶���������޷�����\n');
    return;
end
%��һ�׶ι켣
 
x1=x0+r;
y1=y0;
fai1=fai;
  
for i=pi:ds:(pi+t1)
     x=x1+r*cos(i);
     y=y1+r*sin(i);
     
     theta=i-(pi/2);%theta0Ϊ��ʼ�㳵��ƫ��
     
     jiao1=atan((width/2)/(long-houxuan));
     jiao2=jiao1;
     jiao3=atan((width/2)/houxuan);
     jiao4=jiao3;
     jiao1=theta-jiao1;
     jiao2=theta+jiao2;
     jiao3=theta+pi-jiao3;
     jiao4=theta+pi+jiao4;
     
     r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
     r2=sqrt((width/2)^2+houxuan^2);
     youqianx=x+r1*cos(jiao1);
     youqiany=y+r1*sin(jiao1);
     
     zuoqianx=x+r1*cos(jiao2);
     zuoqiany=y+r1*sin(jiao2);
     
     zuohoux=x+r2*cos(jiao3);
     zuohouy=y+r2*sin(jiao3);
     
     youhoux=x+r2*cos(jiao4);
     youhouy=y+r2*sin(jiao4);
     
     h1=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
     h2=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
     h3=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
     h4=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
         
     jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
     jiao6=jiao5;
     jiao5=theta-jiao5;
     jiao6=theta+jiao6;
     jiao7=theta+(pi/2);
     jiao8=theta-(pi/2);
     
     jiao9=theta+fai1;
     jiaoa=theta;
     
     r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
     r4=width/2;
     
     yqianlunzx=x+r3*cos(jiao5);
     yqianlunzy=y+r3*sin(jiao5);
     yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
     yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
     yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
     yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
     h5=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     
     zqianlunzx=x+r3*cos(jiao6);
     zqianlunzy=y+r3*sin(jiao6);
     zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
     zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
     zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
     zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
     h6=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     
     zhoulunzx=x+r4*cos(jiao7);
     zhoulunzy=y+r4*sin(jiao7);
     zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
     zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
     zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
     zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
     h7=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     
     yhoulunzx=x+r4*cos(jiao8);
     yhoulunzy=y+r4*sin(jiao8);
     yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
     yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
     yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
     yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
     h8=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
     %�ڴ�����о��������ж��Ƿ��һ�׶λ������ϰ���
     if(yhoulunzx-x6>=0 & yhoulunzy-y6>=0)
         fprintf('��һ�׶����ϣ���С�뾶���������޷�����\n');
         return;
     end

     pause(0.01);
    
end

%�ڶ��׶ι켣
x2=x1+2*r*cos(pi+t1);
y2=y1+2*r*sin(pi+t1);
fai2=-fai;
       
for i=t1:-ds:(t1-t2)
    x=x2+r*cos(i);
    y=y2+r*sin(i);
    theta=(pi/2)+i;
     if(theta-(pi/2)<=0)
         xs=x;
         ys=y;
         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         %�յ�ƫ��Ϊ�����������һ��Ϊ��������ֱ��
         for j=ys:-2.5*ds:yd                                 
             x=xs;
             y=j;
             theta=pi/2;%theta0Ϊ��ʼ�㳵��ƫ��
     
             jiao1=atan((width/2)/(long-houxuan));
             jiao2=jiao1;
             jiao3=atan((width/2)/houxuan);
             jiao4=jiao3;
             jiao1=theta-jiao1;
             jiao2=theta+jiao2;
             jiao3=theta+pi-jiao3;
             jiao4=theta+pi+jiao4;
     
             r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
             r2=sqrt((width/2)^2+houxuan^2);
             youqianx=x+r1*cos(jiao1);
             youqiany=y+r1*sin(jiao1);
     
             zuoqianx=x+r1*cos(jiao2);
             zuoqiany=y+r1*sin(jiao2);
     
             zuohoux=x+r2*cos(jiao3);
             zuohouy=y+r2*sin(jiao3);
     
             youhoux=x+r2*cos(jiao4);
             youhouy=y+r2*sin(jiao4);
     
            l1=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
            l2=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
            l3=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
            l4=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
            jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
            jiao6=jiao5;
            jiao5=theta-jiao5;
            jiao6=theta+jiao6;
            jiao7=theta+(pi/2);
            jiao8=theta-(pi/2);
     
            jiao9=theta;
            jiaoa=theta;
     
            r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
            r4=width/2;
     
            yqianlunzx=x+r3*cos(jiao5);
            yqianlunzy=y+r3*sin(jiao5);
            yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
            yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
            yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
            yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
            l5=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     
           zqianlunzx=x+r3*cos(jiao6);
           zqianlunzy=y+r3*sin(jiao6);
           zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
           zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
           zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
           zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
           l6=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     
           zhoulunzx=x+r4*cos(jiao7);
           zhoulunzy=y+r4*sin(jiao7);
           zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
           zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
           zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
           zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
           l7=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     
           yhoulunzx=x+r4*cos(jiao8);
           yhoulunzy=y+r4*sin(jiao8);
           yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
           yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
           yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
           yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
           l8=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
           
           pause(0.1);
     
         end
         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         break;
     end
  
    jiao1=atan((width/2)/(long-houxuan));
    jiao2=jiao1;
    jiao3=atan((width/2)/houxuan);
    jiao4=jiao3;
    jiao1=theta-jiao1;
    jiao2=theta+jiao2;
    jiao3=theta+pi-jiao3;
    jiao4=theta+pi+jiao4;
    
    r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
    r2=sqrt((width/2)^2+houxuan^2);
    youqianx=x+r1*cos(jiao1);
    youqiany=y+r1*sin(jiao1);
   
    %�ڴ�����о��������ж��Ƿ�ڶ��׶λ������ϰ���
     if(youqianx-x6>=0 & youqiany-y6>=0)
         fprintf('�ڶ��׶����ϣ���С�뾶���������޷�����\n');
        return;
     end
   
    zuoqianx=x+r1*cos(jiao2);
    zuoqiany=y+r1*sin(jiao2);
    
    zuohoux=x+r2*cos(jiao3);
    zuohouy=y+r2*sin(jiao3);
    
     %�ڴ�����о��������ж��Ƿ�ڶ��׶λ�������λ���
     if(zuohoux-x9>=0 & zuohouy-y9<=0)
         fprintf('�ڶ��׶�������λ��࣬��С�뾶���������޷�����\n');
        return;
     end
    
    youhoux=x+r2*cos(jiao4);
    youhouy=y+r2*sin(jiao4);
    
     %�ڴ�����о��������ж��Ƿ�ڶ��׶λ�������λ���Ҳ�
     if(youhoux-x7>=0)
         fprintf('�ڶ��׶�������λ���Ҳ࣬��С�뾶���������޷�����\n');
        return;
     end
    
    h9=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
    h10=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
    h11=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
    h12=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
    
    jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
    jiao6=jiao5;
    jiao5=theta-jiao5;
    jiao6=theta+jiao6;
    jiao7=theta+(pi/2);
    jiao8=theta-(pi/2);
    
    jiao9=theta+fai2;
    jiaoa=theta;
    
    r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
    r4=width/2;
    
    yqianlunzx=x+r3*cos(jiao5);
    yqianlunzy=y+r3*sin(jiao5);
    yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
    yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
    yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
    yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
    h13=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
    
    zqianlunzx=x+r3*cos(jiao6);
    zqianlunzy=y+r3*sin(jiao6);
    zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
    zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
    zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
    zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
    h14=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
    
    zhoulunzx=x+r4*cos(jiao7);
    zhoulunzy=y+r4*sin(jiao7);
    zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
    zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
    zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
    zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
    h15=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
    
    yhoulunzx=x+r4*cos(jiao8);
    yhoulunzy=y+r4*sin(jiao8);
    yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
    yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
    yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
    yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
    h16=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
    
    pause(0.01) ;
    
end
%�����׶ι켣����Ϊ���յ�ʱ�����������ƫ�ǣ�����Ҫ����
  if((t1-t2)>0)
      x3=x2+2*r*cos(t1-t2);
      y3=y2+2*r*sin(t1-t2);
      for i=(pi+t1-t2):-ds:pi
       
     x=x3+r*cos(i);
     y=y3+r*sin(i);
     
     theta=i-(pi/2);%theta0Ϊ��ʼ�㳵��ƫ��
     
     jiao1=atan((width/2)/(long-houxuan));
     jiao2=jiao1;
     jiao3=atan((width/2)/houxuan);
     jiao4=jiao3;
     jiao1=theta-jiao1;
     jiao2=theta+jiao2;
     jiao3=theta+pi-jiao3;
     jiao4=theta+pi+jiao4;
     
     r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
     r2=sqrt((width/2)^2+houxuan^2);
     youqianx=x+r1*cos(jiao1);
     youqiany=y+r1*sin(jiao1);
     
     %�ڴ�����о��������ж��Ƿ�����׶λ������ϰ���
     if(youqianx-x6>=0 & youqiany-y6>=0)
         fprintf('�����׶����ϣ���С�뾶���������޷�����\n');
        return;
     end
     
     zuoqianx=x+r1*cos(jiao2);
     zuoqiany=y+r1*sin(jiao2);
     
     zuohoux=x+r2*cos(jiao3);
     zuohouy=y+r2*sin(jiao3);
     
     youhoux=x+r2*cos(jiao4);
     youhouy=y+r2*sin(jiao4);
     
     l9=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
     l10=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
     l11=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
     l12=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
     jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
     jiao6=jiao5;
     jiao5=theta-jiao5;
     jiao6=theta+jiao6;
     jiao7=theta+(pi/2);
     jiao8=theta-(pi/2);
     
     jiao9=theta+fai1;
     jiaoa=theta;
     
     r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
     r4=width/2;
     
     yqianlunzx=x+r3*cos(jiao5);
     yqianlunzy=y+r3*sin(jiao5);
     yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
     yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
     yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
     yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
     l13=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     
     zqianlunzx=x+r3*cos(jiao6);
     zqianlunzy=y+r3*sin(jiao6);
     zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
     zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
     zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
     zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
     l14=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     
     zhoulunzx=x+r4*cos(jiao7);
     zhoulunzy=y+r4*sin(jiao7);
     zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
     zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
     zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
     zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
     l15=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     
     yhoulunzx=x+r4*cos(jiao8);
     yhoulunzy=y+r4*sin(jiao8);
     yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
     yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
     yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
     yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
     l16=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
     
     
     pause(0.1);
    
      end
       %����һ�γ���������ֱ������
         xt=x;
         yt=y;
         for j=yt:-2.5*ds:yd                                 
             x=xt;
             y=j;
             theta=pi/2;%theta0Ϊ��ʼ�㳵��ƫ��
     
             jiao1=atan((width/2)/(long-houxuan));
             jiao2=jiao1;
             jiao3=atan((width/2)/houxuan);
             jiao4=jiao3;
             jiao1=theta-jiao1;
             jiao2=theta+jiao2;
             jiao3=theta+pi-jiao3;
             jiao4=theta+pi+jiao4;
     
             r1=sqrt((width/2)^2+(long-houxuan)^2);%��������������ĸ��˵�
             r2=sqrt((width/2)^2+houxuan^2);
             youqianx=x+r1*cos(jiao1);
             youqiany=y+r1*sin(jiao1);
     
             zuoqianx=x+r1*cos(jiao2);
             zuoqiany=y+r1*sin(jiao2);
     
             zuohoux=x+r2*cos(jiao3);
             zuohouy=y+r2*sin(jiao3);
     
             youhoux=x+r2*cos(jiao4);
             youhouy=y+r2*sin(jiao4);
     
            l1=plot([youqianx,zuoqianx],[youqiany,zuoqiany],'-r');
            l2=plot([zuoqianx,zuohoux],[zuoqiany,zuohouy],'-r');
            l3=plot([zuohoux,youhoux],[zuohouy,youhouy],'-r');
            l4=plot([youhoux,youqianx],[youhouy,youqiany],'-r');
      
     
            jiao5=atan((width/2)/(long-qianxuan-houxuan));%������д�����ĸ�����
            jiao6=jiao5;
            jiao5=theta-jiao5;
            jiao6=theta+jiao6;
            jiao7=theta+(pi/2);
            jiao8=theta-(pi/2);
     
            jiao9=theta;
            jiaoa=theta;
     
            r3=sqrt((width/2)^2+(long-qianxuan-houxuan)^2);
            r4=width/2;
     
            yqianlunzx=x+r3*cos(jiao5);
            yqianlunzy=y+r3*sin(jiao5);
            yqianlunqx=yqianlunzx+lunjin*cos(jiao9);
            yqianlunqy=yqianlunzy+lunjin*sin(jiao9);
            yqianlunhx=yqianlunzx-lunjin*cos(jiao9);
            yqianlunhy=yqianlunzy-lunjin*sin(jiao9);
            l5=plot([yqianlunqx,yqianlunhx],[yqianlunqy,yqianlunhy],'-k');
     
           zqianlunzx=x+r3*cos(jiao6);
           zqianlunzy=y+r3*sin(jiao6);
           zqianlunqx=zqianlunzx+lunjin*cos(jiao9);
           zqianlunqy=zqianlunzy+lunjin*sin(jiao9);
           zqianlunhx=zqianlunzx-lunjin*cos(jiao9);
           zqianlunhy=zqianlunzy-lunjin*sin(jiao9);
           l6=plot([zqianlunqx,zqianlunhx],[zqianlunqy,zqianlunhy],'-k');
     
           zhoulunzx=x+r4*cos(jiao7);
           zhoulunzy=y+r4*sin(jiao7);
           zhoulunqx=zhoulunzx+lunjin*cos(jiaoa);
           zhoulunqy=zhoulunzy+lunjin*sin(jiaoa);
           zhoulunhx=zhoulunzx-lunjin*cos(jiaoa);
           zhoulunhy=zhoulunzy-lunjin*sin(jiaoa);
           l7=plot([zhoulunqx,zhoulunhx],[zhoulunqy,zhoulunhy],'-k');
     
           yhoulunzx=x+r4*cos(jiao8);
           yhoulunzy=y+r4*sin(jiao8);
           yhoulunqx=yhoulunzx+lunjin*cos(jiaoa);
           yhoulunqy=yhoulunzy+lunjin*sin(jiaoa);
           yhoulunhx=yhoulunzx-lunjin*cos(jiaoa);
           yhoulunhy=yhoulunzy-lunjin*sin(jiaoa);
           l8=plot([yhoulunqx,yhoulunhx],[yhoulunqy,yhoulunhy],'-k');
           
           pause(0.1);
     
         end
      
  end
    
    s1=t1*r;
    s2=t2*r;
    s3=(t1-t2)*r;
    s4=yt-yd;
    s5=s1;
    s6=ys-yd;
        if(ys~=inf)
           fprintf('��С�뾶����������\n����תs1=%f,����תs5=%f,����s6=%f\n',s1,s5,s6);
        elseif(yt~=inf)
            fprintf('��С�뾶����������\n����תs1=%f,����תs2=%f,��ǰתs3=%f,����s4=%f\n',s1,s2,s3,s4);
        elseif(ys==inf & yt==inf & t1-t2==0)
            fprintf('��С�뾶����������\n����תs1=%f,����תs2=%f\n',s1,s2);
        end

function pushbutton4_ButtonDownFcn(hObject, eventdata, handles)


function pushbutton2_ButtonDownFcn(hObject, eventdata, handles)
