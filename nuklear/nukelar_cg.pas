﻿namespace Nuklear;

{$IF DARWIN}

{$CCOMPATIBILITY ON}

uses
  Foundation,
  CoreFoundation,
  CoreGraphics;

type
  INT = Integer;
  DWORD = UInt32;
  LPBYTE = ^Byte;

{$GLOBALS ON}

var gdi: anontype_17; public;

//method nk_create_image(image: ^__struct_nk_image; frame_buffer: ^Byte; width: Int32; height: Int32); public;
//begin
  //if (Boolean((Boolean((Boolean(image) and Boolean(frame_buffer))) and Boolean((width > 0)))) and Boolean((height > 0))) then begin
    //(image)^.w := width;
    //(image)^.h := height;
    //(image)^.region[0] := 0;
    //(image)^.region[1] := 0;
    //(image)^.region[2] := width;
    //(image)^.region[3] := height;
    //var row: INT := (((width * 3) + 3) and not 3);
    //var bi: BITMAPINFO := default(BITMAPINFO);
    //bi.bmiHeader.biSize := sizeOf(BITMAPINFOHEADER);
    //bi.bmiHeader.biWidth := width;
    //bi.bmiHeader.biHeight := height;
    //bi.bmiHeader.biPlanes := 1;
    //bi.bmiHeader.biBitCount := 24;
    //bi.bmiHeader.biCompression := BI_RGB;
    //bi.bmiHeader.biSizeImage := (row * height);
    //var lpBuf: LPBYTE;
    //var pb: LPBYTE := nil;
    //var hbm: CGImageRef := CreateDIBSection(nil, (@bi), DIB_RGB_COLORS, ^^Void((@lpBuf)), nil, 0);
    //pb := (lpBuf + (row * height));
    //var src: ^Byte := ^Byte(frame_buffer);
    //begin
      //// for loop: initializer
      //var v: Int32 := 0;
      //// for loop: compare
      //_looplabel0:;
      //if (v < height) then begin
      //end
      //else begin
        //goto _breaklabel0;
      //end;
      //// for loop: body
      //begin
        //pb := pb - row;
        //begin
          //// for loop: initializer
          //var i: Int32 := 0;
          //// for loop: compare
          //_looplabel2:;
          //if (i < row) then begin
          //end
          //else begin
            //goto _breaklabel2;
          //end;
          //// for loop: body
          //begin
            //pb[(i + 0)] := src[0];
            //pb[(i + 1)] := src[1];
            //pb[(i + 2)] := src[2];
            //src := src + 3;
          //end;
          //_continuelabel2:;
          //// for loop: increment/continue
          //i := i + 3;
          //goto _looplabel2;
          //// for loop: break
          //_breaklabel2:;
        //end;
      //end;
      //_continuelabel0:;
      //// for loop: increment/continue
      //v := v + 1;
      //goto _looplabel0;
      //// for loop: break
      //_breaklabel0:;
    //end;
    //SetDIBits(nil, hbm, 0, height, lpBuf, (@bi), DIB_RGB_COLORS);
    //(image)^.handle.ptr := hbm;
  //end;
//end;

//method nk_delete_image(image: ^__struct_nk_image); public;
//begin
  //if (Boolean(image) and Boolean(((image)^.handle.id ≠ 0))) then begin
    //var hbm: CGImageRef := CGImageRef((image)^.handle.ptr);
    //CFRelease(hbm);
    //memset(image, 0, sizeOf(__struct_nk_image));
  //end;
//end;

//method nk_cg_draw_image(x: Int16; y: Int16; w: UInt16; h: UInt16; img: __struct_nk_image; col: __struct_nk_color); public;
//begin
  //var hbm: CGImageRef := CGImageRef(img.handle.ptr);
  //var hDCBits: CGContextRef;
  //var bitmap: BITMAP;
  //if (Boolean(not Boolean(gdi.memory_dc)) or Boolean(not Boolean(hbm))) then begin
    //exit;
  //end;
  //hDCBits := CreateCompatibleDC(gdi.memory_dc);

  //GetObject(hbm, sizeOf(bitmap), LPSTR((@bitmap)));
  //SelectObject(hDCBits, hbm);
  //StretchBlt(gdi.memory_dc, x, y, w, h, hDCBits, 0, 0, bitmap.bmWidth, bitmap.bmHeight, SRCCOPY);
  //CFRelease(hDCBits);
//end;

method convert_color(c: __struct_nk_color): CGColorRef; public;
begin
  result := CGColorCreateGenericRGB(c.r/256.0, c.b/256.0, c.b/256.0, c.a/256.0);
end;

method nk_cg_scissor(dc: CGContextRef; x: Single; y: Single; w: Single; h: Single); public;
begin
  //SelectClipRgn(dc, nil);
  //IntersectClipRect(dc, Int32(x), Int32(y), Int32(((x + w) + 1)), Int32(((y + h) + 1)));
end;

method nk_cg_stroke_line(dc: CGContextRef; x0: Int16; y0: Int16; x1: Int16; y1: Int16; line_thickness: UInt32; col: __struct_nk_color); public;
begin
  var color: CGColorRef := convert_color(col);
  CGContextSetStrokeColorWithColor(dc, color);
  CGContextSetLineWidth(dc, line_thickness);

  var path := CGPathCreateMutable();
  CGPathMoveToPoint(dc, nil, x0, y0);
  CGPathAddLineToPoint(path, nil, x1, y1);

  //CGContextAddPath(dc, path);
  CGContextStrokePath(dc);
  CFRelease(path);
end;

method nk_cg_stroke_rect(dc: CGContextRef; x: Int16; y: Int16; w: UInt16; h: UInt16; r: UInt16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: CGColorRef := convert_color(col);
  CGContextSetStrokeColorWithColor(dc, color);
  CGContextSetLineWidth(dc, line_thickness);
  var rect := CGRectMake(x, y, (x + w), (y + h));
  if (r = 0) then begin
    CGContextStrokeRect(dc, rect);
  end
  else begin
    var path := __createRoundedCornerPath(rect, r);
    CGContextStrokePath(path);
    CFRelease(path);
  end;
end;

method nk_cg_fill_rect(dc: CGContextRef; x: Int16; y: Int16; w: UInt16; h: UInt16; r: UInt16; col: __struct_nk_color); public;
begin
  var color: CGColorRef := convert_color(col);
  CGContextSetFillColorWithColor(dc, color);
  var rect := CGRectMake(x, y, (x + w), (y + h));
  if (r = 0) then begin
    CGContextFillRect(dc, rect);
  end
  else begin
    var path := __createRoundedCornerPath(rect, r);
    CGContextFillPath(path);
    CFRelease(path);
  end;
end;

method __createRoundedCornerPath(rect: CGRect; cornerRadius: CGFloat): CGMutablePathRef; unit;
begin
  var path: CGMutablePathRef := CGPathCreateMutable();
  var topLeft: CGPoint := CGPointMake(rect.origin.x, rect.origin.y);
  var topRight: CGPoint := CGPointMake(rect.origin.x + rect.size.width, rect.origin.y);
  var bottomRight: CGPoint := CGPointMake(rect.origin.x + rect.size.width, rect.origin.y + rect.size.height);
  var bottomLeft: CGPoint := CGPointMake(rect.origin.x, rect.origin.y + rect.size.height);
  CGPathMoveToPoint(path, nil, topLeft.x + cornerRadius, topLeft.y);
  CGPathAddLineToPoint(path, nil, topRight.x - cornerRadius, topRight.y);
  CGPathAddQuadCurveToPoint(path, nil, topRight.x, topRight.y, topRight.x, topRight.y + cornerRadius);
  CGPathAddLineToPoint(path, nil, bottomRight.x, bottomRight.y - cornerRadius);
  CGPathAddQuadCurveToPoint(path, nil, bottomRight.x, bottomRight.y, bottomRight.x - cornerRadius, bottomRight.y);
  CGPathAddLineToPoint(path, nil, bottomLeft.x + cornerRadius, bottomLeft.y);
  CGPathAddQuadCurveToPoint(path, nil, bottomLeft.x, bottomLeft.y, bottomLeft.x, bottomLeft.y - cornerRadius);
  CGPathAddLineToPoint(path, nil, topLeft.x, topLeft.y + cornerRadius);
  CGPathAddQuadCurveToPoint(path, nil, topLeft.x, topLeft.y, topLeft.x + cornerRadius, topLeft.y);
  exit path;
end;

//method nk_cg_set_vertexColor(tri: PTRIVERTEX; col: __struct_nk_color); public;
//begin
  //(tri)^.Red := (col.r shl 8);
  //(tri)^.Green := (col.g shl 8);
  //(tri)^.Blue := (col.b shl 8);
  //(tri)^.Alpha := (255 shl 8);
//end;

method nk_cg_rect_multi_color(dc: CGContextRef; x: Int16; y: Int16; w: UInt16; h: UInt16; left: __struct_nk_color; top: __struct_nk_color; right: __struct_nk_color; bottom: __struct_nk_color); public;
begin
  //var alphaFunction: BLENDFUNCTION;
  //var gRect: GRADIENT_RECT;
  //var gTri: array[0..2 - 1] of GRADIENT_TRIANGLE;
  //var vt: array[0..4 - 1] of TRIVERTEX;
  //alphaFunction.BlendOp := AC_SRC_OVER;
  //alphaFunction.BlendFlags := 0;
  //alphaFunction.SourceConstantAlpha := 0;
  //alphaFunction.AlphaFormat := AC_SRC_ALPHA;
  //// TODO: This Case Needs Repair.
  ////  Top Left Corner
  //vt[0].x := x;
  //vt[0].y := y;
  //nk_cg_set_vertexColor((@vt[0]), left);
  //// Top Right Corner
  //vt[1].x := (x + w);
  //vt[1].y := y;
  //nk_cg_set_vertexColor((@vt[1]), top);
  //// Bottom Left Corner
  //vt[2].x := x;
  //vt[2].y := (y + h);
  //nk_cg_set_vertexColor((@vt[2]), right);
  //// Bottom Right Corner
  //vt[3].x := (x + w);
  //vt[3].y := (y + h);
  //nk_cg_set_vertexColor((@vt[3]), bottom);
  //gTri[0].Vertex1 := 0;
  //gTri[0].Vertex2 := 1;
  //gTri[0].Vertex3 := 2;
  //gTri[1].Vertex1 := 2;
  //gTri[1].Vertex2 := 1;
  //gTri[1].Vertex3 := 3;
  //GdiGradientFill(dc, vt, 4, gTri, 2, GRADIENT_FILL_TRIANGLE);
  //AlphaBlend(gdi.window_dc, x, y, (x + w), (y + h), gdi.memory_dc, x, y, (x + w), (y + h), alphaFunction);
end;

method nk_cg_fill_triangle(dc: CGContextRef; x0: Int16; y0: Int16; x1: Int16; y1: Int16; x2: Int16; y2: Int16; col: __struct_nk_color); public;
begin
  var color: CGColorRef := convert_color(col);
  var points: ^Point := [[x0, y0], [x1, y1], [x2, y2]];
  CGContextSetFillColorWithColor(dc, color);

  var path := CGPathCreateMutable();
  CGPathMoveToPoint(path, NULL, x0, y0);
  CGPathAddLineToPoint(path, NULL, x1, y1);
  CGPathAddLineToPoint(path, NULL, x2, y2);
  CGPathAddLineToPoint(path, NULL, x0, y0);

  //CGContextAddPath(dc, path);
  CGContextFillPath(dc);
  CFRelease(path);
end;

method nk_cg_stroke_triangle(dc: CGContextRef; x0: Int16; y0: Int16; x1: Int16; y1: Int16; x2: Int16; y2: Int16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: CGColorRef := convert_color(col);
  var points: ^Point := [[x0, y0], [x1, y1], [x2, y2], [x0, y0]];
  CGContextSetStrokeColorWithColor(dc, color);
  CGContextSetLineWidth(dc, line_thickness);

  var path := CGPathCreateMutable();
  CGPathMoveToPoint(path, NULL, x0, y0);
  CGPathAddLineToPoint(path, NULL, x1, y1);
  CGPathAddLineToPoint(path, NULL, x2, y2);
  CGPathAddLineToPoint(path, NULL, x0, y0);

  //CGContextAddPath(dc, path);
  CGContextStrokePath(dc);
  CFRelease(path);
end;

method nk_cg_fill_polygon(dc: CGContextRef; pnts: ^__struct_nk_vec2i; count: Int32; col: __struct_nk_color); public;
begin
  if (count > 0) then begin

    var color: CGColorRef := convert_color(col);
    CGContextSetFillColorWithColor(dc, color);

    var path := CGPathCreateMutable();
    CGPathMoveToPoint(dc, nil, pnts[0].x, pnts[0].y);
    for i: Int32 := 1 to count-1 do
      CGPathAddLineToPoint(path, nil, pnts[i].x, pnts[i].y);
    CGPathAddLineToPoint(dc, nil, pnts[0].x, pnts[0].y);
    //CGPathCloseSubpath(path);

    //CGContextAddPath(dc, path);
    CGContextFillPath(dc);
    CFRelease(path);
  end;
end;

method nk_cg_stroke_polygon(dc: CGContextRef; pnts: ^__struct_nk_vec2i; count: Int32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  if (count > 0) then begin

    var color: CGColorRef := convert_color(col);
    CGContextSetStrokeColorWithColor(dc, color);
    CGContextSetLineWidth(dc, line_thickness);

    var path := CGPathCreateMutable();
    CGPathMoveToPoint(dc, nil, pnts[0].x, pnts[0].y);
    for i: Int32 := 1 to count-1 do
      CGPathAddLineToPoint(path, nil, pnts[i].x, pnts[i].y);
    CGPathAddLineToPoint(dc, nil, pnts[0].x, pnts[0].y);
    //CGPathCloseSubpath(path);

    //CGContextAddPath(dc, path);
    CGContextStrokePath(dc);
    CFRelease(path);
  end;
end;

method nk_cg_stroke_polyline(dc: CGContextRef; pnts: ^__struct_nk_vec2i; count: Int32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  if (count > 0) then begin
    var color: CGColorRef := convert_color(col);
    CGContextSetStrokeColorWithColor(dc, color);
    CGContextSetLineWidth(dc, line_thickness);

    var path := CGPathCreateMutable();
    CGPathMoveToPoint(path, nil, pnts[0].x, pnts[0].y);
    for i: Int32 := 1 to count-1 do
      CGPathAddLineToPoint(path, nil, pnts[i].x, pnts[i].y);

    //CGContextAddPath(dc, path);
    CGContextStrokePath(dc);
    CFRelease(path);
  end;
end;

method nk_cg_fill_circle(dc: CGContextRef; x: Int16; y: Int16; w: UInt16; h: UInt16; col: __struct_nk_color); public;
begin
  var color: CGColorRef := convert_color(col);
  CGContextSetFillColorWithColor(dc, color);
  CGContextFillEllipseInRect(dc, CGRectMake(x, y, (x + w), (y + h)));
end;

method nk_cg_stroke_circle(dc: CGContextRef; x: Int16; y: Int16; w: UInt16; h: UInt16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: CGColorRef := convert_color(col);
  CGContextSetStrokeColorWithColor(dc, color);
  CGContextSetLineWidth(dc, line_thickness);
  CGContextStrokeEllipseInRect(dc, CGRectMake(x, y, (x + w), (y + h)));
end;

method nk_cg_stroke_curve(dc: CGContextRef; p1: __struct_nk_vec2i; p2: __struct_nk_vec2i; p3: __struct_nk_vec2i; p4: __struct_nk_vec2i; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var color: CGColorRef := convert_color(col);
  var p: ^Point := [[p1.x, p1.y], [p2.x, p2.y], [p3.x, p3.y], [p4.x, p4.y]];
  CGContextSetStrokeColorWithColor(dc, color);
  CGContextSetLineWidth(dc, line_thickness);

  var path := CGPathCreateMutable();
  CGPathMoveToPoint(path, nil, p1.x, p1.y);
  CGPathAddCurveToPoint(path, nil, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y);

  //CGContextAddPath(dc, path);
  CGContextStrokePath(dc);
  CFRelease(path);
end;

method nk_cg_draw_text(dc: CGContextRef; x: Int16; y: Int16; w: UInt16; h: UInt16; text: ^Byte; len: Int32; font: CGFontRef; cbg: __struct_nk_color; cfg: __struct_nk_color); public;
begin
  var s := Encoding.UTF8.GetString(text, 0, len);
  //SetBkColor(dc, convert_color(cbg));
  SetTextColor(dc, convert_color(cfg));
  //SelectObject(dc, (font)^.handle);
  //s.drawAtPoint(CGPointMake(x, y));
  ExtTextOutW(dc, x, y, ETO_OPAQUE, nil, wstr, wsize, nil);
end;

method nk_cg_clear(dc: CGContextRef; col: __struct_nk_color); public;
begin
  var color: CGColorRef := convert_color(col);
  var rect := CGRectMake(0, 0, gdi.width, gdi.height);
  CGContextSetFillColorWithColor(dc, color);
  CGContextFillRect(dc, rect);
end;

method nk_cg_blit(dc: CGContextRef); public;
begin
  BitBlt(dc, 0, 0, gdi.width, gdi.height, gdi.memory_dc, 0, 0, SRCCOPY);
end;

//method nk_cgfont_create(name: ^Byte; size: Int32): CGFontRef; public;
//begin
  //var metric: TEXTMETRICW;
  //var font: CGFontRef := CGFontRef(malloc(sizeOf(CGFontRef)));
  //font^ := default(CGFontRef);
  //if not Boolean(font) then begin
    //exit nil;
  //end;
  //(font)^.dc := CreateCompatibleDC(0);
  //(font)^.handle := CreateFontA(size, 0, 0, 0, FW_NORMAL, 0, 0, 0, DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY, (DEFAULT_PITCH or FF_DONTCARE), name);
  //SelectObject((font)^.dc, (font)^.handle);
  //GetTextMetricsW((font)^.dc, (@metric));
  //CGFontCreateWith
  //(font)^.height := metric.tmHeight;
  //exit font;
//end;

method nk_cgfont_get_text_width(handle: nk_handle; height: Single; text: ^Byte; len: Int32): Single; public;
begin
  var font: CGFontRef := CGFontRef(handle.ptr);
  var size: Size;
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

//method nk_cgfont_del(font: CGFontRef); public;
//begin
  //if not Boolean(font) then begin
    //exit;
  //end;
  //CFRelease((font)^.handle);
  //CFRelease((font)^.dc);
  //free(font);
//end;

method nk_cg_clipboard_paste(usr: nk_handle; edit: ^__struct_nk_text_edit); public;
begin
  var text := if defined("MACOS") then AppKit.NSPasteboard.generalPasteboard.stringForType(AppKit.NSPasteboardTypeString) else if defined("IOS") then UIKit.UIPasteboard.generalPasteboard.string else nil;
  if assigned(text) then begin
    var utf8 := Encoding.UTF8.GetBytes(text);
    nk_textedit_paste(edit, utf8, length(utf8));
  end;
end;

method nk_cg_clipboard_copy(usr: nk_handle; text: ^Byte; len: Int32); public;
begin
  var s := Encoding.UTF8.GetString(text, 0, len);
  if defined("MACOS") then begin
    AppKit.NSPasteboard.generalPasteboard.clearContents();
    AppKit.NSPasteboard.generalPasteboard.declareTypes(NSArray.arrayWithObject(AppKit.NSPasteboardTypeString)) owner(nil);
    AppKit.NSPasteboard.generalPasteboard.setString(s) forType(AppKit.NSPasteboardTypeString);
  end
  else if defined("IOS") then begin
    UIKit.UIPasteboard.generalPasteboard.string = s;
  end;
end;

method nk_cg_init(cgfont: CGFontRef; window_dc: CGContextRef; width: UInt32; height: UInt32): ^__struct_nk_context; public;
begin
  var font: ^__struct_nk_user_font := (@(cgfont)^.nk);
  (font)^.userdata := nk_handle_ptr(cgfont);
  (font)^.height := Single((cgfont)^.height);
  (font)^.width := nk_cgfont_get_text_width;
  gdi.bitmap := CreateCompatibleBitmap(window_dc, width, height);
  gdi.window_dc := window_dc;
  gdi.memory_dc := CreateCompatibleDC(window_dc);
  gdi.width := width;
  gdi.height := height;
  SelectObject(gdi.memory_dc, gdi.bitmap);
  nk_init_default((@gdi.ctx), font);
  gdi.ctx.clip.copy := nk_cg_clipboard_copy;
  gdi.ctx.clip.paste := nk_cg_clipboard_paste;
  exit (@gdi.ctx);
end;

//method nk_cg_set_font(cgfont: CGFontRef); public;
//begin
  //var font: ^__struct_nk_user_font := (@(cgfont)^.nk);
  //(font)^.userdata := nk_handle_ptr(cgfont);
  //(font)^.height := Single((cgfont)^.height);
  //(font)^.width := nk_cgfont_get_text_width;
  //nk_style_set_font((@gdi.ctx), font);
//end;

/*method nk_cg_handle_event(wnd: HWND; msg: UINT; wparam: WPARAM; lparam: LPARAM): Int32; public;
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
  var width: UInt32 := Word(lparam);
  var height: UInt32 := Word(((DWORD(lparam) shr 16) and 65535));
  if (Boolean((width ≠ gdi.width)) or Boolean((height ≠ gdi.height))) then begin
    CFRelease(gdi.bitmap);
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
  var dc: CGContextRef := BeginPaint(wnd, (@paint));
  nk_cg_blit(dc);
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
nk_input_button((@gdi.ctx), NK_BUTTON_LEFT, Int16(Word(lparam)), Int16(Word(((DWORD(lparam) shr 16) and 65535))), 1);
SetCapture(wnd);
exit 1;
switch0_8:;
nk_input_button((@gdi.ctx), NK_BUTTON_DOUBLE, Int16(Word(lparam)), Int16(Word(((DWORD(lparam) shr 16) and 65535))), 0);
nk_input_button((@gdi.ctx), NK_BUTTON_LEFT, Int16(Word(lparam)), Int16(Word(((DWORD(lparam) shr 16) and 65535))), 0);
ReleaseCapture();
exit 1;
switch0_9:;
nk_input_button((@gdi.ctx), NK_BUTTON_RIGHT, Int16(Word(lparam)), Int16(Word(((DWORD(lparam) shr 16) and 65535))), 1);
SetCapture(wnd);
exit 1;
switch0_10:;
nk_input_button((@gdi.ctx), NK_BUTTON_RIGHT, Int16(Word(lparam)), Int16(Word(((DWORD(lparam) shr 16) and 65535))), 0);
ReleaseCapture();
exit 1;
switch0_11:;
nk_input_button((@gdi.ctx), NK_BUTTON_MIDDLE, Int16(Word(lparam)), Int16(Word(((DWORD(lparam) shr 16) and 65535))), 1);
SetCapture(wnd);
exit 1;
switch0_12:;
nk_input_button((@gdi.ctx), NK_BUTTON_MIDDLE, Int16(Word(lparam)), Int16(Word(((DWORD(lparam) shr 16) and 65535))), 0);
ReleaseCapture();
exit 1;
switch0_13:;
nk_input_scroll((@gdi.ctx), nk_vec2(0, (Single(Int16(Word(((DWORD(wparam) shr 16) and 65535)))) / WHEEL_DELTA)));
exit 1;
switch0_14:;
nk_input_motion((@gdi.ctx), Int16(Word(lparam)), Int16(Word(((DWORD(lparam) shr 16) and 65535))));
exit 1;
switch0_15:;
nk_input_button((@gdi.ctx), NK_BUTTON_DOUBLE, Int16(Word(lparam)), Int16(Word(((DWORD(lparam) shr 16) and 65535))), 1);
exit 1;
_breaklabelswitch0:;
end;
exit 0;
end;*/

method nk_cg_shutdown; public;
begin
  CFRelease(gdi.memory_dc);
  CFRelease(gdi.bitmap);
  nk_free((@gdi.ctx));
end;

method nk_cg_render(clear: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command;
  var memory_dc: CGContextRef := gdi.memory_dc;
  SelectClipRgn(memory_dc, nil);
  //SelectObject(memory_dc, GetStockObject(DC_PEN));
  //SelectObject(memory_dc, GetStockObject(DC_BRUSH));
  nk_cg_clear(memory_dc, clear);
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
        nk_cg_scissor(memory_dc, (s)^.x, (s)^.y, (s)^.w, (s)^.h);
      end;
      goto _breaklabelswitch1;
      switch1_2:;
      begin
        var l: ^__struct_nk_command_line := ^__struct_nk_command_line(cmd);
        nk_cg_stroke_line(memory_dc, (l)^.begin.x, (l)^.begin.y, (l)^.end.x, (l)^.end.y, (l)^.line_thickness, (l)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_3:;
      begin
        var r: ^__struct_nk_command_rect := ^__struct_nk_command_rect(cmd);
        nk_cg_stroke_rect(memory_dc, (r)^.x, (r)^.y, (r)^.w, (r)^.h, UInt16((r)^.rounding), (r)^.line_thickness, (r)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_4:;
      begin
        var r: ^__struct_nk_command_rect_filled := ^__struct_nk_command_rect_filled(cmd);
        nk_cg_fill_rect(memory_dc, (r)^.x, (r)^.y, (r)^.w, (r)^.h, UInt16((r)^.rounding), (r)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_5:;
      begin
        var c: ^__struct_nk_command_circle := ^__struct_nk_command_circle(cmd);
        nk_cg_stroke_circle(memory_dc, (c)^.x, (c)^.y, (c)^.w, (c)^.h, (c)^.line_thickness, (c)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_6:;
      begin
        var c: ^__struct_nk_command_circle_filled := ^__struct_nk_command_circle_filled(cmd);
        nk_cg_fill_circle(memory_dc, (c)^.x, (c)^.y, (c)^.w, (c)^.h, (c)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_7:;
      begin
        var t: ^__struct_nk_command_triangle := ^__struct_nk_command_triangle(cmd);
        nk_cg_stroke_triangle(memory_dc, (t)^.a.x, (t)^.a.y, (t)^.b.x, (t)^.b.y, (t)^.c.x, (t)^.c.y, (t)^.line_thickness, (t)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_8:;
      begin
        var t: ^__struct_nk_command_triangle_filled := ^__struct_nk_command_triangle_filled(cmd);
        nk_cg_fill_triangle(memory_dc, (t)^.a.x, (t)^.a.y, (t)^.b.x, (t)^.b.y, (t)^.c.x, (t)^.c.y, (t)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_9:;
      begin
        var p: ^__struct_nk_command_polygon := ^__struct_nk_command_polygon(cmd);
        nk_cg_stroke_polygon(memory_dc, (p)^.points, (p)^.point_count, (p)^.line_thickness, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_10:;
      begin
        var p: ^__struct_nk_command_polygon_filled := ^__struct_nk_command_polygon_filled(cmd);
        nk_cg_fill_polygon(memory_dc, (p)^.points, (p)^.point_count, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_11:;
      begin
        var p: ^__struct_nk_command_polyline := ^__struct_nk_command_polyline(cmd);
        nk_cg_stroke_polyline(memory_dc, (p)^.points, (p)^.point_count, (p)^.line_thickness, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_12:;
      begin
        var t: ^__struct_nk_command_text := ^__struct_nk_command_text(cmd);
        nk_cg_draw_text(memory_dc, (t)^.x, (t)^.y, (t)^.w, (t)^.h, ^Byte((t)^.string), (t)^.length, CGFontRef(((t)^.font)^.userdata.ptr), (t)^.background, (t)^.foreground);
      end;
      goto _breaklabelswitch1;
      switch1_13:;
      begin
        var q: ^__struct_nk_command_curve := ^__struct_nk_command_curve(cmd);
        nk_cg_stroke_curve(memory_dc, (q)^.begin, (q)^.ctrl[0], (q)^.ctrl[1], (q)^.end, (q)^.line_thickness, (q)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_14:;
      begin
        var r: ^__struct_nk_command_rect_multi_color := ^__struct_nk_command_rect_multi_color(cmd);
        nk_cg_rect_multi_color(memory_dc, (r)^.x, (r)^.y, (r)^.w, (r)^.h, (r)^.left, (r)^.top, (r)^.right, (r)^.bottom);
      end;
      goto _breaklabelswitch1;
      switch1_15:;
      begin
        var i: ^__struct_nk_command_image := ^__struct_nk_command_image(cmd);
        nk_cg_draw_image((i)^.x, (i)^.y, (i)^.w, (i)^.h, (i)^.img, (i)^.col);
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
  nk_cg_blit(gdi.window_dc);
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
//  defined: nk_cg_H_ ()
//  defined: WIN32_LEAN_AND_MEAN ()
//  defined: nk_foreach (c,ctx) for((c) = nk__begin(ctx); (c) != 0; (c) = nk__next(ctx,c))
//  defined: FALSE ()  0
//  defined: TRUE ()  1
//  defined: LOWORD (a) ((WORD)(a))
//  defined: HIWORD (a) ((WORD)(((DWORD)(a) >> 16) & 0xFFFF))

// * ==============================================================
//  *
//  *                          IMPLEMENTATION
//  *
//  * ===============================================================
//__struct_CGFontRef = public record
//private

  //var nk: __struct_nk_user_font; public;
  //var height: Int32; public;
  //var handle: CGFontRef; public;
  //var dc: CGContextRef; public;

//end;

anontype_17 = public record
private

  var bitmap: CGImageRef; public;
  var window_dc: CGContextRef; public;
  var memory_dc: CGContextRef; public;
  var width: UInt32; public;
  var height: UInt32; public;
  var ctx: __struct_nk_context; public;

end;

{$ENDIF}

end.