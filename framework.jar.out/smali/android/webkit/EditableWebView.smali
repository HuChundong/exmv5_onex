.class public Landroid/webkit/EditableWebView;
.super Landroid/webkit/WebView;
.source "EditableWebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/EditableWebView$OnScrollChangedListener;,
        Landroid/webkit/EditableWebView$OnOverScrollListener;,
        Landroid/webkit/EditableWebView$OnImageSelectedListener;,
        Landroid/webkit/EditableWebView$OnContentChangedListener;,
        Landroid/webkit/EditableWebView$ImageInfo;
    }
.end annotation


# static fields
.field public static final CUSTOM_CLIP_LABEL:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static DELAY_CURSOR_ANCHOR_DISAPPEAR:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 791
    const/16 v0, 0xbb8

    sput v0, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/EditableWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/webkit/EditableWebViewImpl;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebViewImpl;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    .line 40
    :cond_0
    return-void
.end method

.method static synthetic access$001(Landroid/webkit/EditableWebView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 25
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public GetImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "strImagePath"
    .parameter "nImageNode"
    .parameter "rectImage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public SetBackColor(IZ)V
    .locals 1
    .parameter "color"
    .parameter "enableBackColor"

    .prologue
    .line 483
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->SetBackColor(IZ)V

    .line 484
    return-void
.end method

.method public SetFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 501
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->SetFontSize(I)V

    .line 502
    return-void
.end method

.method public SetForeColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 471
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->SetForeColor(I)V

    .line 472
    return-void
.end method

.method public SetImageAttr(III)V
    .locals 1
    .parameter "pointer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 457
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/EditableWebViewProvider;->SetImageAttr(III)V

    .line 458
    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->SetOwnerActivityContext(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public alignCenter()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->alignCenter()V

    .line 371
    return-void
.end method

.method public alignJustified()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->alignJustified()V

    .line 377
    return-void
.end method

.method public alignLeft()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->alignLeft()V

    .line 383
    return-void
.end method

.method public alignRight()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->alignRight()V

    .line 389
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->beginBatchEdit()V

    .line 179
    return-void
.end method

.method public cancelAnchorSpan()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->cancelAnchorSpan()V

    .line 431
    return-void
.end method

.method protected checkVerticalBouncingCallback(I)Z
    .locals 1
    .parameter "distance"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 828
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->checkVerticalBouncingCallback(I)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 244
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public copy()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->copy()V

    .line 395
    return-void
.end method

.method public cut()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->cut()V

    .line 401
    return-void
.end method

.method public deleteSurroundingText(IIII)V
    .locals 1
    .parameter "leftStart"
    .parameter "leftEnd"
    .parameter "rightStart"
    .parameter "rightEnd"

    .prologue
    .line 256
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/EditableWebViewProvider;->deleteSurroundingText(IIII)V

    .line 257
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 661
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 662
    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->enableMultiTouch()V

    .line 143
    return-void
.end method

.method public enableOrientationCustomScale(FF)V
    .locals 1
    .parameter "portraitScale"
    .parameter "landscapeScale"

    .prologue
    .line 220
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->enableOrientationCustomScale(FF)V

    .line 221
    return-void
.end method

.method protected enableQuickSelection(Z)V
    .locals 0
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 814
    return-void
.end method

.method public enableSpellCheckIfAvalible(Z)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 650
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->enableSpellCheckIfAvalible(Z)V

    .line 651
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->endBatchEdit()V

    .line 185
    return-void
.end method

.method public exportHTML(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 274
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->exportHTML(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public exportHTML(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "path"
    .parameter "callback"

    .prologue
    .line 280
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->exportHTML(Ljava/lang/String;Landroid/os/Message;)V

    .line 281
    return-void
.end method

.method public findContinuousBRFromEnd(ILandroid/os/Message;)V
    .locals 1
    .parameter "bottom"
    .parameter "callback"

    .prologue
    .line 304
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->findContinuousBRFromEnd(ILandroid/os/Message;)V

    .line 305
    return-void
.end method

.method public getAllAnchorSpan()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getAllAnchorSpan()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1
    .parameter "id"

    .prologue
    .line 310
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1
    .parameter "id"

    .prologue
    .line 614
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1
    .parameter "r"
    .parameter "id"

    .prologue
    .line 608
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p2}, Landroid/webkit/EditableWebViewProvider;->getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 609
    return-void
.end method

.method public getBackColor()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getBackColor()I

    move-result v0

    return v0
.end method

.method public getBoldState()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getBoldState()I

    move-result v0

    return v0
.end method

.method public final getCaretRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getCaretRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 765
    invoke-super {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getEditableWebViewProvider()Landroid/webkit/EditableWebViewProvider;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    return-object v0
.end method

.method public getEnableBackColor()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getEnableBackColor()Z

    move-result v0

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getFontSize()I

    move-result v0

    return v0
.end method

.method public getForeColor()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getForeColor()I

    move-result v0

    return v0
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 268
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getHTML(Landroid/os/Message;)V

    .line 269
    return-void
.end method

.method public final getHighlightRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getHighlightRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getImageInfoObj(Ljava/lang/String;II)Landroid/webkit/EditableWebView$ImageInfo;
    .locals 1
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 62
    new-instance v0, Landroid/webkit/EditableWebView$ImageInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/webkit/EditableWebView$ImageInfo;-><init>(Landroid/webkit/EditableWebView;Ljava/lang/String;II)V

    return-object v0
.end method

.method public getImageNodeRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "pointer"

    .prologue
    .line 465
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getItalicState()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getItalicState()I

    move-result v0

    return v0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    return-object v0
.end method

.method public getPenHighlightListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getPenHighlightListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public getPenSelectionListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getPenSelectionListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"

    .prologue
    .line 573
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"

    .prologue
    .line 579
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"
    .parameter "bgColor"

    .prologue
    .line 585
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/webkit/EditableWebViewProvider;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"

    .prologue
    .line 567
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"
    .parameter "bmp"

    .prologue
    .line 561
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCaptureByMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 555
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->getRegionCaptureByMessage(Landroid/os/Message;)V

    .line 556
    return-void
.end method

.method protected getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 808
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v0

    return-object v0
.end method

.method public getStrikethroughState()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getStrikethroughState()I

    move-result v0

    return v0
.end method

.method public getUnderlineState()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->getUnderlineState()I

    move-result v0

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    return-object v0
.end method

.method public hideSingleTapQuickActions()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->hideSingleTapQuickActions()V

    .line 645
    return-void
.end method

.method protected initQuickSelect()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 819
    return-void
.end method

.method protected initSingleTapQuickAction()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 834
    return-void
.end method

.method public insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 424
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V

    .line 425
    return-void
.end method

.method public insertHTML(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 292
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->insertHTML(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public insertHTMLString(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    .line 286
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->insertHTMLString(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public insertHtmlContainsAnchorSpan(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    .line 436
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->insertHtmlContainsAnchorSpan(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 1
    .parameter "htmlString"

    .prologue
    .line 298
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->insertHtmlToTheEnd(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 1
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 316
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/EditableWebViewProvider;->insertImage(Ljava/lang/String;II)V

    .line 317
    return-void
.end method

.method protected myInitQuickAction()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 824
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 667
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 668
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Landroid/webkit/EditableWebViewImpl;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebViewImpl;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    .line 723
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 196
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 197
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 736
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 697
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 673
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 674
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 691
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 692
    return-void
.end method

.method public onEditorAction(I)V
    .locals 1
    .parameter "actionCode"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->onEditorAction(I)V

    .line 203
    return-void
.end method

.method public onEndSelect()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->onEndSelect()V

    .line 227
    return-void
.end method

.method public onEndSelect(Z)V
    .locals 1
    .parameter "removeSelection"

    .prologue
    .line 232
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->onEndSelect(Z)V

    .line 233
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 710
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 711
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 679
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 754
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 685
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->onPreDraw()Z

    move-result v0

    return v0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 748
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 749
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 716
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 717
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 208
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 703
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 704
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 779
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/webkit/EditableWebViewProvider;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public pasteLatestContentFromClipboard()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->pasteLatestContentFromClipboard()V

    .line 419
    return-void
.end method

.method public pastePlainText()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->pastePlainText()V

    .line 407
    return-void
.end method

.method public pasteWithStyle()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->pasteWithStyle()V

    .line 413
    return-void
.end method

.method public pauseTextReflow(I)V
    .locals 1
    .parameter "nTextWrapWidth"

    .prologue
    .line 160
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->pauseTextReflow(I)V

    .line 161
    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 742
    invoke-super {p0}, Landroid/webkit/WebView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public resumeTextReflow()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->resumeTextReflow()V

    .line 167
    return-void
.end method

.method public setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V
    .locals 1
    .parameter "allow"
    .parameter "threshold"
    .parameter "l"

    .prologue
    .line 591
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/EditableWebViewProvider;->setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V

    .line 592
    return-void
.end method

.method public final setCaretPos(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 537
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->setCaretPos(II)V

    .line 538
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 250
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setEditable(Z)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 172
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setEditable(Z)V

    .line 173
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 760
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 519
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V

    .line 520
    return-void
.end method

.method public setOnImageSelectedListener(Landroid/webkit/EditableWebView$OnImageSelectedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 513
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setOnImageSelectedListener(Landroid/webkit/EditableWebView$OnImageSelectedListener;)V

    .line 514
    return-void
.end method

.method public setOnScrollChangedListener(Landroid/webkit/EditableWebView$OnScrollChangedListener;)V
    .locals 0
    .parameter "l"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 632
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 1
    .parameter "bSet"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setScaleWithoutCheck(Z)V

    .line 131
    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 1
    .parameter "willDraw"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setWillDrawFind(Z)V

    .line 137
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .parameter "fLower"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setZoomLowerBound(F)V

    .line 155
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .parameter "fUpper"

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/EditableWebViewProvider;->setZoomUpperBound(F)V

    .line 149
    return-void
.end method

.method public showSingleTapQuickActions()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->showSingleTapQuickActions()V

    .line 639
    return-void
.end method

.method protected singleTapInEditableWebView()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 839
    return-void
.end method

.method super_onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 728
    invoke-super {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method super_overScrollBy(IIIIIIIIZ)Z
    .locals 1
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 784
    #calls: Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {p0 .. p9}, Landroid/webkit/EditableWebView;->access$001(Landroid/webkit/EditableWebView;IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public toggleBold()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->toggleBold()V

    .line 323
    return-void
.end method

.method public toggleItalic()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->toggleItalic()V

    .line 335
    return-void
.end method

.method public toggleStrikethrough()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->toggleStrikethrough()V

    .line 341
    return-void
.end method

.method public toggleUnderline()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0}, Landroid/webkit/EditableWebViewProvider;->toggleUnderline()V

    .line 329
    return-void
.end method

.method public final transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 1
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    .line 531
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public final transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    .line 525
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mEditableWVProvider:Landroid/webkit/EditableWebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/EditableWebViewProvider;->transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected updateContentFromMessage(I)V
    .locals 0
    .parameter "pointer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 799
    return-void
.end method

.method protected updateTextAndSelection(III)V
    .locals 0
    .parameter "nodePointer"
    .parameter "startIndx"
    .parameter "endIndx"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 804
    return-void
.end method
