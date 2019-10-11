namespace Nuklear;

// Automatically converted with FOxidizer; do not modify manually!

{$CCOMPATIBILITY ON}

uses
  rtl;

{$GLOBALS ON}

const PIXEL_LAYOUT_XRGB_8888 = rawfb_pl.PIXEL_LAYOUT_XRGB_8888; public;
const PIXEL_LAYOUT_RGBX_8888 = rawfb_pl.PIXEL_LAYOUT_RGBX_8888; public;

method nk_rawfb_color2int(c: __struct_nk_color; pl: rawfb_pl): UInt32; public;
begin
  var res: UInt32 := 0;
  begin
    case pl of
      PIXEL_LAYOUT_RGBX_8888: begin
          goto switch0_0;
        end;
      PIXEL_LAYOUT_XRGB_8888: begin
          goto switch0_1;
        end;
      else begin
        goto switch0_default;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_0:;
    res := res or (c.r shl 24);
    res := res or (c.g shl 16);
    res := res or (c.b shl 8);
    res := res or c.a;
    goto _breaklabelswitch0;
    switch0_1:;
    res := res or (c.a shl 24);
    res := res or (c.r shl 16);
    res := res or (c.g shl 8);
    res := res or c.b;
    goto _breaklabelswitch0;
    switch0_default:;
    perror("nk_rawfb_color2int(): Unsupported pixel layout."#10);
    goto _breaklabelswitch0;
    _breaklabelswitch0:;
  end;
  exit res;
end;

method nk_rawfb_int2color(i: UInt32; pl: rawfb_pl): __struct_nk_color; public;
begin
  var col: __struct_nk_color := [0, 0, 0, 0];
  begin
    case pl of
      PIXEL_LAYOUT_RGBX_8888: begin
          goto switch0_0;
        end;
      PIXEL_LAYOUT_XRGB_8888: begin
          goto switch0_1;
        end;
      else begin
        goto switch0_default;
      end;
    end;
    goto _breaklabelswitch0;
    switch0_0:;
    col.r := ((i shr 24) and 255);
    col.g := ((i shr 16) and 255);
    col.b := ((i shr 8) and 255);
    col.a := (i and 255);
    goto _breaklabelswitch0;
    switch0_1:;
    col.a := ((i shr 24) and 255);
    col.r := ((i shr 16) and 255);
    col.g := ((i shr 8) and 255);
    col.b := (i and 255);
    goto _breaklabelswitch0;
    switch0_default:;
    perror("nk_rawfb_int2color(): Unsupported pixel layout."#10);
    goto _breaklabelswitch0;
    _breaklabelswitch0:;
  end;
  exit col;
end;

method nk_rawfb_ctx_setpixel(rawfb: ^__struct_rawfb_context; x0: Int16; y0: Int16; col: __struct_nk_color); public;
begin
  var c: UInt32 := nk_rawfb_color2int(col, (rawfb)^.fb.pl);
  var pixels: ^Byte := (rawfb)^.fb.pixels;
  var ptr: ^UInt32;
  pixels := pixels + (y0 * (rawfb)^.fb.pitch);
  ptr := (^UInt32(pixels) + x0);
  if (Boolean((Boolean((Boolean((y0 < (rawfb)^.scissors.h)) and Boolean((y0 ≥ (rawfb)^.scissors.y)))) and Boolean((x0 ≥ (rawfb)^.scissors.x)))) and Boolean((x0 < (rawfb)^.scissors.w))) then begin
    (ptr)^ := c;
  end;
end;

method nk_rawfb_line_horizontal(rawfb: ^__struct_rawfb_context; x0: Int16; y: Int16; x1: Int16; col: __struct_nk_color); public;
begin
  // This function is called the most. Try to optimize it a bit...
  //      * It does not check for scissors or image borders.
  //      * The caller has to make sure it does no exceed bounds.
  var i: UInt32;
  // This function is called the most. Try to optimize it a bit...
  //      * It does not check for scissors or image borders.
  //      * The caller has to make sure it does no exceed bounds.
  var n: UInt32;
  var c: array[0..16 - 1] of UInt32;
  var pixels: ^Byte := (rawfb)^.fb.pixels;
  var ptr: ^UInt32;
  pixels := pixels + (y * (rawfb)^.fb.pitch);
  ptr := (^UInt32(pixels) + x0);
  n := (x1 - x0);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel1:;
    if (i < (sizeOf(c) / sizeOf(c[0]))) then begin
    end
    else begin
      goto _breaklabel1;
    end;
    // for loop: body
    c[i] := nk_rawfb_color2int(col, (rawfb)^.fb.pl);
    _continuelabel1:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
  while (n > 16) do begin
    memcpy(^Void(ptr), c, sizeOf(c));
    n := n - 16;
    ptr := ptr + 16;
  end;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel4:;
    if (i < n) then begin
    end
    else begin
      goto _breaklabel4;
    end;
    // for loop: body
    ptr[i] := c[i];
    _continuelabel4:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel4;
    // for loop: break
    _breaklabel4:;
  end;
end;

method nk_rawfb_img_setpixel(img: ^__struct_rawfb_image; x0: Int32; y0: Int32; col: __struct_nk_color); public;
begin
  var c: UInt32 := nk_rawfb_color2int(col, (img)^.pl);
  var ptr: ^Byte;
  var pixel: ^UInt32;
  assert(img);
  if (Boolean((Boolean((Boolean((y0 < (img)^.h)) and Boolean((y0 ≥ 0)))) and Boolean((x0 ≥ 0)))) and Boolean((x0 < (img)^.w))) then begin
    ptr := ((img)^.pixels + ((img)^.pitch * y0));
    pixel := ^UInt32(ptr);
    if ((img)^.format = NK_FONT_ATLAS_ALPHA8) then begin
      ptr[x0] := col.a;
    end
    else begin
      pixel[x0] := c;
    end;
  end;
end;

method nk_rawfb_img_getpixel(img: ^__struct_rawfb_image; x0: Int32; y0: Int32): __struct_nk_color; public;
begin
  var col: __struct_nk_color := [0, 0, 0, 0];
  var ptr: ^Byte;
  var pixel: UInt32;
  assert(img);
  if (Boolean((Boolean((Boolean((y0 < (img)^.h)) and Boolean((y0 ≥ 0)))) and Boolean((x0 ≥ 0)))) and Boolean((x0 < (img)^.w))) then begin
    ptr := ((img)^.pixels + ((img)^.pitch * y0));
    if ((img)^.format = NK_FONT_ATLAS_ALPHA8) then begin
      col.a := ptr[x0];
      col.b := (() -> begin
        var _tmp0 := (() -> begin
          var _tmp1 := 255;
          col.r := _tmp1;
          exit _tmp1;
        end)();
        col.g := _tmp0;
        exit _tmp0;
      end)();
    end
    else begin
      pixel := ^UInt32(ptr)[x0];
      col := nk_rawfb_int2color(pixel, (img)^.pl);
    end;
  end;
  exit col;
end;

method nk_rawfb_img_blendpixel(img: ^__struct_rawfb_image; x0: Int32; y0: Int32; col: __struct_nk_color); public;
begin
  var col2: __struct_nk_color;
  var inv_a: Byte;
  if (col.a = 0) then begin
    exit;
  end;
  inv_a := (255 - col.a);
  col2 := nk_rawfb_img_getpixel(img, x0, y0);
  col.r := (((col.r * col.a) + (col2.r * inv_a)) shr 8);
  col.g := (((col.g * col.a) + (col2.g * inv_a)) shr 8);
  col.b := (((col.b * col.a) + (col2.b * inv_a)) shr 8);
  nk_rawfb_img_setpixel(img, x0, y0, col);
end;

method nk_rawfb_scissor(rawfb: ^__struct_rawfb_context; x: Single; y: Single; w: Single; h: Single); public;
begin
  (rawfb)^.scissors.x := (if ((if (x < 0) then (0) else (x)) < (rawfb)^.fb.w) then ((if (x < 0) then (0) else (x))) else ((rawfb)^.fb.w));
  (rawfb)^.scissors.y := (if ((if (y < 0) then (0) else (y)) < (rawfb)^.fb.h) then ((if (y < 0) then (0) else (y))) else ((rawfb)^.fb.h));
  (rawfb)^.scissors.w := (if ((if ((w + x) < 0) then (0) else ((w + x))) < (rawfb)^.fb.w) then ((if ((w + x) < 0) then (0) else ((w + x)))) else ((rawfb)^.fb.w));
  (rawfb)^.scissors.h := (if ((if ((h + y) < 0) then (0) else ((h + y))) < (rawfb)^.fb.h) then ((if ((h + y) < 0) then (0) else ((h + y)))) else ((rawfb)^.fb.h));
end;

method nk_rawfb_stroke_line(rawfb: ^__struct_rawfb_context; x0: Int16; y0: Int16; x1: Int16; y1: Int16; line_thickness: UInt32; col: __struct_nk_color); public;
begin
  var tmp: Int16;
  var dy: Int32;
  var dx: Int32;
  var stepx: Int32;
  var stepy: Int32;
  dy := (y1 - y0);
  dx := (x1 - x0);
  // fast path
  if (dy = 0) then begin
    if (Boolean((Boolean((dx = 0)) or Boolean((y0 ≥ (rawfb)^.scissors.h)))) or Boolean((y0 < (rawfb)^.scissors.y))) then begin
      exit;
    end;
    if (dx < 0) then begin
      // swap x0 and x1
      tmp := x1;
      x1 := x0;
      x0 := tmp;
    end;
    x1 := (if ((rawfb)^.scissors.w < x1) then Int16((rawfb)^.scissors.w) else (x1));
    x0 := (if ((rawfb)^.scissors.w < x0) then Int16((rawfb)^.scissors.w) else (x0));
    x1 := (if ((rawfb)^.scissors.x < x1) then (x1) else Int16((rawfb)^.scissors.x));
    x0 := (if ((rawfb)^.scissors.x < x0) then (x0) else Int16((rawfb)^.scissors.x));
    nk_rawfb_line_horizontal(rawfb, x0, y0, x1, col);
    exit;
  end;
  if (dy < 0) then begin
    dy := -dy;
    stepy := -1;
  end
  else begin
    stepy := 1;
  end;
  if (dx < 0) then begin
    dx := -dx;
    stepx := -1;
  end
  else begin
    stepx := 1;
  end;
  dy := dy shl 1;
  dx := dx shl 1;
  nk_rawfb_ctx_setpixel(rawfb, x0, y0, col);
  if (dx > dy) then begin
    var fraction: Int32 := (dy - (dx shr 1));
    while (x0 ≠ x1) do begin
      if (fraction ≥ 0) then begin
        y0 := y0 + stepy;
        fraction := fraction - dx;
      end;
      x0 := x0 + stepx;
      fraction := fraction + dy;
      nk_rawfb_ctx_setpixel(rawfb, x0, y0, col);
    end;
  end
  else begin
    var fraction: Int32 := (dx - (dy shr 1));
    while (y0 ≠ y1) do begin
      if (fraction ≥ 0) then begin
        x0 := x0 + stepx;
        fraction := fraction - dy;
      end;
      y0 := y0 + stepy;
      fraction := fraction + dx;
      nk_rawfb_ctx_setpixel(rawfb, x0, y0, col);
    end;
  end;
end;

method nk_rawfb_fill_polygon(rawfb: ^__struct_rawfb_context; pnts: ^__struct_nk_vec2i; count: Int32; col: __struct_nk_color); public;
begin
  var i: Int32 := 0;
  var left: Int32 := 10000;
  var top: Int32 := 10000;
  var bottom: Int32 := 0;
  var right: Int32 := 0;
  var nodes: Int32;
  var nodeX: array[0..64 - 1] of Int32;
  var pixelX: Int32;
  var pixelY: Int32;
  var j: Int32;
  var swap: Int32;
  if (count = 0) then begin
    exit;
  end;
  if (count > 64) then begin
    count := 64;
  end;
  // Get polygon dimensions
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < count) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      if (left > pnts[i].x) then begin
        left := pnts[i].x;
      end;
      if (right < pnts[i].x) then begin
        right := pnts[i].x;
      end;
      if (top > pnts[i].y) then begin
        top := pnts[i].y;
      end;
      if (bottom < pnts[i].y) then begin
        bottom := pnts[i].y;
      end;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  bottom := bottom + 1;
  right := right + 1;
  // Polygon scanline algorithm released under public-domain by Darel Rex Finley, 2007
  //   Loop through the rows of the image.
  begin
    // for loop: initializer
    pixelY := top;
    // for loop: compare
    _looplabel1:;
    if (pixelY < bottom) then begin
    end
    else begin
      goto _breaklabel1;
    end;
    // for loop: body
    begin
      nodes := 0;
      // Build a list of nodes.
      j := (count - 1);
      begin
        // for loop: initializer
        i := 0;
        // for loop: compare
        _looplabel2:;
        if (i < count) then begin
        end
        else begin
          goto _breaklabel2;
        end;
        // for loop: body
        begin
          if (Boolean((Boolean((pnts[i].y < pixelY)) and Boolean((pnts[j].y ≥ pixelY)))) or Boolean((Boolean((pnts[j].y < pixelY)) and Boolean((pnts[i].y ≥ pixelY))))) then begin
            nodeX[(() -> begin
              var _tmp3 := nodes;
              nodes := _tmp3 + 1;
              exit _tmp3;
            end)()] := Int32((Single(pnts[i].x) + (((Single(pixelY) - Single(pnts[i].y)) / (Single(pnts[j].y) - Single(pnts[i].y))) * (Single(pnts[j].x) - Single(pnts[i].x)))));
          end;
          j := i;
        end;
        _continuelabel2:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel2;
        // for loop: break
        _breaklabel2:;
      end;
      // Sort the nodes, via a simple â€œBubbleâ€ sort.
      i := 0;
      while (i < (nodes - 1)) do begin
        if (nodeX[i] > nodeX[(i + 1)]) then begin
          swap := nodeX[i];
          nodeX[i] := nodeX[(i + 1)];
          nodeX[(i + 1)] := swap;
          if i then begin
            i := i - 1;
          end;
        end
        else begin
          i := i + 1;
        end;
      end;
      // Fill the pixels between node pairs.
      begin
        // for loop: initializer
        i := 0;
        // for loop: compare
        _looplabel4:;
        if (i < nodes) then begin
        end
        else begin
          goto _breaklabel4;
        end;
        // for loop: body
        begin
          if (nodeX[(i + 0)] ≥ right) then begin
            goto _breaklabel4;
          end;
          if (nodeX[(i + 1)] > left) then begin
            if (nodeX[(i + 0)] < left) then begin
              nodeX[(i + 0)] := left;
            end;
            if (nodeX[(i + 1)] > right) then begin
              nodeX[(i + 1)] := right;
            end;
            begin
              // for loop: initializer
              pixelX := nodeX[i];
              // for loop: compare
              _looplabel5:;
              if (pixelX < nodeX[(i + 1)]) then begin
              end
              else begin
                goto _breaklabel5;
              end;
              // for loop: body
              nk_rawfb_ctx_setpixel(rawfb, pixelX, pixelY, col);
              _continuelabel5:;
              // for loop: increment/continue
              pixelX := pixelX + 1;
              goto _looplabel5;
              // for loop: break
              _breaklabel5:;
            end;
          end;
        end;
        _continuelabel4:;
        // for loop: increment/continue
        i := i + 2;
        goto _looplabel4;
        // for loop: break
        _breaklabel4:;
      end;
    end;
    _continuelabel1:;
    // for loop: increment/continue
    pixelY := pixelY + 1;
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
end;

method nk_rawfb_stroke_arc(rawfb: ^__struct_rawfb_context; x0: Int16; y0: Int16; w: Int16; h: Int16; s: Int16; line_thickness: Int16; col: __struct_nk_color); public;
begin
  // Bresenham's ellipses - modified to draw one quarter
  var a2: Int32 := ((w * w) / 4);
  var b2: Int32 := ((h * h) / 4);
  var fa2: Int32 := (4 * a2);
  var fb2: Int32 := (4 * b2);
  var x: Int32;
  var y: Int32;
  var sigma: Int32;
  if (Boolean((Boolean((Boolean((s ≠ 0)) and Boolean((s ≠ 90)))) and Boolean((s ≠ 180)))) and Boolean((s ≠ 270))) then begin
    exit;
  end;
  if (Boolean((w < 1)) or Boolean((h < 1))) then begin
    exit;
  end;
  // Convert upper left to center
  h := ((h + 1) / 2);
  w := ((w + 1) / 2);
  x0 := x0 + w;
  y0 := y0 + h;
  // First half
  begin
    // for loop: initializer
    x := 0;
    y := h;
    sigma := ((2 * b2) + (a2 * (1 - (2 * h))));
    // for loop: compare
    _looplabel2:;
    if ((b2 * x) ≤ (a2 * y)) then begin
    end
    else begin
      goto _breaklabel2;
    end;
    // for loop: body
    begin
      if (s = 180) then begin
        nk_rawfb_ctx_setpixel(rawfb, (x0 + x), (y0 + y), col);
      end
      else begin
        if (s = 270) then begin
          nk_rawfb_ctx_setpixel(rawfb, (x0 - x), (y0 + y), col);
        end
        else begin
          if (s = 0) then begin
            nk_rawfb_ctx_setpixel(rawfb, (x0 + x), (y0 - y), col);
          end
          else begin
            if (s = 90) then begin
              nk_rawfb_ctx_setpixel(rawfb, (x0 - x), (y0 - y), col);
            end;
          end;
        end;
      end;
      if (sigma ≥ 0) then begin
        sigma := sigma + (fa2 * (1 - y));
        y := y - 1;
      end;
      sigma := sigma + (b2 * ((4 * x) + 6));
    end;
    _continuelabel2:;
    // for loop: increment/continue
    x := x + 1;
    goto _looplabel2;
    // for loop: break
    _breaklabel2:;
  end;
  // Second half
  begin
    // for loop: initializer
    x := w;
    y := 0;
    sigma := ((2 * a2) + (b2 * (1 - (2 * w))));
    // for loop: compare
    _looplabel5:;
    if ((a2 * y) ≤ (b2 * x)) then begin
    end
    else begin
      goto _breaklabel5;
    end;
    // for loop: body
    begin
      if (s = 180) then begin
        nk_rawfb_ctx_setpixel(rawfb, (x0 + x), (y0 + y), col);
      end
      else begin
        if (s = 270) then begin
          nk_rawfb_ctx_setpixel(rawfb, (x0 - x), (y0 + y), col);
        end
        else begin
          if (s = 0) then begin
            nk_rawfb_ctx_setpixel(rawfb, (x0 + x), (y0 - y), col);
          end
          else begin
            if (s = 90) then begin
              nk_rawfb_ctx_setpixel(rawfb, (x0 - x), (y0 - y), col);
            end;
          end;
        end;
      end;
      if (sigma ≥ 0) then begin
        sigma := sigma + (fb2 * (1 - x));
        x := x - 1;
      end;
      sigma := sigma + (a2 * ((4 * y) + 6));
    end;
    _continuelabel5:;
    // for loop: increment/continue
    y := y + 1;
    goto _looplabel5;
    // for loop: break
    _breaklabel5:;
  end;
end;

method nk_rawfb_fill_arc(rawfb: ^__struct_rawfb_context; x0: Int16; y0: Int16; w: Int16; h: Int16; s: Int16; col: __struct_nk_color); public;
begin
  // Bresenham's ellipses - modified to fill one quarter
  var a2: Int32 := ((w * w) / 4);
  var b2: Int32 := ((h * h) / 4);
  var fa2: Int32 := (4 * a2);
  var fb2: Int32 := (4 * b2);
  var x: Int32;
  var y: Int32;
  var sigma: Int32;
  var pnts: array[0..3 - 1] of __struct_nk_vec2i;
  if (Boolean((w < 1)) or Boolean((h < 1))) then begin
    exit;
  end;
  if (Boolean((Boolean((Boolean((s ≠ 0)) and Boolean((s ≠ 90)))) and Boolean((s ≠ 180)))) and Boolean((s ≠ 270))) then begin
    exit;
  end;
  // Convert upper left to center
  h := ((h + 1) / 2);
  w := ((w + 1) / 2);
  x0 := x0 + w;
  y0 := y0 + h;
  pnts[0].x := x0;
  pnts[0].y := y0;
  pnts[2].x := x0;
  pnts[2].y := y0;
  // First half
  begin
    // for loop: initializer
    x := 0;
    y := h;
    sigma := ((2 * b2) + (a2 * (1 - (2 * h))));
    // for loop: compare
    _looplabel2:;
    if ((b2 * x) ≤ (a2 * y)) then begin
    end
    else begin
      goto _breaklabel2;
    end;
    // for loop: body
    begin
      if (s = 180) then begin
        pnts[1].x := (x0 + x);
        pnts[1].y := (y0 + y);
      end
      else begin
        if (s = 270) then begin
          pnts[1].x := (x0 - x);
          pnts[1].y := (y0 + y);
        end
        else begin
          if (s = 0) then begin
            pnts[1].x := (x0 + x);
            pnts[1].y := (y0 - y);
          end
          else begin
            if (s = 90) then begin
              pnts[1].x := (x0 - x);
              pnts[1].y := (y0 - y);
            end;
          end;
        end;
      end;
      nk_rawfb_fill_polygon(rawfb, pnts, 3, col);
      pnts[2] := pnts[1];
      if (sigma ≥ 0) then begin
        sigma := sigma + (fa2 * (1 - y));
        y := y - 1;
      end;
      sigma := sigma + (b2 * ((4 * x) + 6));
    end;
    _continuelabel2:;
    // for loop: increment/continue
    x := x + 1;
    goto _looplabel2;
    // for loop: break
    _breaklabel2:;
  end;
  // Second half
  begin
    // for loop: initializer
    x := w;
    y := 0;
    sigma := ((2 * a2) + (b2 * (1 - (2 * w))));
    // for loop: compare
    _looplabel5:;
    if ((a2 * y) ≤ (b2 * x)) then begin
    end
    else begin
      goto _breaklabel5;
    end;
    // for loop: body
    begin
      if (s = 180) then begin
        pnts[1].x := (x0 + x);
        pnts[1].y := (y0 + y);
      end
      else begin
        if (s = 270) then begin
          pnts[1].x := (x0 - x);
          pnts[1].y := (y0 + y);
        end
        else begin
          if (s = 0) then begin
            pnts[1].x := (x0 + x);
            pnts[1].y := (y0 - y);
          end
          else begin
            if (s = 90) then begin
              pnts[1].x := (x0 - x);
              pnts[1].y := (y0 - y);
            end;
          end;
        end;
      end;
      nk_rawfb_fill_polygon(rawfb, pnts, 3, col);
      pnts[2] := pnts[1];
      if (sigma ≥ 0) then begin
        sigma := sigma + (fb2 * (1 - x));
        x := x - 1;
      end;
      sigma := sigma + (a2 * ((4 * y) + 6));
    end;
    _continuelabel5:;
    // for loop: increment/continue
    y := y + 1;
    goto _looplabel5;
    // for loop: break
    _breaklabel5:;
  end;
end;

method nk_rawfb_stroke_rect(rawfb: ^__struct_rawfb_context; x: Int16; y: Int16; w: Int16; h: Int16; r: Int16; line_thickness: Int16; col: __struct_nk_color); public;
begin
  if (r = 0) then begin
    nk_rawfb_stroke_line(rawfb, x, y, (x + w), y, line_thickness, col);
    nk_rawfb_stroke_line(rawfb, x, (y + h), (x + w), (y + h), line_thickness, col);
    nk_rawfb_stroke_line(rawfb, x, y, x, (y + h), line_thickness, col);
    nk_rawfb_stroke_line(rawfb, (x + w), y, (x + w), (y + h), line_thickness, col);
  end
  else begin
    var xc: Int16 := (x + r);
    var yc: Int16 := (y + r);
    var wc: Int16 := Int16((w - (2 * r)));
    var hc: Int16 := Int16((h - (2 * r)));
    nk_rawfb_stroke_line(rawfb, xc, y, (xc + wc), y, line_thickness, col);
    nk_rawfb_stroke_line(rawfb, (x + w), yc, (x + w), (yc + hc), line_thickness, col);
    nk_rawfb_stroke_line(rawfb, xc, (y + h), (xc + wc), (y + h), line_thickness, col);
    nk_rawfb_stroke_line(rawfb, x, yc, x, (yc + hc), line_thickness, col);
    nk_rawfb_stroke_arc(rawfb, ((xc + wc) - r), y, (UInt32(r) * 2), (UInt32(r) * 2), 0, line_thickness, col);
    nk_rawfb_stroke_arc(rawfb, x, y, (UInt32(r) * 2), (UInt32(r) * 2), 90, line_thickness, col);
    nk_rawfb_stroke_arc(rawfb, x, ((yc + hc) - r), (UInt32(r) * 2), (UInt32(r) * 2), 270, line_thickness, col);
    nk_rawfb_stroke_arc(rawfb, ((xc + wc) - r), ((yc + hc) - r), (UInt32(r) * 2), (UInt32(r) * 2), 180, line_thickness, col);
  end;
end;

method nk_rawfb_fill_rect(rawfb: ^__struct_rawfb_context; x: Int16; y: Int16; w: Int16; h: Int16; r: Int16; col: __struct_nk_color); public;
begin
  var i: Int32;
  if (r = 0) then begin
    begin
      // for loop: initializer
      i := 0;
      // for loop: compare
      _looplabel0:;
      if (i < h) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      nk_rawfb_stroke_line(rawfb, x, (y + i), (x + w), (y + i), 1, col);
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
  end
  else begin
    var xc: Int16 := (x + r);
    var yc: Int16 := (y + r);
    var wc: Int16 := Int16((w - (2 * r)));
    var hc: Int16 := Int16((h - (2 * r)));
    var pnts: array[0..12 - 1] of __struct_nk_vec2i;
    pnts[0].x := x;
    pnts[0].y := yc;
    pnts[1].x := xc;
    pnts[1].y := yc;
    pnts[2].x := xc;
    pnts[2].y := y;
    pnts[3].x := (xc + wc);
    pnts[3].y := y;
    pnts[4].x := (xc + wc);
    pnts[4].y := yc;
    pnts[5].x := (x + w);
    pnts[5].y := yc;
    pnts[6].x := (x + w);
    pnts[6].y := (yc + hc);
    pnts[7].x := (xc + wc);
    pnts[7].y := (yc + hc);
    pnts[8].x := (xc + wc);
    pnts[8].y := (y + h);
    pnts[9].x := xc;
    pnts[9].y := (y + h);
    pnts[10].x := xc;
    pnts[10].y := (yc + hc);
    pnts[11].x := x;
    pnts[11].y := (yc + hc);
    nk_rawfb_fill_polygon(rawfb, pnts, 12, col);
    nk_rawfb_fill_arc(rawfb, ((xc + wc) - r), y, (UInt32(r) * 2), (UInt32(r) * 2), 0, col);
    nk_rawfb_fill_arc(rawfb, x, y, (UInt32(r) * 2), (UInt32(r) * 2), 90, col);
    nk_rawfb_fill_arc(rawfb, x, ((yc + hc) - r), (UInt32(r) * 2), (UInt32(r) * 2), 270, col);
    nk_rawfb_fill_arc(rawfb, ((xc + wc) - r), ((yc + hc) - r), (UInt32(r) * 2), (UInt32(r) * 2), 180, col);
  end;
end;

method nk_rawfb_draw_rect_multi_color(rawfb: ^__struct_rawfb_context; x: Int16; y: Int16; w: Int16; h: Int16; tl: __struct_nk_color; tr: __struct_nk_color; br: __struct_nk_color; bl: __struct_nk_color); public;
begin
  var i: Int32;
  var j: Int32;
  var edge_buf: ^__struct_nk_color;
  var edge_t: ^__struct_nk_color;
  var edge_b: ^__struct_nk_color;
  var edge_l: ^__struct_nk_color;
  var edge_r: ^__struct_nk_color;
  var pixel: __struct_nk_color;
  edge_buf := malloc((((2 * w) + (2 * h)) * sizeOf(__struct_nk_color)));
  if (edge_buf = nil) then begin
    exit;
  end;
  edge_t := edge_buf;
  edge_b := (edge_buf + w);
  edge_l := (edge_buf + (w * 2));
  edge_r := ((edge_buf + (w * 2)) + h);
  // Top and bottom edge gradients
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < w) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      edge_t[i].r := Byte(((((Single(tr.r) - tl.r) / (w - 1)) * i) + 0.5) + tl.r);
      edge_t[i].g := Byte(((((Single(tr.g) - tl.g) / (w - 1)) * i) + 0.5) + tl.g);
      edge_t[i].b := Byte(((((Single(tr.b) - tl.b) / (w - 1)) * i) + 0.5) + tl.b);
      edge_t[i].a := Byte(((((Single(tr.a) - tl.a) / (w - 1)) * i) + 0.5) + tl.a);
      edge_b[i].r := Byte(((((Single(br.r) - bl.r) / (w - 1)) * i) + 0.5) + bl.r);
      edge_b[i].g := Byte(((((Single(br.g) - bl.g) / (w - 1)) * i) + 0.5) + bl.g);
      edge_b[i].b := Byte(((((Single(br.b) - bl.b) / (w - 1)) * i) + 0.5) + bl.b);
      edge_b[i].a := Byte(((((Single(br.a) - bl.a) / (w - 1)) * i) + 0.5) + bl.a);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  // Left and right edge gradients
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel1:;
    if (i < h) then begin
    end
    else begin
      goto _breaklabel1;
    end;
    // for loop: body
    begin
      edge_l[i].r := Byte(((((Single(bl.r) - tl.r) / (h - 1)) * i) + 0.5) + tl.r);
      edge_l[i].g := Byte(((((Single(bl.g) - tl.g) / (h - 1)) * i) + 0.5) + tl.g);
      edge_l[i].b := Byte(((((Single(bl.b) - tl.b) / (h - 1)) * i) + 0.5) + tl.b);
      edge_l[i].a := Byte(((((Single(bl.a) - tl.a) / (h - 1)) * i) + 0.5) + tl.a);
      edge_r[i].r := Byte(((((Single(br.r) - tr.r) / (h - 1)) * i) + 0.5) + tr.r);
      edge_r[i].g := Byte(((((Single(br.g) - tr.g) / (h - 1)) * i) + 0.5) + tr.g);
      edge_r[i].b := Byte(((((Single(br.b) - tr.b) / (h - 1)) * i) + 0.5) + tr.b);
      edge_r[i].a := Byte(((((Single(br.a) - tr.a) / (h - 1)) * i) + 0.5) + tr.a);
    end;
    _continuelabel1:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel1;
    // for loop: break
    _breaklabel1:;
  end;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel2:;
    if (i < h) then begin
    end
    else begin
      goto _breaklabel2;
    end;
    // for loop: body
    begin
      // for loop: initializer
      j := 0;
      // for loop: compare
      _looplabel3:;
      if (j < w) then begin
      end
      else begin
        goto _breaklabel3;
      end;
      // for loop: body
      begin
        if (i = 0) then begin
          nk_rawfb_img_blendpixel((@(rawfb)^.fb), (x + j), (y + i), edge_t[j]);
        end
        else begin
          if (i = (h - 1)) then begin
            nk_rawfb_img_blendpixel((@(rawfb)^.fb), (x + j), (y + i), edge_b[j]);
          end
          else begin
            if (j = 0) then begin
              nk_rawfb_img_blendpixel((@(rawfb)^.fb), (x + j), (y + i), edge_l[i]);
            end
            else begin
              if (j = (w - 1)) then begin
                nk_rawfb_img_blendpixel((@(rawfb)^.fb), (x + j), (y + i), edge_r[i]);
              end
              else begin
                pixel.r := Byte(((((Single(edge_r[i].r) - edge_l[i].r) / (w - 1)) * j) + 0.5) + edge_l[i].r);
                pixel.g := Byte(((((Single(edge_r[i].g) - edge_l[i].g) / (w - 1)) * j) + 0.5) + edge_l[i].g);
                pixel.b := Byte(((((Single(edge_r[i].b) - edge_l[i].b) / (w - 1)) * j) + 0.5) + edge_l[i].b);
                pixel.a := Byte(((((Single(edge_r[i].a) - edge_l[i].a) / (w - 1)) * j) + 0.5) + edge_l[i].a);
                nk_rawfb_img_blendpixel((@(rawfb)^.fb), (x + j), (y + i), pixel);
              end;
            end;
          end;
        end;
      end;
      _continuelabel3:;
      // for loop: increment/continue
      j := j + 1;
      goto _looplabel3;
      // for loop: break
      _breaklabel3:;
    end;
    _continuelabel2:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel2;
    // for loop: break
    _breaklabel2:;
  end;
  free(edge_buf);
end;

method nk_rawfb_fill_triangle(rawfb: ^__struct_rawfb_context; x0: Int16; y0: Int16; x1: Int16; y1: Int16; x2: Int16; y2: Int16; col: __struct_nk_color); public;
begin
  var pnts: array[0..3 - 1] of __struct_nk_vec2i;
  pnts[0].x := x0;
  pnts[0].y := y0;
  pnts[1].x := x1;
  pnts[1].y := y1;
  pnts[2].x := x2;
  pnts[2].y := y2;
  nk_rawfb_fill_polygon(rawfb, pnts, 3, col);
end;

method nk_rawfb_stroke_triangle(rawfb: ^__struct_rawfb_context; x0: Int16; y0: Int16; x1: Int16; y1: Int16; x2: Int16; y2: Int16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  nk_rawfb_stroke_line(rawfb, x0, y0, x1, y1, line_thickness, col);
  nk_rawfb_stroke_line(rawfb, x1, y1, x2, y2, line_thickness, col);
  nk_rawfb_stroke_line(rawfb, x2, y2, x0, y0, line_thickness, col);
end;

method nk_rawfb_stroke_polygon(rawfb: ^__struct_rawfb_context; pnts: ^__struct_nk_vec2i; count: Int32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var i: Int32;
  begin
    // for loop: initializer
    i := 1;
    // for loop: compare
    _looplabel0:;
    if (i < count) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    nk_rawfb_stroke_line(rawfb, pnts[(i - 1)].x, pnts[(i - 1)].y, pnts[i].x, pnts[i].y, line_thickness, col);
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  nk_rawfb_stroke_line(rawfb, pnts[(count - 1)].x, pnts[(count - 1)].y, pnts[0].x, pnts[0].y, line_thickness, col);
end;

method nk_rawfb_stroke_polyline(rawfb: ^__struct_rawfb_context; pnts: ^__struct_nk_vec2i; count: Int32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var i: Int32;
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (i < (count - 1)) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    nk_rawfb_stroke_line(rawfb, pnts[i].x, pnts[i].y, pnts[(i + 1)].x, pnts[(i + 1)].y, line_thickness, col);
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_rawfb_fill_circle(rawfb: ^__struct_rawfb_context; x0: Int16; y0: Int16; w: Int16; h: Int16; col: __struct_nk_color); public;
begin
  // Bresenham's ellipses
  var a2: Int32 := ((w * w) / 4);
  var b2: Int32 := ((h * h) / 4);
  var fa2: Int32 := (4 * a2);
  var fb2: Int32 := (4 * b2);
  var x: Int32;
  var y: Int32;
  var sigma: Int32;
  // Convert upper left to center
  h := ((h + 1) / 2);
  w := ((w + 1) / 2);
  x0 := x0 + w;
  y0 := y0 + h;
  // First half
  begin
    // for loop: initializer
    x := 0;
    y := h;
    sigma := ((2 * b2) + (a2 * (1 - (2 * h))));
    // for loop: compare
    _looplabel2:;
    if ((b2 * x) ≤ (a2 * y)) then begin
    end
    else begin
      goto _breaklabel2;
    end;
    // for loop: body
    begin
      nk_rawfb_stroke_line(rawfb, (x0 - x), (y0 + y), (x0 + x), (y0 + y), 1, col);
      nk_rawfb_stroke_line(rawfb, (x0 - x), (y0 - y), (x0 + x), (y0 - y), 1, col);
      if (sigma ≥ 0) then begin
        sigma := sigma + (fa2 * (1 - y));
        y := y - 1;
      end;
      sigma := sigma + (b2 * ((4 * x) + 6));
    end;
    _continuelabel2:;
    // for loop: increment/continue
    x := x + 1;
    goto _looplabel2;
    // for loop: break
    _breaklabel2:;
  end;
  // Second half
  begin
    // for loop: initializer
    x := w;
    y := 0;
    sigma := ((2 * a2) + (b2 * (1 - (2 * w))));
    // for loop: compare
    _looplabel5:;
    if ((a2 * y) ≤ (b2 * x)) then begin
    end
    else begin
      goto _breaklabel5;
    end;
    // for loop: body
    begin
      nk_rawfb_stroke_line(rawfb, (x0 - x), (y0 + y), (x0 + x), (y0 + y), 1, col);
      nk_rawfb_stroke_line(rawfb, (x0 - x), (y0 - y), (x0 + x), (y0 - y), 1, col);
      if (sigma ≥ 0) then begin
        sigma := sigma + (fb2 * (1 - x));
        x := x - 1;
      end;
      sigma := sigma + (a2 * ((4 * y) + 6));
    end;
    _continuelabel5:;
    // for loop: increment/continue
    y := y + 1;
    goto _looplabel5;
    // for loop: break
    _breaklabel5:;
  end;
end;

method nk_rawfb_stroke_circle(rawfb: ^__struct_rawfb_context; x0: Int16; y0: Int16; w: Int16; h: Int16; line_thickness: Int16; col: __struct_nk_color); public;
begin
  // Bresenham's ellipses
  var a2: Int32 := ((w * w) / 4);
  var b2: Int32 := ((h * h) / 4);
  var fa2: Int32 := (4 * a2);
  var fb2: Int32 := (4 * b2);
  var x: Int32;
  var y: Int32;
  var sigma: Int32;
  // Convert upper left to center
  h := ((h + 1) / 2);
  w := ((w + 1) / 2);
  x0 := x0 + w;
  y0 := y0 + h;
  // First half
  begin
    // for loop: initializer
    x := 0;
    y := h;
    sigma := ((2 * b2) + (a2 * (1 - (2 * h))));
    // for loop: compare
    _looplabel2:;
    if ((b2 * x) ≤ (a2 * y)) then begin
    end
    else begin
      goto _breaklabel2;
    end;
    // for loop: body
    begin
      nk_rawfb_ctx_setpixel(rawfb, (x0 + x), (y0 + y), col);
      nk_rawfb_ctx_setpixel(rawfb, (x0 - x), (y0 + y), col);
      nk_rawfb_ctx_setpixel(rawfb, (x0 + x), (y0 - y), col);
      nk_rawfb_ctx_setpixel(rawfb, (x0 - x), (y0 - y), col);
      if (sigma ≥ 0) then begin
        sigma := sigma + (fa2 * (1 - y));
        y := y - 1;
      end;
      sigma := sigma + (b2 * ((4 * x) + 6));
    end;
    _continuelabel2:;
    // for loop: increment/continue
    x := x + 1;
    goto _looplabel2;
    // for loop: break
    _breaklabel2:;
  end;
  // Second half
  begin
    // for loop: initializer
    x := w;
    y := 0;
    sigma := ((2 * a2) + (b2 * (1 - (2 * w))));
    // for loop: compare
    _looplabel5:;
    if ((a2 * y) ≤ (b2 * x)) then begin
    end
    else begin
      goto _breaklabel5;
    end;
    // for loop: body
    begin
      nk_rawfb_ctx_setpixel(rawfb, (x0 + x), (y0 + y), col);
      nk_rawfb_ctx_setpixel(rawfb, (x0 - x), (y0 + y), col);
      nk_rawfb_ctx_setpixel(rawfb, (x0 + x), (y0 - y), col);
      nk_rawfb_ctx_setpixel(rawfb, (x0 - x), (y0 - y), col);
      if (sigma ≥ 0) then begin
        sigma := sigma + (fb2 * (1 - x));
        x := x - 1;
      end;
      sigma := sigma + (a2 * ((4 * y) + 6));
    end;
    _continuelabel5:;
    // for loop: increment/continue
    y := y + 1;
    goto _looplabel5;
    // for loop: break
    _breaklabel5:;
  end;
end;

method nk_rawfb_stroke_curve(rawfb: ^__struct_rawfb_context; p1: __struct_nk_vec2i; p2: __struct_nk_vec2i; p3: __struct_nk_vec2i; p4: __struct_nk_vec2i; num_segments: UInt32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var i_step: UInt32;
  var segments: UInt32;
  var t_step: Single;
  var last: __struct_nk_vec2i := p1;
  segments := (if (num_segments < 1) then (1) else (num_segments));
  t_step := (1.0 / Single(segments));
  begin
    // for loop: initializer
    i_step := 1;
    // for loop: compare
    _looplabel0:;
    if (i_step ≤ segments) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      var t: Single := (t_step * Single(i_step));
      var u: Single := (1.0 - t);
      var w1: Single := ((u * u) * u);
      var w2: Single := (((3 * u) * u) * t);
      var w3: Single := (((3 * u) * t) * t);
      var w4: Single := ((t * t) * t);
      var x: Single := ((((w1 * p1.x) + (w2 * p2.x)) + (w3 * p3.x)) + (w4 * p4.x));
      var y: Single := ((((w1 * p1.y) + (w2 * p2.y)) + (w3 * p3.y)) + (w4 * p4.y));
      nk_rawfb_stroke_line(rawfb, last.x, last.y, Int16(x), Int16(y), line_thickness, col);
      last.x := Int16(x);
      last.y := Int16(y);
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i_step := i_step + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_rawfb_clear(rawfb: ^__struct_rawfb_context; col: __struct_nk_color); public;
begin
  nk_rawfb_fill_rect(rawfb, 0, 0, (rawfb)^.fb.w, (rawfb)^.fb.h, 0, col);
end;

method nk_rawfb_init(fb: ^Void; tex_mem: ^Void; w: UInt32; h: UInt32; pitch: UInt32; pl: rawfb_pl): ^__struct_rawfb_context; public;
begin
  var tex: ^Void;
  var rawfb: ^__struct_rawfb_context;
  rawfb := malloc(sizeOf(__struct_rawfb_context));
  if not Boolean(rawfb) then begin
    exit nil;
  end;
  memset(rawfb, 0, sizeOf(__struct_rawfb_context));
  (rawfb)^.font_tex.pixels := tex_mem;
  (rawfb)^.font_tex.format := NK_FONT_ATLAS_ALPHA8;
  (rawfb)^.font_tex.w := (() -> begin
    var _tmp0 := 0;
    (rawfb)^.font_tex.h := _tmp0;
    exit _tmp0;
  end)();
  (rawfb)^.fb.pixels := fb;
  (rawfb)^.fb.w := w;
  (rawfb)^.fb.h := h;
  (rawfb)^.fb.pl := pl;
  if (Boolean((pl = PIXEL_LAYOUT_RGBX_8888)) or Boolean((pl = PIXEL_LAYOUT_XRGB_8888))) then begin
    (rawfb)^.fb.format := NK_FONT_ATLAS_RGBA32;
    (rawfb)^.fb.pitch := pitch;
  end
  else begin
    perror("nk_rawfb_init(): Unsupported pixel layout."#10);
    free(rawfb);
    exit nil;
  end;
  if (0 = nk_init_default((@(rawfb)^.ctx), 0)) then begin
    free(rawfb);
    exit nil;
  end;
  nk_font_atlas_init_default((@(rawfb)^.atlas));
  nk_font_atlas_begin((@(rawfb)^.atlas));
  tex := nk_font_atlas_bake((@(rawfb)^.atlas), (@(rawfb)^.font_tex.w), (@(rawfb)^.font_tex.h), (rawfb)^.font_tex.format);
  if not Boolean(tex) then begin
    free(rawfb);
    exit nil;
  end;
  begin
    case (rawfb)^.font_tex.format of
      NK_FONT_ATLAS_ALPHA8: begin
          goto switch1_0;
        end;
      NK_FONT_ATLAS_RGBA32: begin
          goto switch1_1;
        end;
    end;
    goto _breaklabelswitch1;
    switch1_0:;
    (rawfb)^.font_tex.pitch := ((rawfb)^.font_tex.w * 1);
    goto _breaklabelswitch1;
    switch1_1:;
    (rawfb)^.font_tex.pitch := ((rawfb)^.font_tex.w * 4);
    goto _breaklabelswitch1;
    _breaklabelswitch1:;
  end;
  begin
  end;
  // Store the font texture in tex scratch memory
  memcpy((rawfb)^.font_tex.pixels, tex, ((rawfb)^.font_tex.pitch * (rawfb)^.font_tex.h));
  nk_font_atlas_end((@(rawfb)^.atlas), nk_handle_ptr(nil), nil);
  if (rawfb)^.atlas.default_font then begin
    nk_style_set_font((@(rawfb)^.ctx), (@((rawfb)^.atlas.default_font)^.handle));
  end;
  nk_style_load_all_cursors((@(rawfb)^.ctx), (rawfb)^.atlas.cursors);
  nk_rawfb_scissor(rawfb, 0, 0, (rawfb)^.fb.w, (rawfb)^.fb.h);
  exit rawfb;
end;

method nk_rawfb_stretch_image(dst: ^__struct_rawfb_image; src: ^__struct_rawfb_image; dst_rect: ^__struct_nk_rect; src_rect: ^__struct_nk_rect; dst_scissors: ^__struct_nk_rect; fg: ^__struct_nk_color); public;
begin
  var i: Int16;
  var j: Int16;
  var col: __struct_nk_color;
  var xinc: Single := ((src_rect)^.w / (dst_rect)^.w);
  var yinc: Single := ((src_rect)^.h / (dst_rect)^.h);
  var xoff: Single := (src_rect)^.x;
  var yoff: Single := (src_rect)^.y;
  // Simple nearest filtering rescaling
  //  TODO: use bilinear filter
  begin
    // for loop: initializer
    j := 0;
    // for loop: compare
    _looplabel0:;
    if (j < Int16((dst_rect)^.h)) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      begin
        // for loop: initializer
        i := 0;
        // for loop: compare
        _looplabel1:;
        if (i < Int16((dst_rect)^.w)) then begin
        end
        else begin
          goto _breaklabel1;
        end;
        // for loop: body
        begin
          if dst_scissors then begin
            if (Boolean(((i + Int32(((dst_rect)^.x + 0.5))) < (dst_scissors)^.x)) or Boolean(((i + Int32(((dst_rect)^.x + 0.5))) ≥ (dst_scissors)^.w))) then begin
              goto _continuelabel1;
            end;
            if (Boolean(((j + Int32(((dst_rect)^.y + 0.5))) < (dst_scissors)^.y)) or Boolean(((j + Int32(((dst_rect)^.y + 0.5))) ≥ (dst_scissors)^.h))) then begin
              goto _continuelabel1;
            end;
          end;
          col := nk_rawfb_img_getpixel(src, Int32(xoff), Int32(yoff));
          if (Boolean((Boolean(col.r) or Boolean(col.g))) or Boolean(col.b)) then begin
            col.r := (fg)^.r;
            col.g := (fg)^.g;
            col.b := (fg)^.b;
          end;
          nk_rawfb_img_blendpixel(dst, (i + Int32(((dst_rect)^.x + 0.5))), (j + Int32(((dst_rect)^.y + 0.5))), col);
          xoff := xoff + xinc;
        end;
        _continuelabel1:;
        // for loop: increment/continue
        i := i + 1;
        goto _looplabel1;
        // for loop: break
        _breaklabel1:;
      end;
      xoff := (src_rect)^.x;
      yoff := yoff + yinc;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    j := j + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
end;

method nk_rawfb_font_query_font_glyph(handle: nk_handle; height: Single; glyph: ^__struct_nk_user_font_glyph; codepoint: nk_rune; next_codepoint: nk_rune); public;
begin
  var scale: Single;
  var g: ^__struct_nk_font_glyph;
  var font: ^__struct_nk_font;
  assert(glyph);
  //NK_UNUSED(next_codepoint);
  font := ^__struct_nk_font(handle.ptr);
  assert(font);
  assert((font)^.glyphs);
  if (Boolean(not Boolean(font)) or Boolean(not Boolean(glyph))) then begin
    exit;
  end;
  scale := (height / (font)^.info.height);
  g := nk_font_find_glyph(font, codepoint);
  (glyph)^.width := (((g)^.x1 - (g)^.x0) * scale);
  (glyph)^.height := (((g)^.y1 - (g)^.y0) * scale);
  (glyph)^.offset := nk_vec2(((g)^.x0 * scale), ((g)^.y0 * scale));
  (glyph)^.xadvance := ((g)^.xadvance * scale);
  (glyph)^.uv[0] := nk_vec2((g)^.u0, (g)^.v0);
  (glyph)^.uv[1] := nk_vec2((g)^.u1, (g)^.v1);
end;

method nk_rawfb_draw_text(rawfb: ^__struct_rawfb_context; font: ^__struct_nk_user_font; rect: __struct_nk_rect; text: ^Byte; len: Int32; font_height: Single; fg: __struct_nk_color); public;
begin
  var x: Single := 0;
  var text_len: Int32 := 0;
  var unicode: nk_rune := 0;
  var next: nk_rune := 0;
  var glyph_len: Int32 := 0;
  var next_glyph_len: Int32 := 0;
  var g: __struct_nk_user_font_glyph;
  if (Boolean(not Boolean(len)) or Boolean(not Boolean(text))) then begin
    exit;
  end;
  x := 0;
  glyph_len := nk_utf_decode(text, (@unicode), len);
  if not Boolean(glyph_len) then begin
    exit;
  end;
  // draw every glyph image
  while (Boolean((text_len < len)) and Boolean(glyph_len)) do begin
    var src_rect: __struct_nk_rect;
    var dst_rect: __struct_nk_rect;
    var char_width: Single := 0;
    if (unicode = $FFFD) then begin
      break;
    end;
    // query currently drawn glyph information
    next_glyph_len := nk_utf_decode(((text + text_len) + glyph_len), (@next), (Int32(len) - text_len));
    nk_rawfb_font_query_font_glyph((font)^.userdata, font_height, (@g), unicode, (if (next = $FFFD) then (0) else (next)));
    // calculate and draw glyph drawing rectangle and image
    char_width := g.xadvance;
    src_rect.x := (g.uv[0].x * (rawfb)^.font_tex.w);
    src_rect.y := (g.uv[0].y * (rawfb)^.font_tex.h);
    src_rect.w := ((g.uv[1].x * (rawfb)^.font_tex.w) - (g.uv[0].x * (rawfb)^.font_tex.w));
    src_rect.h := ((g.uv[1].y * (rawfb)^.font_tex.h) - (g.uv[0].y * (rawfb)^.font_tex.h));
    dst_rect.x := ((x + g.offset.x) + rect.x);
    dst_rect.y := (g.offset.y + rect.y);
    dst_rect.w := ceilf(g.width);
    dst_rect.h := ceilf(g.height);
    // Use software rescaling to blit glyph from font_text to framebuffer
    nk_rawfb_stretch_image((@(rawfb)^.fb), (@(rawfb)^.font_tex), (@dst_rect), (@src_rect), (@(rawfb)^.scissors), (@fg));
    // offset next glyph
    text_len := text_len + glyph_len;
    x := x + char_width;
    glyph_len := next_glyph_len;
    unicode := next;
  end;
end;

method nk_rawfb_drawimage(rawfb: ^__struct_rawfb_context; x: Int32; y: Int32; w: Int32; h: Int32; img: ^__struct_nk_image; col: ^__struct_nk_color); public;
begin
  var src_rect: __struct_nk_rect;
  var dst_rect: __struct_nk_rect;
  src_rect.x := (img)^.region[0];
  src_rect.y := (img)^.region[1];
  src_rect.w := (img)^.region[2];
  src_rect.h := (img)^.region[3];
  dst_rect.x := x;
  dst_rect.y := y;
  dst_rect.w := w;
  dst_rect.h := h;
  nk_rawfb_stretch_image((@(rawfb)^.fb), (@(rawfb)^.font_tex), (@dst_rect), (@src_rect), (@(rawfb)^.scissors), col);
end;

method nk_rawfb_shutdown(rawfb: ^__struct_rawfb_context); public;
begin
  if rawfb then begin
    nk_free((@(rawfb)^.ctx));
    memset(rawfb, 0, sizeOf(__struct_rawfb_context));
    free(rawfb);
  end;
end;

method nk_rawfb_resize_fb(rawfb: ^__struct_rawfb_context; fb: ^Void; w: UInt32; h: UInt32; pitch: UInt32; pl: rawfb_pl); public;
begin
  (rawfb)^.fb.w := w;
  (rawfb)^.fb.h := h;
  (rawfb)^.fb.pixels := fb;
  (rawfb)^.fb.pitch := pitch;
  (rawfb)^.fb.pl := pl;
end;

method nk_rawfb_render(rawfb: ^__struct_rawfb_context; clear: __struct_nk_color; enable_clear: Byte); public;
begin
  var cmd: ^__struct_nk_command;
  if enable_clear then begin
    nk_rawfb_clear(rawfb, clear);
  end;
  begin
    // for loop: initializer
    cmd := nk__begin(^__struct_nk_context((@(rawfb)^.ctx)));
    // for loop: compare
    _looplabel0:;
    if (cmd ≠ 0) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      case (cmd)^.type of
        NK_COMMAND_NOP: begin
            goto switch1_0;
          end;
        NK_COMMAND_SCISSOR: begin
            goto switch1_1;
          end;
        NK_COMMAND_LINE: begin
            goto switch1_2;
          end;
        NK_COMMAND_RECT: begin
            goto switch1_3;
          end;
        NK_COMMAND_RECT_FILLED: begin
            goto switch1_4;
          end;
        NK_COMMAND_CIRCLE: begin
            goto switch1_5;
          end;
        NK_COMMAND_CIRCLE_FILLED: begin
            goto switch1_6;
          end;
        NK_COMMAND_TRIANGLE: begin
            goto switch1_7;
          end;
        NK_COMMAND_TRIANGLE_FILLED: begin
            goto switch1_8;
          end;
        NK_COMMAND_POLYGON: begin
            goto switch1_9;
          end;
        NK_COMMAND_POLYGON_FILLED: begin
            goto switch1_10;
          end;
        NK_COMMAND_POLYLINE: begin
            goto switch1_11;
          end;
        NK_COMMAND_TEXT: begin
            goto switch1_12;
          end;
        NK_COMMAND_CURVE: begin
            goto switch1_13;
          end;
        NK_COMMAND_RECT_MULTI_COLOR: begin
            goto switch1_14;
          end;
        NK_COMMAND_IMAGE: begin
            goto switch1_15;
          end;
        NK_COMMAND_ARC: begin
            goto switch1_16;
          end;
        NK_COMMAND_ARC_FILLED: begin
            goto switch1_17;
          end;
        else begin
          goto switch1_default;
        end;
      end;
      goto _breaklabelswitch1;
      switch1_0:;
      goto _breaklabelswitch1;
      switch1_1:;
      begin
        var s: ^__struct_nk_command_scissor := ^__struct_nk_command_scissor(cmd);
        nk_rawfb_scissor(^__struct_rawfb_context(rawfb), (s)^.x, (s)^.y, (s)^.w, (s)^.h);
      end;
      goto _breaklabelswitch1;
      switch1_2:;
      begin
        var l: ^__struct_nk_command_line := ^__struct_nk_command_line(cmd);
        nk_rawfb_stroke_line(rawfb, (l)^.begin.x, (l)^.begin.y, (l)^.end.x, (l)^.end.y, (l)^.line_thickness, (l)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_3:;
      begin
        var r: ^__struct_nk_command_rect := ^__struct_nk_command_rect(cmd);
        nk_rawfb_stroke_rect(rawfb, (r)^.x, (r)^.y, (r)^.w, (r)^.h, UInt16((r)^.rounding), (r)^.line_thickness, (r)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_4:;
      begin
        var r: ^__struct_nk_command_rect_filled := ^__struct_nk_command_rect_filled(cmd);
        nk_rawfb_fill_rect(rawfb, (r)^.x, (r)^.y, (r)^.w, (r)^.h, UInt16((r)^.rounding), (r)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_5:;
      begin
        var c: ^__struct_nk_command_circle := ^__struct_nk_command_circle(cmd);
        nk_rawfb_stroke_circle(rawfb, (c)^.x, (c)^.y, (c)^.w, (c)^.h, (c)^.line_thickness, (c)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_6:;
      begin
        var c: ^__struct_nk_command_circle_filled := ^__struct_nk_command_circle_filled(cmd);
        nk_rawfb_fill_circle(rawfb, (c)^.x, (c)^.y, (c)^.w, (c)^.h, (c)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_7:;
      begin
        var t: ^__struct_nk_command_triangle := ^__struct_nk_command_triangle(cmd);
        nk_rawfb_stroke_triangle(rawfb, (t)^.a.x, (t)^.a.y, (t)^.b.x, (t)^.b.y, (t)^.c.x, (t)^.c.y, (t)^.line_thickness, (t)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_8:;
      begin
        var t: ^__struct_nk_command_triangle_filled := ^__struct_nk_command_triangle_filled(cmd);
        nk_rawfb_fill_triangle(rawfb, (t)^.a.x, (t)^.a.y, (t)^.b.x, (t)^.b.y, (t)^.c.x, (t)^.c.y, (t)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_9:;
      begin
        var p: ^__struct_nk_command_polygon := ^__struct_nk_command_polygon(cmd);
        nk_rawfb_stroke_polygon(rawfb, (p)^.points, (p)^.point_count, (p)^.line_thickness, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_10:;
      begin
        var p: ^__struct_nk_command_polygon_filled := ^__struct_nk_command_polygon_filled(cmd);
        nk_rawfb_fill_polygon(rawfb, (p)^.points, (p)^.point_count, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_11:;
      begin
        var p: ^__struct_nk_command_polyline := ^__struct_nk_command_polyline(cmd);
        nk_rawfb_stroke_polyline(rawfb, (p)^.points, (p)^.point_count, (p)^.line_thickness, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_12:;
      begin
        var t: ^__struct_nk_command_text := ^__struct_nk_command_text(cmd);
        nk_rawfb_draw_text(rawfb, (t)^.font, nk_rect((t)^.x, (t)^.y, (t)^.w, (t)^.h), (t)^.string, (t)^.length, (t)^.height, (t)^.foreground);
      end;
      goto _breaklabelswitch1;
      switch1_13:;
      begin
        var q: ^__struct_nk_command_curve := ^__struct_nk_command_curve(cmd);
        nk_rawfb_stroke_curve(rawfb, (q)^.begin, (q)^.ctrl[0], (q)^.ctrl[1], (q)^.end, 22, (q)^.line_thickness, (q)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_14:;
      begin
        var q: ^__struct_nk_command_rect_multi_color := ^__struct_nk_command_rect_multi_color(cmd);
        nk_rawfb_draw_rect_multi_color(rawfb, (q)^.x, (q)^.y, (q)^.w, (q)^.h, (q)^.left, (q)^.top, (q)^.right, (q)^.bottom);
      end;
      goto _breaklabelswitch1;
      switch1_15:;
      begin
        var q: ^__struct_nk_command_image := ^__struct_nk_command_image(cmd);
        nk_rawfb_drawimage(rawfb, (q)^.x, (q)^.y, (q)^.w, (q)^.h, (@(q)^.img), (@(q)^.col));
      end;
      goto _breaklabelswitch1;
      switch1_16:;
      begin
        assert((Boolean(0) and Boolean("NK_COMMAND_ARC not implemented"#10)));
      end;
      goto _breaklabelswitch1;
      switch1_17:;
      begin
        assert((Boolean(0) and Boolean("NK_COMMAND_ARC_FILLED not implemented"#10)));
      end;
      goto _breaklabelswitch1;
      switch1_default:;
      goto _breaklabelswitch1;
      _breaklabelswitch1:;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    cmd := nk__next(^__struct_nk_context((@(rawfb)^.ctx)), cmd);
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  nk_clear(^__struct_nk_context((@(rawfb)^.ctx)));
end;

type
  rawfb_pl = public enum (PIXEL_LAYOUT_XRGB_8888, PIXEL_LAYOUT_RGBX_8888);

  // * ==============================================================
  //  *
  //  *                          IMPLEMENTATION
  //  *
  //  * ===============================================================
  __struct_rawfb_image = public record
  private

    var pixels: ^Void; public;
    var w: Int32; public;
    var h: Int32; public;
    var pitch: Int32; public;
    var pl: rawfb_pl; public;
    var format: __enum_nk_font_atlas_format; public;

  end;

  __struct_rawfb_context = public record
  private

    var ctx: __struct_nk_context; public;
    var scissors: __struct_nk_rect; public;
    var fb: __struct_rawfb_image; public;
    var font_tex: __struct_rawfb_image; public;
    var atlas: __struct_nk_font_atlas; public;

  end;

end.