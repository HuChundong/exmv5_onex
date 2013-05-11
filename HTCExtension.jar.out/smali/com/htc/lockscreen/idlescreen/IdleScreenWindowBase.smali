.class public Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
.source "IdleScreenWindowBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$1;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyHandler;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "IdleScreenWindowBase"

.field private static final WHAT_UI_DISABLE_ANIMATION_TIMEOUT:I = 0x2711


# instance fields
.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowAnime:I

.field mCurWindowFlags:I

.field mDetached:Z

.field private mDrawingAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIsCreating:Z

.field mLongside:I

.field mSession:Landroid/view/IWindowSession;

.field mShortside:I

.field mShowAnimation:Z

.field mSurfaceCreated:Z

.field mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

.field mType:I

.field private mUIHandler:Landroid/os/Handler;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindiowShow:I

.field mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

.field private mWindowVisibility:I

.field mWindowVisible:Z


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 3
    .parameter "engine"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;-><init>()V

    .line 31
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    .line 33
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    .line 34
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    .line 37
    iput v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowShow:I

    .line 49
    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLongside:I

    .line 50
    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShortside:I

    .line 52
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisible:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    .line 54
    iput-boolean v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShowAnimation:Z

    .line 55
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    .line 56
    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowAnime:I

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mVisibleInsets:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mConfiguration:Landroid/content/res/Configuration;

    .line 62
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyHandler;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$1;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mUIHandler:Landroid/os/Handler;

    .line 64
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    return v0
.end method

.method private getWindowFormat()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedFormat()I

    move-result v0

    return v0
.end method


# virtual methods
.method public attach()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    .line 74
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    .line 75
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 76
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    .line 84
    invoke-virtual {p0, v1, v1, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->updateSurface(ZZZ)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->reportSurfaceDestroyed()V

    .line 86
    return-void
.end method

.method public disableAnimation()V
    .locals 5

    .prologue
    const/16 v4, 0x2711

    const/4 v3, 0x0

    .line 610
    iput-boolean v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShowAnimation:Z

    .line 611
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 613
    invoke-virtual {p0, v3, v3, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->updateSurface(ZZZ)V

    .line 615
    return-void
.end method

.method protected doDestroy()V
    .locals 3

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    const-string v0, "IdleScreenWindowBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window and destroying surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    .line 103
    :cond_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishDrawing()V
    .locals 3

    .prologue
    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    return-object v0
.end method

.method public getWindow()Lcom/android/internal/view/BaseIWindow;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method reportSurfaceDestroyed()V
    .locals 8

    .prologue
    .line 377
    iget-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-eqz v5, :cond_1

    .line 378
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    .line 380
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v6, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 381
    :try_start_0
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/view/SurfaceHolder$Callback;

    .line 383
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 384
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 386
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 385
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 384
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 388
    .restart local v0       #arr$:[Landroid/view/SurfaceHolder$Callback;
    .restart local v2       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    const-string v5, "IdleScreenWindowBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSurfaceDestroyed("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v6, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v5, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 392
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method protected setFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->setFormat(I)V

    .line 559
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->setSizeFromLayout()V

    .line 576
    return-void
.end method

.method public setWindowSize(II)V
    .locals 1
    .parameter "width"
    .parameter "heigt"

    .prologue
    .line 600
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLongside:I

    if-gtz v0, :cond_0

    .line 601
    if-le p1, p2, :cond_2

    move v0, p1

    :goto_0
    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLongside:I

    .line 603
    :cond_0
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShortside:I

    if-gtz v0, :cond_1

    .line 604
    if-ge p1, p2, :cond_3

    .end local p1
    :goto_1
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShortside:I

    .line 606
    :cond_1
    return-void

    .restart local p1
    :cond_2
    move v0, p2

    .line 601
    goto :goto_0

    :cond_3
    move p1, p2

    .line 604
    goto :goto_1
.end method

.method public updateSurface(ZZZ)V
    .locals 42
    .parameter "forceRelayout"
    .parameter "forceReport"
    .parameter "redrawNeeded"

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const-string v2, "IdleScreenWindowBase"

    const-string v3, "updateSurface~ destroyed"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    const/16 v32, 0x0

    .line 137
    .local v32, myWidth:I
    const/16 v31, 0x0

    .line 138
    .local v31, myHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->getWindowConfig()Landroid/content/res/Configuration;

    move-result-object v21

    .line 139
    .local v21, config:Landroid/content/res/Configuration;
    const/16 v28, 0x0

    .line 140
    .local v28, inPortrait:Z
    if-eqz v21, :cond_1

    .line 141
    move-object/from16 v0, v21

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    const/16 v28, 0x1

    .line 143
    :cond_1
    :goto_0
    if-eqz v28, :cond_d

    .line 144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShortside:I

    move/from16 v32, v0

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLongside:I

    move/from16 v31, v0

    .line 151
    :goto_1
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ myWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " myHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " inPortrait:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-gtz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedWidth()I

    move-result v32

    .line 156
    :cond_2
    if-gtz v32, :cond_3

    const/16 v32, -0x1

    .line 157
    :cond_3
    if-gtz v31, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedHeight()I

    move-result v31

    .line 158
    :cond_4
    if-gtz v31, :cond_5

    const/16 v31, -0x1

    .line 159
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->getWindowFormat()I

    move-result v30

    .line 161
    .local v30, myFormat:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-nez v2, :cond_e

    const/16 v22, 0x1

    .line 162
    .local v22, creating:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-nez v2, :cond_f

    const/16 v36, 0x1

    .line 163
    .local v36, surfaceCreating:Z
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move/from16 v0, v30

    if-eq v2, v0, :cond_10

    const/16 v25, 0x1

    .line 164
    .local v25, formatChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    move/from16 v0, v32

    if-ne v2, v0, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    move/from16 v0, v31

    if-eq v2, v0, :cond_11

    :cond_6
    const/16 v35, 0x1

    .line 165
    .local v35, sizeChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedType()I

    move-result v3

    if-eq v2, v3, :cond_12

    const/16 v37, 0x1

    .line 167
    .local v37, typeChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    move/from16 v38, v0

    .line 168
    .local v38, visibility:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    if-gtz v2, :cond_7

    .line 169
    const/16 v38, 0x8

    .line 171
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    move/from16 v0, v38

    if-eq v0, v2, :cond_13

    const/16 v39, 0x1

    .line 173
    .local v39, visibleChanged:Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eqz v2, :cond_14

    .line 174
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    const/high16 v3, 0x10

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 180
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    if-eq v2, v3, :cond_15

    const/16 v24, 0x1

    .line 181
    .local v24, flagsChanged:Z
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowShow:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    if-eq v2, v3, :cond_16

    const/16 v41, 0x1

    .line 184
    .local v41, windowShowChanged:Z
    :goto_a
    const/16 v16, 0x0

    .line 185
    .local v16, animation:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShowAnimation:Z

    if-eqz v2, :cond_8

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowAnimation()I

    move-result v16

    .line 189
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowAnime:I

    move/from16 v0, v16

    if-eq v2, v0, :cond_17

    const/16 v17, 0x1

    .line 190
    .local v17, animationChanged:Z
    :goto_b
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ creating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " surfaceCreating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " formatChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sizeChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " typeChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flagsChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visibleChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowShowChanged ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " redrawNeeded ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " animationChanged ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-nez p1, :cond_9

    if-nez v22, :cond_9

    if-nez v36, :cond_9

    if-nez v25, :cond_9

    if-nez v35, :cond_9

    if-nez v37, :cond_9

    if-nez v24, :cond_9

    if-nez v39, :cond_9

    if-nez v41, :cond_9

    if-nez p3, :cond_9

    if-eqz v17, :cond_b

    .line 205
    :cond_9
    :try_start_0
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    .line 207
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    .line 208
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    .line 210
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    .line 213
    const/16 v33, 0x0

    .line 215
    .local v33, padding:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v33

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v32

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v31

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 221
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowShow:I

    .line 226
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    if-eqz v2, :cond_a

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V

    .line 237
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 242
    if-lez v16, :cond_18

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v16

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 248
    :goto_c
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowAnime:I

    .line 250
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-nez v2, :cond_1b

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowType()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowSession;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v2

    if-gez v2, :cond_1a

    .line 256
    const-string v2, "IdleScreenWindowBase"

    const-string v3, "Failed to add window"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v33           #padding:I
    :cond_b
    :goto_d
    return-void

    .line 141
    .end local v16           #animation:I
    .end local v17           #animationChanged:Z
    .end local v22           #creating:Z
    .end local v24           #flagsChanged:Z
    .end local v25           #formatChanged:Z
    .end local v30           #myFormat:I
    .end local v35           #sizeChanged:Z
    .end local v36           #surfaceCreating:Z
    .end local v37           #typeChanged:Z
    .end local v38           #visibility:I
    .end local v39           #visibleChanged:Z
    .end local v41           #windowShowChanged:Z
    :cond_c
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 147
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLongside:I

    move/from16 v32, v0

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShortside:I

    move/from16 v31, v0

    goto/16 :goto_1

    .line 161
    .restart local v30       #myFormat:I
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 162
    .restart local v22       #creating:Z
    :cond_f
    const/16 v36, 0x0

    goto/16 :goto_3

    .line 163
    .restart local v36       #surfaceCreating:Z
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 164
    .restart local v25       #formatChanged:Z
    :cond_11
    const/16 v35, 0x0

    goto/16 :goto_5

    .line 165
    .restart local v35       #sizeChanged:Z
    :cond_12
    const/16 v37, 0x0

    goto/16 :goto_6

    .line 171
    .restart local v37       #typeChanged:Z
    .restart local v38       #visibility:I
    :cond_13
    const/16 v39, 0x0

    goto/16 :goto_7

    .line 177
    .restart local v39       #visibleChanged:Z
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    goto/16 :goto_8

    .line 180
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_9

    .line 181
    .restart local v24       #flagsChanged:Z
    :cond_16
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 189
    .restart local v16       #animation:I
    .restart local v41       #windowShowChanged:Z
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 246
    .restart local v17       #animationChanged:Z
    .restart local v33       #padding:I
    :cond_18
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    .line 367
    .end local v33           #padding:I
    :catch_0
    move-exception v23

    .line 368
    .local v23, ex:Landroid/os/RemoteException;
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v23           #ex:Landroid/os/RemoteException;
    :cond_19
    :goto_e
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 260
    .restart local v33       #padding:I
    :cond_1a
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    .line 263
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 264
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v14, v14, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v34

    .line 283
    .local v34, relayoutResult:I
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ New surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v40

    .line 287
    .local v40, w:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move/from16 v0, v40

    if-eq v2, v0, :cond_1c

    .line 288
    const/16 v35, 0x1

    .line 289
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    .line 291
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v26

    .line 292
    .local v26, h:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    move/from16 v0, v26

    if-eq v2, v0, :cond_1d

    .line 293
    const/16 v35, 0x1

    .line 294
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    .line 297
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->reportSurfaceDestroyed()V

    .line 363
    :cond_1e
    :goto_f
    if-eqz v39, :cond_19

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceVisibilityChanged(Landroid/view/SurfaceHolder;I)V

    goto/16 :goto_e

    .line 303
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    if-eqz v2, :cond_20

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    :cond_20
    const/16 v20, 0x0

    .line 308
    .local v20, callbacks:[Landroid/view/SurfaceHolder$Callback;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v3, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 310
    .local v15, N:I
    if-lez v15, :cond_21

    .line 311
    new-array v0, v15, [Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v20, v0

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 314
    :cond_21
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    if-eqz v36, :cond_23

    .line 317
    const/4 v2, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    .line 318
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceCreated("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 321
    if-eqz v20, :cond_23

    .line 322
    move-object/from16 v18, v20

    .local v18, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v27, 0x0

    .local v27, i$:I
    :goto_10
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_23

    aget-object v19, v18, v27

    .line 323
    .local v19, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 322
    add-int/lit8 v27, v27, 0x1

    goto :goto_10

    .line 314
    .end local v15           #N:I
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v27           #i$:I
    .end local v29           #len$:I
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 356
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    .line 357
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    .line 358
    if-eqz p3, :cond_22

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->finishDrawing()V

    :cond_22
    throw v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 328
    .restart local v15       #N:I
    :cond_23
    if-nez v22, :cond_24

    and-int/lit8 v2, v34, 0x2

    if-eqz v2, :cond_26

    :cond_24
    const/4 v2, 0x1

    :goto_11
    or-int p3, p3, v2

    .line 330
    if-nez p2, :cond_25

    if-nez v22, :cond_25

    if-nez v36, :cond_25

    if-nez v25, :cond_25

    if-eqz v35, :cond_27

    .line 332
    :cond_25
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 334
    if-eqz v20, :cond_27

    .line 335
    move-object/from16 v18, v20

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29       #len$:I
    const/16 v27, 0x0

    .restart local v27       #i$:I
    :goto_12
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_27

    aget-object v19, v18, v27

    .line 336
    .restart local v19       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 335
    add-int/lit8 v27, v27, 0x1

    goto :goto_12

    .line 328
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v27           #i$:I
    .end local v29           #len$:I
    :cond_26
    const/4 v2, 0x0

    goto :goto_11

    .line 342
    :cond_27
    if-eqz p3, :cond_29

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 344
    if-eqz v20, :cond_29

    .line 345
    move-object/from16 v18, v20

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29       #len$:I
    const/16 v27, 0x0

    .restart local v27       #i$:I
    :goto_13
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_29

    aget-object v19, v18, v27

    .line 346
    .restart local v19       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v2, :cond_28

    .line 347
    check-cast v19, Landroid/view/SurfaceHolder$Callback2;

    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 345
    :cond_28
    add-int/lit8 v27, v27, 0x1

    goto :goto_13

    .line 356
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v27           #i$:I
    .end local v29           #len$:I
    :cond_29
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    .line 357
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    .line 358
    if-eqz p3, :cond_1e

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->finishDrawing()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_f
.end method
