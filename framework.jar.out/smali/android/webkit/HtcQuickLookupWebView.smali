.class public Landroid/webkit/HtcQuickLookupWebView;
.super Landroid/webkit/WebView;
.source "HtcQuickLookupWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mHorizontalOffset:I

.field private mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

.field private mVerticalOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/HtcQuickLookupWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    .line 40
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HtcQuickLookupWebView;->setDrawingCacheBackgroundColor(I)V

    .line 42
    invoke-virtual {p0, v2}, Landroid/webkit/HtcQuickLookupWebView;->setScrollbarFadingEnabled(Z)V

    .line 43
    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/webkit/HtcQuickLookupWebView;->setScrollBarStyle(I)V

    .line 44
    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 45
    invoke-virtual {p0, v1}, Landroid/webkit/HtcQuickLookupWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 49
    iput v1, p0, Landroid/webkit/HtcQuickLookupWebView;->mVerticalOffset:I

    .line 50
    iput v1, p0, Landroid/webkit/HtcQuickLookupWebView;->mHorizontalOffset:I

    .line 51
    return-void
.end method


# virtual methods
.method public emulateShiftHeld()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/webkit/WebView;->emulateShiftHeld()V

    .line 127
    return-void
.end method

.method public getHTCWebCore()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .local v0, r:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getTableRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 97
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 98
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 99
    :cond_0
    return-object v0
.end method

.method protected getTitleHeight()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected onWebViewLayoutChanged(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    invoke-interface {v0, p1, p2}, Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;->onWebViewLayoutChanged(II)V

    .line 117
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 76
    iput p1, p0, Landroid/webkit/HtcQuickLookupWebView;->mHorizontalOffset:I

    .line 77
    return-void
.end method

.method public setTextReflowProp(F)V
    .locals 0
    .parameter "prop"

    .prologue
    .line 82
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 71
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mVerticalOffset:I

    .line 72
    return-void
.end method

.method public setWebViewLayoutChangedClient(Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;)V
    .locals 0
    .parameter "changedClient"

    .prologue
    .line 111
    iput-object p1, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    .line 112
    return-void
.end method
