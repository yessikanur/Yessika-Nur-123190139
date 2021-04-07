function varargout = no2(varargin)
% NO2 MATLAB code for no2.fig
%      NO2, by itself, creates a new NO2 or raises the existing
%      singleton*.
%
%      H = NO2 returns the handle to a new NO2 or the handle to
%      the existing singleton*.
%
%      NO2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NO2.M with the given input arguments.
%
%      NO2('Property','Value',...) creates a new NO2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before no2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to no2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help no2

% Last Modified by GUIDE v2.5 08-Apr-2021 01:27:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @no2_OpeningFcn, ...
                   'gui_OutputFcn',  @no2_OutputFcn, ...
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


% --- Executes just before no2 is made visible.
function no2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to no2 (see VARARGIN)

% Choose default command line output for no2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes no2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = no2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function panjang_Callback(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of panjang as text
%        str2double(get(hObject,'String')) returns contents of panjang as a double


% --- Executes during object creation, after setting all properties.
function panjang_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinggi_Callback(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinggi as text
%        str2double(get(hObject,'String')) returns contents of tinggi as a double


% --- Executes during object creation, after setting all properties.
function tinggi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lebar_Callback(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lebar as text
%        str2double(get(hObject,'String')) returns contents of lebar as a double


% --- Executes during object creation, after setting all properties.
function lebar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in luas.
function luas_Callback(hObject, eventdata, handles)
% hObject    handle to luas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
panjang = get(handles.panjang, 'string');
lebar = get(handles.lebar, 'string');
tinggi = get(handles.tinggi, 'string');
panjang = str2double(panjang);
lebar = str2double(lebar);
tinggi = str2double(tinggi);
luas = 2*(panjang*lebar + panjang*tinggi + lebar*tinggi);
hasilLuas = num2str(luas);
set(handles.hasilLuas, 'string',(hasilLuas));

% --- Executes on button press in volume.
function volume_Callback(hObject, eventdata, handles)
% hObject    handle to volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
panjang = get(handles.panjang, 'string');
lebar = get(handles.lebar, 'string');
tinggi = get(handles.tinggi, 'string');
panjang = str2double(panjang);
lebar = str2double(lebar);
tinggi = str2double(tinggi);
volume = panjang*lebar*tinggi;
hasilVolume = num2str(volume);
set(handles.hasilVolume, 'string',(hasilVolume));


function hasilLuas_Callback(hObject, eventdata, handles)
% hObject    handle to hasilLuas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilLuas as text
%        str2double(get(hObject,'String')) returns contents of hasilLuas as a double


% --- Executes during object creation, after setting all properties.
function hasilLuas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilLuas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilVolume_Callback(hObject, eventdata, handles)
% hObject    handle to hasilVolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilVolume as text
%        str2double(get(hObject,'String')) returns contents of hasilVolume as a double


% --- Executes during object creation, after setting all properties.
function hasilVolume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilVolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
