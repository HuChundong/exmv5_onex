.class public Lcom/htc/sunny/SView;
.super Ljava/lang/Object;
.source "SView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SView$OnClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BACKGROUND_RENDER_ORDER:I = -0xc8

.field public static final BOTTOM_MOST_RENDER_ORDER:I = -0x64

.field protected static final INVALID_ID:I = 0x0

.field public static final NORMAL_RENDER_ORDER:I = 0x0

.field public static final TOP_MOST_RENDER_ORDER:I = 0x64

.field public static final WRAP_CONTENT:I = -0x1


# instance fields
.field protected mAlpha:I

.field protected mAnimationController:Lcom/htc/sunny/SAnimationController;

.field protected mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mBKPressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBKRestDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundHeight:I

.field protected mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

.field protected mBackgroundPressTextureId:I

.field protected mBackgroundRenderOrder:I

.field protected mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

.field protected mBackgroundRestTextureId:I

.field protected mBackgroundSpriteId:I

.field private mBackgroundWidth:I

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny/SView;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mClickListener:Lcom/htc/sunny/SView$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mEnlargeSensorAreaB:I

.field protected mEnlargeSensorAreaL:I

.field protected mEnlargeSensorAreaR:I

.field protected mEnlargeSensorAreaT:I

.field protected mHasLayoutAnimation:Z

.field protected mIsMaskNode:Z

.field protected mIsPressed:Z

.field protected mIsSurfaceBinded:Z

.field private mOrder:I

.field protected mParentView:Lcom/htc/sunny/SView;

.field protected mRenderOrder:Z

.field protected mRotation:Lcom/htc/sunny/Vector3F;

.field protected mScale:Lcom/htc/sunny/Vector3F;

.field protected mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

.field protected mSurfaceView:Lcom/htc/sunny/SSurfaceView;

.field protected mTouchSensorSpriteId:I

.field protected mTouchable:Z

.field protected mTranslation:Lcom/htc/sunny/Vector3F;

.field protected mViewNodeId:I

.field protected mViewTagObject:Ljava/lang/Object;

.field protected mVisible:Z

.field private mVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 6
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 255
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    .line 46
    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 51
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    .line 58
    iput-object v2, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    .line 63
    iput-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    .line 64
    iput-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 66
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 71
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 76
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    .line 82
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny/SView;->mAlpha:I

    .line 87
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mVisible:Z

    .line 92
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    .line 97
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    .line 102
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    .line 104
    iput-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 109
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 114
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 120
    iput-object v2, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    .line 126
    iput-object v2, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    .line 138
    iput v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    .line 143
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    .line 148
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    .line 153
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    .line 158
    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    .line 164
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 169
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 201
    iput v1, p0, Lcom/htc/sunny/SView;->mOrder:I

    .line 228
    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 230
    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 237
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    .line 242
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    .line 247
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    .line 252
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    .line 256
    iput-object p1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    .line 257
    iput-object p2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    .line 258
    new-instance v0, Lcom/htc/sunny/SView$1;

    invoke-direct {v0, p0, p2}, Lcom/htc/sunny/SView$1;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V
    .locals 6
    .parameter "context"
    .parameter "surfaceView"
    .parameter "bRenderOrder"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 265
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    .line 46
    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 51
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    .line 58
    iput-object v2, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    .line 63
    iput-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    .line 64
    iput-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 66
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 71
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 76
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    .line 82
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny/SView;->mAlpha:I

    .line 87
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mVisible:Z

    .line 92
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    .line 97
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    .line 102
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    .line 104
    iput-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 109
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 114
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 120
    iput-object v2, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    .line 126
    iput-object v2, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    .line 138
    iput v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    .line 143
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    .line 148
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    .line 153
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    .line 158
    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    .line 164
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 169
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 201
    iput v1, p0, Lcom/htc/sunny/SView;->mOrder:I

    .line 228
    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 230
    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 237
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    .line 242
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    .line 247
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    .line 252
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    .line 266
    iput-object p1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    .line 267
    iput-object p2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    .line 268
    iput-boolean p3, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    .line 269
    new-instance v0, Lcom/htc/sunny/SView$2;

    invoke-direct {v0, p0, p2}, Lcom/htc/sunny/SView$2;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny/SView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/sunny/SView;->freeBackgroundDrawable()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny/SView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sunny/SView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny/SView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny/SView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private freeBackgroundDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 312
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 314
    :cond_0
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 319
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 321
    :cond_2
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 323
    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1386
    new-instance v0, Lcom/htc/sunny/SView$18;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$18;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1409
    return-void
.end method

.method public addView(Lcom/htc/sunny/SView;Z)V
    .locals 1
    .parameter "view"
    .parameter "bTopRender"

    .prologue
    .line 1424
    new-instance v0, Lcom/htc/sunny/SView$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$19;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1451
    return-void
.end method

.method public bindSurface()V
    .locals 4

    .prologue
    .line 820
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 821
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 822
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->createResource()V

    .line 823
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 824
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->bindSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 828
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 830
    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 1364
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 1367
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    .line 1369
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1373
    return-void

    .line 1371
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected createResource()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 695
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v1, :cond_2

    .line 698
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    if-ne v5, v1, :cond_d

    .line 699
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v2}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v2

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createMaskNode(IZ)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 704
    :cond_2
    :goto_1
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-nez v1, :cond_3

    .line 705
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    .line 707
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-nez v1, :cond_4

    .line 708
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    .line 711
    :cond_4
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 715
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_5

    .line 716
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 717
    iput-object v6, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 719
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 721
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 722
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_7

    .line 723
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 724
    iput-object v6, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 726
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 730
    :cond_8
    const/4 v0, 0x0

    .line 732
    .local v0, bRenderable:Z
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 733
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 735
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SView;->setBackgroundDisplaySize(II)V

    .line 736
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SView;->setBackgroundRenderOrder(I)V

    .line 738
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 739
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 742
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_a

    .line 743
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    if-nez v1, :cond_9

    .line 744
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    .line 746
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 747
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 748
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 749
    const/4 v0, 0x1

    .line 754
    :cond_a
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_c

    .line 755
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    if-nez v1, :cond_b

    .line 756
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    .line 759
    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 760
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 764
    :cond_c
    if-ne v5, v0, :cond_e

    .line 765
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 770
    :goto_2
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SView;->setTouchable(Z)V

    .line 772
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 774
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    goto/16 :goto_0

    .line 701
    .end local v0           #bRenderable:Z
    :cond_d
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v2}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v2

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createNode(IZ)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    goto/16 :goto_1

    .line 767
    .restart local v0       #bRenderable:Z
    :cond_e
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 856
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 857
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 858
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0, p1}, Lcom/htc/sunny/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 862
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 864
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 898
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_0

    .line 938
    :goto_0
    return-void

    .line 900
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 901
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v2

    .line 902
    .local v2, nHitSpriteId:I
    if-eqz v2, :cond_1

    iget v3, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-ne v3, v2, :cond_1

    .line 903
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 907
    .end local v2           #nHitSpriteId:I
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 908
    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v6, v3, :cond_3

    .line 909
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v2

    .line 910
    .restart local v2       #nHitSpriteId:I
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-eq v3, v2, :cond_3

    .line 911
    :cond_2
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 916
    .end local v2           #nHitSpriteId:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v6, v3, :cond_4

    .line 918
    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v6, v3, :cond_4

    .line 919
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 920
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v2

    .line 921
    .restart local v2       #nHitSpriteId:I
    if-eqz v2, :cond_4

    iget v3, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-ne v3, v2, :cond_4

    .line 922
    iget-object v3, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    if-eqz v3, :cond_4

    .line 923
    iget-object v3, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    invoke-interface {v3}, Lcom/htc/sunny/SView$OnClickListener;->onClick()V

    .line 930
    .end local v2           #nHitSpriteId:I
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 931
    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 932
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_5

    .line 933
    invoke-virtual {v0, p1}, Lcom/htc/sunny/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 936
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method public enableMaskNode(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    .line 306
    return-void
.end method

.method protected freeResource()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 782
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 786
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 790
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 794
    iput v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    .line 796
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 797
    iput v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    .line 799
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 800
    iput v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    .line 802
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 803
    iput v2, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    .line 805
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    if-ne v0, v1, :cond_3

    .line 806
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyMaskNode(I)V

    .line 810
    :goto_1
    iput v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    goto :goto_0

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    goto :goto_1
.end method

.method protected final getPosition()Lcom/htc/sunny/Vector3F;
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    return-object v0
.end method

.method protected getRenderOrder()I
    .locals 1

    .prologue
    .line 1268
    iget v0, p0, Lcom/htc/sunny/SView;->mOrder:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    return v0
.end method

.method public getViewNodeId()I
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    return v0
.end method

.method protected getViewScale()Lcom/htc/sunny/Vector3F;
    .locals 5

    .prologue
    .line 973
    new-instance v1, Lcom/htc/sunny/Vector3F;

    invoke-direct {v1}, Lcom/htc/sunny/Vector3F;-><init>()V

    .line 974
    .local v1, vRes:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_1

    .line 985
    :cond_0
    :goto_0
    return-object v1

    .line 976
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->isStarted()Z

    move-result v2

    if-nez v2, :cond_3

    .line 977
    :cond_2
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isScaleAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 978
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->getCurrentScale()Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 979
    .local v0, v:Lcom/htc/sunny/Vector3F;
    invoke-virtual {v1, v0}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    goto :goto_0

    .line 982
    .end local v0           #v:Lcom/htc/sunny/Vector3F;
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny/Vector3F;->setVector3F(FFF)V

    goto :goto_0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    return v0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLayoutAnimation()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    return v0
.end method

.method public invalidate2DView()V
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView;->postInvalidate()V

    .line 1491
    return-void
.end method

.method public invalidate3DView()V
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView;->requestRender()V

    .line 1483
    return-void
.end method

.method public onAttachedToWindow(Lcom/htc/sunny/SView;)V
    .locals 5
    .parameter "parentView"

    .prologue
    .line 1061
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_0

    .line 1062
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny/SSurfaceView;->getSunnyEngine()Lcom/htc/sunny/SunnyEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 1064
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_1

    .line 1090
    :goto_0
    return-void

    .line 1066
    :cond_1
    iput-object p1, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    .line 1067
    if-eqz p1, :cond_2

    .line 1068
    iget-boolean v2, p1, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 1071
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->createResource()V

    .line 1074
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1075
    iget-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v2, :cond_3

    .line 1076
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    if-ne v2, v3, :cond_5

    .line 1077
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v3, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v3}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v3

    iget-boolean v4, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->createMaskNode(IZ)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 1082
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 1083
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_4

    .line 1084
    invoke-virtual {v0, p0}, Lcom/htc/sunny/SView;->onAttachedToWindow(Lcom/htc/sunny/SView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1087
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 1079
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v3, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v3}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v3

    iget-boolean v4, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->createNode(IZ)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1087
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1098
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1099
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 1100
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->onDetachedFromWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1104
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1107
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->freeResource()V

    .line 1108
    iput-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 1109
    iput-object v3, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    .line 1110
    return-void
.end method

.method protected onFocusChanged(Z)V
    .locals 5
    .parameter "bFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 871
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 873
    :cond_0
    iput-boolean p1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 874
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v4, v0, :cond_2

    .line 875
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 876
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 890
    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 883
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    if-eqz v0, :cond_3

    .line 884
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 886
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method public onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1046
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1047
    iget-object v1, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 1048
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1049
    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SView;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1052
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1054
    return-void
.end method

.method public removeView(Lcom/htc/sunny/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1463
    new-instance v0, Lcom/htc/sunny/SView$20;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$20;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1471
    return-void
.end method

.method public renderAndUpdate2D()V
    .locals 4

    .prologue
    .line 1033
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1034
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 1035
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->renderAndUpdate2D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1039
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1041
    return-void
.end method

.method public renderAndUpdate3D()V
    .locals 4

    .prologue
    .line 946
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 947
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 948
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->renderAndUpdate3D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 952
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 955
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v2, :cond_3

    .line 956
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isReady()Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 957
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->start()V

    .line 959
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 960
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->animate()V

    .line 961
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    .line 962
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    .line 965
    :cond_3
    return-void
.end method

.method protected runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1475
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1251
    new-instance v0, Lcom/htc/sunny/SView$17;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$17;-><init>(Lcom/htc/sunny/SView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1261
    return-void
.end method

.method public setAnimation(Lcom/htc/sunny/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1343
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1345
    iput-object p1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 1346
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->setReady()V

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1353
    return-void

    .line 1351
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setBackgroundDisplaySize(II)V
    .locals 7
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 588
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iput p1, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 591
    iput p2, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    .line 595
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 597
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 600
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    .line 601
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    .line 628
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-eq v1, v0, :cond_4

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-eq v1, v0, :cond_4

    .line 629
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v4, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 631
    iget v0, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    iget v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    iget v2, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    iget v3, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/SView;->setEnlargeSensorArea(IIII)V

    .line 634
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0

    .line 604
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 606
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_6

    .line 607
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 609
    :cond_6
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    goto :goto_1

    .line 612
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_9

    .line 613
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_8

    .line 614
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 616
    :cond_8
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    goto :goto_1

    .line 619
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_3

    .line 620
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_a

    .line 621
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 623
    :cond_a
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    goto :goto_1
.end method

.method public setBackgroundImage(II)V
    .locals 1
    .parameter "nPressResId"
    .parameter "nRestResId"

    .prologue
    .line 458
    new-instance v0, Lcom/htc/sunny/SView$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$7;-><init>(Lcom/htc/sunny/SView;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method public setBackgroundImage(IIII)V
    .locals 6
    .parameter "nPressResId"
    .parameter "nRestResId"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 424
    new-instance v0, Lcom/htc/sunny/SView$6;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$6;-><init>(Lcom/htc/sunny/SView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V
    .locals 1
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"

    .prologue
    .line 375
    new-instance v0, Lcom/htc/sunny/SView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$4;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
    .locals 6
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 396
    new-instance v0, Lcom/htc/sunny/SView$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$5;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method protected setBackgroundImageByTexture(IIII)V
    .locals 6
    .parameter "nTexturPressId"
    .parameter "nTexturRestId"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 330
    new-instance v0, Lcom/htc/sunny/SView$3;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$3;-><init>(Lcom/htc/sunny/SView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawablePress"
    .parameter "drawableRest"

    .prologue
    .line 510
    new-instance v0, Lcom/htc/sunny/SView$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$9;-><init>(Lcom/htc/sunny/SView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method

.method public setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 6
    .parameter "drawablePress"
    .parameter "drawableRest"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 479
    new-instance v0, Lcom/htc/sunny/SView$8;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$8;-><init>(Lcom/htc/sunny/SView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method

.method public setBackgroundPosition(III)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 545
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 546
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    .line 547
    return-void
.end method

.method public setBackgroundRenderOrder(I)V
    .locals 1
    .parameter "nOrder"

    .prologue
    .line 527
    new-instance v0, Lcom/htc/sunny/SView$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$10;-><init>(Lcom/htc/sunny/SView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 537
    return-void
.end method

.method public setEnlargeSensorArea(IIII)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 563
    new-instance v0, Lcom/htc/sunny/SView$11;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$11;-><init>(Lcom/htc/sunny/SView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0
    .parameter "bEnableAnimation"

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    .line 672
    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunny/SView$OnClickListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 649
    iput-object p1, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    .line 650
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1132
    new-instance v0, Lcom/htc/sunny/SView$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SView$12;-><init>(Lcom/htc/sunny/SView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1140
    return-void
.end method

.method protected setRenderOrder(I)V
    .locals 0
    .parameter "nOrder"

    .prologue
    .line 1276
    iput p1, p0, Lcom/htc/sunny/SView;->mOrder:I

    .line 1277
    return-void
.end method

.method public setRotation(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1177
    new-instance v0, Lcom/htc/sunny/SView$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SView$14;-><init>(Lcom/htc/sunny/SView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1186
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1154
    new-instance v0, Lcom/htc/sunny/SView$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SView$13;-><init>(Lcom/htc/sunny/SView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1163
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    .line 1293
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "bTouchable"

    .prologue
    .line 1198
    new-instance v0, Lcom/htc/sunny/SView$15;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$15;-><init>(Lcom/htc/sunny/SView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1210
    return-void
.end method

.method protected setViewNode(IZ)V
    .locals 0
    .parameter "viewId"
    .parameter "bIsMaskNode"

    .prologue
    .line 662
    iput p1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 663
    iput-boolean p2, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    .line 664
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 1230
    new-instance v0, Lcom/htc/sunny/SView$16;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$16;-><init>(Lcom/htc/sunny/SView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1239
    return-void
.end method

.method public startAnimation(Lcom/htc/sunny/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1320
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1322
    iput-object p1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 1323
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->start()V

    .line 1326
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1330
    return-void

    .line 1328
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unBindSurface()V
    .locals 4

    .prologue
    .line 838
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 839
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 840
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 841
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->unBindSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 846
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 844
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->freeResource()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 848
    return-void
.end method

.method protected updateViewLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 989
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 991
    :cond_0
    const/4 v0, 0x0

    .line 992
    .local v0, bAnimationLayout:Z
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 993
    :cond_1
    const/4 v0, 0x1

    .line 996
    :cond_2
    if-ne v8, v0, :cond_3

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_3

    .line 997
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v2

    .line 998
    .local v2, v:Lcom/htc/sunny/Vector3F;
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v2, Lcom/htc/sunny/Vector3F;->mY:F

    iget v7, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 1003
    .end local v2           #v:Lcom/htc/sunny/Vector3F;
    :goto_1
    if-ne v8, v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isRotateAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_4

    .line 1004
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentRotation()Lcom/htc/sunny/Vector3F;

    move-result-object v2

    .line 1005
    .restart local v2       #v:Lcom/htc/sunny/Vector3F;
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v2, Lcom/htc/sunny/Vector3F;->mY:F

    iget v7, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 1010
    .end local v2           #v:Lcom/htc/sunny/Vector3F;
    :goto_2
    if-ne v8, v0, :cond_5

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isScaleAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_5

    .line 1011
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentScale()Lcom/htc/sunny/Vector3F;

    move-result-object v2

    .line 1012
    .restart local v2       #v:Lcom/htc/sunny/Vector3F;
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v2, Lcom/htc/sunny/Vector3F;->mY:F

    iget v7, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeScale(IFFF)V

    .line 1017
    .end local v2           #v:Lcom/htc/sunny/Vector3F;
    :goto_3
    if-ne v8, v0, :cond_6

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isAlphaAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_6

    .line 1018
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentAlpha()I

    move-result v1

    .line 1019
    .local v1, nAlpha:I
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v3, v4, v1}, Lcom/htc/sunny/SunnyEngine;->setNodeAlpha(II)V

    .line 1024
    .end local v1           #nAlpha:I
    :goto_4
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-boolean v5, p0, Lcom/htc/sunny/SView;->mVisible:Z

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeVisible(IZ)V

    goto/16 :goto_0

    .line 1000
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v5, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v7, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_1

    .line 1007
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v5, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v7, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    goto :goto_2

    .line 1014
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v5, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v7, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeScale(IFFF)V

    goto :goto_3

    .line 1021
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, p0, Lcom/htc/sunny/SView;->mAlpha:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeAlpha(II)V

    goto :goto_4
.end method
