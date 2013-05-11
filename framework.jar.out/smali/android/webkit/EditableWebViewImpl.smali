.class Landroid/webkit/EditableWebViewImpl;
.super Ljava/lang/Object;
.source "EditableWebViewImpl.java"

# interfaces
.implements Landroid/webkit/EditableWebViewProvider;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MSG_CAPTURE:I = 0xa

.field private static final MSG_END_CURSOR_MODE:I = 0x1

.field private static final MSG_HIDE_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x66

.field private static final MSG_PAUSE_SELECT_UI:I = 0x2ebb

.field private static final MSG_RESET_SESSION:I = 0x138a

.field private static final MSG_RESUME_SELECT_UI:I = 0x2ebc

.field private static final MSG_SCHEDULE_NEXT_BATCH_SPELL_CHECK:I = 0x1389

.field private static final MSG_SHOW_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x65

.field private static final MSG_TRIGGER_CONTENT_CHANGED:I = 0x64

.field private static final MSG_UPDATE_SUGGESTION_WINDOW_POSITION:I = 0x138b

.field private static final UPDATE_WEB_CONTNET_MSG_ID:I = 0x138c


# instance fields
.field captureAfterDraw:Z

.field captureMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field isNoteAP:Z

.field private mEditableWebView:Landroid/webkit/EditableWebView;

.field private mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

.field private mInitialized:Z

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

.field public mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

.field private mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

.field private mOverScrollThreshold:I

.field mPenHighlightListener:Landroid/view/View$OnTouchListener;

.field mPenSelectionListener:Landroid/view/View$OnTouchListener;

.field private mPrivateHandler:Landroid/os/Handler;

.field private mText:Landroid/text/Editable;

.field mUpdateContentListener:Landroid/webkit/WebViewCore$UpdateContentListener;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private mWebViewProvider:Landroid/webkit/WebViewProvider;

.field private m_bEnableEditable:Z

.field m_bRemoveSelectRangeDuringUpdateContent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/webkit/EditableWebViewImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 5
    .parameter "editableWebView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    .line 52
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewProvider:Landroid/webkit/WebViewProvider;

    .line 53
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 54
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mText:Landroid/text/Editable;

    .line 55
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    .line 56
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 57
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mInput:Landroid/text/method/TextKeyListener;

    .line 59
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->m_bEnableEditable:Z

    .line 60
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->mInitialized:Z

    .line 61
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->isNoteAP:Z

    .line 181
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 204
    new-instance v1, Landroid/webkit/EditableWebViewImpl$1;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl$1;-><init>(Landroid/webkit/EditableWebViewImpl;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    .line 317
    new-instance v1, Landroid/webkit/EditableWebViewImpl$2;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl$2;-><init>(Landroid/webkit/EditableWebViewImpl;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    .line 327
    new-instance v1, Landroid/webkit/EditableWebViewImpl$3;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl$3;-><init>(Landroid/webkit/EditableWebViewImpl;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    .line 901
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    .line 916
    new-instance v1, Landroid/webkit/EditableWebViewImpl$4;

    invoke-direct {v1, p0}, Landroid/webkit/EditableWebViewImpl$4;-><init>(Landroid/webkit/EditableWebViewImpl;)V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mUpdateContentListener:Landroid/webkit/WebViewCore$UpdateContentListener;

    .line 954
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    .line 955
    iput-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    .line 956
    iput v3, p0, Landroid/webkit/EditableWebViewImpl;->mOverScrollThreshold:I

    .line 1025
    iput-boolean v3, p0, Landroid/webkit/EditableWebViewImpl;->captureAfterDraw:Z

    .line 1026
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->captureMessages:Ljava/util/Vector;

    .line 66
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    .line 67
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewProvider:Landroid/webkit/WebViewProvider;

    .line 68
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-static {v1}, Landroid/webkit/WebViewClassic;->fromWebView(Landroid/webkit/WebView;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 69
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 70
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/HTCWebCoreImpl;->fromWebViewCore(Landroid/webkit/WebViewCore;)Landroid/webkit/HTCWebCoreImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    .line 74
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mUpdateContentListener:Landroid/webkit/WebViewCore$UpdateContentListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->setUpdateContentListener(Landroid/webkit/WebViewCore$UpdateContentListener;)V

    .line 76
    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebViewImpl;->setEditable(Z)V

    .line 83
    iput-boolean v4, p0, Landroid/webkit/EditableWebViewImpl;->mInitialized:Z

    .line 85
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.notes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/webkit/EditableWebViewImpl;->isNoteAP:Z

    .line 88
    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl;->getKeyListener()Landroid/text/method/KeyListener;

    .line 93
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 94
    .local v0, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettingsClassic;->setSyntheticLinksEnabled(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/EditableWebViewImpl;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/EditableWebViewImpl;)Landroid/webkit/HTCWebCoreImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/EditableWebViewImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "x"

    .prologue
    .line 339
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static fromEditableWebView(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebViewImpl;
    .locals 1
    .parameter "view"

    .prologue
    .line 115
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getEditableWebViewProvider()Landroid/webkit/EditableWebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/EditableWebViewImpl;

    goto :goto_0
.end method


# virtual methods
.method public GetImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "strImagePath"
    .parameter "nImageNode"
    .parameter "rectImage"

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public SetBackColor(IZ)V
    .locals 7
    .parameter "color"
    .parameter "enableBackColor"

    .prologue
    const/16 v5, 0xff

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, StrColor:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 804
    .local v4, nR:I
    if-gez v4, :cond_0

    const/4 v4, 0x0

    .line 805
    :cond_0
    if-le v4, v5, :cond_1

    const/16 v4, 0xff

    .line 807
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 808
    .local v3, nG:I
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 809
    :cond_2
    if-le v3, v5, :cond_3

    const/16 v3, 0xff

    .line 811
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 812
    .local v2, nB:I
    if-gez v2, :cond_4

    const/4 v2, 0x0

    .line 813
    :cond_4
    if-le v2, v5, :cond_5

    const/16 v2, 0xff

    .line 815
    :cond_5
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 816
    .local v1, nA:I
    if-gez v1, :cond_6

    const/4 v1, 0x0

    .line 817
    :cond_6
    if-le v1, v5, :cond_7

    const/16 v1, 0xff

    .line 819
    :cond_7
    if-nez p2, :cond_8

    .line 820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rgba("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    :goto_0
    iget-object v5, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x208

    invoke-virtual {v5, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 825
    return-void

    .line 822
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rgb("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public SetFontSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 884
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x209

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 885
    return-void
.end method

.method public SetForeColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/16 v4, 0xff

    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, StrColor:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 761
    .local v3, nR:I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 762
    :cond_0
    if-le v3, v4, :cond_1

    const/16 v3, 0xff

    .line 764
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 765
    .local v2, nG:I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 766
    :cond_2
    if-le v2, v4, :cond_3

    const/16 v2, 0xff

    .line 768
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 769
    .local v1, nB:I
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 770
    :cond_4
    if-le v1, v4, :cond_5

    const/16 v1, 0xff

    .line 772
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rgb("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x207

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 774
    return-void
.end method

.method public SetImageAttr(III)V
    .locals 4
    .parameter "pointer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 732
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v0

    .line 733
    .local v0, fCurrentScale:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 734
    int-to-float v1, p2

    div-float/2addr v1, v0

    float-to-int p2, v1

    .line 735
    int-to-float v1, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 738
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x20b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 739
    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 350
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->SetOwnerActivityContext(Landroid/content/Context;)V

    .line 351
    return-void
.end method

.method public alignCenter()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x203

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 651
    return-void
.end method

.method public alignJustified()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x204

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 656
    return-void
.end method

.method public alignLeft()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 661
    return-void
.end method

.method public alignRight()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x206

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 666
    return-void
.end method

.method public beginBatchEdit()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public cancelAnchorSpan()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x223

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 707
    return-void
.end method

.method public checkVerticalBouncingCallback(I)Z
    .locals 2
    .parameter "distance"

    .prologue
    .line 1181
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/EditableWebViewImpl;->mOverScrollThreshold:I

    if-le p1, v0, :cond_0

    .line 1182
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-interface {v0, v1, p1}, Landroid/webkit/EditableWebView$OnOverScrollListener;->onOverScrolled(Landroid/webkit/WebView;I)V

    .line 1183
    const/4 v0, 0x0

    .line 1185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public copy()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

.method public cut()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public deleteSurroundingText(IIII)V
    .locals 0
    .parameter "leftStart"
    .parameter "leftEnd"
    .parameter "rightStart"
    .parameter "rightEnd"

    .prologue
    .line 535
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->enableMultiTouch()V

    .line 367
    return-void
.end method

.method public enableOrientationCustomScale(FF)V
    .locals 0
    .parameter "portraitScale"
    .parameter "landscapeScale"

    .prologue
    .line 495
    return-void
.end method

.method public enableSpellCheckIfAvalible(Z)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 1323
    return-void
.end method

.method public endBatchEdit()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public exportHTML(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/EditableWebViewImpl;->exportHTML(Ljava/lang/String;Landroid/os/Message;)V

    .line 550
    return-void
.end method

.method public exportHTML(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "path"
    .parameter "callback"

    .prologue
    .line 554
    if-nez p2, :cond_0

    .line 555
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 561
    :goto_0
    return-void

    .line 558
    :cond_0
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fd

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public findContinuousBRFromEnd(ILandroid/os/Message;)V
    .locals 2
    .parameter "bottom"
    .parameter "callback"

    .prologue
    .line 583
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 584
    return-void
.end method

.method public getAllAnchorSpan()Ljava/util/ArrayList;
    .locals 2
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
    .line 1298
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetAllAnchorSpan(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3
    .parameter "id"

    .prologue
    .line 588
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 589
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0, p1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetAnchorRect(ILandroid/graphics/Rect;Ljava/lang/String;)I

    .line 591
    :cond_0
    return-object v0
.end method

.method public getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1
    .parameter "id"

    .prologue
    .line 1268
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1269
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0, p1}, Landroid/webkit/EditableWebViewImpl;->getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 1270
    return-object v0
.end method

.method public getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "id"

    .prologue
    .line 1259
    if-eqz p2, :cond_0

    const-string v0, "HTC_ANCHOR_SPAN_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_ANCHOR_SPAN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1261
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v0, :cond_1

    .line 1262
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/HTCWebCoreImpl;->nativeGetAnchorSpanRect(ILandroid/graphics/Rect;Ljava/lang/String;)I

    .line 1263
    :cond_1
    return-void
.end method

.method public getBackColor()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 829
    iget-object v8, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v8, v7}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBackColor(I)Ljava/lang/String;

    move-result-object v6

    .line 831
    .local v6, strRGBA:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string/jumbo v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 873
    :cond_1
    :goto_0
    return v7

    .line 833
    :cond_2
    const-string/jumbo v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_3

    .line 834
    const/4 v1, 0x5

    .local v1, start:I
    const/4 v0, 0x0

    .line 835
    .local v0, end:I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 836
    if-eq v0, v9, :cond_1

    .line 837
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 839
    .local v5, strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 840
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 841
    if-eq v0, v9, :cond_1

    .line 842
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 844
    .local v4, strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 845
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 846
    if-eq v0, v9, :cond_1

    .line 847
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, strB:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 850
    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 851
    if-eq v0, v9, :cond_1

    .line 852
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, strA:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto :goto_0

    .line 855
    .end local v0           #end:I
    .end local v1           #start:I
    .end local v2           #strA:Ljava/lang/String;
    .end local v3           #strB:Ljava/lang/String;
    .end local v4           #strG:Ljava/lang/String;
    .end local v5           #strR:Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_4

    .line 856
    const/4 v1, 0x4

    .restart local v1       #start:I
    const/4 v0, 0x0

    .line 857
    .restart local v0       #end:I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 858
    if-eq v0, v9, :cond_1

    .line 859
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 861
    .restart local v5       #strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 862
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 863
    if-eq v0, v9, :cond_1

    .line 864
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 866
    .restart local v4       #strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 867
    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 868
    if-eq v0, v9, :cond_1

    .line 869
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 871
    .restart local v3       #strB:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    goto/16 :goto_0

    .line 873
    .end local v0           #end:I
    .end local v1           #start:I
    .end local v3           #strB:Ljava/lang/String;
    .end local v4           #strG:Ljava/lang/String;
    .end local v5           #strR:Ljava/lang/String;
    :cond_4
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto/16 :goto_0
.end method

.method public getBoldState()I
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetBoldState(I)I

    move-result v0

    return v0
.end method

.method public getCaretRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1014
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mText:Landroid/text/Editable;

    return-object v0
.end method

.method public getEnableBackColor()Z
    .locals 1

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl;->getBackColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFontSize()I
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetFontSize(I)I

    move-result v0

    return v0
.end method

.method public getForeColor()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 778
    iget-object v7, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v7, v6}, Landroid/webkit/HTCWebCoreImpl;->nativeGetForeColor(I)Ljava/lang/String;

    move-result-object v5

    .line 780
    .local v5, strRGB:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string/jumbo v7, "rgb("

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    .line 797
    :cond_1
    :goto_0
    return v6

    .line 782
    :cond_2
    const/4 v1, 0x4

    .local v1, start:I
    const/4 v0, 0x0

    .line 783
    .local v0, end:I
    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 784
    if-eq v0, v8, :cond_1

    .line 785
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 788
    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 789
    if-eq v0, v8, :cond_1

    .line 790
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 793
    const-string v7, ")"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 794
    if-eq v0, v8, :cond_1

    .line 795
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, strB:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_0
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 544
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 545
    return-void
.end method

.method public getHighlightRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1020
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getImageNodeRect(I)Landroid/graphics/Rect;
    .locals 5
    .parameter "pointer"

    .prologue
    .line 743
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 745
    .local v0, rectImage:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Landroid/webkit/HTCWebCoreImpl;->nativegetImageNodeRect(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 748
    :cond_0
    sget-boolean v1, Landroid/webkit/EditableWebViewImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 749
    const-string v1, "EditableWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EditableWebView::getImageNodeRect] >> rectImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_1
    invoke-direct {p0, v0}, Landroid/webkit/EditableWebViewImpl;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 753
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 754
    return-object v0
.end method

.method public getItalicState()I
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetItalicState(I)I

    move-result v0

    return v0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 2

    .prologue
    .line 442
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mInput:Landroid/text/method/TextKeyListener;

    if-nez v1, :cond_0

    .line 443
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 444
    .local v0, cap:Landroid/text/method/TextKeyListener$Capitalize;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mInput:Landroid/text/method/TextKeyListener;

    .line 446
    .end local v0           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mInput:Landroid/text/method/TextKeyListener;

    return-object v1
.end method

.method public getOnImageSelectedListener()Landroid/webkit/EditableWebView$OnImageSelectedListener;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    return-object v0
.end method

.method public getPenHighlightListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getPenSelectionListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getRegionCapture(IIIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1083
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebViewImpl;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1089
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/EditableWebViewImpl;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"
    .parameter "bgColor"

    .prologue
    .line 1098
    move v7, p1

    .local v7, vl:I
    move v8, p2

    .line 1099
    .local v8, vt:I
    if-nez p5, :cond_1

    .line 1100
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p1}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result p1

    .line 1101
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result p2

    .line 1102
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p3}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result p3

    .line 1103
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result p4

    .line 1109
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    invoke-direct {v2, v9, v10, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1111
    .local v2, clip:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1112
    const/4 v6, 0x0

    .line 1151
    :cond_0
    :goto_1
    return-object v6

    .line 1105
    .end local v2           #clip:Landroid/graphics/Rect;
    :cond_1
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p1}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v7

    .line 1106
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9, p2}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v8

    goto :goto_0

    .line 1114
    .restart local v2       #clip:Landroid/graphics/Rect;
    :cond_2
    const/4 v5, 0x0

    .line 1115
    .local v5, needAlocate:Z
    move-object/from16 v6, p6

    .line 1117
    .local v6, ret:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1118
    :cond_3
    const/4 v5, 0x1

    .line 1119
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    invoke-static {p3, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1122
    :cond_4
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1123
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1125
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1127
    neg-int v9, v7

    int-to-float v9, v9

    neg-int v10, v8

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1130
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v9}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    iget-object v10, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v10}, Landroid/webkit/EditableWebView;->getScale()F

    move-result v10

    div-float v3, v9, v10

    .line 1131
    .local v3, defaulScale:F
    const/high16 v9, 0x3f80

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_5

    .line 1132
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {v1, v3, v3, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1134
    :cond_5
    sget-boolean v9, Landroid/webkit/EditableWebViewImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 1135
    const-string v9, "EditableWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[EditableWebView::getRegionCapture] >> l="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " t="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " w="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " h="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v11}, Landroid/webkit/EditableWebView;->getScale()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " density="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v11}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_6
    iget-object v9, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v9, v1}, Landroid/webkit/EditableWebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    if-nez v5, :cond_7

    .line 1142
    const/4 v6, 0x0

    .line 1151
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v3           #defaulScale:F
    :cond_7
    :goto_2
    if-nez v5, :cond_0

    move-object/from16 v6, p6

    goto/16 :goto_1

    .line 1144
    :catch_0
    move-exception v4

    .line 1145
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v9, "EditableWebView"

    const-string v10, ""

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1068
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebViewImpl;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"
    .parameter "bmp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1056
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebViewImpl;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCaptureByMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1037
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->captureAfterDraw:Z

    .line 1043
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto :goto_0
.end method

.method public getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    return-object v0
.end method

.method public getStrikethroughState()I
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetStrikethroughState(I)I

    move-result v0

    return v0
.end method

.method public getUnderlineState()I
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCoreImpl;->nativeGetUnderlineState(I)I

    move-result v0

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    return-object v0
.end method

.method public hideSingleTapQuickActions()V
    .locals 0

    .prologue
    .line 1317
    return-void
.end method

.method public insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 700
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 701
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x222

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 702
    return-void
.end method

.method public insertHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 570
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 571
    return-void
.end method

.method public insertHTMLString(Ljava/lang/String;)V
    .locals 2
    .parameter "html"

    .prologue
    .line 565
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fb

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 566
    return-void
.end method

.method public insertHtmlContainsAnchorSpan(Ljava/lang/String;)V
    .locals 3
    .parameter "html"

    .prologue
    const/4 v2, 0x0

    .line 713
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSelectLeftCaretHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSelectRightCaretHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 714
    const/16 v0, 0x12

    invoke-virtual {p0, v2, v0}, Landroid/webkit/EditableWebViewImpl;->setCaretPos(II)V

    .line 716
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x224

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 717
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebViewImpl;->updateContentFromMessage(I)V

    .line 718
    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 3
    .parameter "htmlString"

    .prologue
    .line 576
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 578
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x220

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 579
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 596
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/EditableWebView;->getImageInfoObj(Ljava/lang/String;II)Landroid/webkit/EditableWebView$ImageInfo;

    move-result-object v0

    .line 599
    .local v0, imageInfo:Landroid/webkit/EditableWebView$ImageInfo;
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSelectLeftCaretHeight()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSelectRightCaretHeight()I

    move-result v1

    if-nez v1, :cond_0

    .line 600
    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Landroid/webkit/EditableWebViewImpl;->setCaretPos(II)V

    .line 603
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x1fe

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 606
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->m_bEnableEditable:Z

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->super_onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 453
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->captureAfterDraw:Z

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->captureAfterDraw:Z

    .line 175
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 178
    :cond_0
    return-void
.end method

.method public onEditorAction(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 459
    return-void
.end method

.method public onEndSelect()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebViewImpl;->onEndSelect(Z)V

    .line 500
    return-void
.end method

.method public onEndSelect(Z)V
    .locals 3
    .parameter "removeSelection"

    .prologue
    .line 504
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, v2, :cond_0

    .line 505
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->syncSelectionCursors()V

    .line 506
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 507
    .local v0, selectionhandles:[I
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewClassic;->getSelectionHandles([I)V

    .line 508
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 509
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Landroid/webkit/EditableWebViewImpl;->setCaretPos(II)V

    .line 511
    .end local v0           #selectionhandles:[I
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1248
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 489
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 20
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
    .line 1195
    sget v2, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    sget v2, Landroid/webkit/WebViewClassic;->mOverscrollMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/EditableWebView;->super_overScrollBy(IIIIIIIIZ)Z

    move-result v2

    .line 1236
    :goto_0
    return v2

    .line 1199
    :cond_0
    add-int v16, p3, p1

    .line 1200
    .local v16, newScrollX:I
    add-int v17, p4, p2

    .line 1201
    .local v17, newScrollY:I
    if-gez v17, :cond_1

    sget-boolean v2, Landroid/webkit/WebViewClassic;->mTopOverScrollEnabled:Z

    if-eqz v2, :cond_2

    :cond_1
    move/from16 v0, v17

    move/from16 v1, p6

    if-le v0, v1, :cond_7

    sget-boolean v2, Landroid/webkit/WebViewClassic;->mBottomOverScrollEnabled:Z

    if-nez v2, :cond_7

    .line 1203
    :cond_2
    const/16 p8, 0x0

    .line 1208
    :cond_3
    :goto_1
    const/16 p7, 0x0

    .line 1211
    move/from16 v0, p7

    neg-int v15, v0

    .line 1212
    .local v15, left:I
    add-int v18, p7, p5

    .line 1213
    .local v18, right:I
    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v19, v0

    .line 1214
    .local v19, top:I
    add-int v12, p8, p6

    .line 1216
    .local v12, bottom:I
    const/4 v13, 0x0

    .line 1217
    .local v13, clampedX:Z
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 1218
    move/from16 v16, v18

    .line 1219
    const/4 v13, 0x1

    .line 1225
    :cond_4
    :goto_2
    const/4 v14, 0x0

    .line 1226
    .local v14, clampedY:Z
    move/from16 v0, v17

    if-le v0, v12, :cond_9

    .line 1227
    move/from16 v17, v12

    .line 1228
    const/4 v14, 0x1

    .line 1234
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1, v13, v14}, Landroid/webkit/WebViewClassic;->onOverScrolled(IIZZ)V

    .line 1236
    if-nez v13, :cond_6

    if-eqz v14, :cond_a

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 1205
    .end local v12           #bottom:I
    .end local v13           #clampedX:Z
    .end local v14           #clampedY:Z
    .end local v15           #left:I
    .end local v18           #right:I
    .end local v19           #top:I
    :cond_7
    if-lez v17, :cond_3

    move/from16 v0, v17

    move/from16 v1, p6

    if-ge v0, v1, :cond_3

    .line 1206
    const/4 v2, 0x0

    sput-boolean v2, Landroid/webkit/WebViewClassic;->mBottomOverScrollEnabled:Z

    sput-boolean v2, Landroid/webkit/WebViewClassic;->mTopOverScrollEnabled:Z

    goto :goto_1

    .line 1220
    .restart local v12       #bottom:I
    .restart local v13       #clampedX:Z
    .restart local v15       #left:I
    .restart local v18       #right:I
    .restart local v19       #top:I
    :cond_8
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 1221
    move/from16 v16, v15

    .line 1222
    const/4 v13, 0x1

    goto :goto_2

    .line 1229
    .restart local v14       #clampedY:Z
    :cond_9
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 1230
    move/from16 v17, v19

    .line 1231
    const/4 v14, 0x1

    goto :goto_3

    .line 1236
    :cond_a
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pasteLatestContentFromClipboard()V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public pastePlainText()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method public pasteWithStyle()V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method public pauseTextReflow(I)V
    .locals 0
    .parameter "nTextWrapWidth"

    .prologue
    .line 389
    return-void
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 895
    const/4 v0, 0x0

    return v0
.end method

.method public resumeTextReflow()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V
    .locals 2
    .parameter "allow"
    .parameter "threshold"
    .parameter "l"

    .prologue
    .line 1163
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    .line 1165
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setOverScrollMode(I)V

    .line 1166
    iput-object p3, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    .line 1167
    iput p2, p0, Landroid/webkit/EditableWebViewImpl;->mOverScrollThreshold:I

    .line 1175
    :goto_0
    return-void

    .line 1170
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->setOverScrollMode(I)V

    .line 1171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    .line 1172
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/EditableWebViewImpl;->mOverScrollThreshold:I

    goto :goto_0
.end method

.method public setCaretPos(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 1003
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->isNoteAP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1008
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v0, p1, p2, v3}, Landroid/webkit/HTCWebCoreImpl;->doSelection(IIZ)V

    .line 1009
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public setEditable(Z)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 413
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->m_bEnableEditable:Z

    if-ne v0, p1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    if-eqz v0, :cond_0

    .line 417
    iput-boolean p1, p0, Landroid/webkit/EditableWebViewImpl;->m_bEnableEditable:Z

    .line 418
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCoreImpl;->setEditable(Z)V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 965
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    .line 967
    return-void
.end method

.method public setOnImageSelectedListener(Landroid/webkit/EditableWebView$OnImageSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 905
    iput-object p1, p0, Landroid/webkit/EditableWebViewImpl;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    .line 906
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1305
    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 1
    .parameter "bSet"

    .prologue
    .line 355
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setScaleWithoutCheck(Z)V

    .line 356
    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 0
    .parameter "willDraw"

    .prologue
    .line 362
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .parameter "fLower"

    .prologue
    .line 376
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setZoomLowerBound(F)V

    .line 377
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .parameter "fUpper"

    .prologue
    .line 371
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setZoomUpperBound(F)V

    .line 372
    return-void
.end method

.method public showSingleTapQuickActions()V
    .locals 0

    .prologue
    .line 1311
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 611
    return-void
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 621
    return-void
.end method

.method public toggleStrikethrough()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 626
    return-void
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 616
    return-void
.end method

.method public transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 4
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    .line 984
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 985
    .local v0, target:Landroid/graphics/Point;
    if-eqz p2, :cond_0

    .line 986
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 991
    :goto_0
    return-object v0

    .line 988
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 6
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    .line 971
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 972
    .local v0, target:Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 973
    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 979
    :goto_0
    return-object v0

    .line 976
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebViewImpl;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected updateContentFromMessage(I)V
    .locals 3
    .parameter "pointer"

    .prologue
    .line 936
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p0}, Landroid/webkit/EditableWebViewImpl;->onEndSelect()V

    .line 939
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->m_bRemoveSelectRangeDuringUpdateContent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebViewImpl;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 950
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    if-eqz v0, :cond_2

    .line 951
    iget-object v0, p0, Landroid/webkit/EditableWebViewImpl;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    iget-object v1, p0, Landroid/webkit/EditableWebViewImpl;->mEditableWebView:Landroid/webkit/EditableWebView;

    iget-object v2, p0, Landroid/webkit/EditableWebViewImpl;->mHTCWebCoreImpl:Landroid/webkit/HTCWebCoreImpl;

    iget-object v2, v2, Landroid/webkit/HTCWebCoreImpl;->mEventHub:Landroid/webkit/HTCWebCoreImpl$EditEventHub;

    iget v2, v2, Landroid/webkit/HTCWebCoreImpl$EditEventHub;->mLastContentChangedMsg:I

    invoke-interface {v0, v1, v2}, Landroid/webkit/EditableWebView$OnContentChangedListener;->onContentChanged(Landroid/webkit/WebView;I)V

    .line 952
    :cond_2
    return-void
.end method
