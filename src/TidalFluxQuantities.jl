module TidalFluxQuantities

export Quantity,
    Discharge,
    Stage,
    CrossSectionalArea,
    Velocity,
    AlongChannelVelocity,
    Temperature,
    TSS,
    Mask,
    Calibration,
    times,
    quantity,
    unzip,
    @quantity,
    @quantity_op,
    to_quantity,
    from_quantity,
    Flux

using Base.Dates

include("quantities.jl")
include("fluxes.jl")
include("filtering.jl")

end # module
