.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;
.super Lcom/htc/sunnyCore/view/SSurfaceView;
.source "SunnySceneEnvironment.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyEnvironmentPass;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyEnvironmentAccess;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mEnable2Pane:Z

.field private mIsPaneRight:Z

.field protected mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field private mWorkaroundSurfaceDestroyed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "SunnySceneEnvironment"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 36
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 86
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mWorkaroundSurfaceDestroyed:Z

    .line 53
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->isSupportLockCPU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "SET_CONTEXT_FOR_LOCK_CPU"

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string v0, "SunnySceneEnvironment"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 36
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 86
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mWorkaroundSurfaceDestroyed:Z

    .line 63
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->isSupportLockCPU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "SET_CONTEXT_FOR_LOCK_CPU"

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/view/SSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v0, "SunnySceneEnvironment"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->LOG_TAG:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 36
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 86
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mWorkaroundSurfaceDestroyed:Z

    .line 73
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->isSupportLockCPU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "SET_CONTEXT_FOR_LOCK_CPU"

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunnyCore/RenderThread;->removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public enableSunnyEnvTouchEvent(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setTouchEnable(Z)V

    .line 204
    return-void
.end method

.method public isSupportLockCPU()Z
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/htc/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDispatchRootKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 225
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 228
    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v1, :cond_1

    .line 243
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    .line 231
    .local v0, node:Lcom/htc/sunnyCore/SceneNode;
    if-eqz v0, :cond_0

    .line 233
    instance-of v2, v0, Lcom/htc/sunnyCore/view/SView;

    if-eqz v2, :cond_0

    .line 235
    check-cast v0, Lcom/htc/sunnyCore/view/SView;

    .end local v0           #node:Lcom/htc/sunnyCore/SceneNode;
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/view/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 241
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->onDispatchRootKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected onDispatchRootTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, bResult:Z
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v8, :cond_0

    move v1, v0

    .line 274
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 250
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v0, 0x1

    .line 252
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v5

    .line 253
    .local v5, nCount:I
    const/4 v3, 0x0

    .line 254
    .local v3, hitSprite:I
    if-lez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1

    .line 255
    iget v8, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSunnyWindow:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/htc/sunnyCore/SunnyCore;->Window_HitTest(III)I

    move-result v3

    .line 259
    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v7

    .line 260
    .local v7, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v7, :cond_2

    move v1, v0

    .restart local v1       #bResult:I
    goto :goto_0

    .line 262
    .end local v1           #bResult:I
    :cond_2
    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunnyCore/view/SView;

    move-result-object v6

    .line 263
    .local v6, node:Lcom/htc/sunnyCore/SceneNode;
    if-nez v6, :cond_3

    move v1, v0

    .restart local v1       #bResult:I
    goto :goto_0

    .line 265
    .end local v1           #bResult:I
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 266
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v8, v4}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunnyCore/SceneNode;

    move-result-object v2

    .line 267
    .local v2, childNode:Lcom/htc/sunnyCore/SceneNode;
    if-eq v6, v2, :cond_4

    instance-of v8, v6, Lcom/htc/sunnyCore/view/SView;

    if-eqz v8, :cond_6

    .line 268
    :cond_4
    check-cast v6, Lcom/htc/sunnyCore/view/SView;

    .end local v6           #node:Lcom/htc/sunnyCore/SceneNode;
    invoke-virtual {v6, p1, v3}, Lcom/htc/sunnyCore/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    .end local v2           #childNode:Lcom/htc/sunnyCore/SceneNode;
    :cond_5
    move v1, v0

    .line 274
    .restart local v1       #bResult:I
    goto :goto_0

    .line 265
    .end local v1           #bResult:I
    .restart local v2       #childNode:Lcom/htc/sunnyCore/SceneNode;
    .restart local v6       #node:Lcom/htc/sunnyCore/SceneNode;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 122
    .local v6, nWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 124
    .local v5, nHeight:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-nez v7, :cond_0

    .line 126
    const/4 v3, -0x1

    .line 127
    .local v3, givenWidth:I
    const/4 v2, -0x1

    .line 129
    .local v2, givenHeight:I
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 130
    .local v0, d:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 134
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 136
    const-string v7, "SunnySceneEnvironment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnySceneEnvironment][onMeasure]ori="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", MeasureSpec ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), WinMgr ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0, v3, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setMeasuredDimension(II)V

    .line 146
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #givenHeight:I
    .end local v3           #givenWidth:I
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v8, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    iget-boolean v9, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    invoke-static {v7, v8, v9}, Lcom/htc/sunny2/common/HtcPaneManager;->onMeasuredWidthAndHeight(Landroid/content/Context;ZZ)[I

    move-result-object v4

    .line 143
    .local v4, nDimension:[I
    const-string v7, "SunnySceneEnvironment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][SunnySceneEnvironment][onMeasure]ori="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", measuredDimention ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v4, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v4, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", MeasureSpec ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    aget v7, v4, v10

    aget v8, v4, v11

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onRefreshRootRenderOrder(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 207
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    .line 209
    const/4 v1, 0x0

    .local v1, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    move-object v2, p1

    .line 210
    check-cast v2, Ljava/lang/String;

    .line 211
    .local v2, szIdentity:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    .line 216
    :goto_0
    if-eqz v1, :cond_1

    .line 218
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    .line 219
    .local v0, node:Lcom/htc/sunnyCore/SceneNode;
    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getEnvironmentRenderOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    .line 222
    .end local v0           #node:Lcom/htc/sunnyCore/SceneNode;
    .end local v1           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    .end local v2           #szIdentity:Ljava/lang/String;
    :cond_1
    return-void

    .line 214
    .restart local v1       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;,"Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene<*>;"
    .restart local v2       #szIdentity:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    goto :goto_0
.end method

.method public putToStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 4
    .parameter "scene"

    .prologue
    .line 179
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunnyCore/view/SView;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_1

    .line 181
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SunnySceneEnvironment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneEnvironment][putToStage]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    .line 183
    .local v0, view:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 185
    .end local v0           #view:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    return-void
.end method

.method public removeFromStage(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V
    .locals 4
    .parameter "scene"

    .prologue
    .line 190
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunnyCore/view/SView;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_1

    .line 192
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SunnySceneEnvironment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneEnvironment][removeFromStage]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    .line 194
    .local v0, view:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->removeView(Lcom/htc/sunnyCore/view/SView;)V

    .line 196
    .end local v0           #view:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    return-void
.end method

.method public setPaneConfig(ZZ)V
    .locals 0
    .parameter "bEnable2Pane"
    .parameter "bIsPaneRight"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mEnable2Pane:Z

    .line 81
    iput-boolean p2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mIsPaneRight:Z

    .line 82
    return-void
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter "displayControl"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 151
    return-void
.end method

.method public setWillNotDraw(Z)V
    .locals 1
    .parameter "willNotDraw"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mWorkaroundSurfaceDestroyed:Z

    if-nez v0, :cond_0

    .line 91
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->setWillNotDraw(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public sunnyContext()Lcom/htc/sunnyCore/SunnyContext;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v0

    return-object v0
.end method

.method public sunnyHandler()I
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getSunnyEnvironmentHandler()I

    move-result v0

    return v0
.end method

.method public sunnyHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 102
    const-string v0, "SunnySceneEnvironment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnySceneEnvironment][surfaceChanged]ori="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/sunnyCore/view/SSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 104
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mWorkaroundSurfaceDestroyed:Z

    .line 97
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 98
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneEnvironment;->mWorkaroundSurfaceDestroyed:Z

    .line 109
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 110
    return-void
.end method
