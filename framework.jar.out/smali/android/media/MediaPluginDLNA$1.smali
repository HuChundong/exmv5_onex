.class Landroid/media/MediaPluginDLNA$1;
.super Ljava/lang/Object;
.source "MediaPluginDLNA.java"

# interfaces
.implements Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-static {}, Landroid/media/MediaPluginDLNA;->access$100()Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 175
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceConnected => mDLNAManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    new-instance v1, Landroid/media/MediaPluginDLNA$ControllerListener;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {v1, v2, v3}, Landroid/media/MediaPluginDLNA$ControllerListener;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    #setter for: Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$202(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$ControllerListener;)Landroid/media/MediaPluginDLNA$ControllerListener;

    .line 180
    invoke-static {}, Landroid/media/MediaPluginDLNA;->access$100()Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$200(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$ControllerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setControllerStatusListener(Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;)I

    .line 181
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    new-instance v1, Landroid/media/MediaPluginDLNA$RendererListener;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {v1, v2, v3}, Landroid/media/MediaPluginDLNA$RendererListener;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    #setter for: Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$402(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$RendererListener;)Landroid/media/MediaPluginDLNA$RendererListener;

    .line 182
    invoke-static {}, Landroid/media/MediaPluginDLNA;->access$100()Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$400(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$RendererListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererStatusListener(Landroid/media/medialinkhd/HtcDLNARendererStatusListener;)I

    .line 183
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$600(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    #setter for: Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Landroid/media/MediaPluginDLNA;->access$602(Landroid/media/MediaPluginDLNA;Ljava/util/Timer;)Ljava/util/Timer;

    .line 185
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$600(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {v1, v2, v3}, Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xc350

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 187
    :cond_2
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "invoke setRendererAsMediaLinkHD()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Landroid/media/MediaPluginDLNA;->access$100()Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$800(Landroid/media/MediaPluginDLNA;)Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    move-result-object v1

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$1;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v0}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v0

    const/16 v1, 0x2080

    const/16 v2, 0x2082

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto/16 :goto_0
.end method

.method public onServiceConnectionError(ILjava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "errorReason"

    .prologue
    .line 200
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceConnectionError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 195
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "DLNAServiceStatusListener::onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method
