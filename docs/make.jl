cd(@__DIR__)
using SpeedMappingDeployDoc
using Documenter
using Literate
using Unitful
using Pkg
Pkg.add(url = "https://github.com/NicolasL-S/SpeedMapping.jl")
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
        "Interface" => "api.md",
        "Benchmarks" => "benchmarks.md"
    ]
)

withenv("GITHUB_REPOSITORY" => "NicolasL-S/SpeedMapping.jl") do
    deploydocs(;
        repo="github.com/NicolasL-S/SpeedMapping.jl.git", # Deploying on SpeedMapping directly
        devbranch="main",
    )
end