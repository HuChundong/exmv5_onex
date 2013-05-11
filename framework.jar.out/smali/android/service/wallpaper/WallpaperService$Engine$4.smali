.class Landroid/service/wallpaper/WallpaperService$Engine$4;
.super Lcom/android/internal/view/BaseIWindow;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final COMMAND_WALLPAPER_JANK:Ljava/lang/String; = "android.wallpaper.jank"


# instance fields
.field private EGL_SWAP_DELAY_DIS:I

.field private EGL_SWAP_DELAY_EN:I

.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 1
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    .line 339
    const v0, 0xff00

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->EGL_SWAP_DELAY_EN:I

    .line 340
    const v0, 0xfe00

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->EGL_SWAP_DELAY_DIS:I

    return-void
.end method


# virtual methods
.method public EGLSwapEnWithDelay(I)I
    .locals 1
    .parameter "delay"

    .prologue
    .line 344
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->EGL_SWAP_DELAY_EN:I

    or-int/2addr v0, p1

    return v0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 310
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x271a

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 315
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 311
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 8
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    const/4 v7, 0x1

    .line 350
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v4, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 352
    :try_start_0
    const-string v3, "android.wallpaper.stop.render"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "WallpaperService"

    const-string v5, "Dispatch wallpaper COMMAND_STOP_RENDER"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mRosieOff:Z

    .line 356
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x4e2a

    invoke-virtual {v3, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 357
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 396
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    monitor-exit v4

    .line 397
    return-void

    .line 359
    :cond_2
    const-string v3, "android.wallpaper.resume.render"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 361
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_3

    const-string v3, "WallpaperService"

    const-string v5, "Dispatch wallpaper COMMAND_RESUME_RENDER"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mRosieOff:Z

    .line 363
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x4e2a

    invoke-virtual {v3, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 364
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 396
    .end local v2           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 367
    :cond_4
    :try_start_1
    const-string v3, "android.wallpaper.jank"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 369
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_5

    const-string v3, "WallpaperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatch wallpaper JANK "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_5
    if-ne p2, v7, :cond_6

    .line 371
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 372
    .local v1, mEgl:Ljavax/microedition/khronos/egl/EGL10;
    if-eqz v1, :cond_1

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Landroid/service/wallpaper/WallpaperService$Engine$4;->EGLSwapEnWithDelay(I)I

    move-result v3

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    goto :goto_0

    .line 373
    .end local v1           #mEgl:Ljavax/microedition/khronos/egl/EGL10;
    :cond_6
    if-nez p2, :cond_1

    .line 374
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 375
    .restart local v1       #mEgl:Ljavax/microedition/khronos/egl/EGL10;
    if-eqz v1, :cond_1

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->EGL_SWAP_DELAY_DIS:I

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    goto :goto_0

    .line 383
    .end local v1           #mEgl:Ljavax/microedition/khronos/egl/EGL10;
    :cond_7
    new-instance v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    .line 384
    .local v0, cmd:Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iput-object p1, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    .line 385
    iput p2, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    .line 386
    iput p3, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    .line 387
    iput p4, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    .line 388
    iput-object p5, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    .line 389
    iput-boolean p6, v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    .line 390
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x2729

    invoke-virtual {v3, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 391
    .restart local v2       #msg:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "sync"

    .prologue
    .line 320
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 322
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 323
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 324
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 325
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 326
    if-eqz p5, :cond_0

    .line 327
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 329
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    if-nez v1, :cond_1

    .line 330
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 331
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x2724

    invoke-virtual {v1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 334
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit v2

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "contentInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 301
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x272e

    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 303
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$4;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 304
    return-void

    .line 301
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
