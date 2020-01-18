function varargout = ga1_form(varargin)
% GA1_FORM MATLAB code for ga1_form.fig
%      GA1_FORM, by itself, creates a new GA1_FORM or raises the existing
%      singleton*.
%
%      H = GA1_FORM returns the handle to a new GA1_FORM or the handle to
%      the existing singleton*.
%
%      GA1_FORM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GA1_FORM.M with the given input arguments.
%
%      GA1_FORM('Property','Value',...) creates a new GA1_FORM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ga1_form_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ga1_form_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ga1_form

% Last Modified by GUIDE v2.5 02-Dec-2019 16:15:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ga1_form_OpeningFcn, ...
                   'gui_OutputFcn',  @ga1_form_OutputFcn, ...
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


% --- Executes just before ga1_form is made visible.
function ga1_form_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ga1_form (see VARARGIN)

% Choose default command line output for ga1_form
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ga1_form wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ga1_form_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in createBtn.
function createBtn_Callback(hObject, eventdata, handles)
% hObject    handle to createBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
parabola = @FitnessFnc;
options = optimoptions('ga','PlotFcn','gaplotbestf');
%options 
options.InitialPopulationRange = [-9 ; 9];
options.PopulationSize = str2double(get(handles.populationSize,'String'));
options.CrossoverFraction =  str2double(get(handles.crossover,'String'));
options.MutationFcn ={@mutationgaussian,str2double(get(handles.mutation,'String'))};
options.MaxGenerations = str2double(get(handles.maxGen,'String'));

[x,fval,exitFlag,Output] = ga(parabola,str2double(get(handles.numVar,'String')),options);
disp(fval)

axes(handles.axes1);
x = linspace(-9, 9);
y = (0.5.*x - 1.4).*cos(0.5.*pi.*x + 1.1);
plot(x,y,'-*','MarkerIndices',1:3:length(y))


axes(handles.axes2);
plot(fval,'r*');


function populationSize_Callback(hObject, eventdata, handles)
% hObject    handle to populationSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of populationSize as text
%        str2double(get(hObject,'String')) returns contents of populationSize as a double


% --- Executes during object creation, after setting all properties.
function populationSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to populationSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numVar_Callback(hObject, eventdata, handles)
% hObject    handle to numVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numVar as text
%        str2double(get(hObject,'String')) returns contents of numVar as a double


% --- Executes during object creation, after setting all properties.
function numVar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numVar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function crossover_Callback(hObject, eventdata, handles)
% hObject    handle to crossover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of crossover as text
%        str2double(get(hObject,'String')) returns contents of crossover as a double


% --- Executes during object creation, after setting all properties.
function crossover_CreateFcn(hObject, eventdata, handles)
% hObject    handle to crossover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mutation_Callback(hObject, eventdata, handles)
% hObject    handle to mutation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mutation as text
%        str2double(get(hObject,'String')) returns contents of mutation as a double


% --- Executes during object creation, after setting all properties.
function mutation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mutation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxGen_Callback(hObject, eventdata, handles)
% hObject    handle to maxGen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxGen as text
%        str2double(get(hObject,'String')) returns contents of maxGen as a double


% --- Executes during object creation, after setting all properties.
function maxGen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxGen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
