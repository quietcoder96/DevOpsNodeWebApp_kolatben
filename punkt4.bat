@echo off
echo ========================================
echo  PUNKT 4 - NodeWebApp (2 Instanzen) von kolatben
echo ========================================

echo.
echo [1/3] Alte Container löschen...
echo CMD:docker rm -f nodeapp-1 nodeapp-2
docker rm -f nodeapp-1 nodeapp-2

echo.
echo [2/4] Image bauen...
echo CMD: docker build -t kolatben/node-web-app .
docker build -t kolatben/node-web-app .

echo.
echo [3/4] Instanz 1 starten (Port 3001)...
echo CMD:docker run -p 3001:3001 --name nodeapp-1 -d kolatben/node-web-app
docker run -p 3001:3001 --name nodeapp-1 -d kolatben/node-web-app

echo.
echo [4/4] Instanz 2 starten (Port 3002)...
echo CMD:docker run -p 3002:3001 --name nodeapp-2 -d kolatben/node-web-app
docker run -p 3002:3001 --name nodeapp-2 -d kolatben/node-web-app

echo.
echo ========================================
echo  Fertig! Browser:
echo  http://localhost:3001  
echo  http://localhost:3002  
echo ========================================
pause
