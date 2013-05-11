.class Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
.super Landroid/os/Handler;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreSettingHandler"
.end annotation


# static fields
.field public static final MSG_RESTORE:I = 0x0

.field public static final MSG_SAVE:I = 0x1


# instance fields
.field private mListener:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/PenMenu;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3980
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    .line 3981
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3982
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 3985
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3986
    .local v0, type:I
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 3987
    const-string v1, "PenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResotreSettingHandler - msg.what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3990
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 3991
    const-string v1, "PenMenu"

    const-string v2, "ResotreSettingHandler - PenMenu has already been destroyed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    :cond_1
    :goto_0
    return-void

    .line 3995
    :cond_2
    if-nez v0, :cond_4

    .line 3996
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->restoreGlobalState()V
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2200(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 3997
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->reloadPenData()V
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2300(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 3999
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->mListener:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    if-eqz v1, :cond_3

    .line 4000
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->mListener:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->onRestoreFinish(I)V

    .line 4002
    :cond_3
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 4003
    const-string v1, "PenMenu"

    const-string v2, "ResotreSettingHandler - Restore Setting finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4006
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4007
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->savePens()V

    .line 4008
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #calls: Lcom/htc/painting/penmenu/PenMenu;->saveGlobalState()V
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2400(Lcom/htc/painting/penmenu/PenMenu;)V

    .line 4009
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 4010
    const-string v1, "PenMenu"

    const-string v2, "ResotreSettingHandler - Save Setting finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendRestoreSettingRequest(J)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    const/4 v2, 0x0

    .line 4016
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2508(Lcom/htc/painting/penmenu/PenMenu;)I

    .line 4017
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendEmptyMessage(I)Z

    .line 4018
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4019
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 4020
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingToken:I
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2500(Lcom/htc/painting/penmenu/PenMenu;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4021
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4022
    return-void
.end method

.method public sendSaveSettingRequest(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 4025
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4026
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4027
    iget-object v1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mRestoreSettingHandler:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;
    invoke-static {v1}, Lcom/htc/painting/penmenu/PenMenu;->access$2600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4028
    return-void
.end method

.method public setListener(Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3977
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingHandler;->mListener:Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;

    .line 3978
    return-void
.end method
