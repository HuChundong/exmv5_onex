.class Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;
.super Landroid/os/Handler;
.source "HtcPaintMergeTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/PaintManager/HtcPaintMergeTool;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;


# direct methods
.method constructor <init>(Lcom/htc/album/PaintManager/HtcPaintMergeTool;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;->this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintMergeTool$1;->this$0:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-virtual {v0, p1}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->onMessageHanlder(Landroid/os/Message;)V

    .line 222
    return-void
.end method
