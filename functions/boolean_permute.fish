function boolean_permute -a function_name num_vars
    set -l to_eval (string repeat -n$num_vars "{true,false}' '")
    eval "set -l arg_lists $to_eval"
    for arg_list in $arg_lists
        $function_name (string split ' ' $arg_list)
    end
end
