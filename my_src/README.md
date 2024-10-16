
# Environment

```bash
python -m venv ./venv
source ./venv/bin/activate
```

- To activate venv on Windows (cmd): 
```
  .\venv\Scripts\activatesource ./venv/bin/activate
```
- To activate venv on Windows (bash):
```
  source ./venv/Scripts/activate
```

```bash
python -m pip install --upgrade pip
```

## Frontend Server Setup
```bash
cd open-webui
cp -RPp my_src/.env.example .env

npm install
npm run build
```

The frontend server will be available at: http://localhost:5173. 

## Backend Server Setup
```bash
cd open-webui/backend
pip install -r requirements.txt -U
```

Verified with Python 3.12

## Run

On Windows
```cmd
cd open-webui\backend
start_windows.bat
```
