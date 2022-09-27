module TestPkg

using PythonCall

const scipy = PythonCall.pynew() # initially NULL

function __init__()
	PythonCall.pycopy!(scipy, pyimport("scipy"))
end


end
