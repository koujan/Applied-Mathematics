function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 25-Dec-2015 15:12:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.test_image_wind);
imshow('FR.jpg');

axes(handles.Rec_image_wind);
imshow('FR.jpg');

% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in train.
function train_Callback(hObject, eventdata, handles)
% hObject    handle to train (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global train_fname;
global train_path;
global eigenvec;
global phi_i;
global label_mat;
set(handles.test_im_list, 'Enable', 'inactive');
set(handles.test, 'Enable', 'inactive');
[train_fname, train_path, fil] = uigetfile('Train_set\*.jpg','please choose training images','MultiSelect','on');
if(train_path~=0)
[phi_i,eigenvec,label_mat]=train(train_fname,train_path);
end
set(handles.test_im_list, 'Enable', 'on');
set(handles.test, 'Enable', 'on');
% --- Executes on button press in test.
function test_Callback(hObject, eventdata, handles)
% hObject    handle to test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global train_fname;
global train_path;
global test_fname;
global test_path;
global eigenvec;
global phi_i;
[test_fname,test_path,filter2] = uigetfile('test_set\*.jpg','please choose test images','MultiSelect','on');
test_fname=cellstr(test_fname);
if(test_path~=0)
    set(handles.listbox2,'string','');
    s=size(eigenvec);
    error=0;
    set(handles.test_im_list,'string',char(test_fname));
    for i=1:length(test_fname); 

        test=imread(char(strcat(test_path,test_fname(i))) );
        test=concat(test);
        q=double(test)*eigenvec;
        dist=zeros(s(2),1);
         for count=1:s(2)
            dist(count,1)= sqrt(sum( (phi_i(count,:)-q).^2 ) );
         end
    [mini,ind1]=min(dist);
    dist(ind1)=max(dist);
    [mini,ind2]=min(dist);
    dist(ind2)=max(dist);
    [mini,ind3]=min(dist);
    axes(handles.test_image_wind);
    imshow(char(strcat(test_path,test_fname(1))));
    old_str=get(handles.listbox2,'string');
    set_match={char(old_str);char(train_fname(ind1));char(train_fname(ind2));char(train_fname(ind3))};
    set(handles.listbox2,'string',set_match);
    person_frm_test=char(test_fname(i));
    person_frm_train=char(train_fname(ind1));
    if(~strcmp(person_frm_test(1,1:end-5),person_frm_train(1,1:end-5)))
        error=error+1;
    end
    %FILENAME(ind1)
    %imshow(strcat(char(PATHNAME),char(FILENAME(ind1))));
    %imshow(strcat(char(PATHNAME),char(FILENAME(ind1))));
    %imshow(strcat(char(PATHNAME),char(FILENAME(ind1))));
    %FILENAME(ind2)
    %FILENAME(ind3)  
    accur=(1-error/length(test_fname))*100;
    set(handles.accuracy,'string',['The accuracy is: ',num2str(accur)]);
    end
end

% --- Executes on button press in normalize.
function normalize_Callback(hObject, eventdata, handles)
% hObject    handle to normalize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file, direc, filter] = uigetfile('Images\*.jpg','please choose images to be normalized');
if(direc~=0)
Img = Normalization(direc);
end

% --- Executes on selection change in test_im_list.
function test_im_list_Callback(hObject, eventdata, handles)
% hObject    handle to test_im_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns test_im_list contents as cell array
%        contents{get(hObject,'Value')} returns selected item from test_im_list
global eigenvec;
global phi_i;
global test_fname;
global test_path;
global train_fname;
global train_path;
s=size(eigenvec);
set(handles.test_im_list, 'Enable', 'inactive');
index =get(handles.test_im_list,'Value');
pers_name= get(handles.test_im_list,'String');
pers_name=cellstr(pers_name);
pers=pers_name(index);
set(handles.name1,'string',pers);
axes(handles.test_image_wind);
imshow(char(strcat(test_path,test_fname(index))));

test=imread(char(strcat(test_path,test_fname(index))) );
test=concat(test);
q=double(test)*eigenvec;
dist=zeros(s(2),1);
 for count=1:s(2)
      dist(count,1)= sqrt(sum( (phi_i(count,:)-q).^2 ) );
 end
    [mini,ind1]=min(dist);
    dist(ind1)=max(dist);
    [mini,ind2]=min(dist);
    dist(ind2)=max(dist);
    [mini,ind3]=min(dist);
    set_match={char(train_fname(ind1));char(train_fname(ind2));char(train_fname(ind3))};
    set(handles.listbox2,'string',set_match);
    axes(handles.Rec_image_wind);
    imshow(char(strcat(train_path,train_fname(ind1))));
    set(handles.name2,'string',train_fname(ind1));
    set(handles.test_im_list, 'Enable', 'on');
% --- Executes during object creation, after setting all properties.
function test_im_list_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test_im_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2
global train_fname;
global train_path;
set(handles.listbox2, 'Enable', 'inactive');
str=get(handles.listbox2,'string');
if(~isempty(str))
    index =get(handles.listbox2,'Value');
    str=cellstr(str);
    str=str(index);
    set(handles.name2,'string',str);
    axes(handles.Rec_image_wind);
    imshow(char(strcat(train_path,str)));
end
set(handles.listbox2, 'Enable', 'on');
% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    msg={'Steps :                                                                          ',...
         '                                                                                         ',...
         '1-Select one Image from the folder that contains the images you want to normalize        ',...
         '2-Select all the Images you want to Train to build the train set                                               ',...
         '3-Select all the Images you want to Test to build the test set                                               ',...
         '4-Select from the Test images Listbox, on the left, the image you want to test                       ',...
         '                                                                                         ',...
         'You will get the Best three matchs in the Result of Recognition listbox and the Accuracy of this test ',...
         '                                                                                         ',...
         'The goal of the Project is to obtain Eigenfaces that every face can be regard as a linear combination of these eigenfaces.',...
         '                                                                                         '};
     msgbox(msg,'PCA Face Recognition','help');


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
