:Para efeitos visuais
@echo off
chcp 65001
cls
color 0a

:Mensagem introdutória
echo =================================
echo  Carregue no Enter para começar!
echo =================================
pause>nul
cls
echo Bem-vindo ao prédio do Toni!
timeout /t 2 >nul
echo.
echo Este script vai criar as pastas para ajudar a gerir o prédio.
timeout /t 2 >nul
echo.
echo =====================================
echo. Carregue no Enter para continuar...
echo =====================================
pause>nul
mkdir "Prédio do Toni"

:Rés-do-Chão
cls
echo Pronto para criar as pastas do Rés-do-Chão.
echo.
echo =================================
echo. Carregue no Enter para criar...
echo =================================
pause>nul
mkdir "Prédio do Toni/Rés-do-Chão/Esquerdo" "Prédio do Toni/Rés-do-Chão/Direito"
echo "Família A" > "Prédio do Toni/Rés-do-Chão/Esquerdo/Familia.txt"
echo "Sala" > "Prédio do Toni/Rés-do-Chão/Esquerdo/Divisões.txt"
echo "Sofá" > "Prédio do Toni/Rés-do-Chão/Esquerdo/Móveis.txt"
echo "Família B" > "Prédio do Toni/Rés-do-Chão/Esquerdo/Familia.txt"
echo "Cozinha" > "Prédio do Toni/Rés-do-Chão/Esquerdo/Divisões.txt"
echo "Fogão" > "Prédio do Toni/Rés-do-Chão/Esquerdo/Móveis.txt"
timeout /t 1 >nul
cls
echo Rés-de-Chão criado!
echo.
echo =====================================
echo. Carregue no Enter para continuar...
echo =====================================
pause>nul

:Primeiro Andar
cls
echo Pronto para criar as pastas do Primeiro andar.
echo.
echo =================================
echo. Carregue no Enter para criar...
echo =================================
pause>nul
mkdir "Prédio do Toni/Primeiro Andar/Esquerdo" "Prédio do Toni/Primeiro Andar/Direito"
echo "Família C" > "Prédio do Toni/Primeiro Andar/Esquerdo/Familia.txt"
echo "Quarto" > "Prédio do Toni/Primeiro Andar/Esquerdo/Divisões.txt"
echo "Armário" > "Prédio do Toni/Primeiro Andar/Esquerdo/Móveis.txt"
echo "Família D" > "Prédio do Toni/Primeiro Andar/Direito/Familia.txt"
echo "Casa-de-banho" > "Prédio do Toni/Primeiro Andar/Direito/Divisões.txt"
echo "Lavatório" > "Prédio do Toni/Primeiro Andar/Direito/Móveis.txt"
timeout /t 1 >nul
cls
echo Primeiro andar criado!
echo.
echo =====================================
echo. Carregue no Enter para continuar...
echo =====================================
pause>nul

:Zona Comum
cls
echo Pronto para criar as pastas da Zona Comum.
echo.
echo =================================
echo. Carregue no Enter para criar...
echo =================================
pause>nul
mkdir "Prédio do Toni/Zona Comum/Rés-do-Chão" "Prédio do Toni/Zona Comum/Primeiro Andar"
timeout /t 1 >nul
cls
echo Zona Comum criada!
echo.
echo =====================================
echo. Carregue no Enter para continuar...
echo =====================================
pause>nul

:Despedida
cls
echo Obrigado e disfrute da sua estadia no Prédio do Toni!
echo.
echo ==============================
echo. Carregue no Enter para sair.
echo ==============================
pause>nul
mkdir "%DATE:/=.%"
tar -cf "Prédio do Toni.tar" "Prédio do Toni"
xcopy "Prédio do Toni.tar" "%DATE:/=.%"
del "Prédio do Toni.tar"