module SomeMakieThemes

using Makie

export theme_curvesonly,
       theme_keynote,
       theme_keynote_retina,
       theme_retina,
       theme_poster,
       theme_manuscript,
       theme_manuscript_retina

"""
    theme_curvesonly()

Theme that only displays the function curves 
and removes all spines, labels, and other axis attributes.
"""
function theme_curvesonly()
    Theme(
        # backgroundcolor = :blue,
        Lines = (cycle = nothing, color = :black),

        Axis = (
            backgroundcolor = :transparent,
            xgridvisible = false,
            ygridvisible = false,
            xminorgridvisible = false,
            yminorgridvisible = false,
            leftspinevisible = false,
            rightspinevisible = false,
            bottomspinevisible = false,
            topspinevisible = false,
            xminorticksvisible = false,
            yminorticksvisible = false,
            xticksvisible = false,
            yticksvisible = false,
            xticklabelsvisible = false,
            yticklabelsvisible = false,
        ),
)
end

"""
    theme_keynote()

Theme for making figures to use in an Apple Keynote presentation.
"""
function theme_keynote()
    Theme(
        fontsize = 24,
        fonts = (; regular = "Helvetica"),
        linewidth = 2.5,

        Axis = (
            xticksize = 12,
            yticksize = 12,
            spinewidth = 2,
            xtickwidth = 2,
            ytickwidth = 2,
            xtickalign = 1,
            ytickalign = 1,
            xgridvisible = false,
            ygridvisible = false,
        ),
    )
end

"""
    theme_poster()
    
Theme for a printed poster at A0 paper size.
"""
function theme_poster()
    Theme(
        fontsize = 24,
        fonts = (; regular = "Helvetica"),
        linewidth = 2.5,

        Axis = (
            xticksize = 12,
            yticksize = 12,
            xtickwidth = 2,
            ytickwidth = 2,
            spinewidth = 2,
            xtickalign = 1,
            ytickalign = 1,
            xgridvisible = false,
            ygridvisible = false,
        ),
    )
end

"""
    theme_manuscript()

Theme for a manuscript figure.
"""
function theme_manuscript()
    Theme(
        fontsize = 18,
        fonts = (; regular = "Helvetica"),
        Axis = (
            xticksize = 8,
            yticksize = 8,
            spinewidth = 1.5,
            xtickwidth = 1.5,
            ytickwidth = 1.5,
            xtickalign = 1,
            ytickalign = 1,
            xgridvisible = false,
            ygridvisible = false,
        )
    )
end

end # module
