cd(@__DIR__)
using SpeedMappingDeployDoc
using Documenter
using Literate
using Unitful
using SpeedMapping

DocMeta.setdocmeta!(SpeedMappingDeployDoc, :DocTestSetup, :(using SpeedMappingDeployDoc); recursive=true)

Literate.markdown(
    joinpath(@__DIR__, "src", "tutorial.jl"), joinpath(@__DIR__, "src");
    credit = false
)

makedocs(;
    #modules=[SpeedMappingDeployDoc],
    authors = "NicolasL-S",
    sitename = "SpeedMapping.jl",
    format = Documenter.HTML(;
        canonical="https://NicolasL-S.github.io/SpeedMappingDeployDoc.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Introduction" => "index.md",
        "Tutorial" => "tutorial.md",
        "API" => "api.md",
        "Benchmarks" => "benchmarks.md"
    ]
)

deploydocs(;
    repo="github.com/NicolasL-S/SpeedMappingDeployDoc.jl.git",
    devbranch="main",
)
