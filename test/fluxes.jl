@testset "Fluxes" begin
    At = CrossSectionalArea(ts,rand(2))
    cvt = AlongChannelVelocity(ts,randn(2))
    Q = At*cvt
    T = Temperature(ts,rand(2))
    F1 = T*Q
    F2 = Q*T
    @test typeof(F1) == Flux{Temperature}
    @test quantity(F1) == quantity(F2)
end