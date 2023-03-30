### Como instalar o Unity em uma máquina 42

Entre no diretorio do goinfre/

Baixe a Unity estando dentro do diretorio goinfre/

irei arrumar em breve
/*

# How to install Unity in a 42 Machine

### 1. Download Unity to goinfre: https://unity.com/releases/editor/whats-new/2021.3.21

   ```
   wget https://download.unity3d.com/download_unity/1b156197d683/LinuxEditorInstaller/Unity-2021.3.21f1.tar.xz
   tar xf Unity-2021.3.21f1.tar.xz
   cd Editor
   ```
### 2. Before you can open Unity, you have to generate a license key.

First, you need to create a .alf file with your credentials:
```
./Unity -username <your-username> -password <your-password>
./Unity -batchmode -createManualActivationFile -logfile
```
Go to https://license.unity3d.com/manual (for some weird reason this page keeps refreshing, press ESC to stop it from refreshing) and upload your .alf file, select the desired license and download the .ulf file. This is your license, now you need to activate it:
```
./Unity -batchmode -manualLicenseFile Unity_v2021.x.ulf -logfile
```
You can run Unity now:
```
./Unity 
```
Now, you can open an existing project or create a new one. Have fun!
*/
