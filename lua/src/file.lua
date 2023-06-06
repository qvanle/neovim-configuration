local M = {}

function M.sourceFile(dir) 
    fullpath = vim.g.CONFIG_PATH .. "lua/" .. dir .. ".lua" 
    if(vim.fn.filereadable(fullpath) == 1) then
        require(dir)
    else 
        print("File not found: " .. fullpath)
    end
end

function M.sourceFolder(dir)
    M.sourceFile(dir .. "/init")
end

return M
