.class public Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;
.super Lcom/htc/sunnyCore/SceneNode;
.source "SSurfaceView.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/SViewParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SViewRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;,
        Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;,
        Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;
    }
.end annotation


# static fields
.field private static final COMMON_PRIVATE_CORNER_RES_ID:Ljava/lang/String; = "com.android.internal.R.drawable.zzz_common_panel_container_mask"


# instance fields
.field private mAlphaFadeInRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

.field private mAlphaFadeOutRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

.field private mBackgroundChanged:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

.field private mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

.field private mBuildSBitmapRunnable_Workaround:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;

.field private mContextMenuForChild:Lcom/htc/sunnyCore/view/SView;

.field private mHight:I

.field private mOverlapRoundCornerBitmap:Landroid/graphics/Bitmap;

.field private mOverlapRoundCornerChanged:Z

.field private mOverlapRoundCornerRect:Landroid/graphics/Rect;

.field private mOverlapRoundCornerResource:I

.field private mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

.field private mOverlapRoundCornerTexture:Lcom/htc/sunnyCore/Texture;

.field private mView:Landroid/view/View;

.field private mWidth:I

.field private mWorkaroundFocusPresent:Z

.field private final sSpriteDefaultPos:Lcom/htc/sunnyCore/view/Vector3F;

.field final synthetic this$0:Lcom/htc/sunnyCore/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView;I)V
    .locals 4
    .parameter
    .parameter "nodeId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 726
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-direct {p0}, Lcom/htc/sunnyCore/SceneNode;-><init>()V

    .line 693
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunnyCore/view/Vector3F;

    .line 696
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$1;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$1;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    .line 711
    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    .line 723
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Lcom/htc/sunnyCore/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    .line 724
    new-instance v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Lcom/htc/sunnyCore/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    .line 727
    iget v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mNodeId:I

    if-eqz v0, :cond_0

    .line 728
    invoke-super {p0}, Lcom/htc/sunnyCore/SceneNode;->release()V

    .line 731
    :cond_0
    iput p2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mNodeId:I

    .line 733
    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 734
    iput v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 736
    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 737
    iput v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 738
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerBitmap:Landroid/graphics/Bitmap;

    .line 739
    iput-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 741
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->setRenderOrderMode(I)V

    .line 742
    return-void
.end method

.method static synthetic access$1100(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 690
    iput-boolean p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;)Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 690
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBuildSBitmapRunnable_Workaround:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 690
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Texture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 690
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/Sprite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 690
    iput p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method private checkAndRenderOrderChanged()V
    .locals 8

    .prologue
    .line 759
    const/high16 v3, -0x8000

    .line 760
    .local v3, hOrder:I
    const/4 v4, 0x0

    .line 762
    .local v4, hView:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v2

    .line 763
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 764
    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    .line 765
    .local v0, childNode:Lcom/htc/sunnyCore/SceneNode;
    instance-of v7, v0, Lcom/htc/sunnyCore/view/SView;

    if-eqz v7, :cond_0

    move-object v1, v0

    .line 766
    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    .line 767
    .local v1, childView:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SView;->getRenderOrder()I

    move-result v6

    .line 768
    .local v6, order:I
    if-lt v6, v3, :cond_0

    .line 769
    move-object v4, v1

    .line 770
    move v3, v6

    .line 763
    .end local v1           #childView:Lcom/htc/sunnyCore/view/SView;
    .end local v6           #order:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 775
    .end local v0           #childNode:Lcom/htc/sunnyCore/SceneNode;
    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    .line 776
    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    .line 777
    .restart local v0       #childNode:Lcom/htc/sunnyCore/SceneNode;
    instance-of v7, v0, Lcom/htc/sunnyCore/view/SView;

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 778
    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    .line 779
    .restart local v1       #childView:Lcom/htc/sunnyCore/view/SView;
    if-ne v1, v4, :cond_3

    .line 780
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/htc/sunnyCore/view/SView;->dispatchRenderOrderChanged(Z)V

    .line 775
    .end local v1           #childView:Lcom/htc/sunnyCore/view/SView;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 783
    .restart local v1       #childView:Lcom/htc/sunnyCore/view/SView;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/htc/sunnyCore/view/SView;->dispatchRenderOrderChanged(Z)V

    goto :goto_2

    .line 787
    .end local v0           #childNode:Lcom/htc/sunnyCore/SceneNode;
    .end local v1           #childView:Lcom/htc/sunnyCore/view/SView;
    :cond_4
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 852
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 853
    iget-object v0, p1, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eq v0, p0, :cond_0

    .line 854
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reparent SView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    invoke-virtual {p1, p0}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 858
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 860
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->requestLayout()V

    .line 863
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 920
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->onDispatchRootKeyEvent(Landroid/view/KeyEvent;)V

    .line 849
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 824
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v5, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->onDispatchRootTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 842
    :cond_0
    return-void

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    .line 829
    .local v1, count:I
    const/4 v2, 0x0

    .line 830
    .local v2, hitSprite:I
    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 831
    iget-object v4, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget v4, v4, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/htc/sunnyCore/SunnyCore;->Window_HitTest(III)I

    move-result v2

    .line 835
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 836
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    .line 837
    .local v0, childNode:Lcom/htc/sunnyCore/SceneNode;
    instance-of v4, v0, Lcom/htc/sunnyCore/view/SView;

    if-eqz v4, :cond_3

    .line 838
    check-cast v0, Lcom/htc/sunnyCore/view/SView;

    .end local v0           #childNode:Lcom/htc/sunnyCore/SceneNode;
    invoke-virtual {v0, p1, v2}, Lcom/htc/sunnyCore/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 835
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public enableOverlapRoundCorner(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "resourceId"
    .parameter "cornerRect"

    .prologue
    .line 1221
    iget v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    iput p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    .line 1227
    iput-object p2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 1230
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0
.end method

.method public getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRenderThread()Lcom/htc/sunnyCore/RenderThread;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    return-object v0
.end method

.method public getSpritePosition(Lcom/htc/sunnyCore/Sprite;)Lcom/htc/sunnyCore/view/Vector3F;
    .locals 5
    .parameter "sprite"

    .prologue
    .line 796
    if-nez p1, :cond_1

    .line 797
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunnyCore/view/Vector3F;

    .line 807
    :cond_0
    :goto_0
    return-object v0

    .line 800
    :cond_1
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    .line 801
    .local v0, pos:Lcom/htc/sunnyCore/view/Vector3F;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget v2, v2, Lcom/htc/sunnyCore/view/SSurfaceView;->mSunnyWindow:I

    iget-object v3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView;->mViewPort:I
    invoke-static {v3}, Lcom/htc/sunnyCore/view/SSurfaceView;->access$900(Lcom/htc/sunnyCore/view/SSurfaceView;)I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/sunnyCore/SunnyCore;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 802
    invoke-static {}, Lcom/htc/sunnyCore/SunnyCore;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    .line 803
    invoke-static {}, Lcom/htc/sunnyCore/SunnyCore;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 804
    invoke-static {}, Lcom/htc/sunnyCore/SunnyCore;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method invalidateGlobalBackground(IIZ)V
    .locals 19
    .parameter "width"
    .parameter "height"
    .parameter "focusPresent"

    .prologue
    .line 971
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mWidth:I

    move/from16 v0, p1

    if-eq v0, v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mHight:I

    move/from16 v0, p2

    if-eq v0, v14, :cond_0

    .line 972
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 973
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mHight:I

    .line 974
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 976
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v14, :cond_0

    .line 977
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    move/from16 v0, p1

    int-to-float v15, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 981
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    move/from16 v0, p1

    if-lt v0, v14, :cond_1

    const/4 v14, 0x1

    move/from16 v0, p2

    if-ge v0, v14, :cond_2

    .line 1098
    :cond_1
    :goto_0
    return-void

    .line 985
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v14, v14, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    if-nez v14, :cond_3

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    if-ne v14, v15, :cond_4

    .line 987
    :cond_3
    const/16 p3, 0x1

    .line 990
    :cond_4
    sget-boolean v14, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v14, :cond_5

    const-string v14, "SSurfaceView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalidateGlobalBackground focusPresent="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_8

    .line 993
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v14, :cond_6

    .line 994
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v14}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 995
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v14}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 996
    if-nez p3, :cond_7

    .line 997
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->start(JLcom/htc/sunnyCore/Sprite;)V

    .line 1097
    :cond_6
    :goto_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    goto :goto_0

    .line 1000
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    goto :goto_1

    .line 1005
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v14, :cond_9

    .line 1006
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1007
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v15, -0x64

    invoke-virtual {v14, v15}, Lcom/htc/sunnyCore/Sprite;->setRenderOrder(I)V

    .line 1010
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 1012
    const/4 v12, 0x0

    .line 1013
    .local v12, sBmpBkg:Lcom/htc/sunnyCore/SBitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v14, v14, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v14, :cond_11

    .line 1014
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v10, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    .line 1015
    .local v10, initDrawable:Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;
    invoke-virtual {v10}, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1016
    .local v3, bmp:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/sunnyCore/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/SBitmap;

    move-result-object v12

    .line 1017
    iget v14, v10, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcWidth:I

    int-to-float v5, v14

    .line 1018
    .local v5, bmpWidth:F
    iget v14, v10, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcHeight:I

    int-to-float v4, v14

    .line 1020
    .local v4, bmpHeight:F
    const/4 v7, 0x0

    .line 1021
    .local v7, fitScreenW:F
    const/4 v6, 0x0

    .line 1023
    .local v6, fitScreenH:F
    iget v11, v10, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;->mOrientation:I

    .line 1024
    .local v11, ori:I
    rem-int/lit16 v11, v11, 0x168

    .line 1025
    if-gez v11, :cond_a

    .line 1026
    add-int/lit16 v11, v11, 0x168

    .line 1028
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 1030
    const/16 v14, 0x5a

    if-eq v11, v14, :cond_b

    const/16 v14, 0x10e

    if-ne v11, v14, :cond_c

    .line 1031
    :cond_b
    move v13, v5

    .line 1032
    .local v13, tmpW:F
    move v5, v4

    .line 1033
    move v4, v13

    .line 1036
    .end local v13           #tmpW:F
    :cond_c
    move/from16 v0, p1

    int-to-float v14, v0

    cmpl-float v14, v5, v14

    if-gez v14, :cond_d

    move/from16 v0, p2

    int-to-float v14, v0

    cmpl-float v14, v4, v14

    if-ltz v14, :cond_10

    .line 1038
    :cond_d
    div-float v9, v4, v5

    .line 1039
    .local v9, imageAspect:F
    move/from16 v0, p2

    int-to-float v14, v0

    move/from16 v0, p1

    int-to-float v15, v0

    div-float v8, v14, v15

    .line 1041
    .local v8, frameAspect:F
    cmpl-float v14, v9, v8

    if-ltz v14, :cond_f

    .line 1043
    move/from16 v0, p2

    int-to-float v6, v0

    .line 1044
    move/from16 v0, p2

    int-to-float v14, v0

    div-float v7, v14, v9

    .line 1059
    .end local v8           #frameAspect:F
    .end local v9           #imageAspect:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    const/high16 v15, 0x3f80

    invoke-virtual {v14, v7, v6, v15}, Lcom/htc/sunnyCore/Sprite;->setScale(FFF)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v14, :cond_12

    .line 1076
    invoke-static {v12}, Lcom/htc/sunnyCore/Texture;->createTexture(Lcom/htc/sunnyCore/SBitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 1077
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v14, v15}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 1083
    :goto_3
    if-eqz v12, :cond_e

    .line 1084
    invoke-virtual {v12}, Lcom/htc/sunnyCore/SBitmap;->recycle()V

    .line 1087
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v14}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 1088
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v14}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 1089
    if-nez p3, :cond_13

    .line 1090
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->start(JLcom/htc/sunnyCore/Sprite;)V

    goto/16 :goto_1

    .line 1048
    .restart local v8       #frameAspect:F
    .restart local v9       #imageAspect:F
    :cond_f
    move/from16 v0, p1

    int-to-float v7, v0

    .line 1049
    move/from16 v0, p1

    int-to-float v14, v0

    mul-float v6, v14, v9

    goto :goto_2

    .line 1055
    .end local v8           #frameAspect:F
    .end local v9           #imageAspect:F
    :cond_10
    move v7, v5

    .line 1056
    move v6, v4

    goto :goto_2

    .line 1064
    .end local v3           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #bmpHeight:F
    .end local v5           #bmpWidth:F
    .end local v6           #fitScreenH:F
    .end local v7           #fitScreenW:F
    .end local v10           #initDrawable:Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;
    .end local v11           #ori:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBuildSBitmapRunnable_Workaround:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;

    if-nez v14, :cond_1

    .line 1065
    new-instance v14, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v14, v0, v15, v1, v2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBuildSBitmapRunnable_Workaround:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;

    .line 1066
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;
    invoke-static {v14}, Lcom/htc/sunnyCore/view/SSurfaceView;->access$1200(Lcom/htc/sunnyCore/view/SSurfaceView;)Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBuildSBitmapRunnable_Workaround:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$BuildGlobalSBitmapRunnable;

    invoke-virtual {v14, v15}, Lcom/htc/sunnyCore/view/SSurfaceView$EventDispatcher;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1080
    .restart local v3       #bmp:Landroid/graphics/Bitmap;
    .restart local v4       #bmpHeight:F
    .restart local v5       #bmpWidth:F
    .restart local v6       #fitScreenH:F
    .restart local v7       #fitScreenW:F
    .restart local v10       #initDrawable:Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;
    .restart local v11       #ori:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v14, v12}, Lcom/htc/sunnyCore/Texture;->setSBitmap(Lcom/htc/sunnyCore/SBitmap;)V

    goto :goto_3

    .line 1093
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    goto/16 :goto_1
.end method

.method invalidateOverlapRoundCorner(II)V
    .locals 18
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1141
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mWidth:I

    move/from16 v0, p1

    if-eq v0, v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mHight:I

    move/from16 v0, p2

    if-eq v0, v13, :cond_0

    .line 1142
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mWidth:I

    .line 1143
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mHight:I

    .line 1144
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    .line 1146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v13, :cond_0

    .line 1147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 1151
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    const/4 v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 1218
    :cond_1
    :goto_0
    return-void

    .line 1155
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    if-nez v13, :cond_4

    .line 1156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v13, :cond_3

    .line 1159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 1217
    :cond_3
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerChanged:Z

    goto :goto_0

    .line 1163
    :cond_4
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1164
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1166
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerRect:Landroid/graphics/Rect;

    .line 1167
    .local v5, extraPadding:Landroid/graphics/Rect;
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 1168
    .local v8, pLeft:I
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 1169
    .local v9, pRiget:I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 1170
    .local v10, pTop:I
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 1172
    .local v7, pBottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v13}, Lcom/htc/sunnyCore/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1173
    .local v11, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerResource:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1174
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    sub-int v14, p2, v7

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v13, v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1175
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1176
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v13, v14, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1177
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1178
    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1179
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1180
    sub-int v13, p1, v9

    const/4 v14, 0x0

    sub-int v15, p2, v7

    move/from16 v0, p1

    invoke-virtual {v4, v13, v14, v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1181
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1183
    const-string v13, "com.android.internal.R.drawable.zzz_common_panel_container_mask"

    invoke-static {v13}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v12

    .line 1184
    .local v12, resId:I
    if-nez v12, :cond_6

    .line 1185
    const-string v13, "SSurfaceView"

    const-string v14, "[invalidateOverlapRoundCorner] get common resource fail: com.android.internal.R.drawable.zzz_common_panel_container_mask"

    new-instance v15, Ljava/lang/Exception;

    const-string v16, ""

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v13, :cond_7

    .line 1194
    invoke-static {v2}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunnyCore/Texture;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunnyCore/Texture;

    .line 1200
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v13, :cond_5

    .line 1203
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v13, v14}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/htc/sunnyCore/Sprite;->setRenderOrder(I)V

    .line 1214
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    goto/16 :goto_1

    .line 1188
    :cond_6
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1189
    .local v6, maskDrawable:Landroid/graphics/drawable/Drawable;
    sub-int v13, p1, v9

    sub-int v14, p2, v7

    invoke-virtual {v6, v8, v10, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1190
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1197
    .end local v6           #maskDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mOverlapRoundCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v13, v2}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public isBindedSurface()Z
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(I)Z
    .locals 2
    .parameter "feedbackConstant"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$3;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 891
    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 2
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$4;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 901
    const/4 v0, 0x1

    return v0
.end method

.method public playSoundEffect(I)V
    .locals 2
    .parameter "soundConstant"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$2;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 883
    return-void
.end method

.method public refreshRenderOrder(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView;->onRefreshRootRenderOrder(Ljava/lang/Object;)V

    .line 792
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 793
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mNodeId:I

    .line 747
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 749
    iput-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 754
    iput-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    .line 756
    :cond_1
    return-void
.end method

.method public removeView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 866
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 867
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 868
    invoke-direct {p0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 871
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView;->mReLayout:Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;
    invoke-static {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->access$1000(Lcom/htc/sunnyCore/view/SSurfaceView;)Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView$ReLayout;->requestLayout()V

    .line 812
    return-void
.end method

.method public setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 944
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 968
    :goto_0
    return-void

    .line 948
    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView$Global3DBitmapDrawable;

    if-eqz v0, :cond_3

    .line 949
    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    .line 950
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeOutRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeOutRunnable;->stop()V

    .line 951
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mAlphaFadeInRunnable:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$AlphaFadeInRunnable;->stop()V

    .line 952
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 960
    :cond_1
    :goto_1
    iput v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    .line 962
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 963
    iput-boolean v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    .line 965
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGlobalBackgroundDrawable drawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0

    .line 957
    :cond_3
    iput-boolean v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mWorkaroundFocusPresent:Z

    goto :goto_1
.end method

.method public setGlobalBackgroundResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 929
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 940
    :goto_0
    return-void

    .line 933
    :cond_0
    const/4 v0, 0x0

    .line 934
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 935
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 937
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 939
    iput p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    goto :goto_0
.end method

.method public showContextMenuForChild(Lcom/htc/sunnyCore/view/SView;)Z
    .locals 2
    .parameter "originalView"

    .prologue
    .line 905
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunnyCore/view/SView;

    .line 908
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$5;

    invoke-direct {v1, p0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$5;-><init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    const/4 v0, 0x1

    return v0
.end method
