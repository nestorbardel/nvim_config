return {
    adapters = {
        type='executable',
        command = 'node',
        args = {"/home/nestor/repos/vscode-php-debug/out/phpDebug.js"},
    },
    configurations = {
        {
            name = "run current script",
            type = "php",
            request = "launch",
            port = 9009,
            cwd="${fileDirname}",
            program = "${file}",
            runtimeExecutable ="php"
        },
        {
            name="listen address",
            type="php",
            request="launch",
            port=9009,
            pathMappings = {
                ['/home/datawarehouse'] = "${workspaceFolder}"
            }
        }
    }
}
