using SpeedMappingDeployDoc
using Documenter

DocMeta.setdocmeta!(SpeedMappingDeployDoc, :DocTestSetup, :(using SpeedMappingDeployDoc); recursive=true)

makedocs(;
    modules=[SpeedMappingDeployDoc],
    authors="NicolasL-S <nicolas.lepagesaucier@gmail.com> and contributors",
    sitename="SpeedMappingDeployDoc.jl",
    format=Documenter.HTML(;
        canonical="https://NicolasL-S.github.io/SpeedMappingDeployDoc.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/NicolasL-S/SpeedMappingDeployDoc.jl",
    devbranch="main",
)
