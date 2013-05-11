.class Lcom/android/server/wm/WindowManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 390
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 391
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v11

    .line 393
    :try_start_0
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, -0x1

    #setter for: Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I
    invoke-static {v10, v12}, Lcom/android/server/wm/WindowManagerService;->access$202(Lcom/android/server/wm/WindowManagerService;I)I

    .line 394
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    invoke-static {v10, v12}, Lcom/android/server/wm/WindowManagerService;->access$102(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 395
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, action:Ljava/lang/String;
    const-string v10, "com.htc.intent.action.SET_ANIM_PROPERTIES"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 401
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v10, :cond_0

    .line 402
    const-string v10, "WindowManager"

    const-string v11, "SET_ANIM_PROPERTIES"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    const-string v10, "AnimationDuration"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 405
    .local v1, animationDuration:I
    const-string v10, "AnimationRate"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 406
    .local v2, animationRate:I
    const-string v10, "RotateAngle"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 407
    .local v6, rotateAngle:I
    const-string v10, "ShadowColor"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 408
    .local v7, shadowColor:I
    const-string v10, "ShadowTransparency"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 409
    .local v9, shadowTransparency:I
    const-string v10, "PositionX"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    .line 410
    .local v3, positionX:F
    const-string v10, "PositionY"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    .line 411
    .local v4, positionY:F
    const-string v10, "PositionZ"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    .line 412
    .local v5, positionZ:F
    const-string v10, "ShadowEnable"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 413
    .local v8, shadowEnable:Z
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v10, :cond_1

    .line 414
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set animationDuration= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set animationRate= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set rotateAngle= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set shadowColor= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set shadowTransparency= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set positionX= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set positionY= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set positionZ= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set shadowEnable= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    const-string v10, "sys.anim.duration"

    int-to-long v11, v1

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v10, "sys.anim.rate"

    int-to-long v11, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v10, "sys.anim.rotate.angle"

    int-to-long v11, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v10, "sys.anim.shadow.color"

    int-to-long v11, v7

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v10, "sys.anim.shadow.transparency"

    int-to-long v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v10, "sys.anim.shadow.position_x"

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v10, "sys.anim.shadow.position_y"

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v10, "sys.anim.shadow.position_z"

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v10, "sys.anim.shadow.enable"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mHtcAnimMgr:Lcom/android/server/wm/HtcAnimationManager;

    invoke-interface {v10, v1}, Lcom/android/server/wm/HtcAnimationManager;->setAnimationDuration(I)V

    .line 434
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mHtcAnimMgr:Lcom/android/server/wm/HtcAnimationManager;

    invoke-interface {v10, v2}, Lcom/android/server/wm/HtcAnimationManager;->setAnimationRate(I)V

    .line 438
    .end local v1           #animationDuration:I
    .end local v2           #animationRate:I
    .end local v3           #positionX:F
    .end local v4           #positionY:F
    .end local v5           #positionZ:F
    .end local v6           #rotateAngle:I
    .end local v7           #shadowColor:I
    .end local v8           #shadowEnable:Z
    .end local v9           #shadowTransparency:I
    :cond_2
    return-void

    .line 395
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10
.end method
