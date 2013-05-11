.class public final Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;
.super Ljava/lang/Object;
.source "HtcWrapHardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;,
        Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/view/HtcHardwareRenderer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/view/HtcHardwareRenderer;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/HtcHardwareRenderer;-><init>(IZ)V

    iput-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    .line 46
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .parameter "glVersion"
    .parameter "translucent"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/view/HtcHardwareRenderer;

    invoke-direct {v0, p1, p2}, Landroid/view/HtcHardwareRenderer;-><init>(IZ)V

    iput-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    .line 50
    return-void
.end method

.method public static addDrawCallback(Landroid/view/View;Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 114
    iget-object v0, p1, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;->mInnerCallback:Landroid/view/View$DrawCallback;

    invoke-static {p0, v0}, Landroid/view/HtcHardwareRenderer;->addDrawCallback(Landroid/view/View;Landroid/view/View$DrawCallback;)V

    .line 115
    return-void
.end method

.method public static removeDrawCallback(Landroid/view/View;Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 118
    iget-object v0, p1, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$DrawCallback;->mInnerCallback:Landroid/view/View$DrawCallback;

    invoke-static {p0, v0}, Landroid/view/HtcHardwareRenderer;->removeDrawCallback(Landroid/view/View;Landroid/view/View$DrawCallback;)V

    .line 119
    return-void
.end method

.method public static setCacheConfig(IF)V
    .locals 1
    .parameter "maxTextureSize"
    .parameter "textureFlushRatio"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->setCacheConfig(IIF)V

    .line 40
    return-void
.end method

.method public static setCacheConfig(IIF)V
    .locals 7
    .parameter "maxTextureSize"
    .parameter "maxLayerSize"
    .parameter "textureFlushRatio"

    .prologue
    .line 24
    const-class v0, Landroid/view/HardwareRenderer;

    .line 26
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "setCacheConfig"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 27
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v3, "HtcWrapHardwareRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCacheConfig(Txt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Layer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Rate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  done)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HtcWrapHardwareRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not implement setFlushRate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSkipHardwareRenderDraw(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "skip"

    .prologue
    .line 122
    invoke-static {p0, p1}, Landroid/view/HtcHardwareRenderer;->setSkipHardwareRenderDraw(Landroid/view/View;Z)V

    .line 123
    return-void
.end method


# virtual methods
.method public destroy(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HtcHardwareRenderer;->destroy(Z)V

    .line 70
    return-void
.end method

.method public destroyHardwareResources(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HtcHardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public destroyLayers(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HtcHardwareRenderer;->destroyLayers(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public draw(Landroid/view/View;Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "view"
    .parameter "callbacks"
    .parameter "dirty"

    .prologue
    .line 109
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer$HardwareDrawCallbacks;->mInnerCallbacks:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;

    .line 110
    .local v0, c:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;
    :goto_0
    iget-object v1, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v1, p1, v0, p3}, Landroid/view/HtcHardwareRenderer;->draw(Landroid/view/View;Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z

    move-result v1

    return v1

    .line 109
    .end local v0           #c:Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HtcHardwareRenderer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HtcHardwareRenderer;->getWidth()I

    move-result v0

    return v0
.end method

.method public initialize(Landroid/view/SurfaceHolder;)Z
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HtcHardwareRenderer;->initialize(Landroid/view/SurfaceHolder;)Z

    move-result v0

    return v0
.end method

.method public invalidate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HtcHardwareRenderer;->invalidate(Landroid/view/SurfaceHolder;)V

    .line 90
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HtcHardwareRenderer;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isRequested()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HtcHardwareRenderer;->isRequested()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HtcHardwareRenderer;->setEnabled(Z)V

    .line 58
    return-void
.end method

.method public setRequested(Z)V
    .locals 1
    .parameter "requested"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HtcHardwareRenderer;->setRequested(Z)V

    .line 66
    return-void
.end method

.method public setup(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0, p1, p2}, Landroid/view/HtcHardwareRenderer;->setup(II)V

    .line 98
    return-void
.end method

.method public updateSurface(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HtcHardwareRenderer;->updateSurface(Landroid/view/SurfaceHolder;)V

    .line 78
    return-void
.end method

.method public validate()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/wrap/android/view/HtcWrapHardwareRenderer;->mImpl:Landroid/view/HtcHardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HtcHardwareRenderer;->validate()Z

    move-result v0

    return v0
.end method
