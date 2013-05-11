.class Landroid/webkit/WebViewClassic$10;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->performKikinSearchOnChangedSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 5987
    iput-object p1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5991
    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v0

    .line 5992
    .local v0, selection:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectionTracker:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$2400(Landroid/webkit/WebViewClassic;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectionTracker:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$2400(Landroid/webkit/WebViewClassic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5996
    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    sget-object v2, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->doKikinSearch(Lcom/kikin/selection/Selection$Mode;)V

    .line 5997
    iget-object v1, p0, Landroid/webkit/WebViewClassic$10;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1, v0}, Landroid/webkit/WebViewClassic;->updateSelectionInCAB(Ljava/lang/String;)V

    .line 5999
    :cond_0
    return-void
.end method
