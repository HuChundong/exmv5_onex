.class Lcom/htc/server/WfdService$2;
.super Lcom/htc/wfdservice/IWfdService$Stub;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdService;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    invoke-direct {p0}, Lcom/htc/wfdservice/IWfdService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 260
    const-string v0, "WfdService"

    const-string v1, "attemptToConfigure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToConfigure(Lcom/htc/service/DongleInfo;)V

    .line 263
    :cond_0
    return-void
.end method

.method public attemptToReConfigure(Lcom/htc/service/DongleInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 268
    const-string v0, "WfdService"

    const-string v1, "attemptToReConfigure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    .line 271
    :cond_0
    return-void
.end method

.method public attemptToRequestDongleToAPM(Lcom/htc/service/DongleInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 252
    const-string v0, "WfdService"

    const-string v1, "attemptToRequestDongleToAPM()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->attemptToRequestDongleToAPM(Lcom/htc/service/DongleInfo;)V

    .line 255
    :cond_0
    return-void
.end method

.method public attemptToUnlock(Lcom/htc/service/DongleInfo;[B)V
    .locals 1
    .parameter "info"
    .parameter "pattern"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/server/WfdStateMachine;->attemptToUnlock(Lcom/htc/service/DongleInfo;[B)V

    .line 321
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 276
    const-string v0, "WfdService"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->cancel()V

    .line 279
    :cond_0
    return-void
.end method

.method public finishService()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->finishService()V

    .line 293
    :cond_0
    return-void
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->getNotificationState()I

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public registerCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 202
    const-string v0, "WfdService"

    const-string v1, "registerCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->addCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V

    .line 205
    :cond_0
    return-void
.end method

.method public retryConfigure()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->retryConfigure()V

    .line 314
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 228
    const-string v0, "WfdService"

    const-string v1, "setMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->setMode(I)V

    .line 231
    :cond_0
    return-void
.end method

.method public setWhdmiForeground(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->setWhdmiForeground(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public startScanDongles(Z)V
    .locals 2
    .parameter "singleChannelScan"

    .prologue
    .line 236
    const-string v0, "WfdService"

    const-string v1, "startScanDongles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->startScanDongles(Z)V

    .line 239
    :cond_0
    return-void
.end method

.method public stopScanDongles()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "WfdService"

    const-string v1, "stopScanDongles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->stopScanDongles()V

    .line 247
    :cond_0
    return-void
.end method

.method public switchOnOffMirrorMode(Z)V
    .locals 1
    .parameter "autoEnable"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->switchOnOffMirrorMode(Z)V

    .line 300
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 210
    const-string v0, "WfdService"

    const-string v1, "unregisterCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/server/WfdStateMachine;->removeCallback(Lcom/htc/wfdservice/IWfdServiceCallback;)V

    .line 213
    :cond_0
    return-void
.end method

.method public wpsTimeout()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/server/WfdService$2;->this$0:Lcom/htc/server/WfdService;

    #getter for: Lcom/htc/server/WfdService;->mWfdStateMachine:Lcom/htc/server/WfdStateMachine;
    invoke-static {v0}, Lcom/htc/server/WfdService;->access$000(Lcom/htc/server/WfdService;)Lcom/htc/server/WfdStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/server/WfdStateMachine;->wpsTimeout()V

    .line 286
    :cond_0
    return-void
.end method
