namespace Nuklear;

{$IF WINDOWS}
// These were originally covered with Foxidizer but have some adjustments for Elements.

{$CCOMPATIBILITY ON}

uses
  rtl;

{$GLOBALS ON}

method nk_create_image(image: ^__struct_nk_image; frame_buffer: ^Byte; width: Int32; height: Int32); public;
begin
  if (Boolean((Boolean((Boolean(image) and Boolean(frame_buffer))) and Boolean((width > 0)))) and Boolean((height > 0))) then begin
    (image)^.w := width;
    (image)^.h := height;
    (image)^.region[0] := 0;
    (image)^.region[1] := 0;
    (image)^.region[2] := width;
    (image)^.region[3] := height;
    var row: INT := (((width * 3) + 3) and not 3);
    var bi: BITMAPINFO := default(BITMAPINFO);
    bi.bmiHeader.biSize := sizeOf(BITMAPINFOHEADER);
    bi.bmiHeader.biWidth := width;
    bi.bmiHeader.biHeight := height;
    bi.bmiHeader.biPlanes := 1;
    bi.bmiHeader.biBitCount := 24;
    bi.bmiHeader.biCompression := BI_RGB;
    bi.bmiHeader.biSizeImage := (row * height);
    var lpBuf: LPBYTE;
    var pb: LPBYTE := nil;
    var hbm: HBITMAP := CreateDIBSection(nil, (@bi), DIB_RGB_COLORS, ^^Void((@lpBuf)), nil, 0);
    pb := (lpBuf + (row * height));
    var src: ^Byte := ^Byte(frame_buffer);
    begin
      // for loop: initializer
      var v: Int32 := 0;
      // for loop: compare
      _looplabel0:;
      if (v < height) then begin
      end
      else begin
        goto _breaklabel0;
      end;
      // for loop: body
      begin
        pb := pb - row;
        begin
          // for loop: initializer
          var i: Int32 := 0;
          // for loop: compare
          _looplabel2:;
          if (i < row) then begin
          end
          else begin
            goto _breaklabel2;
          end;
          // for loop: body
          begin
            pb[(i + 0)] := src[0];
            pb[(i + 1)] := src[1];
            pb[(i + 2)] := src[2];
            src := src + 3;
          end;
          _continuelabel2:;
          // for loop: increment/continue
          i := i + 3;
          goto _looplabel2;
          // for loop: break
          _breaklabel2:;
        end;
      end;
      _continuelabel0:;
      // for loop: increment/continue
      v := v + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
    SetDIBits(nil, hbm, 0, height, lpBuf, (@bi), DIB_RGB_COLORS);
    (image)^.handle.ptr := hbm;
  end;
end;

method nk_delete_image(image: ^__struct_nk_image); public;
begin
  if (Boolean(image) and Boolean(((image)^.handle.id ≠ 0))) then begin
    var hbm: HBITMAP := HBITMAP((image)^.handle.ptr);
    DeleteObject(hbm);
    memset(image, 0, sizeOf(__struct_nk_image));
  end;
end;

method nk_gdi_draw_image( var gdi: NuklearContext; x: Int16; y: Int16; w: UInt16; h: UInt16; img: __struct_nk_image; col: __struct_nk_color); public;
begin
  var hbm: HBITMAP := HBITMAP(img.handle.ptr);
  var hDCBits: HDC;
  var bitmap: BITMAP;
  if (Boolean(not Boolean(gdi.memory_dc)) or Boolean(not Boolean(hbm))) then begin
    exit;
  end;
  hDCBits := CreateCompatibleDC(gdi.memory_dc);
  GetObject(hbm, sizeOf(bitmap), LPSTR((@bitmap)));
  SelectObject(hDCBits, hbm);
  StretchBlt(gdi.memory_dc, x, y, w, h, hDCBits, 0, 0, bitmap.bmWidth, bitmap.bmHeight, SRCCOPY);
  DeleteDC(hDCBits);
end;

method convert_color(c: __struct_nk_color): COLORREF; public;
begin
  exit ((c.r or (c.g shl 8)) or (c.b shl 16));
end;

method nk_gdi_scissor(dc: HDC; x: Single; y: Single; w: Single; h: Single); public;
begin
  SelectClipRgn(dc, nil);
  IntersectClipRect(dc, Int32(x), Int32(y), Int32(((x + w) + 1)), Int32(((y + h) + 1)));
end;

method nk_gdi_stroke_line(dc: HDC; x0: Int16; y0: Int16; x1: Int16; y1: Int16; line_thickness: UInt32; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  var pen: HPEN := nil;
  if (line_thickness = 1) then begin
    SetDCPenColor(dc, color);
  end
  else begin
    pen := CreatePen(PS_SOLID, line_thickness, color);
    SelectObject(dc, pen);
  end;
  MoveToEx(dc, x0, y0, nil);
  LineTo(dc, x1, y1);
  if pen then begin
    SelectObject(dc, GetStockObject(DC_PEN));
    DeleteObject(pen);
  end;
end;

method nk_gdi_stroke_rect(dc: HDC; x: Int16; y: Int16; w: UInt16; h: UInt16; r: UInt16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  var pen: HPEN := nil;
  if (line_thickness = 1) then begin
    SetDCPenColor(dc, color);
  end
  else begin
    pen := CreatePen(PS_SOLID, line_thickness, color);
    SelectObject(dc, pen);
  end;
  var br: HGDIOBJ := SelectObject(dc, GetStockObject(NULL_BRUSH));
  if (r = 0) then begin
    Rectangle(dc, x, y, (x + w), (y + h));
  end
  else begin
    RoundRect(dc, x, y, (x + w), (y + h), r, r);
  end;
  SelectObject(dc, br);
  if pen then begin
    SelectObject(dc, GetStockObject(DC_PEN));
    DeleteObject(pen);
  end;
end;

method nk_gdi_fill_rect(dc: HDC; x: Int16; y: Int16; w: UInt16; h: UInt16; r: UInt16; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  if (r = 0) then begin
    var rect: RECT := [x, y, (x + w), (y + h)];
    SetBkColor(dc, color);
    ExtTextOutW(dc, 0, 0, ETO_OPAQUE, (@rect), nil, 0, nil);
  end
  else begin
    SetDCPenColor(dc, color);
    SetDCBrushColor(dc, color);
    RoundRect(dc, x, y, (x + w), (y + h), r, r);
  end;
end;

method nk_gdi_set_vertexColor(tri: PTRIVERTEX; col: __struct_nk_color); public;
begin
  (tri)^.Red := (col.r shl 8);
  (tri)^.Green := (col.g shl 8);
  (tri)^.Blue := (col.b shl 8);
  (tri)^.Alpha := (255 shl 8);
end;

method nk_gdi_rect_multi_color(var gdi: NuklearContext;dc: HDC; x: Int16; y: Int16; w: UInt16; h: UInt16; left: __struct_nk_color; top: __struct_nk_color; right: __struct_nk_color; bottom: __struct_nk_color); public;
begin
  var alphaFunction: BLENDFUNCTION;
  var gRect: GRADIENT_RECT;
  var gTri: array[0..2 - 1] of GRADIENT_TRIANGLE;
  var vt: array[0..4 - 1] of TRIVERTEX;
  alphaFunction.BlendOp := AC_SRC_OVER;
  alphaFunction.BlendFlags := 0;
  alphaFunction.SourceConstantAlpha := 0;
  alphaFunction.AlphaFormat := AC_SRC_ALPHA;
  // TODO: This Case Needs Repair.
  //  Top Left Corner
  vt[0].x := x;
  vt[0].y := y;
  nk_gdi_set_vertexColor((@vt[0]), left);
  // Top Right Corner
  vt[1].x := (x + w);
  vt[1].y := y;
  nk_gdi_set_vertexColor((@vt[1]), top);
  // Bottom Left Corner
  vt[2].x := x;
  vt[2].y := (y + h);
  nk_gdi_set_vertexColor((@vt[2]), right);
  // Bottom Right Corner
  vt[3].x := (x + w);
  vt[3].y := (y + h);
  nk_gdi_set_vertexColor((@vt[3]), bottom);
  gTri[0].Vertex1 := 0;
  gTri[0].Vertex2 := 1;
  gTri[0].Vertex3 := 2;
  gTri[1].Vertex1 := 2;
  gTri[1].Vertex2 := 1;
  gTri[1].Vertex3 := 3;
  GdiGradientFill(dc, vt, 4, gTri, 2, GRADIENT_FILL_TRIANGLE);
  AlphaBlend(gdi.window_dc, x, y, (x + w), (y + h), gdi.memory_dc, x, y, (x + w), (y + h), alphaFunction);
end;

method nk_gdi_fill_triangle(dc: HDC; x0: Int16; y0: Int16; x1: Int16; y1: Int16; x2: Int16; y2: Int16; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  var points: ^POINT := [[x0, y0], [x1, y1], [x2, y2]];
  SetDCPenColor(dc, color);
  SetDCBrushColor(dc, color);
  Polygon(dc, points, 3);
end;

method nk_gdi_stroke_triangle(dc: HDC; x0: Int16; y0: Int16; x1: Int16; y1: Int16; x2: Int16; y2: Int16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  var points: ^POINT := [[x0, y0], [x1, y1], [x2, y2], [x0, y0]];
  var pen: HPEN := nil;
  if (line_thickness = 1) then begin
    SetDCPenColor(dc, color);
  end
  else begin
    pen := CreatePen(PS_SOLID, line_thickness, color);
    SelectObject(dc, pen);
  end;
  Polyline(dc, points, 4);
  if pen then begin
    SelectObject(dc, GetStockObject(DC_PEN));
    DeleteObject(pen);
  end;
end;

method nk_gdi_fill_polygon(dc: HDC; pnts: ^__struct_nk_vec2i; count: Int32; col: __struct_nk_color); public;
begin
  var i: Int32 := 0;
  // defined: MAX_POINTS ()  64
  var points: array[0..64 - 1] of POINT;
  var color: COLORREF := convert_color(col);
  SetDCBrushColor(dc, color);
  SetDCPenColor(dc, color);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (Boolean((i < count)) and Boolean((i < 64))) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      points[i].x := pnts[i].x;
      points[i].y := pnts[i].y;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  Polygon(dc, points, i);
end;

method nk_gdi_stroke_polygon(dc: HDC; pnts: ^__struct_nk_vec2i; count: Int32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  var pen: HPEN := nil;
  if (line_thickness = 1) then begin
    SetDCPenColor(dc, color);
  end
  else begin
    pen := CreatePen(PS_SOLID, line_thickness, color);
    SelectObject(dc, pen);
  end;
  if (count > 0) then begin
    var i: Int32;
    MoveToEx(dc, pnts[0].x, pnts[0].y, nil);
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
      LineTo(dc, pnts[i].x, pnts[i].y);
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
    LineTo(dc, pnts[0].x, pnts[0].y);
  end;
  if pen then begin
    SelectObject(dc, GetStockObject(DC_PEN));
    DeleteObject(pen);
  end;
end;

method nk_gdi_stroke_polyline(dc: HDC; pnts: ^__struct_nk_vec2i; count: Int32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  var pen: HPEN := nil;
  if (line_thickness = 1) then begin
    SetDCPenColor(dc, color);
  end
  else begin
    pen := CreatePen(PS_SOLID, line_thickness, color);
    SelectObject(dc, pen);
  end;
  if (count > 0) then begin
    var i: Int32;
    MoveToEx(dc, pnts[0].x, pnts[0].y, nil);
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
      LineTo(dc, pnts[i].x, pnts[i].y);
      _continuelabel0:;
      // for loop: increment/continue
      i := i + 1;
      goto _looplabel0;
      // for loop: break
      _breaklabel0:;
    end;
  end;
  if pen then begin
    SelectObject(dc, GetStockObject(DC_PEN));
    DeleteObject(pen);
  end;
end;

method nk_gdi_fill_circle(dc: HDC; x: Int16; y: Int16; w: UInt16; h: UInt16; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  SetDCBrushColor(dc, color);
  SetDCPenColor(dc, color);
  Ellipse(dc, x, y, (x + w), (y + h));
end;

method nk_gdi_stroke_circle(dc: HDC; x: Int16; y: Int16; w: UInt16; h: UInt16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  var pen: HPEN := nil;
  if (line_thickness = 1) then begin
    SetDCPenColor(dc, color);
  end
  else begin
    pen := CreatePen(PS_SOLID, line_thickness, color);
    SelectObject(dc, pen);
  end;
  SetDCBrushColor(dc, OPAQUE);
  Ellipse(dc, x, y, (x + w), (y + h));
  if pen then begin
    SelectObject(dc, GetStockObject(DC_PEN));
    DeleteObject(pen);
  end;
end;

method nk_gdi_stroke_curve(dc: HDC; p1: __struct_nk_vec2i; p2: __struct_nk_vec2i; p3: __struct_nk_vec2i; p4: __struct_nk_vec2i; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  var p: ^POINT := [[p1.x, p1.y], [p2.x, p2.y], [p3.x, p3.y], [p4.x, p4.y]];
  var pen: HPEN := nil;
  if (line_thickness = 1) then begin
    SetDCPenColor(dc, color);
  end
  else begin
    pen := CreatePen(PS_SOLID, line_thickness, color);
    SelectObject(dc, pen);
  end;
  SetDCBrushColor(dc, OPAQUE);
  PolyBezier(dc, p, 4);
  if pen then begin
    SelectObject(dc, GetStockObject(DC_PEN));
    DeleteObject(pen);
  end;
end;

method nk_gdi_draw_text(dc: HDC; x: Int16; y: Int16; w: UInt16; h: UInt16; text: ^Byte; len: Int32; font: ^GdiFont; cbg: __struct_nk_color; cfg: __struct_nk_color); public;
begin
  var wsize: Int32;
  var wstr: ^WCHAR;
  if (Boolean((Boolean(not Boolean(text)) or Boolean(not Boolean(font)))) or Boolean(not Boolean(len))) then begin
    exit;
  end;
  wsize := MultiByteToWideChar(CP_UTF8, 0, text, len, nil, 0);
  wstr := ^WCHAR(malloc((wsize * sizeOf(wchar_t))));
  MultiByteToWideChar(CP_UTF8, 0, text, len, wstr, wsize);
  SetBkColor(dc, convert_color(cbg));
  SetTextColor(dc, convert_color(cfg));
  SelectObject(dc, (font)^.handle);
  ExtTextOutW(dc, x, y, ETO_OPAQUE, nil, wstr, wsize, nil);
  free(wstr);
end;

method nk_gdi_clear(var gdi: NuklearContext; dc: HDC; col: __struct_nk_color); public;
begin
  var color: COLORREF := convert_color(col);
  var rect: RECT := [0, 0, gdi.width, gdi.height];
  SetBkColor(dc, color);
  ExtTextOutW(dc, 0, 0, ETO_OPAQUE, (@rect), nil, 0, nil);
end;

method nk_gdi_blit(var gdi: NuklearContext; dc: HDC); public;
begin
  BitBlt(dc, 0, 0, gdi.width, gdi.height, gdi.memory_dc, 0, 0, SRCCOPY);
end;

method nk_gdifont_create(name: ^Byte; size: Int32): ^GdiFont; public;
begin
  var metric: TEXTMETRICW;
  var font: ^GdiFont := ^GdiFont(malloc(sizeOf(GdiFont)));
  font^ := default(GdiFont);
  if not Boolean(font) then begin
    exit nil;
  end;
  (font)^.dc := CreateCompatibleDC(0);
  (font)^.handle := CreateFontA(size, 0, 0, 0, FW_NORMAL, 0, 0, 0, DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY, (DEFAULT_PITCH or FF_DONTCARE), name);
  SelectObject((font)^.dc, (font)^.handle);
  GetTextMetricsW((font)^.dc, (@metric));
  (font)^.height := metric.tmHeight;
  exit font;
end;

method nk_gdifont_get_text_width(handle: nk_handle; height: Single; text: ^Byte; len: Int32): Single; public;
begin
  var font: ^GdiFont := ^GdiFont(handle.ptr);
  var size: SIZE;
  var wsize: Int32;
  var wstr: ^WCHAR;
  if (Boolean(not Boolean(font)) or Boolean(not Boolean(text))) then begin
    exit 0;
  end;
  wsize := MultiByteToWideChar(CP_UTF8, 0, text, len, nil, 0);
  wstr := ^WCHAR(malloc((wsize * sizeOf(wchar_t))));
  MultiByteToWideChar(CP_UTF8, 0, text, len, wstr, wsize);
  if GetTextExtentPoint32W((font)^.dc, wstr, wsize, (@size)) then begin
    free(wstr);
    exit Single(size.cx);
  end;
  free(wstr);
  exit -1.0;
end;

method nk_gdifont_del(font: ^GdiFont); public;
begin
  if not Boolean(font) then begin
    exit;
  end;
  DeleteObject((font)^.handle);
  DeleteDC((font)^.dc);
  free(font);
end;

method nk_gdi_clipboard_paste(usr: nk_handle; edit: ^__struct_nk_text_edit); public;
begin
  if (Boolean(IsClipboardFormatAvailable(CF_UNICODETEXT)) and Boolean(OpenClipboard(nil))) then begin
    var mem: HGLOBAL := GetClipboardData(CF_UNICODETEXT);
    if mem then begin
      var size: size_t := (GlobalSize(mem) - 1);
      if size then begin
        var wstr: LPCWSTR := LPCWSTR(GlobalLock(mem));
        if wstr then begin
          var utf8size: Int32 := WideCharToMultiByte(CP_UTF8, 0, wstr, Int32((size / sizeOf(wchar_t))), nil, 0, nil, nil);
          if utf8size then begin
            var utf8: ^Byte := ^Byte(malloc(utf8size));
            if utf8 then begin
              WideCharToMultiByte(CP_UTF8, 0, wstr, Int32((size / sizeOf(wchar_t))), utf8, utf8size, nil, nil);
              nk_textedit_paste(edit, utf8, utf8size);
              free(utf8);
            end;
          end;
          GlobalUnlock(mem);
        end;
      end;
    end;
    CloseClipboard();
  end;
end;

method nk_gdi_clipboard_copy(usr: nk_handle; text: ^Byte; len: Int32); public;
begin
  if OpenClipboard(nil) then begin
    var wsize: Int32 := MultiByteToWideChar(CP_UTF8, 0, text, len, nil, 0);
    if wsize then begin
      var mem: HGLOBAL := HGLOBAL(GlobalAlloc(GMEM_MOVEABLE, ((wsize + 1) * sizeOf(wchar_t))));
      if mem then begin
        var wstr: ^wchar_t := ^wchar_t(GlobalLock(mem));
        if wstr then begin
          MultiByteToWideChar(CP_UTF8, 0, text, len, wstr, wsize);
          wstr[wsize] := 0;
          GlobalUnlock(mem);
          SetClipboardData(CF_UNICODETEXT, mem);
        end;
      end;
    end;
    CloseClipboard();
  end;
end;

method nk_gdi_init(var gdi: NuklearContext; gdifont: ^GdiFont; window_dc: HDC; width: UInt32; height: UInt32): ^__struct_nk_context; public;
begin
  var font: ^__struct_nk_user_font := (@(gdifont)^.nk);
  (font)^.userdata := nk_handle_ptr(gdifont);
  (font)^.height := Single((gdifont)^.height);
  (font)^.width := nk_gdifont_get_text_width;
  gdi.bitmap := CreateCompatibleBitmap(window_dc, width, height);
  gdi.window_dc := window_dc;
  gdi.memory_dc := CreateCompatibleDC(window_dc);
  gdi.width := width;
  gdi.height := height;
  SelectObject(gdi.memory_dc, gdi.bitmap);
  nk_init_default((@gdi.ctx), font);
  gdi.ctx.clip.copy := nk_gdi_clipboard_copy;
  gdi.ctx.clip.paste := nk_gdi_clipboard_paste;
  exit (@gdi.ctx);
end;

method nk_gdi_set_font(var gdi: NuklearContext; gdifont: ^GdiFont); public;
begin
  var font: ^__struct_nk_user_font := (@(gdifont)^.nk);
  (font)^.userdata := nk_handle_ptr(gdifont);
  (font)^.height := Single((gdifont)^.height);
  (font)^.width := nk_gdifont_get_text_width;
  nk_style_set_font((@gdi.ctx), font);
end;

method nk_gdi_handle_event(var gdi: NuklearContext; wnd: HWND; msg: UINT; wparam: WPARAM; lparam: LPARAM): Int32; public;
begin
  begin
    case msg of
      WM_SIZE: begin
          goto switch0_0;
        end;
      WM_PAINT: begin
          goto switch0_1;
        end;
      WM_KEYDOWN: begin
          goto switch0_2;
        end;
      WM_KEYUP: begin
          goto switch0_3;
        end;
      WM_SYSKEYDOWN: begin
          goto switch0_4;
        end;
      WM_SYSKEYUP: begin
          goto switch0_5;
        end;
      WM_CHAR: begin
          goto switch0_6;
        end;
      WM_LBUTTONDOWN: begin
          goto switch0_7;
        end;
      WM_LBUTTONUP: begin
          goto switch0_8;
        end;
      WM_RBUTTONDOWN: begin
          goto switch0_9;
        end;
      WM_RBUTTONUP: begin
          goto switch0_10;
        end;
      WM_MBUTTONDOWN: begin
          goto switch0_11;
        end;
      WM_MBUTTONUP: begin
          goto switch0_12;
        end;
      WM_MOUSEWHEEL: begin
          goto switch0_13;
        end;
      WM_MOUSEMOVE: begin
          goto switch0_14;
        end;
      WM_LBUTTONDBLCLK: begin
          goto switch0_15;
        end;
    end;
    goto _breaklabelswitch0;
    switch0_0:;
    begin
      var width: UInt32 := WORD(lparam);
      var height: UInt32 := WORD(((DWORD(lparam) shr 16) and 65535));
      if (Boolean((width ≠ gdi.width)) or Boolean((height ≠ gdi.height))) then begin
        DeleteObject(gdi.bitmap);
        gdi.bitmap := CreateCompatibleBitmap(gdi.window_dc, width, height);
        gdi.width := width;
        gdi.height := height;
        SelectObject(gdi.memory_dc, gdi.bitmap);
      end;
      goto _breaklabelswitch0;
    end;
    switch0_1:;
    begin
      var paint: PAINTSTRUCT;
      var dc: HDC := BeginPaint(wnd, (@paint));
      nk_gdi_blit(var gdi, dc);
      EndPaint(wnd, (@paint));
      exit 1;
    end;
    switch0_2:;
    switch0_3:;
    switch0_4:;
    switch0_5:;
    begin
      var down: Int32 := not Boolean(((lparam shr 31) and 1));
      var ctrl: Int32 := (GetKeyState(VK_CONTROL) and (1 shl 15));
      begin
        case wparam of
          VK_SHIFT: begin
              goto switch1_0;
            end;
          VK_LSHIFT: begin
              goto switch1_1;
            end;
          VK_RSHIFT: begin
              goto switch1_2;
            end;
          VK_DELETE: begin
              goto switch1_3;
            end;
          VK_RETURN: begin
              goto switch1_4;
            end;
          VK_TAB: begin
              goto switch1_5;
            end;
          VK_LEFT: begin
              goto switch1_6;
            end;
          VK_RIGHT: begin
              goto switch1_7;
            end;
          VK_BACK: begin
              goto switch1_8;
            end;
          VK_HOME: begin
              goto switch1_9;
            end;
          VK_END: begin
              goto switch1_10;
            end;
          VK_NEXT: begin
              goto switch1_11;
            end;
          VK_PRIOR: begin
              goto switch1_12;
            end;
          67: begin
              goto switch1_13;
            end;
          86: begin
              goto switch1_14;
            end;
          88: begin
              goto switch1_15;
            end;
          90: begin
              goto switch1_16;
            end;
          82: begin
              goto switch1_17;
            end;
        end;
        goto _breaklabelswitch1;
        switch1_0:;
        switch1_1:;
        switch1_2:;
        nk_input_key((@gdi.ctx), NK_KEY_SHIFT, down);
        exit 1;
        switch1_3:;
        nk_input_key((@gdi.ctx), NK_KEY_DEL, down);
        exit 1;
        switch1_4:;
        nk_input_key((@gdi.ctx), NK_KEY_ENTER, down);
        exit 1;
        switch1_5:;
        nk_input_key((@gdi.ctx), NK_KEY_TAB, down);
        exit 1;
        switch1_6:;
        if ctrl then begin
          nk_input_key((@gdi.ctx), NK_KEY_TEXT_WORD_LEFT, down);
        end
        else begin
          nk_input_key((@gdi.ctx), NK_KEY_LEFT, down);
        end;
        exit 1;
        switch1_7:;
        if ctrl then begin
          nk_input_key((@gdi.ctx), NK_KEY_TEXT_WORD_RIGHT, down);
        end
        else begin
          nk_input_key((@gdi.ctx), NK_KEY_RIGHT, down);
        end;
        exit 1;
        switch1_8:;
        nk_input_key((@gdi.ctx), NK_KEY_BACKSPACE, down);
        exit 1;
        switch1_9:;
        nk_input_key((@gdi.ctx), NK_KEY_TEXT_START, down);
        nk_input_key((@gdi.ctx), NK_KEY_SCROLL_START, down);
        exit 1;
        switch1_10:;
        nk_input_key((@gdi.ctx), NK_KEY_TEXT_END, down);
        nk_input_key((@gdi.ctx), NK_KEY_SCROLL_END, down);
        exit 1;
        switch1_11:;
        nk_input_key((@gdi.ctx), NK_KEY_SCROLL_DOWN, down);
        exit 1;
        switch1_12:;
        nk_input_key((@gdi.ctx), NK_KEY_SCROLL_UP, down);
        exit 1;
        switch1_13:;
        if ctrl then begin
          nk_input_key((@gdi.ctx), NK_KEY_COPY, down);
          exit 1;
        end;
        goto _breaklabelswitch1;
        switch1_14:;
        if ctrl then begin
          nk_input_key((@gdi.ctx), NK_KEY_PASTE, down);
          exit 1;
        end;
        goto _breaklabelswitch1;
        switch1_15:;
        if ctrl then begin
          nk_input_key((@gdi.ctx), NK_KEY_CUT, down);
          exit 1;
        end;
        goto _breaklabelswitch1;
        switch1_16:;
        if ctrl then begin
          nk_input_key((@gdi.ctx), NK_KEY_TEXT_UNDO, down);
          exit 1;
        end;
        goto _breaklabelswitch1;
        switch1_17:;
        if ctrl then begin
          nk_input_key((@gdi.ctx), NK_KEY_TEXT_REDO, down);
          exit 1;
        end;
        goto _breaklabelswitch1;
        _breaklabelswitch1:;
      end;
      exit 0;
    end;
    switch0_6:;
    if (wparam ≥ 32) then begin
      nk_input_unicode((@gdi.ctx), nk_rune(wparam));
      exit 1;
    end;
    goto _breaklabelswitch0;
    switch0_7:;
    nk_input_button((@gdi.ctx), NK_BUTTON_LEFT, Int16(WORD(lparam)), Int16(WORD(((DWORD(lparam) shr 16) and 65535))), 1);
    SetCapture(wnd);
    exit 1;
    switch0_8:;
    nk_input_button((@gdi.ctx), NK_BUTTON_DOUBLE, Int16(WORD(lparam)), Int16(WORD(((DWORD(lparam) shr 16) and 65535))), 0);
    nk_input_button((@gdi.ctx), NK_BUTTON_LEFT, Int16(WORD(lparam)), Int16(WORD(((DWORD(lparam) shr 16) and 65535))), 0);
    ReleaseCapture();
    exit 1;
    switch0_9:;
    nk_input_button((@gdi.ctx), NK_BUTTON_RIGHT, Int16(WORD(lparam)), Int16(WORD(((DWORD(lparam) shr 16) and 65535))), 1);
    SetCapture(wnd);
    exit 1;
    switch0_10:;
    nk_input_button((@gdi.ctx), NK_BUTTON_RIGHT, Int16(WORD(lparam)), Int16(WORD(((DWORD(lparam) shr 16) and 65535))), 0);
    ReleaseCapture();
    exit 1;
    switch0_11:;
    nk_input_button((@gdi.ctx), NK_BUTTON_MIDDLE, Int16(WORD(lparam)), Int16(WORD(((DWORD(lparam) shr 16) and 65535))), 1);
    SetCapture(wnd);
    exit 1;
    switch0_12:;
    nk_input_button((@gdi.ctx), NK_BUTTON_MIDDLE, Int16(WORD(lparam)), Int16(WORD(((DWORD(lparam) shr 16) and 65535))), 0);
    ReleaseCapture();
    exit 1;
    switch0_13:;
    nk_input_scroll((@gdi.ctx), nk_vec2(0, (Single(Int16(WORD(((DWORD(wparam) shr 16) and 65535)))) / WHEEL_DELTA)));
    exit 1;
    switch0_14:;
    nk_input_motion((@gdi.ctx), Int16(WORD(lparam)), Int16(WORD(((DWORD(lparam) shr 16) and 65535))));
    exit 1;
    switch0_15:;
    nk_input_button((@gdi.ctx), NK_BUTTON_DOUBLE, Int16(WORD(lparam)), Int16(WORD(((DWORD(lparam) shr 16) and 65535))), 1);
    exit 1;
    _breaklabelswitch0:;
  end;
  exit 0;
end;

method nk_gdi_shutdown(var gdi: NuklearContext); public;
begin
  DeleteObject(gdi.memory_dc);
  DeleteObject(gdi.bitmap);
  nk_free((@gdi.ctx));
end;

method nk_gdi_render(var gdi: NuklearContext; clear: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command;
  var memory_dc: HDC := gdi.memory_dc;
  SelectClipRgn(memory_dc, nil);
  SelectObject(memory_dc, GetStockObject(DC_PEN));
  SelectObject(memory_dc, GetStockObject(DC_BRUSH));
  nk_gdi_clear(var gdi, memory_dc, clear);
  begin
    // for loop: initializer
    cmd := nk__begin((@gdi.ctx));
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
        nk_gdi_scissor(memory_dc, (s)^.x, (s)^.y, (s)^.w, (s)^.h);
      end;
      goto _breaklabelswitch1;
      switch1_2:;
      begin
        var l: ^__struct_nk_command_line := ^__struct_nk_command_line(cmd);
        nk_gdi_stroke_line(memory_dc, (l)^.begin.x, (l)^.begin.y, (l)^.end.x, (l)^.end.y, (l)^.line_thickness, (l)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_3:;
      begin
        var r: ^__struct_nk_command_rect := ^__struct_nk_command_rect(cmd);
        nk_gdi_stroke_rect(memory_dc, (r)^.x, (r)^.y, (r)^.w, (r)^.h, UInt16((r)^.rounding), (r)^.line_thickness, (r)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_4:;
      begin
        var r: ^__struct_nk_command_rect_filled := ^__struct_nk_command_rect_filled(cmd);
        nk_gdi_fill_rect(memory_dc, (r)^.x, (r)^.y, (r)^.w, (r)^.h, UInt16((r)^.rounding), (r)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_5:;
      begin
        var c: ^__struct_nk_command_circle := ^__struct_nk_command_circle(cmd);
        nk_gdi_stroke_circle(memory_dc, (c)^.x, (c)^.y, (c)^.w, (c)^.h, (c)^.line_thickness, (c)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_6:;
      begin
        var c: ^__struct_nk_command_circle_filled := ^__struct_nk_command_circle_filled(cmd);
        nk_gdi_fill_circle(memory_dc, (c)^.x, (c)^.y, (c)^.w, (c)^.h, (c)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_7:;
      begin
        var t: ^__struct_nk_command_triangle := ^__struct_nk_command_triangle(cmd);
        nk_gdi_stroke_triangle(memory_dc, (t)^.a.x, (t)^.a.y, (t)^.b.x, (t)^.b.y, (t)^.c.x, (t)^.c.y, (t)^.line_thickness, (t)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_8:;
      begin
        var t: ^__struct_nk_command_triangle_filled := ^__struct_nk_command_triangle_filled(cmd);
        nk_gdi_fill_triangle(memory_dc, (t)^.a.x, (t)^.a.y, (t)^.b.x, (t)^.b.y, (t)^.c.x, (t)^.c.y, (t)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_9:;
      begin
        var p: ^__struct_nk_command_polygon := ^__struct_nk_command_polygon(cmd);
        nk_gdi_stroke_polygon(memory_dc, (p)^.points, (p)^.point_count, (p)^.line_thickness, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_10:;
      begin
        var p: ^__struct_nk_command_polygon_filled := ^__struct_nk_command_polygon_filled(cmd);
        nk_gdi_fill_polygon(memory_dc, (p)^.points, (p)^.point_count, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_11:;
      begin
        var p: ^__struct_nk_command_polyline := ^__struct_nk_command_polyline(cmd);
        nk_gdi_stroke_polyline(memory_dc, (p)^.points, (p)^.point_count, (p)^.line_thickness, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_12:;
      begin
        var t: ^__struct_nk_command_text := ^__struct_nk_command_text(cmd);
        nk_gdi_draw_text(memory_dc, (t)^.x, (t)^.y, (t)^.w, (t)^.h, ^Byte((t)^.string), (t)^.length, ^GdiFont(((t)^.font)^.userdata.ptr), (t)^.background, (t)^.foreground);
      end;
      goto _breaklabelswitch1;
      switch1_13:;
      begin
        var q: ^__struct_nk_command_curve := ^__struct_nk_command_curve(cmd);
        nk_gdi_stroke_curve(memory_dc, (q)^.begin, (q)^.ctrl[0], (q)^.ctrl[1], (q)^.end, (q)^.line_thickness, (q)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_14:;
      begin
        var r: ^__struct_nk_command_rect_multi_color := ^__struct_nk_command_rect_multi_color(cmd);
        nk_gdi_rect_multi_color(var gdi, memory_dc, (r)^.x, (r)^.y, (r)^.w, (r)^.h, (r)^.left, (r)^.top, (r)^.right, (r)^.bottom);
      end;
      goto _breaklabelswitch1;
      switch1_15:;
      begin
        var i: ^__struct_nk_command_image := ^__struct_nk_command_image(cmd);
        nk_gdi_draw_image(var gdi, (i)^.x, (i)^.y, (i)^.w, (i)^.h, (i)^.img, (i)^.col);
      end;
      goto _breaklabelswitch1;
      switch1_16:;
      switch1_17:;
      switch1_default:;
      goto _breaklabelswitch1;
      _breaklabelswitch1:;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    cmd := nk__next((@gdi.ctx), cmd);
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  nk_gdi_blit(var gdi, gdi.window_dc);
  nk_clear((@gdi.ctx));
end;

type
  // * Nuklear - 1.32.0 - public domain
  //  * no warrenty implied; use at your own risk.
  //  * authored from 2015-2016 by Micha Mettke
  //
  //  * ==============================================================
  //  *
  //  *                              API
  //  *
  //  * ===============================================================
  //
  //  defined: NK_GDI_H_ ()
  //  defined: WIN32_LEAN_AND_MEAN ()
  //  defined: nk_foreach (c,ctx) for((c) = nk__begin(ctx); (c) != 0; (c) = nk__next(ctx,c))
  //  defined: FALSE ()  0
  //  defined: TRUE ()  1
  //  defined: LOWORD (a) ((WORD)(a))
  //  defined: HIWORD (a) ((WORD)(((DWORD)(a) >> 16) & 0xFFFF))
  GdiFont = public __struct_GdiFont;

  // * ==============================================================
  //  *
  //  *                          IMPLEMENTATION
  //  *
  //  * ===============================================================
  __struct_GdiFont = public record
  private

    var nk: __struct_nk_user_font; public;
    var height: Int32; public;
    var handle: HFONT; public;
    var dc: HDC; public;

  end;

  NuklearContext = public record
  private

    var bitmap: HBITMAP; public;
    var window_dc: HDC; public;
    var memory_dc: HDC; public;
    var width: UInt32; public;
    var height: UInt32; public;
    var ctx: __struct_nk_context; public;

  end;

{$ENDIF}

end.