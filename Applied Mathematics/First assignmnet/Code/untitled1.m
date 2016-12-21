function varargout = untitled1(varargin)
% UNTITLED1 MATLAB code for untitled1.fig
%      UNTITLED1, by itself, creates a new UNTITLED1 or raises the existing
%      singleton*.
%
%      H = UNTITLED1 returns the handle to a new UNTITLED1 or the handle to
%      the existing singleton*.
%
%      UNTITLED1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED1.M with the given input arguments.
%
%      UNTITLED1('Property','Value',...) creates a new UNTITLED1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled1

% Last Modified by GUIDE v2.5 09-Oct-2015 21:09:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled1_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled1_OutputFcn, ...
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


% --- Executes just before untitled1 is made visible.
function untitled1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled1 (see VARARGIN)

% Choose default command line output for untitled1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global b;
[b]=Conf_generation();
set(handles.togglebutton1,'BackgroundColor',[ b(1,1) double( not(b(1,1)) ) double( not(b(1,1)) ) ] );
set(handles.togglebutton2,'BackgroundColor',[ b(2,1) double( not(b(2,1)) ) double( not(b(2,1)) ) ] );
set(handles.togglebutton3,'BackgroundColor',[ b(3,1) double( not(b(3,1)) ) double( not(b(3,1)) ) ] );
set(handles.togglebutton4,'BackgroundColor',[ b(4,1) double( not(b(4,1)) ) double( not(b(4,1)) ) ] );
set(handles.togglebutton5,'BackgroundColor',[ b(5,1) double( not(b(5,1)) ) double( not(b(5,1)) ) ] );
set(handles.togglebutton6,'BackgroundColor',[ b(6,1) double( not(b(6,1)) ) double( not(b(6,1)) ) ] );
set(handles.togglebutton7,'BackgroundColor',[ b(7,1) double( not(b(7,1)) ) double( not(b(7,1)) ) ] );
set(handles.togglebutton8,'BackgroundColor',[ b(8,1) double( not(b(8,1)) ) double( not(b(8,1)) ) ] );
set(handles.togglebutton9,'BackgroundColor',[ b(9,1) double( not(b(9,1)) ) double( not(b(9,1)) ) ] );
set(handles.togglebutton10,'BackgroundColor',[ b(10,1) double( not(b(10,1)) ) double( not(b(10,1)) ) ] );
set(handles.togglebutton11,'BackgroundColor',[ b(11,1) double( not(b(11,1)) ) double( not(b(11,1)) ) ] );
set(handles.togglebutton12,'BackgroundColor',[ b(12,1) double( not(b(12,1)) ) double( not(b(12,1)) ) ] );
set(handles.togglebutton13,'BackgroundColor',[ b(13,1) double( not(b(13,1)) ) double( not(b(13,1)) ) ] );
set(handles.togglebutton14,'BackgroundColor',[ b(14,1) double( not(b(14,1)) ) double( not(b(14,1)) ) ] );
set(handles.togglebutton15,'BackgroundColor',[ b(15,1) double( not(b(15,1)) ) double( not(b(15,1)) ) ] );
set(handles.togglebutton16,'BackgroundColor',[ b(16,1) double( not(b(16,1)) ) double( not(b(16,1)) ) ] );
set(handles.togglebutton17,'BackgroundColor',[ b(17,1) double( not(b(17,1)) ) double( not(b(17,1)) ) ] );
set(handles.togglebutton18,'BackgroundColor',[ b(18,1) double( not(b(18,1)) ) double( not(b(18,1)) ) ] );
set(handles.togglebutton19,'BackgroundColor',[ b(19,1) double( not(b(19,1)) ) double( not(b(19,1)) ) ] );
set(handles.togglebutton20,'BackgroundColor',[ b(20,1) double( not(b(20,1)) ) double( not(b(20,1)) ) ] );
set(handles.togglebutton21,'BackgroundColor',[ b(21,1) double( not(b(21,1)) ) double( not(b(21,1)) ) ] );
set(handles.togglebutton22,'BackgroundColor',[ b(22,1) double( not(b(22,1)) ) double( not(b(22,1)) ) ] );
set(handles.togglebutton23,'BackgroundColor',[ b(23,1) double( not(b(23,1)) ) double( not(b(23,1)) ) ] );
set(handles.togglebutton24,'BackgroundColor',[ b(24,1) double( not(b(24,1)) ) double( not(b(24,1)) ) ] );
set(handles.togglebutton25,'BackgroundColor',[ b(25,1) double( not(b(25,1)) ) double( not(b(25,1)) ) ] );




% --- Outputs from this function are returned to the command line.
function varargout = untitled1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
%if(get(hObject,'Value')==0)
 %   set(hObject,'BackgroundColor',[0.941,0.941,0.941]
%else
set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton2,'BackgroundColor',double( xor(get(handles.togglebutton2,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton6,'BackgroundColor',double( xor(get(handles.togglebutton6,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2
set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton1,'BackgroundColor',double( xor(get(handles.togglebutton1,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton3,'BackgroundColor',double( xor(get(handles.togglebutton3,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton7,'BackgroundColor',double( xor(get(handles.togglebutton7,'BackgroundColor'),ones(1,3) ) ) );

% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton4
set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton3,'BackgroundColor',double( xor(get(handles.togglebutton3,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton5,'BackgroundColor',double( xor(get(handles.togglebutton5,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton9,'BackgroundColor',double( xor(get(handles.togglebutton9,'BackgroundColor'),ones(1,3) ) ) );

% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton2,'BackgroundColor',double( xor(get(handles.togglebutton2,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton4,'BackgroundColor',double( xor(get(handles.togglebutton4,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton8,'BackgroundColor',double( xor(get(handles.togglebutton8,'BackgroundColor'),ones(1,3) ) ) );
% --- Executes on button press in togglebutton5.
function togglebutton5_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton5

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton4,'BackgroundColor',double( xor(get(handles.togglebutton4,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton10,'BackgroundColor',double( xor(get(handles.togglebutton10,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton6.
function togglebutton6_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton6
set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton1,'BackgroundColor',double( xor(get(handles.togglebutton1,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton7,'BackgroundColor',double( xor(get(handles.togglebutton7,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton11,'BackgroundColor',double( xor(get(handles.togglebutton11,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton7.
function togglebutton7_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton7

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton2,'BackgroundColor',double( xor(get(handles.togglebutton2,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton6,'BackgroundColor',double( xor(get(handles.togglebutton6,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton8,'BackgroundColor',double( xor(get(handles.togglebutton8,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton12,'BackgroundColor',double( xor(get(handles.togglebutton12,'BackgroundColor'),ones(1,3) ) ) );
% --- Executes on button press in togglebutton9.
function togglebutton9_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton9

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton4,'BackgroundColor',double( xor(get(handles.togglebutton4,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton8,'BackgroundColor',double( xor(get(handles.togglebutton8,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton10,'BackgroundColor',double( xor(get(handles.togglebutton10,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton14,'BackgroundColor',double( xor(get(handles.togglebutton14,'BackgroundColor'),ones(1,3) ) ) );

% --- Executes on button press in togglebutton8.
function togglebutton8_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton8
set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton3,'BackgroundColor',double( xor(get(handles.togglebutton3,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton7,'BackgroundColor',double( xor(get(handles.togglebutton7,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton9,'BackgroundColor',double( xor(get(handles.togglebutton9,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton13,'BackgroundColor',double( xor(get(handles.togglebutton13,'BackgroundColor'),ones(1,3) ) ) );

% --- Executes on button press in togglebutton10.
function togglebutton10_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton10

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton5,'BackgroundColor',double( xor(get(handles.togglebutton5,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton9,'BackgroundColor',double( xor(get(handles.togglebutton9,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton15,'BackgroundColor',double( xor(get(handles.togglebutton15,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton11.
function togglebutton11_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton11

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton6,'BackgroundColor',double( xor(get(handles.togglebutton6,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton12,'BackgroundColor',double( xor(get(handles.togglebutton12,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton16,'BackgroundColor',double( xor(get(handles.togglebutton16,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton12.
function togglebutton12_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton12
set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton7,'BackgroundColor',double( xor(get(handles.togglebutton7,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton11,'BackgroundColor',double( xor(get(handles.togglebutton11,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton13,'BackgroundColor',double( xor(get(handles.togglebutton13,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton17,'BackgroundColor',double( xor(get(handles.togglebutton17,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton14.
function togglebutton14_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton14

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton9,'BackgroundColor',double( xor(get(handles.togglebutton9,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton13,'BackgroundColor',double( xor(get(handles.togglebutton13,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton15,'BackgroundColor',double( xor(get(handles.togglebutton15,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton19,'BackgroundColor',double( xor(get(handles.togglebutton19,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton13.
function togglebutton13_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton13

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton8,'BackgroundColor',double( xor(get(handles.togglebutton8,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton12,'BackgroundColor',double( xor(get(handles.togglebutton12,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton14,'BackgroundColor',double( xor(get(handles.togglebutton14,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton18,'BackgroundColor',double( xor(get(handles.togglebutton18,'BackgroundColor'),ones(1,3) ) ) );

% --- Executes on button press in togglebutton15.
function togglebutton15_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton15

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton10,'BackgroundColor',double( xor(get(handles.togglebutton10,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton14,'BackgroundColor',double( xor(get(handles.togglebutton14,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton20,'BackgroundColor',double( xor(get(handles.togglebutton20,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton16.
function togglebutton16_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton16
set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton11,'BackgroundColor',double( xor(get(handles.togglebutton11,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton17,'BackgroundColor',double( xor(get(handles.togglebutton17,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton21,'BackgroundColor',double( xor(get(handles.togglebutton21,'BackgroundColor'),ones(1,3) ) ) );

% --- Executes on button press in togglebutton17.
function togglebutton17_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton17

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton12,'BackgroundColor',double( xor(get(handles.togglebutton12,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton16,'BackgroundColor',double( xor(get(handles.togglebutton16,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton18,'BackgroundColor',double( xor(get(handles.togglebutton18,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton22,'BackgroundColor',double( xor(get(handles.togglebutton22,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton19.
function togglebutton19_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton19
set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton14,'BackgroundColor',double( xor(get(handles.togglebutton14,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton18,'BackgroundColor',double( xor(get(handles.togglebutton18,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton20,'BackgroundColor',double( xor(get(handles.togglebutton20,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton24,'BackgroundColor',double( xor(get(handles.togglebutton24,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton18.
function togglebutton18_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton18

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton13,'BackgroundColor',double( xor(get(handles.togglebutton13,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton17,'BackgroundColor',double( xor(get(handles.togglebutton17,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton19,'BackgroundColor',double( xor(get(handles.togglebutton19,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton23,'BackgroundColor',double( xor(get(handles.togglebutton23,'BackgroundColor'),ones(1,3) ) ) );

% --- Executes on button press in togglebutton20.
function togglebutton20_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton20

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton15,'BackgroundColor',double( xor(get(handles.togglebutton15,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton19,'BackgroundColor',double( xor(get(handles.togglebutton19,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton25,'BackgroundColor',double( xor(get(handles.togglebutton25,'BackgroundColor'),ones(1,3) ) ) );

% --- Executes on button press in togglebutton21.
function togglebutton21_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton21

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton16,'BackgroundColor',double( xor(get(handles.togglebutton16,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton22,'BackgroundColor',double( xor(get(handles.togglebutton22,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton22.
function togglebutton22_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton22

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton17,'BackgroundColor',double( xor(get(handles.togglebutton17,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton21,'BackgroundColor',double( xor(get(handles.togglebutton21,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton23,'BackgroundColor',double( xor(get(handles.togglebutton23,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton24.
function togglebutton24_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton24

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton19,'BackgroundColor',double( xor(get(handles.togglebutton19,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton23,'BackgroundColor',double( xor(get(handles.togglebutton23,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton25,'BackgroundColor',double( xor(get(handles.togglebutton25,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton23.
function togglebutton23_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton23

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton18,'BackgroundColor',double( xor(get(handles.togglebutton18,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton22,'BackgroundColor',double( xor(get(handles.togglebutton22,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton24,'BackgroundColor',double( xor(get(handles.togglebutton24,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes on button press in togglebutton25.
function togglebutton25_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton25

set(hObject,'BackgroundColor',double( xor(get(hObject,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton20,'BackgroundColor',double( xor(get(handles.togglebutton20,'BackgroundColor'),ones(1,3) ) ) );
set(handles.togglebutton24,'BackgroundColor',double( xor(get(handles.togglebutton24,'BackgroundColor'),ones(1,3) ) ) );


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in New_button.
function New_button_Callback(hObject, eventdata, handles)
% hObject    handle to New_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global b;
[b]=Conf_generation();
set(handles.togglebutton1,'BackgroundColor',[ b(1,1) double( not(b(1,1)) ) double( not(b(1,1)) ) ] );  % using not opertion will help to easly swith between the two colors which indicate the status of each light
set(handles.togglebutton2,'BackgroundColor',[ b(2,1) double( not(b(2,1)) ) double( not(b(2,1)) ) ] );
set(handles.togglebutton3,'BackgroundColor',[ b(3,1) double( not(b(3,1)) ) double( not(b(3,1)) ) ] );
set(handles.togglebutton4,'BackgroundColor',[ b(4,1) double( not(b(4,1)) ) double( not(b(4,1)) ) ] );
set(handles.togglebutton5,'BackgroundColor',[ b(5,1) double( not(b(5,1)) ) double( not(b(5,1)) ) ] );
set(handles.togglebutton6,'BackgroundColor',[ b(6,1) double( not(b(6,1)) ) double( not(b(6,1)) ) ] );
set(handles.togglebutton7,'BackgroundColor',[ b(7,1) double( not(b(7,1)) ) double( not(b(7,1)) ) ] );
set(handles.togglebutton8,'BackgroundColor',[ b(8,1) double( not(b(8,1)) ) double( not(b(8,1)) ) ] );
set(handles.togglebutton9,'BackgroundColor',[ b(9,1) double( not(b(9,1)) ) double( not(b(9,1)) ) ] );
set(handles.togglebutton10,'BackgroundColor',[ b(10,1) double( not(b(10,1)) ) double( not(b(10,1)) ) ] );
set(handles.togglebutton11,'BackgroundColor',[ b(11,1) double( not(b(11,1)) ) double( not(b(11,1)) ) ] );
set(handles.togglebutton12,'BackgroundColor',[ b(12,1) double( not(b(12,1)) ) double( not(b(12,1)) ) ] );
set(handles.togglebutton13,'BackgroundColor',[ b(13,1) double( not(b(13,1)) ) double( not(b(13,1)) ) ] );
set(handles.togglebutton14,'BackgroundColor',[ b(14,1) double( not(b(14,1)) ) double( not(b(14,1)) ) ] );
set(handles.togglebutton15,'BackgroundColor',[ b(15,1) double( not(b(15,1)) ) double( not(b(15,1)) ) ] );
set(handles.togglebutton16,'BackgroundColor',[ b(16,1) double( not(b(16,1)) ) double( not(b(16,1)) ) ] );
set(handles.togglebutton17,'BackgroundColor',[ b(17,1) double( not(b(17,1)) ) double( not(b(17,1)) ) ] );
set(handles.togglebutton18,'BackgroundColor',[ b(18,1) double( not(b(18,1)) ) double( not(b(18,1)) ) ] );
set(handles.togglebutton19,'BackgroundColor',[ b(19,1) double( not(b(19,1)) ) double( not(b(19,1)) ) ] );
set(handles.togglebutton20,'BackgroundColor',[ b(20,1) double( not(b(20,1)) ) double( not(b(20,1)) ) ] );
set(handles.togglebutton21,'BackgroundColor',[ b(21,1) double( not(b(21,1)) ) double( not(b(21,1)) ) ] );
set(handles.togglebutton22,'BackgroundColor',[ b(22,1) double( not(b(22,1)) ) double( not(b(22,1)) ) ] );
set(handles.togglebutton23,'BackgroundColor',[ b(23,1) double( not(b(23,1)) ) double( not(b(23,1)) ) ] );
set(handles.togglebutton24,'BackgroundColor',[ b(24,1) double( not(b(24,1)) ) double( not(b(24,1)) ) ] );
set(handles.togglebutton25,'BackgroundColor',[ b(25,1) double( not(b(25,1)) ) double( not(b(25,1)) ) ] );



set(handles.togglebutton1,'string','');
set(handles.togglebutton2,'string','');
set(handles.togglebutton3,'string','');
set(handles.togglebutton4,'string','');
set(handles.togglebutton5,'string','');
set(handles.togglebutton6,'string','');
set(handles.togglebutton7,'string','');
set(handles.togglebutton8,'string','');
set(handles.togglebutton9,'string','');
set(handles.togglebutton10,'string','');
set(handles.togglebutton11,'string','');
set(handles.togglebutton12,'string','');
set(handles.togglebutton13,'string','');
set(handles.togglebutton14,'string','');
set(handles.togglebutton15,'string','');
set(handles.togglebutton16,'string','');
set(handles.togglebutton17,'string','');
set(handles.togglebutton18,'string','');
set(handles.togglebutton19,'string','');
set(handles.togglebutton20,'string','');
set(handles.togglebutton21,'string','');
set(handles.togglebutton22,'string','');
set(handles.togglebutton23,'string','');
set(handles.togglebutton24,'string','');
set(handles.togglebutton25,'string','');



% --- Executes on button press in solve_button.
function solve_button_Callback(hObject, eventdata, handles)
% hObject    handle to solve_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=zeros(25,3);
b(1,:)=get(handles.togglebutton1,'BackgroundColor');
b(2,:)=get(handles.togglebutton2,'BackgroundColor');
b(3,:)=get(handles.togglebutton3,'BackgroundColor');
b(4,:)=get(handles.togglebutton4,'BackgroundColor');
b(5,:)=get(handles.togglebutton5,'BackgroundColor');
b(6,:)=get(handles.togglebutton6,'BackgroundColor');
b(7,:)=get(handles.togglebutton7,'BackgroundColor');
b(8,:)=get(handles.togglebutton8,'BackgroundColor');
b(9,:)=get(handles.togglebutton9,'BackgroundColor');
b(10,:)=get(handles.togglebutton10,'BackgroundColor');
b(11,:)=get(handles.togglebutton11,'BackgroundColor');
b(12,:)=get(handles.togglebutton12,'BackgroundColor');
b(13,:)=get(handles.togglebutton13,'BackgroundColor');
b(14,:)=get(handles.togglebutton14,'BackgroundColor');
b(15,:)=get(handles.togglebutton15,'BackgroundColor');
b(16,:)=get(handles.togglebutton16,'BackgroundColor');
b(17,:)=get(handles.togglebutton17,'BackgroundColor');
b(18,:)=get(handles.togglebutton18,'BackgroundColor');
b(19,:)=get(handles.togglebutton19,'BackgroundColor');
b(20,:)=get(handles.togglebutton20,'BackgroundColor');
b(21,:)=get(handles.togglebutton21,'BackgroundColor');
b(22,:)=get(handles.togglebutton22,'BackgroundColor');
b(23,:)=get(handles.togglebutton23,'BackgroundColor');
b(24,:)=get(handles.togglebutton24,'BackgroundColor');
b(25,:)=get(handles.togglebutton25,'BackgroundColor');

[sol_vec]=solve_game(b(:,1));
if(sol_vec(1,1)==1)
    set(handles.togglebutton1,'string','Click');
    set(handles.togglebutton1,'BackgroundColor',double( xor(get(handles.togglebutton1,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton2,'BackgroundColor',double( xor(get(handles.togglebutton2,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton6,'BackgroundColor',double( xor(get(handles.togglebutton6,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end


if(sol_vec(2,1)==1)
    set(handles.togglebutton2,'string','Click');
    set(handles.togglebutton2,'BackgroundColor',double( xor(get(handles.togglebutton2,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton1,'BackgroundColor',double( xor(get(handles.togglebutton1,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton3,'BackgroundColor',double( xor(get(handles.togglebutton3,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton7,'BackgroundColor',double( xor(get(handles.togglebutton7,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end


if(sol_vec(3,1)==1)
    set(handles.togglebutton3,'string','Click');
    set(handles.togglebutton3,'BackgroundColor',double( xor(get(handles.togglebutton3,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton2,'BackgroundColor',double( xor(get(handles.togglebutton2,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton4,'BackgroundColor',double( xor(get(handles.togglebutton4,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton8,'BackgroundColor',double( xor(get(handles.togglebutton8,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(4,1)==1)
    set(handles.togglebutton4,'string','Click');
    set(handles.togglebutton4,'BackgroundColor',double( xor(get(handles.togglebutton4,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton3,'BackgroundColor',double( xor(get(handles.togglebutton3,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton5,'BackgroundColor',double( xor(get(handles.togglebutton5,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton9,'BackgroundColor',double( xor(get(handles.togglebutton9,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(5,1)==1)
    set(handles.togglebutton5,'string','Click');
    set(handles.togglebutton5,'BackgroundColor',double( xor(get(handles.togglebutton5,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton4,'BackgroundColor',double( xor(get(handles.togglebutton4,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton10,'BackgroundColor',double( xor(get(handles.togglebutton10,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end



if(sol_vec(6,1)==1)
    set(handles.togglebutton6,'string','Click');
    set(handles.togglebutton6,'BackgroundColor',double( xor(get(handles.togglebutton6,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton1,'BackgroundColor',double( xor(get(handles.togglebutton1,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton7,'BackgroundColor',double( xor(get(handles.togglebutton7,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton11,'BackgroundColor',double( xor(get(handles.togglebutton11,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end


if(sol_vec(7,1)==1)
    set(handles.togglebutton7,'string','Click');
    set(handles.togglebutton7,'BackgroundColor',double( xor(get(handles.togglebutton7,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton2,'BackgroundColor',double( xor(get(handles.togglebutton2,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton6,'BackgroundColor',double( xor(get(handles.togglebutton6,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton8,'BackgroundColor',double( xor(get(handles.togglebutton8,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton12,'BackgroundColor',double( xor(get(handles.togglebutton12,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end



if(sol_vec(8,1)==1)
    set(handles.togglebutton8,'string','Click');
    set(handles.togglebutton8,'BackgroundColor',double( xor(get(handles.togglebutton8,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton3,'BackgroundColor',double( xor(get(handles.togglebutton3,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton7,'BackgroundColor',double( xor(get(handles.togglebutton7,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton9,'BackgroundColor',double( xor(get(handles.togglebutton9,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton13,'BackgroundColor',double( xor(get(handles.togglebutton13,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end


if(sol_vec(9,1)==1)
    set(handles.togglebutton9,'string','Click');
    set(handles.togglebutton9,'BackgroundColor',double( xor(get(handles.togglebutton9,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton4,'BackgroundColor',double( xor(get(handles.togglebutton4,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton8,'BackgroundColor',double( xor(get(handles.togglebutton8,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton10,'BackgroundColor',double( xor(get(handles.togglebutton10,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton14,'BackgroundColor',double( xor(get(handles.togglebutton14,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(10,1)==1)
    set(handles.togglebutton10,'string','Click');
    set(handles.togglebutton10,'BackgroundColor',double( xor(get(handles.togglebutton10,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton5,'BackgroundColor',double( xor(get(handles.togglebutton5,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton9,'BackgroundColor',double( xor(get(handles.togglebutton9,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton15,'BackgroundColor',double( xor(get(handles.togglebutton15,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end



if(sol_vec(11,1)==1)
    set(handles.togglebutton11,'string','Click');
    set(handles.togglebutton11,'BackgroundColor',double( xor(get(handles.togglebutton11,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton6,'BackgroundColor',double( xor(get(handles.togglebutton6,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton12,'BackgroundColor',double( xor(get(handles.togglebutton12,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton16,'BackgroundColor',double( xor(get(handles.togglebutton16,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(12,1)==1)
    set(handles.togglebutton12,'string','Click');
    set(handles.togglebutton12,'BackgroundColor',double( xor(get(handles.togglebutton12,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton7,'BackgroundColor',double( xor(get(handles.togglebutton7,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton11,'BackgroundColor',double( xor(get(handles.togglebutton11,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton13,'BackgroundColor',double( xor(get(handles.togglebutton13,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton17,'BackgroundColor',double( xor(get(handles.togglebutton17,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end


if(sol_vec(13,1)==1)
    set(handles.togglebutton13,'string','Click');
    set(handles.togglebutton13,'BackgroundColor',double( xor(get(handles.togglebutton13,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton8,'BackgroundColor',double( xor(get(handles.togglebutton8,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton12,'BackgroundColor',double( xor(get(handles.togglebutton12,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton14,'BackgroundColor',double( xor(get(handles.togglebutton14,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton18,'BackgroundColor',double( xor(get(handles.togglebutton18,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end


if(sol_vec(14,1)==1)
    set(handles.togglebutton14,'string','Click');
    set(handles.togglebutton14,'BackgroundColor',double( xor(get(handles.togglebutton14,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton9,'BackgroundColor',double( xor(get(handles.togglebutton9,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton13,'BackgroundColor',double( xor(get(handles.togglebutton13,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton15,'BackgroundColor',double( xor(get(handles.togglebutton15,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton19,'BackgroundColor',double( xor(get(handles.togglebutton19,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);   
end

if(sol_vec(15,1)==1)
    set(handles.togglebutton15,'string','Click');
    set(handles.togglebutton15,'BackgroundColor',double( xor(get(handles.togglebutton15,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton10,'BackgroundColor',double( xor(get(handles.togglebutton10,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton14,'BackgroundColor',double( xor(get(handles.togglebutton14,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton20,'BackgroundColor',double( xor(get(handles.togglebutton20,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(16,1)==1)
    set(handles.togglebutton16,'string','Click');
    set(handles.togglebutton16,'BackgroundColor',double( xor(get(handles.togglebutton16,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton11,'BackgroundColor',double( xor(get(handles.togglebutton11,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton17,'BackgroundColor',double( xor(get(handles.togglebutton17,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton21,'BackgroundColor',double( xor(get(handles.togglebutton21,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end


if(sol_vec(17,1)==1)
    set(handles.togglebutton17,'string','Click');
    set(handles.togglebutton17,'BackgroundColor',double( xor(get(handles.togglebutton17,'BackgroundColor'),ones(1,3) ) ) );
	set(handles.togglebutton12,'BackgroundColor',double( xor(get(handles.togglebutton12,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton16,'BackgroundColor',double( xor(get(handles.togglebutton16,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton18,'BackgroundColor',double( xor(get(handles.togglebutton18,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton22,'BackgroundColor',double( xor(get(handles.togglebutton22,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(18,1)==1)
    set(handles.togglebutton18,'string','Click');
    set(handles.togglebutton18,'BackgroundColor',double( xor(get(handles.togglebutton18,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton13,'BackgroundColor',double( xor(get(handles.togglebutton13,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton17,'BackgroundColor',double( xor(get(handles.togglebutton17,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton19,'BackgroundColor',double( xor(get(handles.togglebutton19,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton23,'BackgroundColor',double( xor(get(handles.togglebutton23,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(19,1)==1)
    set(handles.togglebutton19,'string','Click');
    set(handles.togglebutton19,'BackgroundColor',double( xor(get(handles.togglebutton19,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton14,'BackgroundColor',double( xor(get(handles.togglebutton14,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton18,'BackgroundColor',double( xor(get(handles.togglebutton18,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton20,'BackgroundColor',double( xor(get(handles.togglebutton20,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton24,'BackgroundColor',double( xor(get(handles.togglebutton24,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(20,1)==1)
    set(handles.togglebutton20,'string','Click');
    set(handles.togglebutton20,'BackgroundColor',double( xor(get(handles.togglebutton20,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton15,'BackgroundColor',double( xor(get(handles.togglebutton15,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton19,'BackgroundColor',double( xor(get(handles.togglebutton19,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton25,'BackgroundColor',double( xor(get(handles.togglebutton25,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(21,1)==1)
    set(handles.togglebutton21,'string','Click');
    set(handles.togglebutton21,'BackgroundColor',double( xor(get(handles.togglebutton21,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton16,'BackgroundColor',double( xor(get(handles.togglebutton16,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton22,'BackgroundColor',double( xor(get(handles.togglebutton22,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(22,1)==1)
    set(handles.togglebutton22,'string','Click');
    set(handles.togglebutton22,'BackgroundColor',double( xor(get(handles.togglebutton22,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton17,'BackgroundColor',double( xor(get(handles.togglebutton17,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton21,'BackgroundColor',double( xor(get(handles.togglebutton21,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton23,'BackgroundColor',double( xor(get(handles.togglebutton23,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(23,1)==1)
    set(handles.togglebutton23,'string','Click');
    set(handles.togglebutton23,'BackgroundColor',double( xor(get(handles.togglebutton23,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton18,'BackgroundColor',double( xor(get(handles.togglebutton18,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton22,'BackgroundColor',double( xor(get(handles.togglebutton22,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton24,'BackgroundColor',double( xor(get(handles.togglebutton24,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(24,1)==1)
    set(handles.togglebutton24,'string','Click');
    set(handles.togglebutton24,'BackgroundColor',double( xor(get(handles.togglebutton24,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton19,'BackgroundColor',double( xor(get(handles.togglebutton19,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton23,'BackgroundColor',double( xor(get(handles.togglebutton23,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton25,'BackgroundColor',double( xor(get(handles.togglebutton25,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end

if(sol_vec(25,1)==1)
    set(handles.togglebutton25,'string','Click');
    set(handles.togglebutton25,'BackgroundColor',double( xor(get(handles.togglebutton25,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton20,'BackgroundColor',double( xor(get(handles.togglebutton20,'BackgroundColor'),ones(1,3) ) ) );
    set(handles.togglebutton24,'BackgroundColor',double( xor(get(handles.togglebutton24,'BackgroundColor'),ones(1,3) ) ) );
    pause(1);
end
