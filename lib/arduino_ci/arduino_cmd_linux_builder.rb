require "arduino_ci/host"
require 'arduino_ci/arduino_cmd'

module ArduinoCI

  # Implementation of Arduino linux CLI commands
  class ArduinoCmdLinuxBuilder < ArduinoCmd

    flag :get_pref,        "--get-pref"          # apparently doesn't exist
    flag :set_pref,        "--pref"              # apparently doesn't exist
    flag :save_prefs,      "--save-prefs"        # apparently doesn't exist
    flag :use_board,       "-fqbn"
    flag :install_boards,  "--install-boards"    # apparently doesn't exist
    flag :install_library, "--install-library"   # apparently doesn't exist
    flag :verify,          "-compile"

    def _lib_dir
      File.join(get_pref("sketchbook.path"), "libraries")
    end

    # run the arduino command
    def _run(*args, **kwargs)
      Host.run(*args, **kwargs)
    end

  end

end