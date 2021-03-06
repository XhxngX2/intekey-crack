function [ ErrorCode ] = Shadow( folder_path ,oldName,newName)
    
    old_file = [folder_path,'\',oldName];
    new_file = [folder_path,'\',newName];
    
    old_fid = fopen(old_file,'r');
    new_fid = fopen(new_file,'w+');
    
    old_context = fread(old_fid);
    fwrite(new_fid,old_context);

    fclose(old_fid);
    fclose(new_fid);
    
    delete(old_file);
    
    ErrorCode = 0;

end

