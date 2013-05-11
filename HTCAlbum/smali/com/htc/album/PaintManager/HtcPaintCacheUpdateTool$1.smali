.class Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$1;
.super Landroid/os/Handler;
.source "HtcPaintCacheUpdateTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;


# direct methods
.method constructor <init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$1;->this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$1;->this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    invoke-virtual {v0, p1}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onMessageHanlder(Landroid/os/Message;)V

    .line 159
    return-void
.end method
