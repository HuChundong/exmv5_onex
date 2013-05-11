.class Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;
.super Ljava/lang/Object;
.source "EncodingList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xc9

    .line 99
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    new-instance v2, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mEncodingAdapter:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;

    .line 101
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->isDestroyed:Z
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$100(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    #getter for: Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mLoadingDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 113
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;->this$0:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no dialog can be removed at onPrepared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
