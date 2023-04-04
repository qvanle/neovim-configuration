local M = {}

local CONFIG_FOLDER = vim.fn.stdpath("config") .. "/lua/"

function M.file_readable(file_path)
  return vim.fn.filereadable(file_path) ~= 0
end

function M.is_directory(file_path)
    return vim.fn.isdirectory(file_path) ~= 0
end

function M.require_if_exists(module)

    file_path = CONFIG_FOLDER .. module

    if(not M.is_directory(file_path) and M.file_readable(file_path)) then
        require(file_path)
        return 
    end

    if(M.is_directory(file_path) and M.file_readable(file_path .. "/init.lua")) then
        require(module)
        return
    end
end


return M
