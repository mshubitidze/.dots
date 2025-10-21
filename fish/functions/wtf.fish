function wtf --wraps='lsof -i tcp:'
    lsof -i tcp:$argv[1]
end
