using Documenter, Poppler

makedocs(;
    modules=[Poppler],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/asinghvi17/Poppler.jl/blob/{commit}{path}#L{line}",
    sitename="Poppler.jl",
    authors="Anshul Singhvi",
    assets=String[],
)

deploydocs(;
    repo="github.com/asinghvi17/Poppler.jl",
)
