.class Lcom/htc/videowidget/videoDMC/DMCFgm$8;
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
    .line 4005
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, -0x1

    .line 4009
    const-string v6, "cookie"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4010
    .local v3, iCookie:I
    const-string v6, "media"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4011
    .local v4, sFilePath:Ljava/lang/String;
    const-string v6, "renderer_id"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4013
    .local v5, sRendererID:Ljava/lang/String;
    const-string v6, "DMCFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DLNAReceiverCompleted: onReceive(), CurrenType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v9, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v9}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v9

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->getCurrentTypeString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3500(Lcom/htc/videowidget/videoDMC/DMCFgm;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    const-string v6, "DMCFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DLNAReceiverCompleted: onReceive(), Cookie     = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    const-string v6, "DMCFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DLNAReceiverCompleted: onReceive(), File Path  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    const-string v6, "DMCFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DLNAReceiverCompleted: onReceive(), RendererID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    if-ne v3, v10, :cond_1

    .line 4020
    const-string v6, "DMCFgm"

    const-string v7, "DLNAReceiverCompleted: onReceive(), Intent\'s Cookie is InValid!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    :cond_0
    :goto_0
    return-void

    .line 4023
    :cond_1
    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miPreviousDlnaSessionCookie:I
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6900(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v6

    if-ne v3, v6, :cond_b

    .line 4025
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4027
    :cond_2
    const-string v6, "DMCFgm"

    const-string v7, "DLNAReceiverCompleted: onReceive(), Intent\'s RendererID is NULL or Blank. Do nothing!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4032
    :cond_3
    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msRendererID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3000(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msNewRendererID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4034
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4036
    :cond_5
    const-string v6, "DMCFgm"

    const-string v7, "DLNAReceiverCompleted: onReceive(), Intent\'s FilePath is NULL or Blank. Do nothing!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4041
    :cond_6
    const/4 v0, 0x0

    .line 4043
    .local v0, bCallBackCompleted:Z
    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDlnaPushMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3600(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4045
    const-string v6, "DMCFgm"

    const-string v7, "DLNAReceiverCompleted: onReceive(), Meet from Watch, CallBack Play Completed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    const/4 v0, 0x1

    .line 4061
    :goto_1
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4063
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4064
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v2, 0x1

    .line 4065
    .local v2, code:I
    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mEventListener:Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$2100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;

    move-result-object v6

    invoke-interface {v6, v2, v1}, Lcom/htc/videowidget/videoDMC/IHtcDMCAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 4066
    const-string v6, "DMCFgm"

    const-string v7, "Send EVENT BACK = EVENT_COMPLETION"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4048
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #code:I
    :cond_7
    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3800(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4050
    const-string v6, "DMCFgm"

    const-string v7, "DLNAReceiverCompleted: onReceive(), Meet from Normal files, CallBack Play Completed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    const/4 v0, 0x1

    goto :goto_1

    .line 4053
    :cond_8
    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->miCurrentType:I
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3400(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$8;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msContentID:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$4100(Lcom/htc/videowidget/videoDMC/DMCFgm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4055
    const-string v6, "DMCFgm"

    const-string v7, "DLNAReceiverCompleted: onReceive(), Meet from DMS files, CallBack Play Completed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    const/4 v0, 0x1

    goto :goto_1

    .line 4059
    :cond_9
    const-string v6, "DMCFgm"

    const-string v7, "DLNAReceiverCompleted: onReceive(), FilePath didn\'t meet. Do nothing!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4072
    .end local v0           #bCallBackCompleted:Z
    :cond_a
    const-string v6, "DMCFgm"

    const-string v7, "DLNAReceiverCompleted: onReceive(), Intent\'s RendererID didn\'t meet. Do nothing!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4079
    :cond_b
    const-string v6, "DMCFgm"

    const-string v7, "DLNAReceiverCompleted: onReceive(), Cookie from Other APP. Do nothing!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
