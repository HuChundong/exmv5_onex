.class public Landroid/view/HtcHardwareRenderer;
.super Ljava/lang/Object;
.source "HtcHardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HtcHardwareRenderer$1;,
        Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;,
        Landroid/view/HtcHardwareRenderer$CallbackWrapper;
    }
.end annotation


# instance fields
.field private final mCallbackWrapper:Landroid/view/HtcHardwareRenderer$CallbackWrapper;

.field private mImpl:Landroid/view/HardwareRenderer;


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .parameter "glVersion"
    .parameter "translucent"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroid/view/HtcHardwareRenderer$CallbackWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/HtcHardwareRenderer$CallbackWrapper;-><init>(Landroid/view/HtcHardwareRenderer$1;)V

    iput-object v0, p0, Landroid/view/HtcHardwareRenderer;->mCallbackWrapper:Landroid/view/HtcHardwareRenderer$CallbackWrapper;

    .line 14
    invoke-static {p1, p2}, Landroid/view/HardwareRenderer;->createGlRenderer(IZ)Landroid/view/HardwareRenderer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    .line 15
    return-void
.end method

.method public static addDrawCallback(Landroid/view/View;Landroid/view/View$DrawCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 137
    .local v0, root:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addDrawCallback(Landroid/view/View$DrawCallback;)V

    .line 140
    :cond_0
    return-void
.end method

.method public static onHardwareCanvasPostDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 131
    instance-of v0, p0, Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 132
    check-cast p0, Landroid/view/HardwareCanvas;

    .end local p0
    invoke-virtual {p0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 133
    :cond_0
    return-void
.end method

.method public static onHardwareCanvasPreDraw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "canvas"
    .parameter "dirty"

    .prologue
    .line 126
    instance-of v0, p0, Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 127
    check-cast p0, Landroid/view/HardwareCanvas;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 128
    :cond_0
    return-void
.end method

.method public static removeDrawCallback(Landroid/view/View;Landroid/view/View$DrawCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 144
    .local v0, root:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeDrawCallback(Landroid/view/View$DrawCallback;)V

    .line 147
    :cond_0
    return-void
.end method

.method public static setSkipHardwareRenderDraw(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "skip"

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 151
    .local v0, root:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setSkipHardwareRenderDraw(Z)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "isOpaque"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v0

    return-object v0
.end method

.method public createHardwareLayer(Z)Landroid/view/HardwareLayer;
    .locals 1
    .parameter "isOpaque"

    .prologue
    .line 114
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->createHardwareLayer(Z)Landroid/view/HardwareLayer;

    move-result-object v0

    return-object v0
.end method

.method public createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "layer"

    .prologue
    .line 122
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public destroy(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 35
    return-void
.end method

.method public destroyHardwareResources(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public destroyLayers(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public draw(Landroid/view/View;Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "view"
    .parameter "callbacks"
    .parameter "dirty"

    .prologue
    .line 83
    iget-object v2, p0, Landroid/view/HtcHardwareRenderer;->mCallbackWrapper:Landroid/view/HtcHardwareRenderer$CallbackWrapper;

    invoke-virtual {v2, p2}, Landroid/view/HtcHardwareRenderer$CallbackWrapper;->setCallbacks(Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;)V

    .line 84
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 85
    .local v0, oldRenderer:Landroid/view/HardwareRenderer;
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 86
    iget-object v2, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    iget-object v3, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, p0, Landroid/view/HtcHardwareRenderer;->mCallbackWrapper:Landroid/view/HtcHardwareRenderer$CallbackWrapper;

    invoke-virtual {v2, p1, v3, v4, p3}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z

    move-result v1

    .line 87
    .local v1, ret:Z
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 88
    return v1
.end method

.method public draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z
    .locals 4
    .parameter "view"
    .parameter "attachInfo"
    .parameter "callbacks"
    .parameter "dirty"

    .prologue
    .line 74
    iget-object v2, p0, Landroid/view/HtcHardwareRenderer;->mCallbackWrapper:Landroid/view/HtcHardwareRenderer$CallbackWrapper;

    invoke-virtual {v2, p3}, Landroid/view/HtcHardwareRenderer$CallbackWrapper;->setCallbacks(Landroid/view/HtcHardwareRenderer$HardwareDrawCallbacks;)V

    .line 75
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 76
    .local v0, oldRenderer:Landroid/view/HardwareRenderer;
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 77
    iget-object v2, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    iget-object v3, p0, Landroid/view/HtcHardwareRenderer;->mCallbackWrapper:Landroid/view/HtcHardwareRenderer$CallbackWrapper;

    invoke-virtual {v2, p1, p2, v3, p4}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z

    move-result v1

    .line 78
    .local v1, ret:Z
    iget-object v2, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 79
    return v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->getWidth()I

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
    .line 38
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/SurfaceHolder;)Z

    move-result v0

    return v0
.end method

.method public invalidate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/SurfaceHolder;)V

    .line 55
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isRequested()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 22
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    .line 23
    return-void
.end method

.method public setRequested(Z)V
    .locals 1
    .parameter "requested"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 31
    return-void
.end method

.method public setup(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1, p2}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 63
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
    .line 42
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/SurfaceHolder;)V

    .line 43
    return-void
.end method

.method public validate()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/HtcHardwareRenderer;->mImpl:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v0

    return v0
.end method
