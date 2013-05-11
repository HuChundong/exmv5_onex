.class Landroid/webkit/HTCWebCoreImpl;
.super Ljava/lang/Object;
.source "HTCWebCoreImpl.java"

# interfaces
.implements Landroid/webkit/HTCWebCoreProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTCWebCoreImpl$PositionRect;,
        Landroid/webkit/HTCWebCoreImpl$SelectionType;,
        Landroid/webkit/HTCWebCoreImpl$EditEventHub;
    }
.end annotation


# static fields
.field static suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

.field private static updateBodyNode:Z


# instance fields
.field private bodyNodePtr:I

.field private bodyNodeRect:Landroid/graphics/Rect;

.field private ignorePictureAfterFirstLayout:Z

.field private mAnchorSpanCallback:Landroid/os/Message;

.field private mClipboard:Landroid/content/ClipboardManager;

.field private mCopiedStyleText:Ljava/lang/String;

.field private mCoreNativeClass:I

.field mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

.field private mNativeClass:I

.field private mSkipClipboardChang:Z

.field private mWebCore:Landroid/webkit/WebViewCore;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    .line 394
    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;-><init>()V

    sput-object v0, Landroid/webkit/HTCWebCoreImpl;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "webcore"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    .line 102
    iput v1, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    .line 393
    new-instance v0, Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    invoke-direct {v0, p0}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;-><init>(Landroid/webkit/HTCWebCoreImpl;)V

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    .line 1204
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCopiedStyleText:Ljava/lang/String;

    .line 1205
    iput-boolean v1, p0, Landroid/webkit/HTCWebCoreImpl;->mSkipClipboardChang:Z

    .line 1274
    iput-boolean v1, p0, Landroid/webkit/HTCWebCoreImpl;->ignorePictureAfterFirstLayout:Z

    .line 58
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    .line 59
    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTCWebCoreImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeModifySelection(IZ)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeInsert(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/HTCWebCoreImpl;IILjava/lang/String;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p7}, Landroid/webkit/HTCWebCoreImpl;->nativeComposing(IILjava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/HTCWebCoreImpl;IIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, Landroid/webkit/HTCWebCoreImpl;->nativeDeleteSurrounding(IIIIII)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/HTCWebCoreImpl;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetHtmlString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlString(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeExportHtml(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtml(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertImage(ILjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeInformColorChanged(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativePasteWithStyle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/HTCWebCoreImpl;IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreImpl;->nativeDoWordSelection(IIIZ)V

    return-void
.end method

.method static synthetic access$2002(Landroid/webkit/HTCWebCoreImpl;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertAnchorSpan(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeCancelAnchorSpan(I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeInsertHtmlContainsAnchorSpan(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeToggleBold(I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeToggleUnderline(I)V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeToggleItalic(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeToggleStrikethrough(I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeAlignCenter(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeAlignJustified(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/HTCWebCoreImpl;IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreImpl;->nativeDoSelection(IIIZ)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeAlignLeft(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeAlignRight(I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetForeColor(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetBackColor(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/HTCWebCoreImpl;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetFontSize(II)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/HTCWebCoreImpl;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTCWebCoreImpl;->nativeSetImageAttr(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/HTCWebCoreImpl;IIIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Landroid/webkit/HTCWebCoreImpl;->nativeMarkMisspelling(IIIIZ)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeCheckCurrentSpell(IZ)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetSpellCheck(IZ)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/HTCWebCoreImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/webkit/HTCWebCoreImpl;->nativePauseFPDoPlay()V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeSelectAll(I)V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/HTCWebCoreImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/webkit/HTCWebCoreImpl;->nativeResumeFPDoPlay()V

    return-void
.end method

.method static synthetic access$4100(Landroid/webkit/HTCWebCoreImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeUpdateTextSelection(I)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/HTCWebCoreImpl;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/webkit/HTCWebCoreImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    return v0
.end method

.method static synthetic access$4302(Landroid/webkit/HTCWebCoreImpl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/HTCWebCoreImpl;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Landroid/webkit/HTCWebCoreImpl;->nativeDoSelectionByIndex(IIIII)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/HTCWebCoreImpl;IIIII)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Landroid/webkit/HTCWebCoreImpl;->nativeGetTextBetween(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/HTCWebCoreImpl;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetEditable(IZ)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/HTCWebCoreImpl;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeShouldPaintingCaret(IZ)V

    return-void
.end method

.method private doAnchorSpanCallBack(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "rect"

    .prologue
    .line 328
    const-string v0, "KENLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback => [HTCWebCore.java] doAnchorSpanCallBack :: R = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mAnchorSpanCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 334
    :cond_0
    return-void
.end method

.method public static fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;
    .locals 1
    .parameter "webViewCore"

    .prologue
    .line 53
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getHtcWebCoreProvider()Landroid/webkit/HTCWebCoreProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/HTCWebCoreImpl;

    goto :goto_0
.end method

.method static isNeedGetBodyNode()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    return v0
.end method

.method private native nativeAlignCenter(I)V
.end method

.method private native nativeAlignJustified(I)V
.end method

.method private native nativeAlignLeft(I)V
.end method

.method private native nativeAlignRight(I)V
.end method

.method private native nativeCancelAnchorSpan(I)V
.end method

.method private native nativeCheckCurrentSpell(IZ)V
.end method

.method private native nativeComposing(IILjava/lang/String;IIII)V
.end method

.method private native nativeCopy(I)V
.end method

.method private native nativeCut(I)V
.end method

.method private native nativeDeleteSurrounding(IIIIII)V
.end method

.method private native nativeDoSelection(IIIZ)V
.end method

.method private native nativeDoSelectionByIndex(IIIII)V
.end method

.method private native nativeDoWordSelection(IIIZ)V
.end method

.method private native nativeEnableGifAnimation(IZ)V
.end method

.method private native nativeExportHtml(ILjava/lang/String;)Z
.end method

.method private native nativeFindNextTableNode(IIZ)I
.end method

.method private native nativeFindNextTextNode(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeFindParagraphBound(IIIZLandroid/graphics/Rect;)I
.end method

.method private native nativeFindParagraphBoundByNode(IIZLandroid/graphics/Rect;)V
.end method

.method private native nativeFindTextBound(IIILandroid/webkit/SelectionUnitInfo;Z)I
.end method

.method private native nativeForceStopGifAnimation(IZ)V
.end method

.method private native nativeGetBodyNodeImpl(IILandroid/graphics/Rect;)I
.end method

.method private native nativeGetCharRect(IIILandroid/graphics/Rect;)Z
.end method

.method private native nativeGetCopiedPlainText(I)Ljava/lang/String;
.end method

.method private native nativeGetCopiedStyleText(I)Ljava/lang/String;
.end method

.method private native nativeGetCursorPos(IIILandroid/graphics/Rect;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetFontPixelSizeOfTextNode(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetHREF(II)Ljava/lang/String;
.end method

.method private native nativeGetHtmlString(I)Ljava/lang/String;
.end method

.method private native nativeGetImageAttr(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetMaxCPUFreq(I)J
.end method

.method private native nativeGetNodeRect(IIZI)Landroid/graphics/Rect;
.end method

.method private native nativeGetRssFeed(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetScopeNode(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeGetSurfaceViewBitmap(ILandroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private native nativeGetTextBetween(IIIII)Ljava/lang/String;
.end method

.method private native nativeHasRssFeed(I)Z
.end method

.method private native nativeInformColorChanged(I)V
.end method

.method private native nativeInsert(IILjava/lang/String;)V
.end method

.method private native nativeInsertAnchorSpan(ILjava/lang/String;)V
.end method

.method private native nativeInsertHtml(ILjava/lang/String;)Z
.end method

.method private native nativeInsertHtmlContainsAnchorSpan(ILjava/lang/String;)Z
.end method

.method private native nativeInsertHtmlString(ILjava/lang/String;)Z
.end method

.method private native nativeInsertImage(ILjava/lang/String;II)V
.end method

.method private native nativeIsDocumentParsing(I)Z
.end method

.method private native nativeIsSupportGifAnimUISetting(I)Z
.end method

.method private native nativeIsTextNode(III)I
.end method

.method private native nativeMarkMisspelling(IIIIZ)V
.end method

.method private native nativeModifySelection(IZ)V
.end method

.method private native nativePastePlainText(ILjava/lang/String;)V
.end method

.method private native nativePasteWithStyle(ILjava/lang/String;)V
.end method

.method private native nativePauseFPDoPlay()V
.end method

.method private native nativeResumeFPDoPlay()V
.end method

.method private native nativeSaveImage(IIILjava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeSelectAll(I)V
.end method

.method private native nativeSelectParagraphText(IIILandroid/graphics/Rect;)Ljava/lang/String;
.end method

.method private native nativeSetBackColor(ILjava/lang/String;)V
.end method

.method private native nativeSetEditable(IZ)V
.end method

.method private native nativeSetFontSize(II)V
.end method

.method private native nativeSetForeColor(ILjava/lang/String;)V
.end method

.method private native nativeSetImageAttr(ILjava/lang/String;Ljava/lang/String;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeSetSkiaFontCacheSize(IJ)V
.end method

.method private native nativeSetSpellCheck(IZ)V
.end method

.method private native nativeShouldPaintingCaret(IZ)V
.end method

.method private native nativeSmartTouchUp(III)I
.end method

.method private native nativeToggleBold(I)V
.end method

.method private native nativeToggleItalic(I)V
.end method

.method private native nativeToggleStrikethrough(I)V
.end method

.method private native nativeToggleUnderline(I)V
.end method

.method private native nativeUpdateTextSelection(I)V
.end method

.method private native nativeisImageNode(II)Z
.end method

.method private native nativeisTextNode(II)Z
.end method


# virtual methods
.method checkCurrentSpell(Z)V
    .locals 3
    .parameter "updateMarkerOnly"

    .prologue
    const/16 v2, 0x232

    .line 1053
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1054
    .local v0, m:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1055
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1057
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 1058
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1059
    return-void

    .line 1055
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public composingText(ILjava/lang/String;)V
    .locals 1
    .parameter "pnode"
    .parameter "s"

    .prologue
    .line 983
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/HTCWebCoreImpl;->composingText(ILjava/lang/String;I)V

    .line 984
    return-void
.end method

.method public composingText(ILjava/lang/String;I)V
    .locals 2
    .parameter "pnode"
    .parameter "s"
    .parameter "c"

    .prologue
    .line 987
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 988
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 989
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 990
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 991
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 992
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 993
    return-void
.end method

.method public deleteSurroundingText(IIIII)V
    .locals 3
    .parameter "pnode"
    .parameter "leftStart"
    .parameter "leftEnd"
    .parameter "rightStart"
    .parameter "rightEnd"

    .prologue
    .line 997
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 998
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 999
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1000
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    aput p5, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1001
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1002
    return-void
.end method

.method doBatchSpellCheck([Ljava/lang/String;[I[I[I)V
    .locals 0
    .parameter "words"
    .parameter "nodes"
    .parameter "startIndexs"
    .parameter "endIndexs"

    .prologue
    .line 1303
    return-void
.end method

.method doSelection(IIZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "extent"

    .prologue
    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/webkit/HTCWebCoreImpl;->doSelection(IIZZ)V

    .line 1025
    return-void
.end method

.method doSelection(IIZZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "extent"
    .parameter "wordBase"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1035
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1036
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x213

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1037
    if-eqz p3, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1038
    if-eqz p4, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1039
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1040
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1041
    return-void

    :cond_0
    move v1, v3

    .line 1037
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1038
    goto :goto_1
.end method

.method doSelectionByIndex(IIII)V
    .locals 3
    .parameter "nodeStart"
    .parameter "start"
    .parameter "nodeEnd"
    .parameter "end"

    .prologue
    .line 1044
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1045
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x214

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1046
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1047
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1048
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p4, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1049
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1050
    return-void
.end method

.method doSpellCheck(Ljava/lang/String;IIIZ)V
    .locals 0
    .parameter "word"
    .parameter "node"
    .parameter "startIndex"
    .parameter "endIndex"
    .parameter "showSuggest"

    .prologue
    .line 1295
    return-void
.end method

.method public drawContentPicture(Landroid/graphics/Canvas;IZZ)V
    .locals 1
    .parameter "canvas"
    .parameter "color"
    .parameter "animatingZoom"
    .parameter "animatingScroll"

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 75
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    return-void
.end method

.method public dumpHeap()Z
    .locals 1

    .prologue
    .line 1556
    const/4 v0, 0x0

    return v0
.end method

.method public enableGifAnimation(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1526
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeEnableGifAnimation(IZ)V

    .line 1527
    return-void
.end method

.method public findNextTableNode(I)I
    .locals 1
    .parameter "pointer"

    .prologue
    .line 1489
    invoke-virtual {p0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeFindNextTableNode(I)I

    move-result v0

    return v0
.end method

.method public findNextTableNode(IZ)I
    .locals 1
    .parameter "pointer"
    .parameter "traverseNestedTables"

    .prologue
    .line 1483
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeFindNextTableNode(IIZ)I

    move-result v0

    return v0
.end method

.method public findNextTextNode(I)I
    .locals 1
    .parameter "pointer"

    .prologue
    .line 1471
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeFindNextTextNode(II)I

    move-result v0

    return v0
.end method

.method public findParagraphBound(IIZLandroid/graphics/Rect;)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "onlyTextNode"
    .parameter "r"

    .prologue
    .line 1433
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTCWebCoreImpl;->nativeFindParagraphBound(IIIZLandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public findParagraphBoundByNode(IZLandroid/graphics/Rect;)V
    .locals 1
    .parameter "node"
    .parameter "onlyTextNode"
    .parameter "r"

    .prologue
    .line 1421
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeFindParagraphBoundByNode(IIZLandroid/graphics/Rect;)V

    .line 1422
    return-void
.end method

.method public findTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "o"
    .parameter "isWordBased"

    .prologue
    .line 1447
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTCWebCoreImpl;->nativeFindTextBound(IIILandroid/webkit/SelectionUnitInfo;Z)I

    move-result v0

    return v0
.end method

.method public forceStopGifAnimation(Z)V
    .locals 1
    .parameter "stop"

    .prologue
    .line 1532
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeForceStopGifAnimation(IZ)V

    .line 1533
    return-void
.end method

.method public getBodyNode(ILandroid/graphics/Rect;)I
    .locals 6
    .parameter "pointer"
    .parameter "contentBound"

    .prologue
    const/4 v5, 0x0

    .line 1342
    if-nez p1, :cond_0

    sget-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    if-nez v0, :cond_3

    .line 1343
    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 1344
    const-string v0, "HTCWebCore"

    const-string v1, "getBodyNode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_1
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    monitor-enter v1

    .line 1348
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    .line 1349
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x277

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    .line 1350
    :goto_0
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    if-nez v0, :cond_6

    .line 1351
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1357
    :catch_0
    move-exception v0

    .line 1360
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1362
    iput v5, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    .line 1366
    :cond_3
    sget-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 1367
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    .line 1380
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 1381
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1384
    :cond_5
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    return v0

    .line 1353
    :cond_6
    :try_start_2
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    .line 1354
    const-string v0, "HTCWebCore"

    const-string v2, "getBodyNode end"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1360
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1375
    :cond_7
    if-eqz p1, :cond_4

    .line 1376
    sput-boolean v5, Landroid/webkit/HTCWebCoreImpl;->updateBodyNode:Z

    goto :goto_2
.end method

.method public getCacheFile(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .locals 2
    .parameter "url"

    .prologue
    .line 142
    invoke-static {}, Landroid/webkit/CacheManager;->endCacheTransaction()Z

    .line 143
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 144
    .local v0, result:Landroid/webkit/CacheManager$CacheResult;
    invoke-static {}, Landroid/webkit/CacheManager;->startCacheTransaction()Z

    .line 145
    return-object v0
.end method

.method public getCharRect(IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "pointer"
    .parameter "index"
    .parameter "r"

    .prologue
    .line 1453
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeGetCharRect(IIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getCopiedStyleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCopiedStyleText:Ljava/lang/String;

    return-object v0
.end method

.method public getCursorPos(IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "pointer"
    .parameter "index"
    .parameter "r"

    .prologue
    .line 1459
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeGetCursorPos(IIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getFontPixelSizeOfTextNode(I)I
    .locals 1
    .parameter "pointer"

    .prologue
    .line 1477
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetFontPixelSizeOfTextNode(II)I

    move-result v0

    return v0
.end method

.method public getFontPixelSizeOfTextNodes(Landroid/os/Message;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 261
    return-void
.end method

.method public getHREF(I)Ljava/lang/String;
    .locals 1
    .parameter "nodePtr"

    .prologue
    .line 1562
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetHREF(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageAttr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1544
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeGetImageAttr(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCPUFreq()J
    .locals 2

    .prologue
    .line 1514
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeGetMaxCPUFreq(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNodeCapture(III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "pointer"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 282
    iget v8, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v8, p1, v9, v10}, Landroid/webkit/HTCWebCoreImpl;->nativeGetNodeRect(IIZI)Landroid/graphics/Rect;

    move-result-object v3

    .line 284
    .local v3, nodeRect:Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 285
    :cond_0
    const/4 v7, 0x0

    .line 323
    :goto_0
    return-object v7

    .line 287
    :cond_1
    const/high16 v4, 0x3f80

    .line 288
    .local v4, ratio:F
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 289
    int-to-float v8, p2

    const/high16 v9, 0x3f80

    mul-float/2addr v8, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 290
    .local v6, ratioW:F
    int-to-float v8, p3

    const/high16 v9, 0x3f80

    mul-float/2addr v8, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 291
    .local v5, ratioH:F
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 297
    .end local v5           #ratioH:F
    .end local v6           #ratioW:F
    :goto_1
    new-instance v1, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 300
    .local v1, clipF:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 301
    const/4 v7, 0x0

    goto :goto_0

    .line 293
    .end local v1           #clipF:Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 294
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_1

    .line 303
    .restart local v1       #clipF:Landroid/graphics/RectF;
    :cond_3
    const/4 v7, 0x0

    .line 305
    .local v7, ret:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 306
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 307
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 309
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 310
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 311
    iget v8, v3, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    iget-object v8, p0, Landroid/webkit/HTCWebCoreImpl;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8, v0}, Landroid/webkit/WebViewClassic;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    .end local v0           #c:Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 319
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "HtcWebCore"

    const-string v9, ""

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getNodeRect(IZI)Landroid/graphics/Rect;
    .locals 1
    .parameter "pointer"
    .parameter "absolute"
    .parameter "defaultTextWidth"

    .prologue
    .line 1337
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeGetNodeRect(IIZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getRectOf(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "type"

    .prologue
    .line 1011
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1012
    .local v0, ret:Landroid/graphics/Rect;
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetRectOf(ILandroid/graphics/Rect;I)V

    .line 1013
    return-object v0
.end method

.method public getRssFeed()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1501
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeGetRssFeed(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getScopeNode(I)I
    .locals 1
    .parameter "node"

    .prologue
    .line 1397
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetScopeNode(II)I

    move-result v0

    return v0
.end method

.method public getSurfaceViewBitmap(Landroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "s"
    .parameter "c"
    .parameter "r"

    .prologue
    .line 1520
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeGetSurfaceViewBitmap(ILandroid/view/Surface;Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getTextBetween(IIII)Ljava/lang/String;
    .locals 6
    .parameter "startNodePtr"
    .parameter "startIndx"
    .parameter "endNodePtr"
    .parameter "endNodeIndx"

    .prologue
    .line 1508
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTCWebCoreImpl;->nativeGetTextBetween(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRssFeed()Z
    .locals 1

    .prologue
    .line 1495
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeHasRssFeed(I)Z

    move-result v0

    return v0
.end method

.method public insetText(ILjava/lang/String;)V
    .locals 2
    .parameter "pnode"
    .parameter "s"

    .prologue
    .line 974
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 975
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 976
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 977
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 978
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 979
    return-void
.end method

.method public isDocumentParsing()Z
    .locals 1

    .prologue
    .line 1574
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeIsDocumentParsing(I)Z

    move-result v0

    return v0
.end method

.method public isIgnorePictureAfterFirstLayout()Z
    .locals 1

    .prologue
    .line 1286
    iget-boolean v0, p0, Landroid/webkit/HTCWebCoreImpl;->ignorePictureAfterFirstLayout:Z

    return v0
.end method

.method public isImageNode(I)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 1409
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeisImageNode(II)Z

    move-result v0

    return v0
.end method

.method public isSkipClipboardChang()Z
    .locals 1

    .prologue
    .line 1213
    iget-boolean v0, p0, Landroid/webkit/HTCWebCoreImpl;->mSkipClipboardChang:Z

    return v0
.end method

.method public isSupportGifAnimUISetting()Z
    .locals 1

    .prologue
    .line 1538
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/HTCWebCoreImpl;->nativeIsSupportGifAnimUISetting(I)Z

    move-result v0

    return v0
.end method

.method public isTextNode(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1465
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeIsTextNode(III)I

    move-result v0

    return v0
.end method

.method public isTextNode(I)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 1415
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeisTextNode(II)Z

    move-result v0

    return v0
.end method

.method public isThisWebCoreBlocked()Z
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x0

    return v0
.end method

.method public isWebCoreBlocked()Z
    .locals 1

    .prologue
    .line 1255
    const/4 v0, 0x0

    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 1

    .prologue
    .line 1239
    const/4 v0, 0x0

    return v0
.end method

.method modifySelection(Z)V
    .locals 2
    .parameter "willModifyStart"

    .prologue
    .line 1017
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1018
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x212

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1019
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1020
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1021
    return-void

    .line 1019
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method native nativeContentInvalidate(ILandroid/graphics/Rect;)V
.end method

.method native nativeEnableTextReflowWithBreakWords(IZ)V
.end method

.method native nativeFindContinuousBRFromEnd(II)I
.end method

.method public nativeFindNextTableNode(I)I
    .locals 2
    .parameter "pointer"

    .prologue
    .line 271
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeFindNextTableNode(IIZ)I

    move-result v0

    return v0
.end method

.method native nativeGetAllAnchorSpan(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method native nativeGetAnchorRect(ILandroid/graphics/Rect;Ljava/lang/String;)I
.end method

.method native nativeGetAnchorSpanRect(ILandroid/graphics/Rect;Ljava/lang/String;)I
.end method

.method native nativeGetBackColor(I)Ljava/lang/String;
.end method

.method public nativeGetBodyNode(ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "pointer"
    .parameter "contentBound"

    .prologue
    .line 96
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    return v0
.end method

.method native nativeGetBoldState(I)I
.end method

.method native nativeGetCursorWordRect(ILandroid/graphics/Rect;)V
.end method

.method native nativeGetFontSize(I)I
.end method

.method native nativeGetForeColor(I)Ljava/lang/String;
.end method

.method native nativeGetGDInputBoxRect(ILandroid/graphics/Rect;)I
.end method

.method native nativeGetHeaderRect(ILandroid/graphics/Rect;)I
.end method

.method native nativeGetHtml(IIIII)Ljava/lang/String;
.end method

.method native nativeGetItalicState(I)I
.end method

.method native nativeGetPureReaderContents(ILjava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method native nativeGetRectOf(ILandroid/graphics/Rect;I)V
.end method

.method native nativeGetStrikethroughState(I)I
.end method

.method native nativeGetUnderlineState(I)I
.end method

.method native nativeGetVSbound(ILandroid/graphics/Rect;)I
.end method

.method native nativeGetWordRange(IIILandroid/graphics/Point;)V
.end method

.method native nativeInsertHtmlToTheEnd(ILjava/lang/String;)V
.end method

.method native nativegetImageNodeRect(II)Landroid/graphics/Rect;
.end method

.method rescanSpellings()V
    .locals 4

    .prologue
    const/16 v3, 0x233

    .line 1062
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1063
    .local v0, m:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1065
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x232

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 1066
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v3}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 1067
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 1068
    return-void
.end method

.method public saveImage(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "path"
    .parameter "getExtension"

    .prologue
    .line 1403
    iget v1, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTCWebCoreImpl;->nativeSaveImage(IIILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selectParagraphText(IILandroid/graphics/Rect;)Ljava/lang/String;
    .locals 1
    .parameter "startNodePtr"
    .parameter "endNodePtr"
    .parameter "scope"

    .prologue
    .line 1440
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeSelectParagraphText(IIILandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBodyNode(I)V
    .locals 2
    .parameter "pointer"

    .prologue
    .line 110
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodeRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBodyNodeImpl(IILandroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkit/HTCWebCoreImpl;->bodyNodePtr:I

    .line 111
    return-void
.end method

.method public setCopiedStyleText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1207
    iput-object p1, p0, Landroid/webkit/HTCWebCoreImpl;->mCopiedStyleText:Ljava/lang/String;

    return-void
.end method

.method public setEditable(Z)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 966
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 967
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 968
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 969
    iget-object v1, p0, Landroid/webkit/HTCWebCoreImpl;->mWebCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 970
    return-void

    .line 968
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIgnorePictureAfterFirstLayout(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1279
    iput-boolean p1, p0, Landroid/webkit/HTCWebCoreImpl;->ignorePictureAfterFirstLayout:Z

    .line 1280
    return-void
.end method

.method public setImageAttr(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "pointer"

    .prologue
    .line 1550
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/webkit/HTCWebCoreImpl;->nativeSetImageAttr(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1551
    return-void
.end method

.method public setInterruptDraw(Z)V
    .locals 0
    .parameter "bSignal"

    .prologue
    .line 1327
    return-void
.end method

.method public setSkiaFontCacheSize(J)V
    .locals 1
    .parameter "lCacheSize_Byte"

    .prologue
    .line 1427
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSetSkiaFontCacheSize(IJ)V

    .line 1428
    return-void
.end method

.method public setSkipClipboardChang(Z)V
    .locals 0
    .parameter "skip"

    .prologue
    .line 1211
    iput-boolean p1, p0, Landroid/webkit/HTCWebCoreImpl;->mSkipClipboardChang:Z

    return-void
.end method

.method public smartTouchUp(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1391
    iget v0, p0, Landroid/webkit/HTCWebCoreImpl;->mCoreNativeClass:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeSmartTouchUp(III)I

    move-result v0

    return v0
.end method

.method transferMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 385
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->isEditMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->handleMessage(Landroid/os/Message;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->handleOtherMsg(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public trimMemory()V
    .locals 0

    .prologue
    .line 1569
    return-void
.end method
