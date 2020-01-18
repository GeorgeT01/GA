function varargout = ga2_form(varargin)
% GA2_FORM MATLAB code for ga2_form.fig
%      GA2_FORM, by itself, creates a new GA2_FORM or raises the existing
%      singleton*.
%
%      H = GA2_FORM returns the handle to a new GA2_FORM or the handle to
%      the existing singleton*.
%
%      GA2_FORM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GA2_FORM.M with the given input arguments.
%
%      GA2_FORM('Property','Value',...) creates a new GA2_FORM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ga2_form_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ga2_form_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ga2_form

% Last Modified by GUIDE v2.5 02-Dec-2019 18:02:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ga2_form_OpeningFcn, ...
                   'gui_OutputFcn',  @ga2_form_OutputFcn, ...
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


% --- Executes just before ga2_form is made visible.
function ga2_form_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ga2_form (see VARARGIN)

% Choose default command line output for ga2_form
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ga2_form wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ga2_form_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function popTxt_Callback(hObject, eventdata, handles)
% hObject    handle to popTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of popTxt as text
%        str2double(get(hObject,'String')) returns contents of popTxt as a double


% --- Executes during object creation, after setting all properties.
function popTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function genesTxt_Callback(hObject, eventdata, handles)
% hObject    handle to genesTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of genesTxt as text
%        str2double(get(hObject,'String')) returns contents of genesTxt as a double


% --- Executes during object creation, after setting all properties.
function genesTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to genesTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function crossTxt_Callback(hObject, eventdata, handles)
% hObject    handle to crossTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of crossTxt as text
%        str2double(get(hObject,'String')) returns contents of crossTxt as a double


% --- Executes during object creation, after setting all properties.
function crossTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to crossTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mutTxt_Callback(hObject, eventdata, handles)
% hObject    handle to mutTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mutTxt as text
%        str2double(get(hObject,'String')) returns contents of mutTxt as a double


% --- Executes during object creation, after setting all properties.
function mutTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mutTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function genTxt_Callback(hObject, eventdata, handles)
% hObject    handle to genTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of genTxt as text
%        str2double(get(hObject,'String')) returns contents of genTxt as a double


% --- Executes during object creation, after setting all properties.
function genTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to genTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in createBtn.
function createBtn_Callback(hObject, eventdata, handles)
parabola = @rastriginsfcn;
options = optimoptions('ga','PlotFcn','gaplotbestf');
%options 
options.InitialPopulationRange = [-5.12 ; 5.12];
options.PopulationSize = str2double(get(handles.popTxt,'String'));
options.CrossoverFraction =  str2double(get(handles.crossTxt,'String'));
options.MutationFcn ={@mutationgaussian,str2double(get(handles.mutTxt,'String'))};
options.MaxGenerations = str2double(get(handles.genTxt,'String'));

[x,fval,exitFlag,Output] = ga(parabola,str2double(get(handles.genesTxt,'String')),options);
axes(handles.axes1);
x = linspace(-5.12, 5.12);
y = 20 + sum(x.^2 - 10.*cos(2.*pi.*x));
fplot(@(x) 20 + sum(x^2 - 10.*cos(2.*pi.*x)),'-*')

set(handles.x1Txt,'string',x(1))
set(handles.x2Txt,'string',x(2))
set(handles.fTxt,'string',fval)

axes(handles.axes2);
plot(x(1),'r*');
hold on
plot(x(2),'r*');

