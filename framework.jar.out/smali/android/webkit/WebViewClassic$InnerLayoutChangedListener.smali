.class Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerLayoutChangedListener"
.end annotation


# instance fields
.field curLayoutBound:Landroid/graphics/Rect;

.field oldLayoutBound:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter

    .prologue
    .line 11599
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11600
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->oldLayoutBound:Landroid/graphics/Rect;

    .line 11601
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->curLayoutBound:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11599
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 11604
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->curLayoutBound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getRight()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 11610
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->oldLayoutBound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->curLayoutBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11611
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->oldLayoutBound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->curLayoutBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11612
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InnerLayoutChangedListener;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->updateSelectionPopup()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$10700(Landroid/webkit/WebViewClassic;)V

    .line 11614
    :cond_0
    return-void
.end method
