
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

## Run Ollama Server

For docker, run the following command:
```bash
docker run --rm -d -p 11434:11434 --name ollama-server ollama/ollama
docker exec -it ollama-server /bin/bash
> ollama run llama3
```

For local on Windows, see https://dev.to/timesurgelabs/how-to-run-llama-3-locally-with-ollama-and-open-webui-297d

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
