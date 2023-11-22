module SomeMakieThemes

using Makie

export theme_curveonly,
       theme_keynote,
       theme_keynote_retina,
       theme_retina,
       theme_poster,
       theme_manuscript,
       theme_manuscript_retina

"""
    theme_af()

Theme for importing an undecorated function curve into Affinity Designer.
"""
function theme_curveonly()
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
        fontsize = 28,
        fonts = (; regular = "Helvetica"),
        linewidth = 3,

        Axis = (
            spinewidth = 3,
            xtickalign = 1,
            ytickalign = 1,
            xticksize = 12,
            yticksize = 12,
            xtickwidth = 3,
            ytickwidth = 3,
            xgridvisible = false,
            ygridvisible = false,
        ),
    )
end

"""
    theme_retina()

Theme for retina display on macOS. This compensation is necessary until
Makie becomes display-independent.
"""
function theme_retina()

    ticksize = 10
    width = 2

    Theme(
        size = (1500, 1200),
        fontsize = 35,
        linewidth = 3,

        Axis = (
            xticksize = ticksize,
            yticksize = ticksize,
            xtickwidth = width,
            ytickwidth = width,
            spinewidth = width,
            xgridwidth = width,
            ygridwidth = width,
        )
    )
end

"""
    theme_keynote_retina()

Theme for retina display on macOS with bigger font sizes
and appropriate size for use in Keynote. This compensation is necessary until
Makie becomes display-independent.
"""
function theme_keynote_retina()
    
        ticksize = 18
        width = 3
    
        Theme(
            size = (1000, 900),
            fontsize = 40,
            linewidth = 4,
            fonts = (; regular = "Helvetica"),
    
            Axis = (
                xticksize = ticksize,
                yticksize = ticksize,
                xtickwidth = width,
                ytickwidth = width,
                spinewidth = width,
                xgridwidth = width,
                ygridwidth = width,
                xgridvisible = false,
                ygridvisible = false,
            )
        )
    end

"""
    theme_poster()
    
Theme for a printed poster at A0 size.
"""
function theme_poster()

    Theme(
        fontsize = 28,
        linewidth = 3,
        fonts = (; regular = "Helvetica"),
        Axis = (
            spinewidth = 3,
            xtickalign = 1,
            ytickalign = 1,
            xticksize = 12,
            yticksize = 12,
            xtickwidth = 3,
            ytickwidth = 3,
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
        size = (450, 400),
        
        fontsize = 18,
        # linewidth = 3,
        fonts = (; regular = "Helvetica"),
        Axis = (
            # spinewidth = 1,
            xtickalign = 1,
            ytickalign = 1,
            xticksize = 8,
            yticksize = 8,
            # xtickwidth = 3,
            # ytickwidth = 3,
            xgridvisible = false,
            ygridvisible = false,
        )
    )
end


"""
    theme_manuscript()

Theme for a manuscript figure for Mac retina displays.
"""
function theme_manuscript_retina()
    # ticksize = 35
    # width = 5

    Theme(
        size = (1000, 900),
        fontsize = 40,
        linewidth = 3,
        fonts = (; regular = "Helvetica"),
        Axis = (
            spinewidth = 3,
            xtickalign = 1,
            ytickalign = 1,
            xticksize = 18,
            yticksize = 18,
            xtickwidth = 3,
            ytickwidth = 3,
            xgridvisible = false,
            ygridvisible = false,
        )
    )
end


end # module
