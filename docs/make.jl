using Documenter
using Maybe
using Literate
using LiterateTest

rm(joinpath(@__DIR__, "src", "tutorials"), force = true, recursive = true)
Literate.markdown(
    joinpath(@__DIR__, "..", "examples", "lift-macro.jl"),
    joinpath(@__DIR__, "src", "tutorials");
    config = LiterateTest.config(),
    documenter = true,
)

makedocs(
    sitename = "Maybe",
    format = Documenter.HTML(),
    modules = [Maybe],
    pages = [
        "index.md",
        "tutorials/lift-macro.md",
        # "How-to guides" => ...,
        # "Explanation" => ...,
    ],
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
