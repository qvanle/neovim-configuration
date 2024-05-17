local M = {}

function M.sourceFile(dir) 
    fullpath = vim.g.CONFIG_PATH .. "lua/" .. dir .. ".lua"
    if(vim.fn.filereadable(fullpath) == 1) then
        return require(dir)
    else 
        print("File not found: " .. fullpath)
        return nil
    end
end

function M.sourceFolder(dir)
    return M.sourceFile(dir .. "/init")
end

return M
