.class Lcom/htc/videowidget/videoDMC/DMCFgm$7;
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
    .line 3961
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$7;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

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

    .line 3965
    const-string v3, "cookie"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3966
    .local v0, iCookie:I
    const-string v3, "media"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3967
    .local v2, sFilePath:Ljava/lang/String;
    const-string v3, "position"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v1, v3

    .line 3968
    .local v1, iPosition:I
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAReceiverStop: onReceive(), CurrenType  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$7;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$7;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

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

    .line 3970
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAReceiverStop: onReceive(), Cookie      = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAReceiverStop: onReceive(), File Path   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    const-string v3, "DMCFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAReceiverStop: onReceive(), Postition   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    if-ne v0, v7, :cond_0

    .line 3976
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverStop: onReceive(), Intent\'s Cookie is InValid!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    :goto_0
    return-void

    .line 3979
    :cond_0
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$7;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6900(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 3981
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3983
    :cond_1
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverStop: onReceive(), Intent\'s FilePath is NULL or Blank. Do nothing!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3993
    :cond_2
    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$7;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const-string v4, "DLNAReceiverStop"

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->stopUpdatePositionTask(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2500(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)V

    goto :goto_0

    .line 3998
    :cond_3
    const-string v3, "DMCFgm"

    const-string v4, "DLNAReceiverStop: onReceive(), Cookie from Other APP. Do nothing!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
