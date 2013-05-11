.class public abstract Lcom/htc/sunnyCore/common/CommonView;
.super Lcom/htc/sunnyCore/GLView;
.source "CommonView.java"

# interfaces
.implements Lcom/htc/sunnyCore/GLView$SurfaceListener;
.implements Lcom/htc/sunnyCore/GLView$TouchListener;
.implements Lcom/htc/sunnyCore/RenderThread$EventListener;
.implements Lcom/htc/sunnyCore/IMediaList$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/common/CommonView$ItemEventListener;,
        Lcom/htc/sunnyCore/common/CommonView$OnItemClickListener;,
        Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;,
        Lcom/htc/sunnyCore/common/CommonView$ReLayout;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;",
            ">;"
        }
    .end annotation
.end field

.field protected mCamera:I

.field protected mContext:Landroid/content/Context;

.field protected mEnv:I

.field protected mGLViewHeight:I

.field protected mGLViewWidth:I

.field protected mItemEventListener:Lcom/htc/sunnyCore/common/CommonView$ItemEventListener;

.field protected mListItemCount:I

.field protected mMediaList:Lcom/htc/sunnyCore/IMediaList;

.field protected mOnItemClickListener:Lcom/htc/sunnyCore/common/CommonView$OnItemClickListener;

.field private final mReLayout:Lcom/htc/sunnyCore/common/CommonView$ReLayout;

.field protected mRenderThread:Lcom/htc/sunnyCore/RenderThread;

.field protected mRootNode:I

.field protected mScene:I

.field protected mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

.field protected mSurfacePixelFormat:I

.field protected mThumbWorker:Lcom/htc/sunnyCore/RenderThreadPreparation;

.field protected mViewPort:I

.field private shouldCallOnDestroyIHT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/htc/sunnyCore/common/CommonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 224
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/GLView;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 119
    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mOnItemClickListener:Lcom/htc/sunnyCore/common/CommonView$OnItemClickListener;

    .line 126
    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mItemEventListener:Lcom/htc/sunnyCore/common/CommonView$ItemEventListener;

    .line 136
    iput v4, p0, Lcom/htc/sunnyCore/common/CommonView;->mSurfacePixelFormat:I

    .line 141
    new-instance v0, Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0}, Lcom/htc/sunnyCore/SunnyContext;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 146
    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 151
    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mThumbWorker:Lcom/htc/sunnyCore/RenderThreadPreparation;

    .line 203
    iput-boolean v4, p0, Lcom/htc/sunnyCore/common/CommonView;->shouldCallOnDestroyIHT:Z

    .line 205
    new-instance v0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/common/CommonView$ReLayout;-><init>(Lcom/htc/sunnyCore/common/CommonView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mReLayout:Lcom/htc/sunnyCore/common/CommonView$ReLayout;

    .line 225
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView;->mContext:Landroid/content/Context;

    .line 226
    iput v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mGLViewWidth:I

    .line 227
    iput v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mGLViewHeight:I

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/GLView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "MediaItemRefresh"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    .line 119
    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mOnItemClickListener:Lcom/htc/sunnyCore/common/CommonView$OnItemClickListener;

    .line 126
    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mItemEventListener:Lcom/htc/sunnyCore/common/CommonView$ItemEventListener;

    .line 136
    iput v4, p0, Lcom/htc/sunnyCore/common/CommonView;->mSurfacePixelFormat:I

    .line 141
    new-instance v0, Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0}, Lcom/htc/sunnyCore/SunnyContext;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 146
    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 151
    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mThumbWorker:Lcom/htc/sunnyCore/RenderThreadPreparation;

    .line 203
    iput-boolean v4, p0, Lcom/htc/sunnyCore/common/CommonView;->shouldCallOnDestroyIHT:Z

    .line 205
    new-instance v0, Lcom/htc/sunnyCore/common/CommonView$ReLayout;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/common/CommonView$ReLayout;-><init>(Lcom/htc/sunnyCore/common/CommonView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mReLayout:Lcom/htc/sunnyCore/common/CommonView$ReLayout;

    .line 215
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView;->mContext:Landroid/content/Context;

    .line 216
    iput v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mGLViewWidth:I

    .line 217
    iput v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mGLViewHeight:I

    .line 218
    return-void
.end method

.method private ObtainMediaItemRefresh(II)Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;

    .line 99
    .local v0, object:Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;

    .end local v0           #object:Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;
    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;-><init>(Lcom/htc/sunnyCore/common/CommonView;II)V

    .line 103
    .restart local v0       #object:Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->reset(II)V

    goto :goto_0
.end method

.method private RecycleMediaItemRefresh(Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->free()V

    .line 110
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->MediaItemRefreshRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunnyCore/common/CommonView;Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/common/CommonView;->RecycleMediaItemRefresh(Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)Z
    .locals 1
    .parameter "list"

    .prologue
    .line 575
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunnyCore/common/CommonView;->bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)Z

    move-result v0

    return v0
.end method

.method public bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)Z
    .locals 4
    .parameter "list"
    .parameter "selectedIndex"

    .prologue
    .line 583
    sget-object v1, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v3, "bindMediaListIHT + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v1, :cond_0

    .line 589
    sget-object v1, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v3, "bindMediaListIHT NG - no RenderThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    .line 664
    :goto_0
    return v1

    .line 652
    :cond_0
    new-instance v0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;-><init>(Lcom/htc/sunnyCore/common/CommonView;Ljava/lang/Object;Lcom/htc/sunnyCore/IMediaList;I)V

    .line 654
    .local v0, bindMediaListInterruption:Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;
    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThread;->runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 656
    sget-object v1, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v3, "bindMediaListIHT NG - runInterruptionIHT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->forceLayout()V

    .line 663
    sget-object v1, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v3, "bindMediaListIHT -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->result:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-boolean v1, v0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->result:Z

    goto :goto_0
.end method

.method public create(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 235
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunnyCore/common/CommonView;->create(Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public create(Landroid/os/Bundle;I)Z
    .locals 9
    .parameter "bundle"
    .parameter "surfacePixelFormat"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x8

    .line 243
    sget-object v3, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v5, "init +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, rs:Z
    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    .line 250
    sget-object v3, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v5, "Context PixelFormat RGB_565"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v3, v7, v8, v7, v1}, Lcom/htc/sunnyCore/SunnyContext;->init(IIII)Z

    move-result v0

    .line 269
    :goto_0
    if-nez v0, :cond_3

    .line 271
    sget-object v2, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v4, "Create Sunny Context NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_1
    return v1

    .line 253
    :cond_0
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 255
    sget-object v3, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v5, "Context PixelFormat RGB_888"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v3, v6, v6, v6, v1}, Lcom/htc/sunnyCore/SunnyContext;->init(IIII)Z

    move-result v0

    goto :goto_0

    .line 258
    :cond_1
    if-ne p2, v2, :cond_2

    .line 260
    sget-object v3, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v5, "Context PixelFormat RGBA_8888"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v3, v6, v6, v6, v6}, Lcom/htc/sunnyCore/SunnyContext;->init(IIII)Z

    move-result v0

    goto/16 :goto_0

    .line 265
    :cond_2
    sget-object v3, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v5, "Context PixelFormat NG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 275
    :cond_3
    iget-object v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v3

    iput v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mEnv:I

    .line 277
    iput p2, p0, Lcom/htc/sunnyCore/common/CommonView;->mSurfacePixelFormat:I

    .line 281
    new-instance v3, Lcom/htc/sunnyCore/RenderThread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SunnyRenderThread-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/htc/sunnyCore/RenderThread;-><init>(Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread$EventListener;)V

    iput-object v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 285
    iget-object v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyEnvironment()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v4

    iget-object v5, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-super {p0, v3, v4, p2, v5}, Lcom/htc/sunnyCore/GLView;->init(IIILcom/htc/sunnyCore/RenderThread;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 287
    sget-object v2, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v4, "GLView init NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 289
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->deinit()V

    goto/16 :goto_1

    .line 293
    :cond_4
    invoke-virtual {p0, p0}, Lcom/htc/sunnyCore/common/CommonView;->setSurfaceListener(Lcom/htc/sunnyCore/GLView$SurfaceListener;)V

    .line 294
    invoke-virtual {p0, p0}, Lcom/htc/sunnyCore/common/CommonView;->setTouchListener(Lcom/htc/sunnyCore/GLView$TouchListener;)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/common/CommonView;->onCreateIHT(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 300
    sget-object v2, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v4, "onCreateIHT NG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 302
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->deinit()V

    goto/16 :goto_1

    .line 306
    :cond_5
    iput-boolean v2, p0, Lcom/htc/sunnyCore/common/CommonView;->shouldCallOnDestroyIHT:Z

    .line 310
    iget-object v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/RenderThread;->beginThread()V

    .line 311
    iget-object v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/RenderThread;->waitForRenderThreadReady()Z

    .line 312
    iget-object v3, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v3, v8}, Lcom/htc/sunnyCore/RenderThread;->setPriority(I)V

    .line 314
    sget-object v3, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][CommonView][create]getHolder() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eqz v3, :cond_6

    .line 317
    sget-object v3, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][CommonView][create]getHolder().getSurface() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v3, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][CommonView][create]getHolder().getSurfaceFrame().width() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v3, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][CommonView][create]getHolder().getSurfaceFrame().height() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/htc/sunnyCore/common/CommonView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 323
    :cond_6
    sget-object v1, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v4, "init -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 324
    goto/16 :goto_1
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 332
    sget-object v1, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v3, "deinit +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-super {p0}, Lcom/htc/sunnyCore/GLView;->deinit()V

    .line 336
    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-eqz v1, :cond_0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->endThread()V

    .line 341
    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    .line 350
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunnyCore/common/CommonView;->shouldCallOnDestroyIHT:Z

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->onDestroyIHT()V

    .line 353
    iput-boolean v4, p0, Lcom/htc/sunnyCore/common/CommonView;->shouldCallOnDestroyIHT:Z

    .line 356
    :cond_1
    iput v4, p0, Lcom/htc/sunnyCore/common/CommonView;->mSurfacePixelFormat:I

    .line 358
    iput v4, p0, Lcom/htc/sunnyCore/common/CommonView;->mEnv:I

    .line 359
    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->deinit()V

    .line 361
    sget-object v1, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v3, "deinit -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 345
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v3, "[stop] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected doItemClickOnUiThread(Lcom/htc/sunnyCore/common/CommonView;Lcom/htc/sunnyCore/ViewItem;I)V
    .locals 5
    .parameter "parent"
    .parameter "item"
    .parameter "position"

    .prologue
    .line 946
    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView;->mOnItemClickListener:Lcom/htc/sunnyCore/common/CommonView$OnItemClickListener;

    if-nez v2, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 952
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/htc/sunnyCore/common/CommonView$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/htc/sunnyCore/common/CommonView$1;-><init>(Lcom/htc/sunnyCore/common/CommonView;Lcom/htc/sunnyCore/common/CommonView;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    .end local v0           #activity:Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 964
    .local v1, ex:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v4, "[doItemClickOnUiThread] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mReLayout:Lcom/htc/sunnyCore/common/CommonView$ReLayout;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/CommonView$ReLayout;->requestLayout()V

    .line 919
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderThread()Lcom/htc/sunnyCore/RenderThread;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    return-object v0
.end method

.method public layoutIRT(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 926
    return-void
.end method

.method protected onBindMediaListIRT(Lcom/htc/sunnyCore/IMediaList;I)Z
    .locals 1
    .parameter "list"
    .parameter "selectedIndex"

    .prologue
    .line 745
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateIHT(Landroid/os/Bundle;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 735
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyIHT()V
    .locals 0

    .prologue
    .line 740
    return-void
.end method

.method public onDoubleTapEventIRT(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapIRT(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method public onDownIRT(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method public onFlingIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public onInterruptionEndIRT()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public onLongPressIHT(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 912
    return-void
.end method

.method public onLongPressIRT(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 799
    return-void
.end method

.method public onMediaItemRefresh(II)V
    .locals 3
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_1

    .line 523
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "onMediaItemRefresh NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/common/CommonView;->ObtainMediaItemRefresh(II)Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "onMediaItemRefresh NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMediaItemRefreshIRT(II)V
    .locals 0
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 546
    return-void
.end method

.method public onMediaListChange(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 3
    .parameter "newMediaList"
    .parameter "flags"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_1

    .line 425
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "onMediaListChange NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;-><init>(Lcom/htc/sunnyCore/common/CommonView;Lcom/htc/sunnyCore/IMediaList;I)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "onMediaListChange NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMediaListChangeIRT(Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 0
    .parameter "newMediaList"
    .parameter "flags"

    .prologue
    .line 536
    return-void
.end method

.method public onMediaListRefresh(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_1

    .line 488
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "onMediaListRefresh NG - null render thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;-><init>(Lcom/htc/sunnyCore/common/CommonView;I)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "onMediaListRefresh NG - pushEventIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMediaListRefreshIRT(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 541
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method public onRenderStartIRT()Z
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyContext;->runOnCurrentThread()Z

    .line 383
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->getSunnyWindow()I

    move-result v0

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->Window_GetDefaultViewport(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mViewPort:I

    .line 385
    iget v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mEnv:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->CreateScene(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mScene:I

    .line 386
    iget v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mScene:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->Scene_GetRootNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRootNode:I

    .line 388
    iget v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mScene:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->Scene_GetDefaultCamera(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mCamera:I

    .line 389
    iget v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mCamera:I

    const/high16 v1, 0x4270

    const/high16 v2, 0x4120

    const v3, 0x461c4000

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunnyCore/SunnyCore;->Camera_2DIsometricSetup(IFFF)V

    .line 390
    iget v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mViewPort:I

    iget v1, p0, Lcom/htc/sunnyCore/common/CommonView;->mCamera:I

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->Viewport_LinkCamera(II)V

    .line 392
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView;->mReLayout:Lcom/htc/sunnyCore/common/CommonView$ReLayout;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public onRenderStopIRT()V
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mScene:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->DestroyScene(I)V

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mScene:I

    .line 405
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/SunnyContext;->removeFromCurrentThread()V

    .line 406
    return-void
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 413
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method public onScaleBeginIRT(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 864
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 873
    return-void
.end method

.method public onScaleIRT(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 856
    const/4 v0, 0x1

    return v0
.end method

.method public onScrollEndIRT(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 889
    return-void
.end method

.method public onScrollIRT(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 806
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPressIRT(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 821
    return-void
.end method

.method public onSingleTapConfirmedIHT(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmedIRT(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUpIHT(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUpIRT(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceChangedIRT(II)V
    .locals 0
    .parameter "surfaceWidth"
    .parameter "surfaceHeight"

    .prologue
    .line 775
    iput p1, p0, Lcom/htc/sunnyCore/common/CommonView;->mGLViewWidth:I

    .line 776
    iput p2, p0, Lcom/htc/sunnyCore/common/CommonView;->mGLViewHeight:I

    .line 777
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->forceLayout()V

    .line 778
    return-void
.end method

.method public onSurfaceCreatedIRT(II)V
    .locals 0
    .parameter "surfaceWidth"
    .parameter "surfaceHeight"

    .prologue
    .line 766
    iput p1, p0, Lcom/htc/sunnyCore/common/CommonView;->mGLViewWidth:I

    .line 767
    iput p2, p0, Lcom/htc/sunnyCore/common/CommonView;->mGLViewHeight:I

    .line 768
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->forceLayout()V

    .line 769
    return-void
.end method

.method public onSurfaceDestroyedIRT()V
    .locals 0

    .prologue
    .line 786
    return-void
.end method

.method protected onUnBindMediaListIRT()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method public onUpIRT(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 880
    return-void
.end method

.method public setItemEventListener(Lcom/htc/sunnyCore/common/CommonView$ItemEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 938
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView;->mItemEventListener:Lcom/htc/sunnyCore/common/CommonView$ItemEventListener;

    .line 939
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/sunnyCore/common/CommonView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView;->mOnItemClickListener:Lcom/htc/sunnyCore/common/CommonView$OnItemClickListener;

    .line 934
    return-void
.end method

.method public unbindMediaListIHT()V
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_0

    .line 676
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "unbindMediaListIHT() NG - no RenderThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_0
    return-void

    .line 680
    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "unbindMediaListIHT +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunnyCore/common/CommonView$1UnbindMediaListInterruption;

    invoke-direct {v1, p0, p0}, Lcom/htc/sunnyCore/common/CommonView$1UnbindMediaListInterruption;-><init>(Lcom/htc/sunnyCore/common/CommonView;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->runInterruptionIHT(Lcom/htc/sunnyCore/RenderThreadInterruption;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "unbindMediaListIHT() NG - runInterruptionIHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_1
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "unbindMediaListIHT -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected unbindMediaListIRT()V
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 722
    :cond_0
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "unbindMediaListIRT +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p0}, Lcom/htc/sunnyCore/common/CommonView;->onUnBindMediaListIRT()V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 725
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/common/CommonView;->mListItemCount:I

    .line 726
    sget-object v0, Lcom/htc/sunnyCore/common/CommonView;->LOG_TAG:Ljava/lang/String;

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

    const-string v2, "unbindMediaListIRT -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
