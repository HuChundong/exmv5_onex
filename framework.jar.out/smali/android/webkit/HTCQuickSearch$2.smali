.class Landroid/webkit/HTCQuickSearch$2;
.super Landroid/os/Handler;
.source "HTCQuickSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTCQuickSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTCQuickSearch;


# direct methods
.method constructor <init>(Landroid/webkit/HTCQuickSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 289
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 294
    :pswitch_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 297
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 300
    const/16 v0, 0x14

    .line 304
    .local v0, UPPER_BOND:I
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebViewClassic;

    move-result-object v5

    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "window"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    .line 309
    .local v1, nDisplayHeight:I
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    if-ge v4, v5, :cond_2

    .line 310
    iget v4, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v1, 0x2

    if-le v4, v5, :cond_0

    .line 311
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, -0x14

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_1

    iget v4, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, -0x14

    sub-int v2, v4, v5

    .local v2, ny:I
    :goto_1
    goto :goto_0

    .end local v2           #ny:I
    :cond_1
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_1

    .line 318
    :cond_2
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, -0x14

    if-le v4, v5, :cond_3

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x14

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebViewClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v4

    sub-int/2addr v4, v1

    goto/16 :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
