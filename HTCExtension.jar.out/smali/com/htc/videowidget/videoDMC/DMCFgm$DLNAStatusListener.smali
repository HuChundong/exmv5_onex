.class Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;
.super Ljava/lang/Object;
.source "DMCFgm.java"

# interfaces
.implements Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoDMC/DMCFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 3580
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoDMC/DMCFgm;Lcom/htc/videowidget/videoDMC/DMCFgm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3580
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;-><init>(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3587
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3589
    const-string v0, "DMCFgm"

    const-string v1, "[DLNAServiceStatusListener]: onServiceConnected(), Do Nothing! mDLNAManager is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    :cond_0
    :goto_0
    return-void

    .line 3593
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v1

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3594
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DLNAServiceStatusListener]: onServiceConnected(), mDLNAManager.getState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v3, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3100(Lcom/htc/videowidget/videoDMC/DMCFgm;)I

    move-result v3

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->getStateName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3200(Lcom/htc/videowidget/videoDMC/DMCFgm;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    const-string v0, "DMCFgm"

    const-string v1, "[DLNAServiceStatusListener]: onServiceConnected(), mbDLNAServiceConnected = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v1, 0x1

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAServiceConnected:Z
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6502(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3599
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAManagerHasReleased:Z
    invoke-static {v0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6602(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3608
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsReadyForSet:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6700(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsSetOrTheSame:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3610
    :cond_2
    const-string v0, "DMCFgm"

    const-string v1, "[DLNAServiceStatusListener]: onServiceConnected(), handleRendererID()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsReadyForSet:Z
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6700(Lcom/htc/videowidget/videoDMC/DMCFgm;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3614
    const-string v0, "DMCFgm"

    const-string v1, "[DLNAServiceStatusListener]: onServiceConnected(), DataSource is Ready and will be Set!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDataSourceIsReadyForSet:Z
    invoke-static {v0, v4}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6702(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3623
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #calls: Lcom/htc/videowidget/videoDMC/DMCFgm;->handleRendererID()V
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6800(Lcom/htc/videowidget/videoDMC/DMCFgm;)V

    goto :goto_0
.end method

.method public onServiceConnectionError(ILjava/lang/String;)V
    .locals 4
    .parameter "errorCode"
    .parameter "errorReason"

    .prologue
    const/16 v3, 0x11

    .line 3646
    const-string v0, "DMCFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnectionError(errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  errorReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mDLNAManager state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mErrorCode:I
    invoke-static {v0, p1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3648
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->msErrorReason:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6202(Lcom/htc/videowidget/videoDMC/DMCFgm;Ljava/lang/String;)Ljava/lang/String;

    .line 3650
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->removeMessages(I)V

    .line 3651
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mUIHandler:Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$1300(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoDMC/DMCFgm$UIHandler;->sendEmptyMessage(I)Z

    .line 3652
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 3632
    const-string v0, "DMCFgm"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    const/4 v1, 0x0

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mbDLNAServiceConnected:Z
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$6502(Lcom/htc/videowidget/videoDMC/DMCFgm;Z)Z

    .line 3635
    const-string v0, "DMCFgm"

    const-string v1, "onServiceDisconnected(), mbDLNAServiceConnected = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v0}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3638
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/DMCFgm$DLNAStatusListener;->this$0:Lcom/htc/videowidget/videoDMC/DMCFgm;

    #getter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManager:Lcom/htc/medialinkhd/HtcDLNAServiceManager;
    invoke-static {v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$900(Lcom/htc/videowidget/videoDMC/DMCFgm;)Lcom/htc/medialinkhd/HtcDLNAServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v1

    #setter for: Lcom/htc/videowidget/videoDMC/DMCFgm;->mDLNAManagerState:I
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCFgm;->access$3102(Lcom/htc/videowidget/videoDMC/DMCFgm;I)I

    .line 3639
    :cond_0
    return-void
.end method
