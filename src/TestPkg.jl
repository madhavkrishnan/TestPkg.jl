module TestPkg

using PythonCall

const pip_install_test = PythonCall.pynew() # initially NULL

function __init__()
	PythonCall.pycopy!(pip_install_test, pyimport("pip-install-test"))
end


end
