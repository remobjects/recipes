namespace Nuklear;

{$IF LINUX and not ANDROID}
// These were originally covered with Foxidizer but have some adjustments for Elements.

{$CCOMPATIBILITY ON}

uses
  rtl;

{$GLOBALS ON}

const XK_BackSpace                     = $ff08;  /* Back space, back char */
const XK_Tab                           = $ff09;
const XK_Linefeed                      = $ff0a;  /* Linefeed, LF */
const XK_Clear                         = $ff0b;
const XK_Return                        = $ff0d;  /* Return, enter */
const XK_Pause                         = $ff13;  /* Pause, hold */
const XK_Scroll_Lock                   = $ff14;
const XK_Sys_Req                       = $ff15;
const XK_Escape                        = $ff1b;
const XK_Delete                        = $ffff;  /* Delete, rubout */



/* International & multi-key character composition */

const XK_Multi_key                     = $ff20;  /* Multi-key character compose */
const XK_Codeinput                     = $ff37;
const XK_SingleCandidate               = $ff3c;
const XK_MultipleCandidate             = $ff3d;
const XK_PreviousCandidate             = $ff3e;

/* Japanese keyboard support */

const XK_Kanji                         = $ff21;  /* Kanji, Kanji convert */
const XK_Muhenkan                      = $ff22;  /* Cancel Conversion */
const XK_Henkan_Mode                   = $ff23;  /* Start/Stop Conversion */
const XK_Henkan                        = $ff23;  /* Alias for Henkan_Mode */
const XK_Romaji                        = $ff24;  /* to Romaji */
const XK_Hiragana                      = $ff25;  /* to Hiragana */
const XK_Katakana                      = $ff26;  /* to Katakana */
const XK_Hiragana_Katakana             = $ff27;  /* Hiragana/Katakana toggle */
const XK_Zenkaku                       = $ff28;  /* to Zenkaku */
const XK_Hankaku                       = $ff29;  /* to Hankaku */
const XK_Zenkaku_Hankaku               = $ff2a;  /* Zenkaku/Hankaku toggle */
const XK_Touroku                       = $ff2b;  /* Add to Dictionary */
const XK_Massyo                        = $ff2c;  /* Delete from Dictionary */
const XK_Kana_Lock                     = $ff2d;  /* Kana Lock */
const XK_Kana_Shift                    = $ff2e;  /* Kana Shift */
const XK_Eisu_Shift                    = $ff2f;  /* Alphanumeric Shift */
const XK_Eisu_toggle                   = $ff30;  /* Alphanumeric toggle */
const XK_Kanji_Bangou                  = $ff37;  /* Codeinput */
const XK_Zen_Koho                      = $ff3d;  /* Multiple/All Candidate(s) */
const XK_Mae_Koho                      = $ff3e;  /* Previous Candidate */

/* = $ff31; thru = $ff3f; are under XK_KOREAN */

/* Cursor control & motion */

const XK_Home                          = $ff50;
const XK_Left                          = $ff51;  /* Move left, left arrow */
const XK_Up                            = $ff52;  /* Move up, up arrow */
const XK_Right                         = $ff53;  /* Move right, right arrow */
const XK_Down                          = $ff54;  /* Move down, down arrow */
const XK_Prior                         = $ff55;  /* Prior, previous */
const XK_Page_Up                       = $ff55;
const XK_Next                          = $ff56;  /* Next */
const XK_Page_Down                     = $ff56;
const XK_End                           = $ff57;  /* EOL */
const XK_Begin                         = $ff58;  /* BOL */


/* Misc functions */

const XK_Select                        = $ff60;  /* Select, mark */
const XK_Print                         = $ff61;
const XK_Execute                       = $ff62;  /* Execute, run, do */
const XK_Insert                        = $ff63;  /* Insert, insert here */
const XK_Undo                          = $ff65;
const XK_Redo                          = $ff66;  /* Redo, again */
const XK_Menu                          = $ff67;
const XK_Find                          = $ff68;  /* Find, search */
const XK_Cancel                        = $ff69;  /* Cancel, stop, abort, exit */
const XK_Help                          = $ff6a;  /* Help */
const XK_Break                         = $ff6b;
const XK_Mode_switch                   = $ff7e;  /* Character set switch */
const XK_script_switch                 = $ff7e;  /* Alias for mode_switch */
const XK_Num_Lock                      = $ff7f;

/* Keypad functions, keypad numbers cleverly chosen to map to ASCII */

const XK_KP_Space                      = $ff80;  /* Space */
const XK_KP_Tab                        = $ff89;
const XK_KP_Enter                      = $ff8d;  /* Enter */
const XK_KP_F1                         = $ff91;  /* PF1, KP_A, ... */
const XK_KP_F2                         = $ff92;
const XK_KP_F3                         = $ff93;
const XK_KP_F4                         = $ff94;
const XK_KP_Home                       = $ff95;
const XK_KP_Left                       = $ff96;
const XK_KP_Up                         = $ff97;
const XK_KP_Right                      = $ff98;
const XK_KP_Down                       = $ff99;
const XK_KP_Prior                      = $ff9a;
const XK_KP_Page_Up                    = $ff9a;
const XK_KP_Next                       = $ff9b;
const XK_KP_Page_Down                  = $ff9b;
const XK_KP_End                        = $ff9c;
const XK_KP_Begin                      = $ff9d;
const XK_KP_Insert                     = $ff9e;
const XK_KP_Delete                     = $ff9f;
const XK_KP_Equal                      = $ffbd;  /* Equals */
const XK_KP_Multiply                   = $ffaa;
const XK_KP_Add                        = $ffab;
const XK_KP_Separator                  = $ffac;  /* Separator, often comma */
const XK_KP_Subtract                   = $ffad;
const XK_KP_Decimal                    = $ffae;
const XK_KP_Divide                     = $ffaf;

const XK_KP_0                          = $ffb0;
const XK_KP_1                          = $ffb1;
const XK_KP_2                          = $ffb2;
const XK_KP_3                          = $ffb3;
const XK_KP_4                          = $ffb4;
const XK_KP_5                          = $ffb5;
const XK_KP_6                          = $ffb6;
const XK_KP_7                          = $ffb7;
const XK_KP_8                          = $ffb8;
const XK_KP_9                          = $ffb9;



/*
 * Auxiliary functions; note the duplicate definitions for left and right
 * function keys;  Sun keyboards and a few other manufacturers have such
 * function key groups on the left and/or right sides of the keyboard.
 * We've not found a keyboard with more than 35 function keys total.
 */

const XK_F1                            = $ffbe;
const XK_F2                            = $ffbf;
const XK_F3                            = $ffc0;
const XK_F4                            = $ffc1;
const XK_F5                            = $ffc2;
const XK_F6                            = $ffc3;
const XK_F7                            = $ffc4;
const XK_F8                            = $ffc5;
const XK_F9                            = $ffc6;
const XK_F10                           = $ffc7;
const XK_F11                           = $ffc8;
const XK_L1                            = $ffc8;
const XK_F12                           = $ffc9;
const XK_L2                            = $ffc9;
const XK_F13                           = $ffca;
const XK_L3                            = $ffca;
const XK_F14                           = $ffcb;
const XK_L4                            = $ffcb;
const XK_F15                           = $ffcc;
const XK_L5                            = $ffcc;
const XK_F16                           = $ffcd;
const XK_L6                            = $ffcd;
const XK_F17                           = $ffce;
const XK_L7                            = $ffce;
const XK_F18                           = $ffcf;
const XK_L8                            = $ffcf;
const XK_F19                           = $ffd0;
const XK_L9                            = $ffd0;
const XK_F20                           = $ffd1;
const XK_L10                           = $ffd1;
const XK_F21                           = $ffd2;
const XK_R1                            = $ffd2;
const XK_F22                           = $ffd3;
const XK_R2                            = $ffd3;
const XK_F23                           = $ffd4;
const XK_R3                            = $ffd4;
const XK_F24                           = $ffd5;
const XK_R4                            = $ffd5;
const XK_F25                           = $ffd6;
const XK_R5                            = $ffd6;
const XK_F26                           = $ffd7;
const XK_R6                            = $ffd7;
const XK_F27                           = $ffd8;
const XK_R7                            = $ffd8;
const XK_F28                           = $ffd9;
const XK_R8                            = $ffd9;
const XK_F29                           = $ffda;
const XK_R9                            = $ffda;
const XK_F30                           = $ffdb;
const XK_R10                           = $ffdb;
const XK_F31                           = $ffdc;
const XK_R11                           = $ffdc;
const XK_F32                           = $ffdd;
const XK_R12                           = $ffdd;
const XK_F33                           = $ffde;
const XK_R13                           = $ffde;
const XK_F34                           = $ffdf;
const XK_R14                           = $ffdf;
const XK_F35                           = $ffe0;
const XK_R15                           = $ffe0;

/* Modifiers */

const XK_Shift_L                       = $ffe1;  /* Left shift */
const XK_Shift_R                       = $ffe2;  /* Right shift */
const XK_Control_L                     = $ffe3;  /* Left control */
const XK_Control_R                     = $ffe4;  /* Right control */
const XK_Caps_Lock                     = $ffe5;  /* Caps lock */
const XK_Shift_Lock                    = $ffe6;  /* Shift lock */

const XK_Meta_L                        = $ffe7;  /* Left meta */
const XK_Meta_R                        = $ffe8;  /* Right meta */
const XK_Alt_L                         = $ffe9;  /* Left alt */
const XK_Alt_R                         = $ffea;  /* Right alt */
const XK_Super_L                       = $ffeb;  /* Left super */
const XK_Super_R                       = $ffec;  /* Right super */
const XK_Hyper_L                       = $ffed;  /* Left hyper */
const XK_Hyper_R                       = $ffee;  /* Right hyper */



method nk_timestamp: IntPtr; public;
begin
  var tv: __struct_timeval;
  if (gettimeofday((@tv), nil) < 0) then begin
    exit 0;
  end;
  exit IntPtr(((IntPtr(tv.tv_sec) * 1000) + (IntPtr(tv.tv_usec) / 1000)));
end;

method nk_color_from_byte(c: ^nk_byte): UIntPtr; public;
begin
  var res: UIntPtr := 0;
  res := res or (UIntPtr(c[0]) shl 16);
  res := res or (UIntPtr(c[1]) shl 8);
  res := res or (UIntPtr(c[2]) shl 0);
  exit res;
end;

method ScreenOfDisplay(dpy: ^Display; scr: Integer): ^Screen;
begin
  exit @_XPrivDisplay(dpy)^.screens[scr];
end;

method XDestroyImage(xImage: ^XImage): Integer;
begin
  exit xImage^.f.destroy_image(xImage);
end;

method nk_xsurf_create(var xlib: NuklearContext; screen: Int32; w: UInt32; h: UInt32): ^XSurface; public;
begin
  var surface: ^XSurface := ^XSurface(calloc(1, sizeOf(XSurface)));
  (surface)^.w := w;
  (surface)^.h := h;
  (surface)^.dpy := xlib.dpy;
  (surface)^.screen := screen;
  (surface)^.root := xlib.root;
  (surface)^.gc := XCreateGC(xlib.dpy, xlib.root, 0, nil);
  XSetLineAttributes(xlib.dpy, (surface)^.gc, 1, LineSolid, CapButt, JoinMiter);
  (surface)^.drawable := XCreatePixmap(xlib.dpy, xlib.root, w, h, UInt32(ScreenOfDisplay(xlib.dpy, screen)^.root_depth));
  {$IF NK_XLIB_USE_XFT}
  (surface)^.ftdraw := XftDrawCreate(xlib.dpy, (surface)^.drawable, xlib.vis, xlib.cmap);
  {$ENDIF}
  exit surface;
end;

method nk_xsurf_resize(surf: ^XSurface; w: UInt32; h: UInt32); public;
begin
  if not Boolean(surf) then begin
    exit;
  end;
  if (Boolean(((surf)^.w = w)) and Boolean(((surf)^.h = h))) then begin
    exit;
  end;
  (surf)^.w := w;
  (surf)^.h := h;
  if (surf)^.drawable then begin
    XFreePixmap((surf)^.dpy, (surf)^.drawable);
  end;
  (surf)^.drawable := XCreatePixmap((surf)^.dpy, (surf)^.root, w, h, UInt32(ScreenOfDisplay((surf)^.dpy, (surf)^.screen)^.root_depth));
  {$IF NK_XLIB_USE_XFT}
  XftDrawChange((surf)^.ftdraw, (surf)^.drawable);
  {$ENDIF}
  exit;
end;

method nk_xsurf_scissor(surf: ^XSurface; x: Single; y: Single; w: Single; h: Single); public;
begin
  var clip_rect: XRectangle;
  clip_rect.x := Int16((x - 1));
  clip_rect.y := Int16((y - 1));
  clip_rect.width := UInt16((w + 2));
  clip_rect.height := UInt16((h + 2));
  XSetClipRectangles((surf)^.dpy, (surf)^.gc, 0, 0, (@clip_rect), 1, Unsorted);
  {$IF NK_XLIB_USE_XFT}
  XftDrawSetClipRectangles((surf)^.ftdraw, 0, 0, (@clip_rect), 1);
  {$ENDIF}
  exit;
end;

method nk_xsurf_stroke_line(surf: ^XSurface; x0: Int16; y0: Int16; x1: Int16; y1: Int16; line_thickness: UInt32; col: __struct_nk_color); public;
begin
  var c: UIntPtr := nk_color_from_byte((@col.r));
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, line_thickness, LineSolid, CapButt, JoinMiter);
  XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, Int32(x0), Int32(y0), Int32(x1), Int32(y1));
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, 1, LineSolid, CapButt, JoinMiter);
end;

method nk_xsurf_stroke_rect(surf: ^XSurface; x: Int16; y: Int16; w: UInt16; h: UInt16; r: UInt16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var c: UIntPtr := nk_color_from_byte((@col.r));
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, line_thickness, LineSolid, CapButt, JoinMiter);
  if (r = 0) then begin
    XDrawRectangle((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x, y, w, h);
    exit;
  end;
  begin
    var xc: Int16 := (x + r);
    var yc: Int16 := (y + r);
    var wc: Int16 := Int16((w - (2 * r)));
    var hc: Int16 := Int16((h - (2 * r)));
    XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, xc, y, (xc + wc), y);
    XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, (x + w), yc, (x + w), (yc + hc));
    XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, xc, (y + h), (xc + wc), (y + h));
    XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x, yc, x, (yc + hc));
    XDrawArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, ((xc + wc) - r), y, (UInt32(r) * 2), (UInt32(r) * 2), (0 * 64), (90 * 64));
    XDrawArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x, y, (UInt32(r) * 2), (UInt32(r) * 2), (90 * 64), (90 * 64));
    XDrawArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x, ((yc + hc) - r), (UInt32(r) * 2), (UInt32(2) * r), (180 * 64), (90 * 64));
    XDrawArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, ((xc + wc) - r), ((yc + hc) - r), (UInt32(r) * 2), (UInt32(2) * r), (-90 * 64), (90 * 64));
  end;
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, 1, LineSolid, CapButt, JoinMiter);
end;

method nk_xsurf_fill_rect(surf: ^XSurface; x: Int16; y: Int16; w: UInt16; h: UInt16; r: UInt16; col: __struct_nk_color); public;
begin
  var c: UIntPtr := nk_color_from_byte((@col.r));
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
  if (r = 0) then begin
    XFillRectangle((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x, y, w, h);
    exit;
  end;
  begin
    var xc: Int16 := (x + r);
    var yc: Int16 := (y + r);
    var wc: Int16 := Int16((w - (2 * r)));
    var hc: Int16 := Int16((h - (2 * r)));
    var pnts: array[0..12 - 1] of XPoint;
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
    XFillPolygon((surf)^.dpy, (surf)^.drawable, (surf)^.gc, pnts, 12, Convex, CoordModeOrigin);
    XFillArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, ((xc + wc) - r), y, (UInt32(r) * 2), (UInt32(r) * 2), (0 * 64), (90 * 64));
    XFillArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x, y, (UInt32(r) * 2), (UInt32(r) * 2), (90 * 64), (90 * 64));
    XFillArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x, ((yc + hc) - r), (UInt32(r) * 2), (UInt32(2) * r), (180 * 64), (90 * 64));
    XFillArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, ((xc + wc) - r), ((yc + hc) - r), (UInt32(r) * 2), (UInt32(2) * r), (-90 * 64), (90 * 64));
  end;
end;

method nk_xsurf_fill_triangle(surf: ^XSurface; x0: Int16; y0: Int16; x1: Int16; y1: Int16; x2: Int16; y2: Int16; col: __struct_nk_color); public;
begin
  var pnts: array[0..3 - 1] of XPoint;
  var c: UIntPtr := nk_color_from_byte((@col.r));
  pnts[0].x := Int16(x0);
  pnts[0].y := Int16(y0);
  pnts[1].x := Int16(x1);
  pnts[1].y := Int16(y1);
  pnts[2].x := Int16(x2);
  pnts[2].y := Int16(y2);
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
  XFillPolygon((surf)^.dpy, (surf)^.drawable, (surf)^.gc, pnts, 3, Convex, CoordModeOrigin);
end;

method nk_xsurf_stroke_triangle(surf: ^XSurface; x0: Int16; y0: Int16; x1: Int16; y1: Int16; x2: Int16; y2: Int16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var c: UIntPtr := nk_color_from_byte((@col.r));
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, line_thickness, LineSolid, CapButt, JoinMiter);
  XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x0, y0, x1, y1);
  XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x1, y1, x2, y2);
  XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, x2, y2, x0, y0);
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, 1, LineSolid, CapButt, JoinMiter);
end;

method nk_xsurf_fill_polygon(surf: ^XSurface; pnts: ^__struct_nk_vec2i; count: Int32; col: __struct_nk_color); public;
begin
  var i: Int32 := 0;
  // defined: MAX_POINTS ()  128
  var xpnts: array[0..128 - 1] of XPoint;
  var c: UIntPtr := nk_color_from_byte((@col.r));
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
  begin
    // for loop: initializer
    i := 0;
    // for loop: compare
    _looplabel0:;
    if (Boolean((i < count)) and Boolean((i < 128))) then begin
    end
    else begin
      goto _breaklabel0;
    end;
    // for loop: body
    begin
      xpnts[i].x := pnts[i].x;
      xpnts[i].y := pnts[i].y;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  XFillPolygon((surf)^.dpy, (surf)^.drawable, (surf)^.gc, xpnts, count, Convex, CoordModeOrigin);
end;

method nk_xsurf_stroke_polygon(surf: ^XSurface; pnts: ^__struct_nk_vec2i; count: Int32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var i: Int32 := 0;
  var c: UIntPtr := nk_color_from_byte((@col.r));
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, line_thickness, LineSolid, CapButt, JoinMiter);
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
    XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, pnts[(i - 1)].x, pnts[(i - 1)].y, pnts[i].x, pnts[i].y);
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, pnts[(count - 1)].x, pnts[(count - 1)].y, pnts[0].x, pnts[0].y);
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, 1, LineSolid, CapButt, JoinMiter);
end;

method nk_xsurf_stroke_polyline(surf: ^XSurface; pnts: ^__struct_nk_vec2i; count: Int32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var i: Int32 := 0;
  var c: UIntPtr := nk_color_from_byte((@col.r));
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, line_thickness, LineSolid, CapButt, JoinMiter);
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
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
    XDrawLine((surf)^.dpy, (surf)^.drawable, (surf)^.gc, pnts[i].x, pnts[i].y, pnts[(i + 1)].x, pnts[(i + 1)].y);
    _continuelabel0:;
    // for loop: increment/continue
    i := i + 1;
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, 1, LineSolid, CapButt, JoinMiter);
end;

method nk_xsurf_fill_circle(surf: ^XSurface; x: Int16; y: Int16; w: UInt16; h: UInt16; col: __struct_nk_color); public;
begin
  var c: UIntPtr := nk_color_from_byte((@col.r));
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
  XFillArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, Int32(x), Int32(y), UInt32(w), UInt32(h), 0, (360 * 64));
end;

method nk_xsurf_stroke_circle(surf: ^XSurface; x: Int16; y: Int16; w: UInt16; h: UInt16; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var c: UIntPtr := nk_color_from_byte((@col.r));
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, line_thickness, LineSolid, CapButt, JoinMiter);
  XSetForeground((surf)^.dpy, (surf)^.gc, c);
  XDrawArc((surf)^.dpy, (surf)^.drawable, (surf)^.gc, Int32(x), Int32(y), UInt32(w), UInt32(h), 0, (360 * 64));
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, 1, LineSolid, CapButt, JoinMiter);
end;

method nk_xsurf_stroke_curve(surf: ^XSurface; p1: __struct_nk_vec2i; p2: __struct_nk_vec2i; p3: __struct_nk_vec2i; p4: __struct_nk_vec2i; num_segments: UInt32; line_thickness: UInt16; col: __struct_nk_color); public;
begin
  var i_step: UInt32;
  var t_step: Single;
  var last: __struct_nk_vec2i := p1;
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, line_thickness, LineSolid, CapButt, JoinMiter);
  num_segments := Math.Max(num_segments, 1);
  t_step := (1.0 / Single(num_segments));
  begin
    // for loop: initializer
    i_step := 1;
    // for loop: compare
    _looplabel0:;
    if (i_step ≤ num_segments) then begin
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
      nk_xsurf_stroke_line(surf, last.x, last.y, Int16(x), Int16(y), line_thickness, col);
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
  XSetLineAttributes((surf)^.dpy, (surf)^.gc, 1, LineSolid, CapButt, JoinMiter);
end;

method nk_xsurf_draw_text(surf: ^XSurface; x: Int16; y: Int16; w: UInt16; h: UInt16; text: ^Byte; len: Int32; font: ^XFont; cbg: __struct_nk_color; cfg: __struct_nk_color); public;
begin
  var tx: Int32;
  var ty: Int32;
  var bg: UIntPtr := nk_color_from_byte((@cbg.r));
  var fg: UIntPtr := nk_color_from_byte((@cfg.r));
  XSetForeground((surf)^.dpy, (surf)^.gc, bg);
  XFillRectangle((surf)^.dpy, (surf)^.drawable, (surf)^.gc, Int32(x), Int32(y), UInt32(w), UInt32(h));
  if (Boolean((Boolean(not Boolean(text)) or Boolean(not Boolean(font)))) or Boolean(not Boolean(len))) then begin
    exit;
  end;
  tx := Int32(x);
  ty := (Int32(y) + (font)^.ascent);
  {$IF NK_XLIB_USE_XFT}
  var xrc: XRenderColor;
  var color: XftColor;
  xrc.red := (cfg.r * 257);
  xrc.green := (cfg.g * 257);
  xrc.blue := (cfg.b * 257);
  xrc.alpha := (cfg.a * 257);
  XftColorAllocValue((surf)^.dpy, xlib.vis, xlib.cmap, (@xrc), (@color));
  XftDrawStringUtf8((surf)^.ftdraw, (@color), (font)^.ft, tx, ty, ^FcChar8(text), len);
  XftColorFree((surf)^.dpy, xlib.vis, xlib.cmap, (@color));
  {$ELSE}
  XSetForeground((surf)^.dpy, (surf)^.gc, fg);
  if (font)^.set then begin
    XmbDrawString((surf)^.dpy, (surf)^.drawable, (font)^.set, (surf)^.gc, tx, ty, ^Byte(text), Int32(len));
  end
  else begin
    XDrawString((surf)^.dpy, (surf)^.drawable, (surf)^.gc, tx, ty, ^Byte(text), Int32(len));
  end;
  {$ENDIF}
  exit;
end;

method nk_xsurf_draw_image(surf: ^XSurface; x: Int16; y: Int16; w: UInt16; h: UInt16; img: __struct_nk_image; col: __struct_nk_color); public;
begin
  var aimage: ^XImageWithAlpha := img.handle.ptr;
  if aimage then begin
    if (aimage)^.clipMask then begin
      XSetClipMask((surf)^.dpy, (surf)^.gc, (aimage)^.clipMask);
      XSetClipOrigin((surf)^.dpy, (surf)^.gc, x, y);
    end;
    XPutImage((surf)^.dpy, (surf)^.drawable, (surf)^.gc, (aimage)^.ximage, 0, 0, x, y, w, h);
    XSetClipMask((surf)^.dpy, (surf)^.gc, None);
  end;
end;

method nk_xsurf_image_free(var xlib: NuklearContext; image: ^__struct_nk_image); public;
begin
  var surf: ^XSurface := xlib.surf;
  var aimage: ^XImageWithAlpha := (image)^.handle.ptr;
  if not Boolean(aimage) then begin
    exit;
  end;
  XDestroyImage((aimage)^.ximage);
  XFreePixmap((surf)^.dpy, (aimage)^.clipMask);
  XFreeGC((surf)^.dpy, (aimage)^.clipMaskGC);
  free(aimage);
end;

method nk_xsurf_clear(surf: ^XSurface; color: UIntPtr); public;
begin
  XSetForeground((surf)^.dpy, (surf)^.gc, color);
  XFillRectangle((surf)^.dpy, (surf)^.drawable, (surf)^.gc, 0, 0, (surf)^.w, (surf)^.h);
end;

method nk_xsurf_blit(target: Drawable; surf: ^XSurface; w: UInt32; h: UInt32); public;
begin
  XCopyArea((surf)^.dpy, (surf)^.drawable, target, (surf)^.gc, 0, 0, w, h, 0, 0);
end;

method nk_xsurf_del(surf: ^XSurface); public;
begin
  {$IF NK_XLIB_USE_XFT}
  XftDrawDestroy((surf)^.ftdraw);
  {$ENDIF}
  XFreePixmap((surf)^.dpy, (surf)^.drawable);
  XFreeGC((surf)^.dpy, (surf)^.gc);
  free(surf);
end;

method nk_xfont_create(dpy: ^Display; name: ^Byte): ^XFont; public;
begin
  {$IF NK_XLIB_USE_XFT}
  var font: ^XFont := ^XFont(calloc(1, sizeOf(XFont)));
  (font)^.ft := XftFontOpenName(dpy, XDefaultScreen(dpy), name);
  if not Boolean((font)^.ft) then begin
    fprintf(stderr, "missing font: %s"#10, name);
    exit font;
  end;
  (font)^.ascent := ((font)^.ft)^.ascent;
  (font)^.descent := ((font)^.ft)^.descent;
  (font)^.height := ((font)^.ft)^.height;
  {$ELSE}
  var n: Int32;
  var def: ^Byte;
  var missing: ^^Byte;
  var font: ^XFont := ^XFont(calloc(1, sizeOf(XFont)));
  (font)^.set := XCreateFontSet(dpy, name, (@missing), (@n), (@def));
  if missing then begin
    while (() -> begin
      var _tmp0 := n;
      n := _tmp0 - 1;
      exit _tmp0;
    end)() do
      fprintf(stderr, "missing fontset: %s"#10, missing[n]);
    XFreeStringList(missing);
  end;
  if (font)^.set then begin
    var xfonts: ^^XFontStruct;
    var font_names: ^^Byte;
    XExtentsOfFontSet((font)^.set);
    n := XFontsOfFontSet((font)^.set, (@xfonts), (@font_names));
    while (() -> begin
      var _tmp1 := n;
      n := _tmp1 - 1;
      exit _tmp1;
    end)() do begin
      font^.ascent := Math.Max(font^.ascent, xfonts^^.ascent);
      font^.descent := Math.Max(font^.descent,xfonts^^.descent);
      xfonts := xfonts + 1;
    end;
  end
  else begin
    if (Boolean(not Boolean((() -> begin
      var _tmp2 := XLoadQueryFont(dpy, name);
      (font)^.xfont := _tmp2;
      exit _tmp2;
    end)())) and Boolean(not Boolean((() -> begin
      var _tmp3 := XLoadQueryFont(dpy, "fixed");
      (font)^.xfont := _tmp3;
      exit _tmp3;
    end)()))) then begin
      free(font);
      exit 0;
    end;
    (font)^.ascent := ((font)^.xfont)^.ascent;
    (font)^.descent := ((font)^.xfont)^.descent;
  end;
  (font)^.height := ((font)^.ascent + (font)^.descent);
  {$ENDIF}
  exit font;
end;

method nk_xfont_get_text_width(handle: nk_handle; height: Single; text: ^Byte; len: Int32): Single; public;
begin
  var font: ^XFont := ^XFont(handle.ptr);
  if (Boolean(not Boolean(font)) or Boolean(not Boolean(text))) then begin
    exit 0;
  end;
  {$IF NK_XLIB_USE_XFT}
  var g: XGlyphInfo;
  XftTextExtentsUtf8(xlib.dpy, (font)^.ft, ^FcChar8(text), len, (@g));
  exit g.xOff;
  {$ELSE}
  var r: XRectangle;
  if (font)^.set then begin
    XmbTextExtents((font)^.set, ^Byte(text), len, nil, (@r));
    exit Single(r.width);
  end
  else begin
    var w: Int32 := XTextWidth((font)^.xfont, ^Byte(text), len);
    exit Single(w);
  end;
  {$ENDIF}
end;

method nk_xfont_del(dpy: ^Display; font: ^XFont); public;
begin
  if not Boolean(font) then begin
    exit;
  end;
  {$IF NK_XLIB_USE_XFT}
  XftFontClose(dpy, (font)^.ft);
  {$ELSE}
  if (font)^.set then begin
    XFreeFontSet(dpy, (font)^.set);
  end
  else begin
    XFreeFont(dpy, (font)^.xfont);
  end;
  {$ENDIF}
  free(font);
end;

method nk_xlib_init(var xlib: NuklearContext; xfont: ^XFont; dpy: ^Display; screen: Int32; root: Window; vis: ^Visual; cmap: Colormap; w: UInt32; h: UInt32): ^__struct_nk_context; public;
begin
  var font: ^__struct_nk_user_font := (@(xfont)^.handle);
  (font)^.userdata := nk_handle_ptr(xfont);
  (font)^.height := Single((xfont)^.height);
  (font)^.width := nk_xfont_get_text_width;
  xlib.dpy := dpy;
  xlib.root := root;
  {$IF NK_XLIB_USE_XFT}
  xlib.vis := vis;
  xlib.cmap := cmap;
  {$ENDIF}
  if not Boolean(setlocale(LC_ALL, "")) then begin
    exit 0;
  end;
  if not Boolean(XSupportsLocale()) then begin
    exit 0;
  end;
  if not Boolean(XSetLocaleModifiers("@im=none")) then begin
    exit 0;
  end;
  xlib.xa_clipboard := XInternAtom(dpy, "CLIPBOARD", False);
  xlib.xa_targets := XInternAtom(dpy, "TARGETS", False);
  xlib.xa_text := XInternAtom(dpy, "TEXT", False);
  xlib.xa_utf8_string := XInternAtom(dpy, "UTF8_STRING", False);
  // create invisible cursor
  begin
    var dummy: XColor;
    var data: array[0..1 - 1] of Byte := [0];
    var blank: Pixmap := XCreateBitmapFromData(dpy, root, ^^AnsiChar(@data), 1, 1);
    if (blank = None) then begin
      exit 0;
    end;
    xlib.cursor := XCreatePixmapCursor(dpy, blank, blank, (@dummy), (@dummy), 0, 0);
    XFreePixmap(dpy, blank);
  end;
  xlib.surf := nk_xsurf_create(var xlib, screen, w, h);
  nk_init_default((@xlib.ctx), font);
  exit (@xlib.ctx);
end;

method nk_xlib_set_font(var xlib: NuklearContext; xfont: ^XFont); public;
begin
  var font: ^__struct_nk_user_font := (@(xfont)^.handle);
  (font)^.userdata := nk_handle_ptr(xfont);
  (font)^.height := Single((xfont)^.height);
  (font)^.width := nk_xfont_get_text_width;
  nk_style_set_font((@xlib.ctx), font);
end;

method nk_xlib_push_font(var xlib: NuklearContext; xfont: ^XFont); public;
begin
  var font: ^__struct_nk_user_font := (@(xfont)^.handle);
  (font)^.userdata := nk_handle_ptr(xfont);
  (font)^.height := Single((xfont)^.height);
  (font)^.width := nk_xfont_get_text_width;
  nk_style_push_font((@xlib.ctx), font);
end;

method nk_xlib_paste(var xlib: NuklearContext; handle: nk_handle; edit: ^__struct_nk_text_edit); public;
begin
  //NK_UNUSED(handle);
  // Paste in X is asynchronous, so can not use a temporary text edit
  assert((Boolean((edit ≠ (@xlib.ctx.text_edit))) and Boolean("Paste not supported for temporary editors")));
  xlib.clipboard_target := edit;
  // Request the contents of the primary buffer
  XConvertSelection(xlib.dpy, Atom(1), Atom(3), Atom(1), xlib.root, CurrentTime);
end;

method nk_xlib_copy(var xlib: NuklearContext; handle: nk_handle; str: ^Byte; len: Int32); public;
begin
  //NK_UNUSED(handle);
  free(xlib.clipboard_data);
  xlib.clipboard_len := 0;
  xlib.clipboard_data := malloc(size_t(len));
  if xlib.clipboard_data then begin
    memcpy(xlib.clipboard_data, str, size_t(len));
    xlib.clipboard_len := len;
    XSetSelectionOwner(xlib.dpy, Atom(1), xlib.root, CurrentTime);
    XSetSelectionOwner(xlib.dpy, xlib.xa_clipboard, xlib.root, CurrentTime);
  end;
end;

method nk_xlib_handle_event(var xlib: NuklearContext; dpy: ^Display; screen: Int32; win: Window; evt: ^XEvent): Int32; public;
begin
  var ctx: ^__struct_nk_context := (@xlib.ctx);
  // optional grabbing behavior
  if (ctx)^.input.mouse.grab then begin
    XDefineCursor(xlib.dpy, xlib.root, xlib.cursor);
    (ctx)^.input.mouse.grab := 0;
  end
  else begin
    if (ctx)^.input.mouse.ungrab then begin
      XWarpPointer(xlib.dpy, None, xlib.root, 0, 0, 0, 0, Int32((ctx)^.input.mouse.prev.x), Int32((ctx)^.input.mouse.prev.y));
      XUndefineCursor(xlib.dpy, xlib.root);
      (ctx)^.input.mouse.ungrab := 0;
    end;
  end;
  if (Boolean(((evt)^.type = KeyPress)) or Boolean(((evt)^.type = KeyRelease))) then begin
    // Key handler
    var ret: Int32;
    // Key handler
    var down: Int32 := ((evt)^.type = KeyPress);
    var code: ^KeySym := XGetKeyboardMapping((xlib.surf)^.dpy, KeyCode((evt)^.xkey.keycode), 1, (@ret));
    if (Boolean(((code)^ = XK_Shift_L)) or Boolean(((code)^ = XK_Shift_R))) then begin
      nk_input_key(ctx, NK_KEY_SHIFT, down);
    end
    else begin
      if (Boolean(((code)^ = XK_Control_L)) or Boolean(((code)^ = XK_Control_R))) then begin
        nk_input_key(ctx, NK_KEY_CTRL, down);
      end
      else begin
        if ((code)^ = XK_Delete) then begin
          nk_input_key(ctx, NK_KEY_DEL, down);
        end
        else begin
          if ((code)^ = XK_Return) then begin
            nk_input_key(ctx, NK_KEY_ENTER, down);
          end
          else begin
            if ((code)^ = XK_Tab) then begin
              nk_input_key(ctx, NK_KEY_TAB, down);
            end
            else begin
              if ((code)^ = XK_Left) then begin
                nk_input_key(ctx, NK_KEY_LEFT, down);
              end
              else begin
                if ((code)^ = XK_Right) then begin
                  nk_input_key(ctx, NK_KEY_RIGHT, down);
                end
                else begin
                  if ((code)^ = XK_Up) then begin
                    nk_input_key(ctx, NK_KEY_UP, down);
                  end
                  else begin
                    if ((code)^ = XK_Down) then begin
                      nk_input_key(ctx, NK_KEY_DOWN, down);
                    end
                    else begin
                      if ((code)^ = XK_BackSpace) then begin
                        nk_input_key(ctx, NK_KEY_BACKSPACE, down);
                      end
                      else begin
                        if ((code)^ = XK_Escape) then begin
                          nk_input_key(ctx, NK_KEY_TEXT_RESET_MODE, down);
                        end
                        else begin
                          if ((code)^ = XK_Page_Up) then begin
                            nk_input_key(ctx, NK_KEY_SCROLL_UP, down);
                          end
                          else begin
                            if ((code)^ = XK_Page_Down) then begin
                              nk_input_key(ctx, NK_KEY_SCROLL_DOWN, down);
                            end
                            else begin
                              if ((code)^ = XK_Home) then begin
                                nk_input_key(ctx, NK_KEY_TEXT_START, down);
                                nk_input_key(ctx, NK_KEY_SCROLL_START, down);
                              end
                              else begin
                                if ((code)^ = XK_End) then begin
                                  nk_input_key(ctx, NK_KEY_TEXT_END, down);
                                  nk_input_key(ctx, NK_KEY_SCROLL_END, down);
                                end
                                else begin
                                  if (Boolean(((code)^ = 99)) and Boolean(((evt)^.xkey.state and ControlMask))) then begin
                                    nk_input_key(ctx, NK_KEY_COPY, down);
                                  end
                                  else begin
                                    if (Boolean(((code)^ = 118)) and Boolean(((evt)^.xkey.state and ControlMask))) then begin
                                      nk_input_key(ctx, NK_KEY_PASTE, down);
                                    end
                                    else begin
                                      if (Boolean(((code)^ = 120)) and Boolean(((evt)^.xkey.state and ControlMask))) then begin
                                        nk_input_key(ctx, NK_KEY_CUT, down);
                                      end
                                      else begin
                                        if (Boolean(((code)^ = 122)) and Boolean(((evt)^.xkey.state and ControlMask))) then begin
                                          nk_input_key(ctx, NK_KEY_TEXT_UNDO, down);
                                        end
                                        else begin
                                          if (Boolean(((code)^ = 114)) and Boolean(((evt)^.xkey.state and ControlMask))) then begin
                                            nk_input_key(ctx, NK_KEY_TEXT_REDO, down);
                                          end
                                          else begin
                                            if (Boolean(((code)^ = XK_Left)) and Boolean(((evt)^.xkey.state and ControlMask))) then begin
                                              nk_input_key(ctx, NK_KEY_TEXT_WORD_LEFT, down);
                                            end
                                            else begin
                                              if (Boolean(((code)^ = XK_Right)) and Boolean(((evt)^.xkey.state and ControlMask))) then begin
                                                nk_input_key(ctx, NK_KEY_TEXT_WORD_RIGHT, down);
                                              end
                                              else begin
                                                if (Boolean(((code)^ = 98)) and Boolean(((evt)^.xkey.state and ControlMask))) then begin
                                                  nk_input_key(ctx, NK_KEY_TEXT_LINE_START, down);
                                                end
                                                else begin
                                                  if (Boolean(((code)^ = 101)) and Boolean(((evt)^.xkey.state and ControlMask))) then begin
                                                    nk_input_key(ctx, NK_KEY_TEXT_LINE_END, down);
                                                  end
                                                  else begin
                                                    if ((code)^ = 105) then begin
                                                      nk_input_key(ctx, NK_KEY_TEXT_INSERT_MODE, down);
                                                    end
                                                    else begin
                                                      if ((code)^ = 114) then begin
                                                        nk_input_key(ctx, NK_KEY_TEXT_REPLACE_MODE, down);
                                                      end;
                                                    end;
                                                    if down then begin
                                                      var buf: array[0..32 - 1] of Byte;
                                                      var keysym: KeySym := 0;
                                                      if (XLookupString(^XKeyEvent(evt), @buf, 32, (@keysym), nil) ≠ NoSymbol) then begin
                                                        nk_input_glyph(ctx, ^nk_glyph(@buf)^);
                                                      end;
                                                    end;
                                                  end;
                                                end;
                                              end;
                                            end;
                                          end;
                                        end;
                                      end;
                                    end;
                                  end;
                                end;
                              end;
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
    XFree(code);
    exit 1;
  end
  else begin
    if (Boolean(((evt)^.type = ButtonPress)) or Boolean(((evt)^.type = ButtonRelease))) then begin
      // Button handler
      var down: Int32 := ((evt)^.type = ButtonPress);
      var x: Int32 := (evt)^.xbutton.x;
      var y: Int32 := (evt)^.xbutton.y;
      if ((evt)^.xbutton.button = Button1) then begin
        if down then begin
          // Double-Click Button handler
          var dt: IntPtr := (nk_timestamp() - xlib.last_button_click);
          if (Boolean((dt > 20)) and Boolean((dt < 200))) then begin
            nk_input_button(ctx, NK_BUTTON_DOUBLE, x, y, nk_true);
          end;
          xlib.last_button_click := nk_timestamp();
        end
        else begin
          nk_input_button(ctx, NK_BUTTON_DOUBLE, x, y, nk_false);
        end;
        nk_input_button(ctx, NK_BUTTON_LEFT, x, y, down);
      end
      else begin
        if ((evt)^.xbutton.button = Button2) then begin
          nk_input_button(ctx, NK_BUTTON_MIDDLE, x, y, down);
        end
        else begin
          if ((evt)^.xbutton.button = Button3) then begin
            nk_input_button(ctx, NK_BUTTON_RIGHT, x, y, down);
          end
          else begin
            if ((evt)^.xbutton.button = Button4) then begin
              nk_input_scroll(ctx, nk_vec2(0, 1.0));
            end
            else begin
              if ((evt)^.xbutton.button = Button5) then begin
                nk_input_scroll(ctx, nk_vec2(0, -1.0));
              end
              else begin
                exit 0;
              end;
            end;
          end;
        end;
      end;
      exit 1;
    end
    else begin
      if ((evt)^.type = MotionNotify) then begin
        // Mouse motion handler
        var x: Int32 := (evt)^.xmotion.x;
        // Mouse motion handler
        var y: Int32 := (evt)^.xmotion.y;
        nk_input_motion(ctx, x, y);
        if (ctx)^.input.mouse.grabbed then begin
          (ctx)^.input.mouse.pos.x := (ctx)^.input.mouse.prev.x;
          (ctx)^.input.mouse.pos.y := (ctx)^.input.mouse.prev.y;
          XWarpPointer(xlib.dpy, None, (xlib.surf)^.root, 0, 0, 0, 0, Int32((ctx)^.input.mouse.pos.x), Int32((ctx)^.input.mouse.pos.y));
        end;
        exit 1;
      end
      else begin
        if (Boolean(((evt)^.type = Expose)) or Boolean(((evt)^.type = ConfigureNotify))) then begin
          // Window resize handler
          var width: UInt32;
          // Window resize handler
          var height: UInt32;
          var attr: XWindowAttributes;
          XGetWindowAttributes(dpy, win, (@attr));
          width := UInt32(attr.width);
          height := UInt32(attr.height);
          nk_xsurf_resize(xlib.surf, width, height);
          exit 1;
        end
        else begin
          if ((evt)^.type = KeymapNotify) then begin
            XRefreshKeyboardMapping((@(evt)^.xmapping));
            exit 1;
          end
          else begin
            if ((evt)^.type = SelectionClear) then begin
              free(xlib.clipboard_data);
              xlib.clipboard_data := nil;
              xlib.clipboard_len := 0;
              exit 1;
            end
            else begin
              if ((evt)^.type = SelectionRequest) then begin
                var reply: XEvent;
                reply.xselection.type := SelectionNotify;
                reply.xselection.requestor := (evt)^.xselectionrequest.requestor;
                reply.xselection.selection := (evt)^.xselectionrequest.selection;
                reply.xselection.target := (evt)^.xselectionrequest.target;
                reply.xselection.property := None;
                // Default refuse
                reply.xselection.time := (evt)^.xselectionrequest.time;
                if (reply.xselection.target = xlib.xa_targets) then begin
                  var target_list: array[0..4 - 1] of Atom;
                  target_list[0] := xlib.xa_targets;
                  target_list[1] := xlib.xa_text;
                  target_list[2] := xlib.xa_utf8_string;
                  target_list[3] := Atom(31);
                  reply.xselection.property := (evt)^.xselectionrequest.property;
                  XChangeProperty((evt)^.xselection.display, (evt)^.xselectionrequest.requestor, reply.xselection.property, Atom(4), 32, PropModeReplace, ^Byte((@target_list)), 4);
                end
                else begin
                  if (Boolean(xlib.clipboard_data) and Boolean((Boolean((Boolean((reply.xselection.target = xlib.xa_text)) or Boolean((reply.xselection.target = xlib.xa_utf8_string)))) or Boolean((reply.xselection.target = Atom(31)))))) then begin
                    reply.xselection.property := (evt)^.xselectionrequest.property;
                    XChangeProperty((evt)^.xselection.display, (evt)^.xselectionrequest.requestor, reply.xselection.property, reply.xselection.target, 8, PropModeReplace, ^Byte(xlib.clipboard_data), xlib.clipboard_len);
                  end;
                end;
                XSendEvent((evt)^.xselection.display, (evt)^.xselectionrequest.requestor, True, 0, (@reply));
                XFlush((evt)^.xselection.display);
                exit 1;
              end
              else begin
                if (Boolean(((evt)^.type = SelectionNotify)) and Boolean(xlib.clipboard_target)) then begin
                  if (Boolean((Boolean(((evt)^.xselection.target ≠ Atom(31))) and Boolean(((evt)^.xselection.target ≠ xlib.xa_utf8_string)))) and Boolean(((evt)^.xselection.target ≠ xlib.xa_text))) then begin
                    exit 1;
                  end;
                  begin
                    var actual_type: Atom;
                    var actual_format: Int32;
                    var pos: UIntPtr := 0;
                    var len: UIntPtr;
                    var remain: UIntPtr;
                    var data: ^Byte := 0;
                    repeat
                      XGetWindowProperty(dpy, win, Atom(1), Int32(pos), 1024, False, AnyPropertyType, (@actual_type), (@actual_format), (@len), (@remain), (@data));
                      if (Boolean(len) and Boolean(data)) then begin
                        nk_textedit_text(xlib.clipboard_target, ^Byte(data), Int32(len));
                      end;
                      if (data ≠ 0) then begin
                        XFree(data);
                      end;
                      pos := pos + ((len * UIntPtr(actual_format)) / 32);
                    until not (remain ≠ 0);
                  end;
                  exit 1;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  exit 0;
end;

method nk_xlib_shutdown(var xlib: NuklearContext); public;
begin
  nk_xsurf_del(xlib.surf);
  nk_free((@xlib.ctx));
  XFreeCursor(xlib.dpy, xlib.cursor);
  memset((@xlib), 0, sizeOf(xlib));
end;

method nk_xlib_render(var xlib: NuklearContext; screen: Drawable; clear: __struct_nk_color); public;
begin
  var cmd: ^__struct_nk_command;
  var ctx: ^__struct_nk_context := (@xlib.ctx);
  var surf: ^XSurface := xlib.surf;
  nk_xsurf_clear(xlib.surf, nk_color_from_byte((@clear.r)));
  begin
    // for loop: initializer
    cmd := nk__begin((@xlib.ctx));
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
        NK_COMMAND_IMAGE: begin
            goto switch1_14;
          end;
        NK_COMMAND_RECT_MULTI_COLOR: begin
            goto switch1_15;
          end;
        NK_COMMAND_ARC: begin
            goto switch1_16;
          end;
        NK_COMMAND_ARC_FILLED: begin
            goto switch1_17;
          end;
        NK_COMMAND_CUSTOM: begin
            goto switch1_18;
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
        nk_xsurf_scissor(surf, (s)^.x, (s)^.y, (s)^.w, (s)^.h);
      end;
      goto _breaklabelswitch1;
      switch1_2:;
      begin
        var l: ^__struct_nk_command_line := ^__struct_nk_command_line(cmd);
        nk_xsurf_stroke_line(surf, (l)^.begin.x, (l)^.begin.y, (l)^.end.x, (l)^.end.y, (l)^.line_thickness, (l)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_3:;
      begin
        var r: ^__struct_nk_command_rect := ^__struct_nk_command_rect(cmd);
        nk_xsurf_stroke_rect(surf, (r)^.x, (r)^.y,Math.Max(r^.w - r^.line_thickness, 0), Math.Max(r^.h - r^.line_thickness, 0), UInt16((r)^.rounding), (r)^.line_thickness, (r)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_4:;
      begin
        var r: ^__struct_nk_command_rect_filled := ^__struct_nk_command_rect_filled(cmd);
        nk_xsurf_fill_rect(surf, (r)^.x, (r)^.y, (r)^.w, (r)^.h, UInt16((r)^.rounding), (r)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_5:;
      begin
        var c: ^__struct_nk_command_circle := ^__struct_nk_command_circle(cmd);
        nk_xsurf_stroke_circle(surf, (c)^.x, (c)^.y, (c)^.w, (c)^.h, (c)^.line_thickness, (c)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_6:;
      begin
        var c: ^__struct_nk_command_circle_filled := ^__struct_nk_command_circle_filled(cmd);
        nk_xsurf_fill_circle(surf, (c)^.x, (c)^.y, (c)^.w, (c)^.h, (c)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_7:;
      begin
        var t: ^__struct_nk_command_triangle := ^__struct_nk_command_triangle(cmd);
        nk_xsurf_stroke_triangle(surf, (t)^.a.x, (t)^.a.y, (t)^.b.x, (t)^.b.y, (t)^.c.x, (t)^.c.y, (t)^.line_thickness, (t)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_8:;
      begin
        var t: ^__struct_nk_command_triangle_filled := ^__struct_nk_command_triangle_filled(cmd);
        nk_xsurf_fill_triangle(surf, (t)^.a.x, (t)^.a.y, (t)^.b.x, (t)^.b.y, (t)^.c.x, (t)^.c.y, (t)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_9:;
      begin
        var p: ^__struct_nk_command_polygon := ^__struct_nk_command_polygon(cmd);
        nk_xsurf_stroke_polygon(surf, (p)^.points, (p)^.point_count, (p)^.line_thickness, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_10:;
      begin
        var p: ^__struct_nk_command_polygon_filled := ^__struct_nk_command_polygon_filled(cmd);
        nk_xsurf_fill_polygon(surf, (p)^.points, (p)^.point_count, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_11:;
      begin
        var p: ^__struct_nk_command_polyline := ^__struct_nk_command_polyline(cmd);
        nk_xsurf_stroke_polyline(surf, (p)^.points, (p)^.point_count, (p)^.line_thickness, (p)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_12:;
      begin
        var t: ^__struct_nk_command_text := ^__struct_nk_command_text(cmd);
        nk_xsurf_draw_text(surf, (t)^.x, (t)^.y, (t)^.w, (t)^.h, ^Byte((t)^.string), (t)^.length, ^XFont(((t)^.font)^.userdata.ptr), (t)^.background, (t)^.foreground);
      end;
      goto _breaklabelswitch1;
      switch1_13:;
      begin
        var q: ^__struct_nk_command_curve := ^__struct_nk_command_curve(cmd);
        nk_xsurf_stroke_curve(surf, (q)^.begin, (q)^.ctrl[0], (q)^.ctrl[1], (q)^.end, 22, (q)^.line_thickness, (q)^.color);
      end;
      goto _breaklabelswitch1;
      switch1_14:;
      begin
        var i: ^__struct_nk_command_image := ^__struct_nk_command_image(cmd);
        nk_xsurf_draw_image(surf, (i)^.x, (i)^.y, (i)^.w, (i)^.h, (i)^.img, (i)^.col);
      end;
      goto _breaklabelswitch1;
      switch1_15:;
      switch1_16:;
      switch1_17:;
      switch1_18:;
      switch1_default:;
      goto _breaklabelswitch1;
      _breaklabelswitch1:;
    end;
    _continuelabel0:;
    // for loop: increment/continue
    cmd := nk__next((@xlib.ctx), cmd);
    goto _looplabel0;
    // for loop: break
    _breaklabel0:;
  end;
  nk_clear(ctx);
  nk_xsurf_scissor(surf, 0, 0, (surf)^.w, (surf)^.h);
  nk_xsurf_blit(screen, surf, (surf)^.w, (surf)^.h);
end;

type
  // * Nuklear - v1.40.8 - public domain
  //  * no warrenty implied; use at your own risk.
  //  * authored from 2015-2017 by Micha Mettke
  //
  //  * ==============================================================
  //  *
  //  *                              API
  //  *
  //  * ===============================================================
  //
  //  defined: NK_XLIB_H_ ()
  //  defined: nk_foreach (c,ctx) for((c) = nk__begin(ctx); (c) != 0; (c) = nk__next(ctx,c))
  //  defined: FALSE ()  0
  //  defined: TRUE ()  1
  //  defined: LOWORD (a) ((WORD)(a))
  //  defined: HIWORD (a) ((WORD)(((DWORD)(a) >> 16) & 0xFFFF))
  //  defined: NK_MAX ()  (a,b) ((a) < (b) ? (b) : (a))
  //  defined: NK_ASSERT (expr) assert(expr)
  XFont = public __struct_XFont;

  // * ==============================================================
  //  *
  //  *                          IMPLEMENTATION
  //  *
  //  * ===============================================================
  //
  //  defined: nk_foreach (c,ctx) for((c) = nk__begin(ctx); (c) != 0; (c) = nk__next(ctx,c))
  //  defined: FALSE ()  0
  //  defined: TRUE ()  1
  //  defined: LOWORD (a) ((WORD)(a))
  //  defined: HIWORD (a) ((WORD)(((DWORD)(a) >> 16) & 0xFFFF))
  //  defined: NK_MAX ()  (a,b) ((a) < (b) ? (b) : (a))
  //  defined: NK_ASSERT (expr) assert(expr)
  //  defined: NK_X11_DOUBLE_CLICK_LO ()  20
  //  defined: NK_X11_DOUBLE_CLICK_HI ()  200
  XSurface = public __struct_XSurface;

  XImageWithAlpha = public __struct_XImageWithAlpha;

  __struct_XFont = public record
  private

    var ascent: Int32; public;
    var descent: Int32; public;
    var height: Int32; public;
    {$IF NK_XLIB_USE_XFT}
    var ft: ^XftFont; public;
    {$ENDIF}
    {$IF NOT NK_XLIB_USE_XFT}
    var &set: XFontSet; public;
    {$ENDIF}
    {$IF NOT NK_XLIB_USE_XFT}
    var xfont: ^XFontStruct; public;
    {$ENDIF}
    var handle: __struct_nk_user_font; public;

  end;

  __struct_XSurface = public record
  private

    var gc: GC; public;
    var dpy: ^Display; public;
    var screen: Int32; public;
    var root: Window; public;
    var drawable: Drawable; public;
    var w: UInt32; public;
    var h: UInt32; public;
    {$IF NK_XLIB_USE_XFT}
    var ftdraw: ^XftDraw; public;
    {$ENDIF}

  end;

  __struct_XImageWithAlpha = public record
  private

    var ximage: ^XImage; public;
    var clipMaskGC: GC; public;
    var clipMask: Pixmap; public;

  end;

  NuklearContext = public record
  private

    var clipboard_data: ^Byte; public;
    var clipboard_len: Int32; public;
    var clipboard_target: ^__struct_nk_text_edit; public;
    var xa_clipboard: Atom; public;
    var xa_targets: Atom; public;
    var xa_text: Atom; public;
    var xa_utf8_string: Atom; public;
    var ctx: __struct_nk_context; public;
    var surf: ^__struct_XSurface; public;
    var cursor: Cursor; public;
    var dpy: ^Display; public;
    var root: Window; public;
    {$IF NK_XLIB_USE_XFT}
    var vis: ^Visual; public;
    {$ENDIF}
    {$IF NK_XLIB_USE_XFT}
    var cmap: Colormap; public;
    {$ENDIF}
    var last_button_click: IntPtr; public;

  end;
{$ENDIF}
end.