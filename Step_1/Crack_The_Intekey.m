clc;clear all;
Crack_Path = 'path to your project'; % The path you want to get your code back.
Folder = Crack(Crack_Path);

cwd = pwd;
cwd(end)='2';

exepath = [cwd,'\Intekey_Crack.exe'];
exe_para = [exepath,' -d ',Crack_Path];
system(exe_para)



