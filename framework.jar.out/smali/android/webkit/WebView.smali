.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$TitleBarDelegate;,
        Landroid/webkit/WebView$PrivateAccess;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$FindListener;,
        Landroid/webkit/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webview_proxy"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"


# instance fields
.field private mProvider:Landroid/webkit/WebViewProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 453
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 462
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 463
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 474
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p4, javaScriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 511
    if-nez p1, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 516
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 517
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p4, p5}, Landroid/webkit/WebViewProvider;->init(Ljava/util/Map;Z)V

    .line 518
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    .line 487
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 488
    return-void
.end method

.method public static SetWebViewTabEffectListener(Landroid/webkit/HTCWebCore$OnWebViewTabEffectListener;)V
    .locals 0
    .parameter "Listener"

    .prologue
    .line 2348
    invoke-static {p0}, Landroid/webkit/WebView;->SetWebViewTabEffectListener(Landroid/webkit/HTCWebCore$OnWebViewTabEffectListener;)V

    .line 2349
    return-void
.end method

.method static synthetic access$001(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-super {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$1001(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$101(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;IIIIIIIIZ)Z
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
    .line 270
    invoke-virtual/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 270
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 270
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    iput p1, p0, Landroid/view/View;->mScrollX:I

    return p1
.end method

.method static synthetic access$1902(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    iput p1, p0, Landroid/view/View;->mScrollY:I

    return p1
.end method

.method static synthetic access$2001(Landroid/webkit/WebView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$201(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 270
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method static synthetic access$301(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$401(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Landroid/webkit/WebView;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$801(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private static checkThread()V
    .locals 3

    .prologue
    .line 1915
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1916
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All WebView methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Future versions of WebView may not support use on other threads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1921
    .local v0, throwable:Ljava/lang/Throwable;
    const-string/jumbo v1, "webview_proxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    .line 1924
    :cond_0
    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 679
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    .line 680
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 666
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 667
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    .line 668
    return-void
.end method

.method private ensureProviderCreated()V
    .locals 2

    .prologue
    .line 1899
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1900
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    if-nez v0, :cond_0

    .line 1903
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView$PrivateAccess;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$PrivateAccess;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, p0, v1}, Landroid/webkit/WebViewFactoryProvider;->createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    .line 1905
    :cond_0
    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 1413
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1414
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getFactory()Landroid/webkit/WebViewFactoryProvider;
    .locals 2

    .prologue
    .line 1910
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1911
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1910
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1613
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1614
    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1613
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setHostFullScreenMode(Z)V
    .locals 0
    .parameter "bHostFullScreenMode"

    .prologue
    .line 2346
    return-void
.end method

.method public static setQuickSelectionButtonFlag(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "wv"
    .parameter "flag"

    .prologue
    .line 2290
    return-void
.end method

.method public static setSmartZoomScale(FII)V
    .locals 0
    .parameter "defaultTextRatio"
    .parameter "minScale"
    .parameter "maxScale"

    .prologue
    .line 2281
    return-void
.end method

.method public static setTabEffectType_Transition(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 2201
    return-void
.end method


# virtual methods
.method public EndAnimationZoomOut()V
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->EndAnimationZoomOut()V

    .line 2318
    return-void
.end method

.method public InitTabEffectPivot(FFFF)V
    .locals 0
    .parameter "fpx"
    .parameter "fpy"
    .parameter "flx"
    .parameter "fly"

    .prologue
    .line 2373
    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 2250
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->SetOwnerActivityContext(Landroid/content/Context;)V

    .line 2251
    return-void
.end method

.method public StartAnimationZoomOut(ZF)V
    .locals 1
    .parameter "bNeedCallBack"
    .parameter "fOriginalScale"

    .prologue
    .line 2314
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/HtcWebViewAPI;->StartAnimationZoomOut(ZF)V

    .line 2315
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "name"

    .prologue
    .line 1576
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1577
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1578
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 923
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 924
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .parameter "steps"

    .prologue
    .line 961
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 962
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 941
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 942
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 1

    .prologue
    .line 1701
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1702
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 1711
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1712
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 1027
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1028
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method protected checkVerticalBouncingCallback(I)Z
    .locals 1
    .parameter "distance"

    .prologue
    .line 2092
    const/4 v0, 0x1

    return v0
.end method

.method public clearCache(Z)V
    .locals 1
    .parameter "includeDiskFiles"

    .prologue
    .line 1273
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1274
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->clearCache(Z)V

    .line 1275
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 1282
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1283
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearFormData()V

    .line 1284
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 1290
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1291
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearHistory()V

    .line 1292
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 1422
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1423
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearMatches()V

    .line 1424
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 1299
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1300
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearSslPreferences()V

    .line 1301
    return-void
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 1013
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1014
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearView()V

    .line 1015
    return-void
.end method

.method public clearWebCoreMemoryCache()V
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->clearWebCoreMemoryCache()V

    .line 2342
    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeScroll()V

    .line 1998
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1987
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 1312
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1313
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public debugDump()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1740
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1741
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->debugDump()V

    .line 1742
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 641
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 642
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->destroy()V

    .line 643
    return-void
.end method

.method public disableMultiTouch()V
    .locals 1

    .prologue
    .line 2214
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->disableMultiTouch()V

    .line 2215
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2158
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public doNotResetTextSelectionRectangle()V
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->doNotResetTextSelectionRectangle()V

    .line 1757
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1499
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->documentAsText(Landroid/os/Message;)V

    .line 1500
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1434
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1435
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    .line 1436
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1634
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1635
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->emulateShiftHeld()V

    .line 1636
    return-void
.end method

.method public enableHTCZoomMethod(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2204
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->enableHTCZoomMethod(Z)V

    .line 2205
    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->enableMultiTouch()V

    .line 2210
    return-void
.end method

.method public enableMultiTouchZoomOutToTabMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2196
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->enableMultiTouchZoomOutToTabMode(Z)V

    .line 2197
    return-void
.end method

.method public enableSmartZoom()V
    .locals 1

    .prologue
    .line 2192
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->enableSmartZoom()V

    .line 2193
    return-void
.end method

.method public enableTBS(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2226
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->enableTBS(Z)V

    .line 2227
    return-void
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1491
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->externalRepresentation(Landroid/os/Message;)V

    .line 1492
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .parameter "find"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1355
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1356
    const-string v0, "findAll blocks UI: prefer findAllAsync"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "find"

    .prologue
    .line 1370
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1371
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    .line 1372
    return-void
.end method

.method public findNext(Z)V
    .locals 1
    .parameter "forward"

    .prologue
    .line 1340
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1341
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findNext(Z)V

    .line 1342
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 1673
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1674
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->flingScroll(II)V

    .line 1675
    return-void
.end method

.method public fnPausePlayGifAnimation()V
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->fnPausePlayGifAnimation()V

    .line 2321
    return-void
.end method

.method public fnResumePlayGifAnimation()V
    .locals 1

    .prologue
    .line 2323
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->fnResumePlayGifAnimation()V

    .line 2324
    return-void
.end method

.method public freeCacheBitmap()Z
    .locals 1

    .prologue
    .line 2222
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->freeCacheBitmap()Z

    move-result v0

    return v0
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 1262
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1263
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->freeMemory()V

    .line 1264
    return-void
.end method

.method public getCacheDrawBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->getCacheDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 578
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 1194
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1195
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1163
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1164
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 1085
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1086
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 631
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 632
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsCacheDrawBitmap()Z
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->getIsCacheDrawBitmap()Z

    move-result v0

    return v0
.end method

.method public getLayerTreeAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getLayerTreeAsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1141
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1142
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1184
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1185
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getProgress()I

    move-result v0

    return v0
.end method

.method public getPureReaderContents(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2298
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->getPureReaderContents(Landroid/os/Message;)V

    .line 2299
    return-void
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1037
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1038
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 1600
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1601
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1152
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1153
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1127
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1128
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 566
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 567
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebViewProvider()Landroid/webkit/WebViewProvider;
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1691
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1692
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 931
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 932
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goBack()V

    .line 933
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 974
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 975
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->goBackOrForward(I)V

    .line 976
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 949
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 950
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goForward()V

    .line 951
    return-void
.end method

.method protected htcComputeMaxScrollY()I
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->htcComputeMaxScrollY()I

    move-result v0

    return v0
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    .line 2301
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->insertHtmlToTheEnd(Ljava/lang/String;)V

    .line 2302
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1062
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1063
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->invokeZoomPicker()V

    .line 1064
    return-void
.end method

.method protected isEditable()Z
    .locals 1

    .prologue
    .line 2376
    invoke-virtual {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 982
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 983
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->isSelectingText()Z

    move-result v0

    return v0
.end method

.method public isSlowNetwork()Z
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->isSlowNetwork()Z

    move-result v0

    return v0
.end method

.method public isWebCoreBlocked()Z
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->isWebCoreBlocked()Z

    move-result v0

    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->isWebCoreBusy()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 841
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 842
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 870
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 871
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/webkit/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 786
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 787
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    .local p2, additionalHttpHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 777
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 778
    return-void
.end method

.method public loadUrl(ZLjava/lang/String;)V
    .locals 1
    .parameter "shouldHideSip"
    .parameter "url"

    .prologue
    .line 796
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 797
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->loadUrl(ZLjava/lang/String;)V

    .line 798
    return-void
.end method

.method public nativeGetRssFeed()Ljava/util/ArrayList;
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
    .line 2270
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->nativeGetRssFeed()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public nativeHasRssFeed()Z
    .locals 1

    .prologue
    .line 2266
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->nativeHasRssFeed()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1935
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 1936
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    .line 1937
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1645
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1654
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 2112
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2113
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 2117
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1941
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    .line 1942
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 1943
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2102
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 2103
    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2082
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 2083
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2134
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2135
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2136
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2012
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1664
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2002
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onHyperlinkClicked()V
    .locals 0

    .prologue
    .line 2387
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2068
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2069
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2070
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2071
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2061
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2062
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2063
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2064
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2022
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2032
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2027
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2169
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 2170
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onMeasure(II)V

    .line 2171
    return-void
.end method

.method protected onNewPictureAfterFirstLayout()V
    .locals 0

    .prologue
    .line 2386
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 2087
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    .line 2088
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1235
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1236
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onPause()V

    .line 1237
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1243
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1244
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onResume()V

    .line 1245
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 2152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 2153
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    .line 2154
    return-void
.end method

.method protected onSelectTextEnd()V
    .locals 0

    .prologue
    .line 2311
    return-void
.end method

.method protected onSelectTextStart()V
    .locals 0

    .prologue
    .line 2310
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 2146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 2147
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    .line 2148
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2007
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2017
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 2122
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2123
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2124
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 2128
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    .line 2129
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 2130
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2096
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    .line 2097
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    .line 2098
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 546
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 547
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 557
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .parameter "bottom"

    .prologue
    .line 1004
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1005
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .parameter "top"

    .prologue
    .line 993
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 994
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public pauseFPDoPlay()V
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->pauseFPDoPlay()V

    .line 2327
    return-void
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 1214
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1215
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->pauseTimers()V

    .line 1216
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 2075
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 809
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 810
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    .line 811
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1623
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1624
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 913
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 914
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->reload()V

    .line 915
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1588
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1589
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1590
    return-void
.end method

.method public removeMessagePowerSavePolicy()V
    .locals 1

    .prologue
    .line 2356
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->removeMessagePowerSavePolicy()V

    .line 2357
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 2175
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2163
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1
    .parameter "hrefMsg"

    .prologue
    .line 1103
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1104
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1105
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1115
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1116
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    .line 1117
    return-void
.end method

.method public resetCacheDrawBitmap()V
    .locals 1

    .prologue
    .line 2284
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->resetCacheDrawBitmap()V

    .line 2285
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .parameter "b"
    .parameter "src"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 740
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 741
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public restoreSelect()V
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->restoreSelect()V

    .line 1766
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .parameter "inState"

    .prologue
    .line 760
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 761
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public resumeFPDoPlay()V
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/HtcWebViewAPI;->resumeFPDoPlay()V

    .line 2330
    return-void
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 1223
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1224
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->resumeTimers()V

    .line 1225
    return-void
.end method

.method public safeDestroy()V
    .locals 1

    .prologue
    .line 652
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 653
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->safeDestroy()V

    .line 654
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 602
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 603
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .parameter "b"
    .parameter "dest"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 724
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 725
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .parameter "outState"

    .prologue
    .line 709
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 710
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 880
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 881
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 1
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 897
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 898
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 899
    return-void
.end method

.method public sendMessagePowerSavePolicy(Z)V
    .locals 1
    .parameter "bImmediate"

    .prologue
    .line 2352
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->sendMessagePowerSavePolicy(Z)V

    .line 2353
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 2180
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    .line 2181
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 585
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 586
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 587
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1457
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1458
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1459
    return-void
.end method

.method public setDragAfterActionDown(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2274
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setDragAfterActionDown(Z)V

    .line 2275
    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1324
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1325
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 1326
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2141
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 526
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 527
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setHorizontalScrollbarOverlay(Z)V

    .line 528
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 617
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 618
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public setInPerf(Z)V
    .locals 1
    .parameter "bInPerf"

    .prologue
    .line 2360
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setInPerf(Z)V

    .line 2361
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .parameter "scaleInPercent"

    .prologue
    .line 1052
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1053
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setInitialScale(I)V

    .line 1054
    return-void
.end method

.method public setIsCacheDrawBitmap(Z)V
    .locals 1
    .parameter "bSet"

    .prologue
    .line 2234
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setIsCacheDrawBitmap(Z)V

    .line 2235
    return-void
.end method

.method public setIsLoading(Z)V
    .locals 1
    .parameter "bIsLoading"

    .prologue
    .line 2262
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setIsLoading(Z)V

    .line 2263
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 2185
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2186
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2187
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1947
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1948
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1
    .parameter "setMap"

    .prologue
    .line 1667
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1668
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    .line 1669
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 1534
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    check-cast v0, Landroid/webkit/WebViewClassic;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebViewClassic;->setMockDeviceOrientation(ZDZDZD)V

    .line 1536
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .parameter "networkUp"

    .prologue
    .line 690
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 691
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setNetworkAvailable(Z)V

    .line 692
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1956
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 1957
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    .line 1958
    return-void
.end method

.method public setOverrideProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "proxyProperties"

    .prologue
    .line 1540
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1541
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    instance-of v0, v0, Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-static {p1}, Landroid/webkit/WebViewClassic;->setOverrideProxy(Landroid/net/ProxyProperties;)V

    .line 1544
    :cond_0
    return-void
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1482
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1483
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1484
    return-void
.end method

.method public setPureZoomMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2304
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setPureZoomMode(Z)V

    .line 2305
    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 1
    .parameter "bSet"

    .prologue
    .line 2246
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setScaleWithoutCheck(Z)V

    .line 2247
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 1966
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    .line 1967
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1968
    return-void
.end method

.method public setSlowNetwork(Z)V
    .locals 1
    .parameter "slowNetwork"

    .prologue
    .line 2364
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setSlowNetwork(Z)V

    .line 2365
    return-void
.end method

.method public setTouchInterval(I)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 1517
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setTouchInterval(I)V

    .line 1518
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 1
    .parameter "slop"

    .prologue
    .line 2230
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setTouchSlop(I)V

    .line 2231
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 536
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 537
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setVerticalScrollbarOverlay(Z)V

    .line 538
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 1469
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1470
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1471
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 1445
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1446
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1447
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1
    .parameter "fLower"

    .prologue
    .line 2242
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setZoomLowerBound(F)V

    .line 2243
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1
    .parameter "fUpper"

    .prologue
    .line 2238
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHtcWebViewAPIIntf()Landroid/webkit/HtcWebViewAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/HtcWebViewAPI;->setZoomUpperBound(F)V

    .line 2239
    return-void
.end method

.method protected shiftAfterZoom(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2350
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2056
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "text"
    .parameter "showIme"

    .prologue
    .line 1386
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1387
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 2382
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 905
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 906
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->stopLoading()V

    .line 907
    return-void
.end method

.method super_setOverScrollMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1961
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 1962
    return-void
.end method

.method public useMockDeviceOrientation()V
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->setUseMockDeviceOrientation()V

    .line 1526
    return-void
.end method

.method public wasLastDrawSuccessful()Z
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    check-cast v0, Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->wasLastDrawSuccessful()Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 1721
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1722
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 1731
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1732
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomOut()Z

    move-result v0

    return v0
.end method
