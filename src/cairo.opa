package hh.cairo



type Canvas.surface = external
type Canvas.ctx = external

Cairo = {{
  create_surface=(%% Cairo.create_surface %%)
  create=(%% Cairo.create %%)
  set_stroke_line(ctx,color : color)=
    fl(i)=Float.of_int(i) / 255.
    (%% Cairo.set_stroke_style_color %%)(ctx,fl(color.r),fl(color.g),fl(color.b))
  set_line_width=(%% Cairo.set_line_width %%)
  draw=(%% Cairo.draw %%)
  to_png(s)={png=(%% Cairo.to_data %%)(s)}
}}
