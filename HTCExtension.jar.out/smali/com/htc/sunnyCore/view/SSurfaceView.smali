.class public Lcom/htc/sunnyCore/view/SSurfaceView;
.super Landroid/view/SurfaceView;
.source "SSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/htc/sunnyCore/RenderThread$EventListener;
.implements Lcom/htc/sunnyCore/view/SSurfaceViewInitBackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/view/SSurfaceView$1;,
        Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;,
        Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;,
        Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;,
        Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;,
        Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;,
        Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

.field private mCamera:I

.field private mEnableInitBackground:Z

.field private mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

.field private mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mInitBackgroundResId:I

.field private mIsForceRenderAfterSurfaceChanged:Z

.field private mIsTouchEnabled:Z

.field private final mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

.field protected mRenderThread:Lcom/htc/sunnyCore/RenderThread;

.field private mRenderThreadEventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

.field private mRootNode:I

.field protected mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

.field private mScene:I

.field protected mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

.field protected mSunnyEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

.field protected mSunnyWindow:I

.field private mSurfacePixelFormat:I

.field private mViewPort:I

.field private touchEventRTEventRecycler:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    .line 88
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEnableInitBackground:Z

    .line 501
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "TouchEventRenderThreadEvent"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->touchEventRTEventRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 109
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->init(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "initBackgroundResId"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    .line 88
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEnableInitBackground:Z

    .line 501
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "TouchEventRenderThreadEvent"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->touchEventRTEventRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SSurfaceView;->init(Landroid/content/Context;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    .line 88
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEnableInitBackground:Z

    .line 501
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "TouchEventRenderThreadEvent"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->touchEventRTEventRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 117
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->init(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const-string v0, "SSurfaceView"

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    .line 88
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEnableInitBackground:Z

    .line 501
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "TouchEventRenderThreadEvent"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->touchEventRTEventRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 125
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->init(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunnyCore/view/SSurfaceView;Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->recycleTouchEventRTEvent(Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/sunnyCore/view/SSurfaceView;)Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/sunnyCore/view/SSurfaceView;)Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/sunnyCore/view/SSurfaceView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SSurfaceView;->onSurfaceChangedIRT(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/sunnyCore/view/SSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mViewPort:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->init(Landroid/content/Context;I)V

    .line 138
    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "initBackgroundResId"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 143
    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    .line 146
    if-nez p2, :cond_0

    .line 147
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->setEnableInitBackground(Z)V

    .line 154
    :goto_0
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    .line 155
    new-instance v1, Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v1}, Lcom/htc/sunnyCore/SunnyContext;-><init>()V

    iput-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 157
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    :goto_1
    iput v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSurfacePixelFormat:I

    .line 158
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1, v5, v6, v5, v2}, Lcom/htc/sunnyCore/SunnyContext;->init(IIII)Z

    move-result v0

    .line 159
    .local v0, rs:Z
    :goto_2
    if-nez v0, :cond_3

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Create Sunny Context Fail"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v0           #rs:Z
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/sunnyCore/view/SSurfaceView;->setEnableInitBackground(Z)V

    .line 151
    invoke-virtual {p0, p2}, Lcom/htc/sunnyCore/view/SSurfaceView;->setInitBackgroundResource(I)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/htc/sunnyCore/SunnyContext;->init(IIII)Z

    move-result v0

    goto :goto_2

    .line 163
    .restart local v0       #rs:Z
    :cond_3
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/SunnyCore;->CreateWindowByContext(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    .line 169
    :goto_3
    iget v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    if-nez v1, :cond_5

    .line 170
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t create SunnyWindow"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v1

    invoke-static {v1}, Lcom/htc/sunnyCore/SunnyCore;->CreateWindow(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    goto :goto_3

    .line 173
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSurfacePixelFormat:I

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 175
    iput-boolean v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mIsTouchEnabled:Z

    .line 177
    new-instance v1, Lcom/htc/sunnyCore/RenderThread;

    const-string v2, "SunnyRenderThread"

    invoke-direct {v1, v2, p0}, Lcom/htc/sunnyCore/RenderThread;-><init>(Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread$EventListener;)V

    iput-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 178
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->beginThread()V

    .line 179
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->waitForRenderThreadReady()Z

    .line 180
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v6}, Lcom/htc/sunnyCore/RenderThread;->setPriority(I)V

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 183
    return-void
.end method

.method private obtainTouchEventRTEvent(Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;
    .locals 2
    .parameter "event"

    .prologue
    .line 539
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->touchEventRTEventRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;

    .line 540
    .local v0, object:Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;
    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;

    .end local v0           #object:Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;
    invoke-direct {v0, p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;Landroid/view/MotionEvent;)V

    .line 544
    .restart local v0       #object:Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;
    :goto_0
    return-object v0

    .line 543
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->reset(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private onSurfaceChangedIRT(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x1

    .line 339
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    if-eqz v4, :cond_3

    .line 340
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 341
    .local v0, d:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 342
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 343
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 344
    .local v3, nWidth:I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 346
    .local v2, nHeight:I
    if-ne v3, p1, :cond_4

    if-ne v2, p2, :cond_4

    if-lez p1, :cond_4

    if-lez p2, :cond_4

    .line 348
    iget-boolean v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEnableInitBackground:Z

    if-ne v4, v7, :cond_2

    .line 349
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 350
    sget-boolean v4, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SSurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onSurfaceChangedIRT] start to create texture for mInitBackgroundDrawable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v5, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, p1, p2, v7}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->invalidateGlobalBackground(IIZ)V

    .line 358
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->resetInitBackground()V

    .line 361
    :cond_2
    iput-boolean v7, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    .line 362
    sget-boolean v4, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "SSurfaceView"

    const-string v5, "[onSurfaceChangedIRT] ori in WindowManager is the same as Surface"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #nHeight:I
    .end local v3           #nWidth:I
    :cond_3
    :goto_0
    return-void

    .line 365
    .restart local v0       #d:Landroid/view/Display;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #nHeight:I
    .restart local v3       #nWidth:I
    :cond_4
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->requestLayout()V

    .line 366
    sget-boolean v4, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "SSurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onSurfaceChangedIRT] ori in WindowManager != Surface=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recycleTouchEventRTEvent(Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;->free()V

    .line 551
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->touchEventRTEventRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private resetInitBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEnableInitBackground:Z

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 335
    iput v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mInitBackgroundResId:I

    .line 336
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 601
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->endThread()V

    .line 213
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyContext;->deinit()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 217
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x6

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 586
    :cond_1
    const/4 v0, 0x1

    .line 590
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitBackgroundTexture_IRT()Lcom/htc/sunnyCore/Texture;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 644
    const/4 v1, 0x0

    .line 645
    .local v1, texture:Lcom/htc/sunnyCore/Texture;
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$200(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$200(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$200(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    .line 650
    .local v0, d:Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$300(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 651
    iget v2, v0, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcWidth:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Texture;->setSourceWidth(I)V

    .line 652
    iget v2, v0, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcHeight:I

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Texture;->setSourceHeight(I)V

    .line 653
    iget-object v2, v0, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Texture;->setIdentifier(Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #setter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;
    invoke-static {v2, v3}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$302(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;

    .line 655
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;
    invoke-static {v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Sprite;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 656
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;
    invoke-static {v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Sprite;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 658
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #setter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundResource:I
    invoke-static {v2, v4}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$502(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;I)I

    .line 659
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #setter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$202(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 664
    .end local v0           #d:Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;
    :goto_0
    return-object v1

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->resetInitBackground()V

    goto :goto_0
.end method

.method public getSunnyContext()Lcom/htc/sunnyCore/SunnyContext;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    return-object v0
.end method

.method public getSunnyEnvironmentHandler()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v0

    return v0
.end method

.method protected onDispatchRootKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 679
    return-void
.end method

.method protected onDispatchRootTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public onInterruptionEndIRT()V
    .locals 6

    .prologue
    .line 383
    iget-boolean v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 384
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    if-eqz v2, :cond_1

    .line 385
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->requestLayout()V

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 388
    .local v0, time:J
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    #calls: Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;->processLayoutRequest()V
    invoke-static {v2}, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;->access$000(Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;)V

    .line 389
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SSurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onInterruptionEndIRT] processLayoutRequest done! Cost time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    iget v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v2}, Lcom/htc/sunnyCore/SunnyCore;->Window_Render(I)V

    .line 391
    sget-boolean v2, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SSurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onInterruptionEndIRT] Sunny2.Window_Render done! Cost time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v0           #time:J
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    .line 397
    :cond_2
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    if-eqz v2, :cond_3

    .line 398
    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    invoke-interface {v2}, Lcom/htc/sunnyCore/RenderThread$EventListener;->onInterruptionEndIRT()V

    .line 400
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 200
    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->pauseRender()V

    .line 204
    :cond_0
    return-void
.end method

.method protected onRefreshRootRenderOrder(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 672
    return-void
.end method

.method public onRenderStartIRT()Z
    .locals 8

    .prologue
    .line 407
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/SunnyContext;->runOnCurrentThread()Z

    .line 411
    iget v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v4}, Lcom/htc/sunnyCore/SunnyCore;->Window_GetDefaultViewport(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mViewPort:I

    .line 413
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v4

    invoke-static {v4}, Lcom/htc/sunnyCore/SunnyCore;->CreateScene(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mScene:I

    .line 414
    iget v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunnyCore/SunnyCore;->Scene_GetRootNode(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRootNode:I

    .line 415
    new-instance v4, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget v5, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRootNode:I

    invoke-direct {v4, p0, v5}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;I)V

    iput-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    .line 417
    iget v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunnyCore/SunnyCore;->Scene_GetDefaultCamera(I)I

    move-result v4

    iput v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mCamera:I

    .line 418
    iget v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mCamera:I

    const/high16 v5, 0x4270

    const/high16 v6, 0x4120

    const v7, 0x461c4000

    invoke-static {v4, v5, v6, v7}, Lcom/htc/sunnyCore/SunnyCore;->Camera_2DIsometricSetup(IFFF)V

    .line 419
    iget v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mViewPort:I

    iget v5, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mCamera:I

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/SunnyCore;->Viewport_LinkCamera(II)V

    .line 421
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v5, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 422
    new-instance v4, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    iget-object v5, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {v4, p0, p0, v5}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView;Ljava/lang/Object;Lcom/htc/sunnyCore/RenderThread;)V

    iput-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    .line 427
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 428
    .local v2, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 429
    .local v0, frame:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 430
    .local v3, width:I
    const/4 v1, 0x0

    .line 431
    .local v1, height:I
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 433
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 436
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 437
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v1}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 438
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->onProcessInterruptionIRT()V

    .line 441
    :cond_1
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    if-eqz v4, :cond_2

    .line 442
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    invoke-interface {v4}, Lcom/htc/sunnyCore/RenderThread$EventListener;->onRenderStartIRT()Z

    .line 445
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public onRenderStopIRT()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 460
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    if-eqz v4, :cond_0

    .line 461
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    invoke-interface {v4}, Lcom/htc/sunnyCore/RenderThread$EventListener;->onRenderStopIRT()V

    .line 464
    :cond_0
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    .line 465
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 466
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunnyCore/SceneNode;

    move-result-object v3

    .line 467
    .local v3, node:Lcom/htc/sunnyCore/SceneNode;
    instance-of v4, v3, Lcom/htc/sunnyCore/view/SView;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 468
    check-cast v0, Lcom/htc/sunnyCore/view/SView;

    .line 469
    .local v0, child:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->onDetachedFromWindow()V

    .line 470
    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 471
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->removeView(Lcom/htc/sunnyCore/view/SView;)V

    .line 465
    .end local v0           #child:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 475
    .end local v3           #node:Lcom/htc/sunnyCore/SceneNode;
    :cond_2
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->release()V

    .line 476
    iput-object v6, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    .line 478
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4, v6, v5, v5}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 479
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->onProcessInterruptionIRT()V

    .line 481
    iget v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    invoke-static {v4}, Lcom/htc/sunnyCore/SunnyCore;->DestroyWindow(I)V

    .line 486
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->release()V

    .line 488
    iget v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mScene:I

    invoke-static {v4}, Lcom/htc/sunnyCore/SunnyCore;->DestroyScene(I)V

    .line 489
    iput v5, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mScene:I

    .line 491
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/SunnyContext;->removeFromCurrentThread()V

    .line 492
    return-void
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 453
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 189
    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeRender()V

    .line 192
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    .line 194
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 559
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mIsTouchEnabled:Z

    if-ne v3, v1, :cond_0

    .line 560
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 561
    .local v0, finalEvent:Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->obtainTouchEventRTEvent(Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/view/SSurfaceView$TouchEventRTEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    const-string v1, "SSurfaceView"

    const-string v2, "SSurfaceView onTouchEvent NG - pushEventIHT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v0           #finalEvent:Landroid/view/MotionEvent;
    :cond_0
    return v3
.end method

.method public refreshRenderOrder(Ljava/lang/String;)V
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 621
    :cond_0
    return-void
.end method

.method public removeView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 610
    :cond_0
    return-void
.end method

.method public set3DGlobalBackground(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->sendEmptyMessage(ILjava/lang/Object;)V

    .line 631
    :cond_0
    return-void
.end method

.method public setEnableInitBackground(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEnableInitBackground:Z

    .line 330
    return-void
.end method

.method public setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "initBackgroundDrawable"

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEnableInitBackground:Z

    if-nez v0, :cond_1

    .line 246
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setInitBackgroundDrawable] can\'t set initBackgroundDrawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mInitBackgroundResId:I

    .line 251
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mInitBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setInitBackgroundResource(I)V
    .locals 4
    .parameter "initBackgroundResId"

    .prologue
    .line 223
    iget v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mInitBackgroundResId:I

    if-ne p1, v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mEnableInitBackground:Z

    if-nez v1, :cond_2

    .line 228
    sget-boolean v1, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setInitBackgroundResource] can\'t set initBackgroundResId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x0

    .line 233
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->setInitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iput p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mInitBackgroundResId:I

    goto :goto_0
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 636
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 637
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 638
    return-void
.end method

.method public setRenderThreadEventListener(Lcom/htc/sunnyCore/RenderThread$EventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThreadEventListener:Lcom/htc/sunnyCore/RenderThread$EventListener;

    .line 376
    return-void
.end method

.method public setTouchEnable(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mIsTouchEnabled:Z

    .line 499
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 283
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4, p3, p4}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 285
    iget-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/RenderThread;->runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z

    .line 288
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 290
    .local v1, oldTime:J
    :cond_0
    iget-boolean v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mIsForceRenderAfterSurfaceChanged:Z

    if-nez v3, :cond_2

    .line 291
    sget-boolean v3, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SSurfaceView"

    const-string v4, "[surfaceChanged] mIsSurfaceChanged is false"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v1           #oldTime:J
    :cond_1
    :goto_0
    return-void

    .line 295
    .restart local v1       #oldTime:J
    :cond_2
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 298
    sget-boolean v3, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SSurfaceView"

    const-string v4, "[surfaceChanged] time out, don\'t wait sunny to render!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    .end local v1           #oldTime:J
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v3, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SSurfaceView"

    const-string v4, "[surfaceChanged] time out, don\'t wait sunny to render!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 276
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;->setup(Landroid/view/Surface;II)V

    .line 316
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView;->mBindWindow:Lcom/htc/sunnyCore/view/SSurfaceView$RenderThreadInterruption_BindWindow;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SSurfaceView;->resetInitBackground()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->setWillNotDraw(Z)V

    .line 323
    return-void
.end method
