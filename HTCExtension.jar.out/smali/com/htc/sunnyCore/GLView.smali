.class public Lcom/htc/sunnyCore/GLView;
.super Landroid/view/SurfaceView;
.source "GLView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/GLView$ScaleGestureListener;,
        Lcom/htc/sunnyCore/GLView$GestureListener;,
        Lcom/htc/sunnyCore/GLView$TouchListener;,
        Lcom/htc/sunnyCore/GLView$SurfaceListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static ENABLE_ALPHA_SURFACE:Z

.field private static LTAG:Ljava/lang/String;


# instance fields
.field private mActionCode:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/htc/sunnyCore/GLView$GestureListener;

.field protected mHostContextName:Ljava/lang/String;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleGestureListener:Lcom/htc/sunnyCore/GLView$ScaleGestureListener;

.field private mZoomGesture:Z

.field private renderThread:Lcom/htc/sunnyCore/RenderThread;

.field private sunnyEnvironment:I

.field protected sunnyWindow:I

.field public supportMultitouch:Z

.field private surfaceHeight:I

.field private surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;

.field private surfaceWidth:I

.field private touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "SunnyGLView"

    sput-object v0, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/sunnyCore/GLView;->ENABLE_ALPHA_SURFACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 74
    iput v1, p0, Lcom/htc/sunnyCore/GLView;->sunnyEnvironment:I

    .line 75
    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 80
    iput v1, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    .line 82
    iput v1, p0, Lcom/htc/sunnyCore/GLView;->surfaceWidth:I

    .line 83
    iput v1, p0, Lcom/htc/sunnyCore/GLView;->surfaceHeight:I

    .line 84
    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;

    .line 89
    iput-boolean v1, p0, Lcom/htc/sunnyCore/GLView;->supportMultitouch:Z

    .line 90
    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 92
    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 93
    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mGestureListener:Lcom/htc/sunnyCore/GLView$GestureListener;

    .line 95
    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 96
    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureListener:Lcom/htc/sunnyCore/GLView$ScaleGestureListener;

    .line 98
    iput-boolean v1, p0, Lcom/htc/sunnyCore/GLView;->mZoomGesture:Z

    .line 118
    new-instance v0, Lcom/htc/sunnyCore/GLView$GestureListener;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/GLView$GestureListener;-><init>(Lcom/htc/sunnyCore/GLView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mGestureListener:Lcom/htc/sunnyCore/GLView$GestureListener;

    .line 119
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunnyCore/GLView;->mGestureListener:Lcom/htc/sunnyCore/GLView$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 121
    new-instance v0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;-><init>(Lcom/htc/sunnyCore/GLView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureListener:Lcom/htc/sunnyCore/GLView$ScaleGestureListener;

    .line 122
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureListener:Lcom/htc/sunnyCore/GLView$ScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput v2, p0, Lcom/htc/sunnyCore/GLView;->sunnyEnvironment:I

    .line 75
    iput-object v1, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 80
    iput v2, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    .line 82
    iput v2, p0, Lcom/htc/sunnyCore/GLView;->surfaceWidth:I

    .line 83
    iput v2, p0, Lcom/htc/sunnyCore/GLView;->surfaceHeight:I

    .line 84
    iput-object v1, p0, Lcom/htc/sunnyCore/GLView;->surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;

    .line 89
    iput-boolean v2, p0, Lcom/htc/sunnyCore/GLView;->supportMultitouch:Z

    .line 90
    iput-object v1, p0, Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 92
    iput-object v1, p0, Lcom/htc/sunnyCore/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 93
    iput-object v1, p0, Lcom/htc/sunnyCore/GLView;->mGestureListener:Lcom/htc/sunnyCore/GLView$GestureListener;

    .line 95
    iput-object v1, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 96
    iput-object v1, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureListener:Lcom/htc/sunnyCore/GLView$ScaleGestureListener;

    .line 98
    iput-boolean v2, p0, Lcom/htc/sunnyCore/GLView;->mZoomGesture:Z

    .line 133
    new-instance v0, Lcom/htc/sunnyCore/GLView$GestureListener;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/GLView$GestureListener;-><init>(Lcom/htc/sunnyCore/GLView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mGestureListener:Lcom/htc/sunnyCore/GLView$GestureListener;

    .line 134
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunnyCore/GLView;->mGestureListener:Lcom/htc/sunnyCore/GLView$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 136
    new-instance v0, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/GLView$ScaleGestureListener;-><init>(Lcom/htc/sunnyCore/GLView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureListener:Lcom/htc/sunnyCore/GLView$ScaleGestureListener;

    .line 137
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureListener:Lcom/htc/sunnyCore/GLView$ScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$SurfaceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/RenderThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunnyCore/GLView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/sunnyCore/GLView;->surfaceWidth:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/sunnyCore/GLView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/sunnyCore/GLView;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/sunnyCore/GLView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/sunnyCore/GLView;->surfaceHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/sunnyCore/GLView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/sunnyCore/GLView;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/sunnyCore/GLView;)Lcom/htc/sunnyCore/GLView$TouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunnyCore/GLView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/sunnyCore/GLView;->mZoomGesture:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/sunnyCore/GLView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/htc/sunnyCore/GLView;->mZoomGesture:Z

    return p1
.end method


# virtual methods
.method protected deinit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    sget-object v1, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deinit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/htc/sunnyCore/GLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 226
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 231
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/GLView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 232
    iget v1, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    invoke-static {v1}, Lcom/htc/sunnyCore/SunnyCore;->DestroyWindow(I)V

    .line 233
    iput v4, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    .line 235
    iput v4, p0, Lcom/htc/sunnyCore/GLView;->sunnyEnvironment:I

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 237
    return-void
.end method

.method public getSunnyWindow()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    return v0
.end method

.method protected init(IIILcom/htc/sunnyCore/RenderThread;)Z
    .locals 8
    .parameter "sunnyEnvironment"
    .parameter "sunnyContext"
    .parameter "surfacePixelFormat"
    .parameter "renderThread"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    sget-object v3, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "init"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 155
    :cond_0
    sget-object v2, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "init() NG - null parameters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return v1

    .line 161
    :cond_1
    iput p1, p0, Lcom/htc/sunnyCore/GLView;->sunnyEnvironment:I

    .line 162
    iput-object p4, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 166
    if-eqz p2, :cond_2

    .line 168
    iget v3, p0, Lcom/htc/sunnyCore/GLView;->sunnyEnvironment:I

    invoke-static {v3, p2}, Lcom/htc/sunnyCore/SunnyCore;->CreateWindowByContext(II)I

    move-result v3

    iput v3, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    .line 175
    :goto_1
    iget v3, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    if-nez v3, :cond_3

    .line 177
    sget-object v2, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Sunny2.CreateWindow NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/htc/sunnyCore/GLView;->deinit()V

    goto :goto_0

    .line 172
    :cond_2
    iget v3, p0, Lcom/htc/sunnyCore/GLView;->sunnyEnvironment:I

    invoke-static {v3}, Lcom/htc/sunnyCore/SunnyCore;->CreateWindow(I)I

    move-result v3

    iput v3, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunnyCore/GLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 185
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    if-nez v0, :cond_4

    .line 187
    sget-object v2, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getHolder() NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/htc/sunnyCore/GLView;->deinit()V

    goto :goto_0

    .line 192
    :cond_4
    if-ne p3, v7, :cond_5

    .line 194
    sget-object v1, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Surface PixelFormat RGB_565"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 213
    :goto_2
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    move v1, v2

    .line 215
    goto/16 :goto_0

    .line 197
    :cond_5
    if-ne p3, v6, :cond_6

    .line 199
    sget-object v1, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Surface PixelFormat RGB_888"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_2

    .line 202
    :cond_6
    if-ne p3, v2, :cond_7

    .line 204
    sget-object v1, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Surface PixelFormat RGBA_8888"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_2

    .line 209
    :cond_7
    sget-object v1, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Surface PixelFormat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-interface {v0, p3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/GLView;->mActionCode:I

    .line 370
    iget v0, p0, Lcom/htc/sunnyCore/GLView;->mActionCode:I

    packed-switch v0, :pswitch_data_0

    .line 384
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/sunnyCore/GLView;->mZoomGesture:Z

    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 387
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunnyCore/GLView;->supportMultitouch:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 388
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 390
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "onUp"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    .line 394
    :cond_3
    return v4

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    const-string v1, "onScrollEnd"

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunnyCore/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    goto :goto_0

    .line 378
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/GLView;->mZoomGesture:Z

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setSurfaceListener(Lcom/htc/sunnyCore/GLView$SurfaceListener;)V
    .locals 0
    .parameter "surfaceListener"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/sunnyCore/GLView;->surfaceListener:Lcom/htc/sunnyCore/GLView$SurfaceListener;

    .line 245
    return-void
.end method

.method public setTouchListener(Lcom/htc/sunnyCore/GLView$TouchListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/sunnyCore/GLView;->touchListener:Lcom/htc/sunnyCore/GLView$TouchListener;

    .line 253
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 312
    sget-object v0, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceChanged + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v0, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    if-eqz v0, :cond_0

    .line 350
    iget-object v7, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v0, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;

    const-string v3, "BindSurface"

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v1, p0

    move-object v2, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunnyCore/GLView$1RenderThreadInterruption_BindWindow;-><init>(Lcom/htc/sunnyCore/GLView;Ljava/lang/Object;Ljava/lang/String;Landroid/view/Surface;II)V

    invoke-virtual {v7, v0}, Lcom/htc/sunnyCore/RenderThread;->runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z

    .line 353
    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceChanged -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 264
    sget-object v0, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 284
    sget-object v0, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceDestroyed +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v0, p0, Lcom/htc/sunnyCore/GLView;->sunnyWindow:I

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->renderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunnyCore/GLView$1;

    const-string v2, "UnbindSurface"

    invoke-direct {v1, p0, p0, v2}, Lcom/htc/sunnyCore/GLView$1;-><init>(Lcom/htc/sunnyCore/GLView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z

    .line 304
    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/GLView;->LTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "surfaceDestroyed -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method
