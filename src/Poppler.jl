module Poppler

using CEnum

# include("GLib/GLib.jl")

const poppler = "/usr/local/Cellar/poppler/0.87.0/lib/libpoppler-glib"

include("poppler_glib_common.jl")
include("poppler_glib.jl")

include("constructors.jl")

end # module"
