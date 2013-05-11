.class public Landroid/graphics/SurfaceTexture;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/SurfaceTexture$EventHandler;,
        Landroid/graphics/SurfaceTexture$OutOfResourcesException;,
        Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    }
.end annotation


# instance fields
.field private mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

.field private mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mSurfaceTexture:I

.field private mUiThreadCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 337
    invoke-static {}, Landroid/graphics/SurfaceTexture;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "texName"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    .line 102
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .parameter "texName"
    .parameter "allowSynchronousMode"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/SurfaceTexture;->mUiThreadCallback:Z

    .line 117
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/graphics/SurfaceTexture$EventHandler;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    .line 124
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1, p2}, Landroid/graphics/SurfaceTexture;->nativeInit(ILjava/lang/Object;Z)V

    .line 125
    return-void

    .line 119
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v1, Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/graphics/SurfaceTexture$EventHandler;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    goto :goto_0

    .line 122
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-object v0
.end method

.method private native nativeAttachToGLContext(I)I
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDetachFromGLContext()I
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetQueuedCount()I
.end method

.method private native nativeGetTimestamp()J
.end method

.method private native nativeGetTransformMatrix([F)V
.end method

.method private native nativeInit(ILjava/lang/Object;Z)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetDefaultBufferSize(II)V
.end method

.method private native nativeUpdateTexImage()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 5
    .parameter "selfRef"

    .prologue
    .line 303
    move-object v2, p0

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 304
    .local v2, weakSelf:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 305
    .local v1, st:Landroid/graphics/SurfaceTexture;
    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    if-eqz v3, :cond_0

    .line 311
    iget-boolean v3, v1, Landroid/graphics/SurfaceTexture;->mUiThreadCallback:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 312
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture$EventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, m:Landroid/os/Message;
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-virtual {v3, v0}, Landroid/graphics/SurfaceTexture$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 314
    .end local v0           #m:Landroid/os/Message;
    :cond_2
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    if-eqz v3, :cond_0

    .line 315
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-interface {v3, v1}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method private setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Z)V
    .locals 0
    .parameter "l"
    .parameter "uiThread"

    .prologue
    .line 142
    iput-object p1, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 143
    iput-boolean p2, p0, Landroid/graphics/SurfaceTexture;->mUiThreadCallback:Z

    .line 144
    return-void
.end method


# virtual methods
.method public attachToGLContext(I)V
    .locals 3
    .parameter "texName"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeAttachToGLContext(I)I

    move-result v0

    .line 212
    .local v0, err:I
    if-eqz v0, :cond_0

    .line 213
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during detachFromGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    return-void
.end method

.method public detachFromGLContext()V
    .locals 3

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeDetachFromGLContext()I

    move-result v0

    .line 192
    .local v0, err:I
    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during detachFromGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 279
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .locals 2
    .parameter "mtx"

    .prologue
    .line 235
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeGetTransformMatrix([F)V

    .line 239
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeRelease()V

    .line 275
    return-void
.end method

.method public setDefaultBufferSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->nativeSetDefaultBufferSize(II)V

    .line 168
    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Z)V

    .line 135
    return-void
.end method

.method public updateTexImage()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeUpdateTexImage()V

    .line 177
    return-void
.end method
