.class Lcom/htc/videowidget/videoDMC/DMCFgm$6;
.super Landroid/content/BroadcastReceiver;
.source "DMCFgm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoDMC/DMCFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 3865
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 3869
    const-string v3, "cookie"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3870
    .local v0, iCookie:I
    const-string v3, "media"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3871
    .local v1, sFilePath:Ljava/lang/String;
    const-string v3, "renderer_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3873
    .local v2, sRendererID:Ljava/lang/String;
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAReceiverDestroy: onReceive(), CurrenType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v6

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->getCurrentTypeString(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3500(Lcom/htc/videowidget/videoDMC/DMCFgm;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAReceiverDestroy: onReceive(), Cookie     = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAReceiverDestroy: onReceive(), File Path  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAReceiverDestroy: onReceive(), RendererID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    if-ne v0, v7, :cond_0

    .line 3881
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), Intent\'s Cookie is InValid!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    :goto_0
    return-void

    .line 3884
    :cond_0
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6900(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v3

    if-ne v0, v3, :cond_a

    .line 3886
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3888
    :cond_1
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), Intent\'s RendererID is NULL or Blank. Do nothing!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3897
    :cond_2
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), removeDLNAPref() to remove playing video filePath"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3898
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCUtil;->removeDLNAPref(Landroid/content/Context;)V

    .line 3914
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3000(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3916
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3918
    :cond_4
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), Intent\'s FilePath is NULL or Blank. Do nothing!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3923
    :cond_5
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3925
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), Meet from Watch, Request closeDMC()."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->closeDMC()V

    goto/16 :goto_0

    .line 3929
    :cond_6
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3931
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), Meet from Normal files, Request closeDMC()."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->closeDMC()V

    goto/16 :goto_0

    .line 3935
    :cond_7
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3937
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), Meet from DMS files, Request closeDMC()."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$6;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->closeDMC()V

    goto/16 :goto_0

    .line 3942
    :cond_8
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), FilePath didn\'t meet. Do nothing!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3947
    :cond_9
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), Intent\'s RendererID didn\'t meet the Current RendererID. Do nothing!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3954
    :cond_a
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverDestroy: onReceive(), Cookie from Other APP. Do nothing!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
