﻿namespace Nuklear;

interface
type
  __struct_nk_draw_vertex_layout_element = public Byte;
  __struct_nk_user_font_glyph = public record
  public
    uv: array[0..1] of __struct_nk_vec2;
    offset: __struct_nk_vec2;
    width, height: Single;
    xadvance: Single;
  end;
  size_t = public IntPtr;
  wchar_t = public UInt16;

implementation

end.