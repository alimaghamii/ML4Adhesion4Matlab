clc
clear

%% You need to have python and skitelearn installd on your computer

% 1. Download Python 3.11
% Go to the official Python downloads page and download Python 3.11.x for your operating system.
% 
% Make sure to:
% 
% Check the box “Add Python to PATH” during installation
% 
% Install for all users, if possible
% 
% 2. Find the Path to Python 3.11
% After installation, find the path to the new Python executable.
% 
% Common paths:
% 
% Windows: C:\Users\YourName\AppData\Local\Programs\Python\Python311\python.exe
% 
% macOS/Linux: /usr/local/bin/python3.11 or similar

%% then you need to Install scikit-learn for Python 3.11 and Pandas

%  Open Command Prompt (Windows)
% Run the following (note the full path to your Python executable):

% "C:\Users\YourName\AppData\Local\Programs\Python\Python311\python.exe" -m pip install scikit-learn
% then run
% "C:\Users\YourName\AppData\Local\Programs\Python\Python311\python.exe" -m pip install pandas
% then run
% "C:\Users\Utente\AppData\Local\Programs\Python\Python311\python.exe" -m pip install xgboost


pyenv('Version', 'C:\Users\Utente\AppData\Local\Programs\Python\Python311\python.exe')

% Step 1: Load the trained model
model = py.joblib.load('XGBoost_model_ML.pkl');

% Step 2: Prepare test input in MATLAB
% Suppose we want to predict using 5 features:
% [runload, alphaload, mu, k, n]
X = [2, 100, 3.24, -1, 1.6];  % 1 sample with 5 features

% Convert MATLAB numeric matrix to Python DataFrame
pd = py.importlib.import_module('pandas');

% Create column names same as used during training
column_names = {'runload', 'alphaload', 'mu', 'k', 'n'};

% Convert X into Python list of lists
X_py = py.list({py.list(num2cell(X))});

% Create pandas DataFrame
input_df = pd.DataFrame(X_py, columns=py.list(column_names));

% Step 3: Run prediction
y_pred = model.predict(input_df);

% Step 4: Convert prediction output to MATLAB array
% If it's a numpy array, convert using this method
result = double(py.array.array('d', py.numpy.nditer(y_pred)));

% Display the result
disp('Prediction result:');
disp(10^result);
