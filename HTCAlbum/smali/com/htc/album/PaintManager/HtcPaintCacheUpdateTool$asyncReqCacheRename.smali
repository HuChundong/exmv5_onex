.class Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;
.super Landroid/os/AsyncTask;
.source "HtcPaintCacheUpdateTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqCacheRename"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;


# direct methods
.method private constructor <init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;->this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;-><init>(Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;->this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->doInBackgroundCacheRename()V

    .line 88
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;->this$0:Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;

    const/16 v1, 0x3038

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 101
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 96
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintCacheUpdateTool$asyncReqCacheRename;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
