class Simulation
  extend FFI::Library
  ffi_lib "lib/tough_code.so"

  attach_function :do_tough_stuff, [:int], :int

  def simulate(input)
    do_tough_stuff(input.to_i)
  end
end
