.class public Lcom/htc/sunny2/widget/gridview/GridItemFolder;
.super Lcom/htc/sunnyCore/widget/gridview/GridViewItem;
.source "GridItemFolder.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemFolder;
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IPreparatorPrototype;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridItemFolder$1;,
        Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = " "

.field private static final FOLDER_ITEM_SPRITE_LAYER_BKG:I = 0x0

.field private static final FOLDER_ITEM_SPRITE_LAYER_COUNT:I = 0x2

.field private static final FOLDER_ITEM_SPRITE_LAYER_THUMB:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "GridItemFolder"

.field private static final ROTATE_DEGREE:F = -8.0f

.field protected static final SPRITE_LAYER_BACKGROUND:I = 0x1

.field protected static final SPRITE_LAYER_COUNT:I = 0x3

.field protected static final SPRITE_LAYER_FOLDER_NAME:I = 0x2

.field protected static final SPRITE_LAYER_SELECTOR:I


# instance fields
.field private mBGTexture:Lcom/htc/sunnyCore/Texture;

.field private mBkSprite:Lcom/htc/sunnyCore/Sprite;

.field private mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

.field private mDataIndex:I

.field private mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

.field private mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

.field private mIsSelected:Z

.field protected mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

.field private mMediaData:Lcom/htc/sunnyCore/IMediaData;

.field private mPresetItemW:I

.field private mSelectedTexture:Lcom/htc/sunnyCore/Texture;

.field private mShareTextureKey:Ljava/lang/String;

.field private mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

.field private mTextViewContainer:Landroid/view/View;

.field private mTextViewDateTime:Landroid/widget/TextView;

.field private mTextViewName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V
    .locals 1
    .parameter "context"
    .parameter "sContext"
    .parameter "param"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "sContext"
    .parameter "param"
    .parameter "prototypeKey"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 61
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mDataIndex:I

    .line 76
    invoke-static {v1, v3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->spawn(Landroid/content/Context;Z)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    .line 78
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 80
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder;Lcom/htc/sunny2/widget/gridview/GridItemFolder$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    .line 81
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mIsSelected:Z

    .line 783
    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mPresetItemW:I

    .line 89
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v0, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 91
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget-boolean v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mSupportImageOverlay:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->enableItemFixedDimension()V

    .line 94
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->enableItemFocusedAnimation()V

    .line 97
    :cond_0
    if-nez p4, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemFolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    .line 108
    :goto_0
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/gridview/animation/AnimationGridItem;-><init>()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setItemAnimation(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;)V

    .line 109
    return-void

    .line 103
    :cond_1
    iput-object p4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/RenderThreadHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/RenderThreadHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/GridItemFolder;)Lcom/htc/sunnyCore/RenderThreadHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    return-object v0
.end method

.method private adjustRotation4FolderSprite(Lcom/htc/sunnyCore/Sprite;I)F
    .locals 4
    .parameter "sprite"
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x3f00

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, fRotation:F
    const/4 v1, 0x1

    if-ne v1, p2, :cond_2

    .line 724
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    mul-float v0, v1, v2

    .line 728
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 729
    invoke-virtual {p1, v3, v3, v0}, Lcom/htc/sunnyCore/Sprite;->setRotate(FFF)V

    .line 731
    :cond_1
    return v0

    .line 725
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 726
    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method private setText(Lcom/htc/sunnyCore/IMediaData;)V
    .locals 9
    .parameter "mediaData"

    .prologue
    const/4 v8, 0x0

    .line 678
    instance-of v6, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-nez v6, :cond_0

    .line 714
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 683
    check-cast v0, Lcom/htc/sunnyCore/IMediaDataFolder;

    .line 684
    .local v0, mediaFolder:Lcom/htc/sunnyCore/IMediaDataFolder;
    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, szName:Ljava/lang/String;
    invoke-interface {v0}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, szDateTime:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 688
    .local v1, spriteText:Lcom/htc/sunnyCore/Sprite$Layer;
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 690
    invoke-virtual {v1, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 694
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v6}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 695
    .local v5, textViewContainer:Landroid/view/View;
    if-nez v5, :cond_2

    .line 696
    const-string v6, "GridItemFolder"

    const-string v7, "[setText] ViewContainer is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v1, v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 701
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    .line 702
    .local v4, textTexture:Lcom/htc/sunnyCore/Texture;
    if-nez v4, :cond_3

    .line 704
    invoke-static {v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    .line 705
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    .line 712
    :goto_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V

    goto :goto_0

    .line 709
    :cond_3
    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setupAnimation(IIILcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V
    .locals 11
    .parameter "folderIdx"
    .parameter "duration"
    .parameter "delayTime"
    .parameter "postionOffset"
    .parameter "rotateOffset"
    .parameter "intpolator"

    .prologue
    .line 561
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge p1, v5, :cond_0

    .line 563
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v4, v5, p1

    .line 565
    .local v4, s:Lcom/htc/sunnyCore/Sprite;
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Sprite;->getPosition()[F

    move-result-object v2

    .line 566
    .local v2, pos:[F
    invoke-virtual {v4}, Lcom/htc/sunnyCore/Sprite;->getRotate()[F

    move-result-object v3

    .line 568
    .local v3, rotate:[F
    new-instance v1, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 569
    .local v1, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    int-to-long v5, p2

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 570
    int-to-long v5, p3

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    .line 571
    new-instance v5, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v8, v2, v8

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v7, 0x0

    aget v7, v2, v7

    iget v8, p4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v2, v8

    iget v9, p4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v2, v9

    iget v10, p4, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    add-float/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 573
    new-instance v5, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    const/4 v8, 0x2

    aget v8, v3, v8

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v7, 0x0

    aget v7, v3, v7

    move-object/from16 v0, p5

    iget v8, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    move-object/from16 v0, p5

    iget v9, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    move-object/from16 v0, p5

    iget v10, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    add-float/2addr v9, v10

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 575
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 577
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    new-instance v6, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v4, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->addUnit(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;)V

    .line 579
    .end local v1           #controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    .end local v2           #pos:[F
    .end local v3           #rotate:[F
    .end local v4           #s:Lcom/htc/sunnyCore/Sprite;
    :cond_0
    return-void
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 17
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    .line 326
    if-nez p2, :cond_1

    .line 328
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MediaData="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is null at bindMediaData"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, msg:Ljava/lang/String;
    const-string v14, "GridItemFolder"

    invoke-static {v14, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v8           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mDataIndex:I

    .line 334
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget-boolean v14, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mIsViewBackgroundDecode:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v14, :cond_3

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    instance-of v14, v14, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    if-eqz v14, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    check-cast v14, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->getViewTexture(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V

    .line 345
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v14, :cond_4

    .line 347
    const/4 v9, 0x0

    .local v9, nIndex:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v14, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v9, v14, :cond_4

    .line 349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1, v9}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9, v14}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setThumbTexture(IILcom/htc/sunnyCore/Texture;)V

    .line 347
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 341
    .end local v9           #nIndex:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setText(Lcom/htc/sunnyCore/IMediaData;)V

    goto :goto_1

    .line 354
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    if-eqz v14, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    move/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v14, v0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V

    .line 357
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    if-eqz v14, :cond_8

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v11, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 360
    .local v11, nItemW:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v10, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 362
    .local v10, nItemH:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v14}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v5

    .line 363
    .local v5, itemHeight:I
    sub-int v14, v5, v10

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float v3, v14, v15

    .line 364
    .local v3, bgTextureY:F
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaData;->getMediaDataList()Ljava/util/ArrayList;

    move-result-object v7

    .line 365
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    const/4 v9, 0x0

    .restart local v9       #nIndex:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v14, v14, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v9, v14, :cond_8

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v12, v14, v9

    .line 368
    .local v12, sprite:Lcom/htc/sunnyCore/Sprite;
    const/4 v14, 0x0

    neg-float v15, v3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->adjustRotation4FolderSprite(Lcom/htc/sunnyCore/Sprite;I)F

    .line 370
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v9, :cond_7

    .line 371
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunnyCore/IMediaData;

    .line 372
    .local v13, subMediaData:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v13, :cond_7

    instance-of v14, v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v14, :cond_7

    .line 373
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v6

    .line 374
    .local v6, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    check-cast v13, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local v13           #subMediaData:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v13}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v4

    .line 375
    .local v4, degree:I
    if-eqz v4, :cond_7

    .line 376
    rem-int/lit16 v4, v4, 0x168

    .line 377
    if-gez v4, :cond_6

    .line 378
    add-int/lit16 v4, v4, 0x168

    .line 380
    :cond_6
    invoke-virtual {v6, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 365
    .end local v4           #degree:I
    .end local v6           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 386
    .end local v3           #bgTextureY:F
    .end local v5           #itemHeight:I
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/htc/sunnyCore/IMediaData;>;"
    .end local v9           #nIndex:I
    .end local v10           #nItemH:I
    .end local v11           #nItemW:I
    .end local v12           #sprite:Lcom/htc/sunnyCore/Sprite;
    :cond_8
    invoke-interface/range {p2 .. p2}, Lcom/htc/sunnyCore/IMediaData;->isSelected()Z

    move-result v14

    if-eqz v14, :cond_0

    goto/16 :goto_0
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    .prologue
    .line 314
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-result-object v1

    .line 315
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;)V

    .line 317
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemFolder;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 318
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    .line 319
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    .line 320
    return-object v0
.end method

.method public create(Z)Lcom/htc/sunnyCore/ViewItem;
    .locals 1
    .parameter "isChild"

    .prologue
    .line 718
    const/4 v0, 0x0

    return-object v0
.end method

.method public createResource()V
    .locals 27

    .prologue
    .line 121
    invoke-super/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->createResource()V

    .line 123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v25

    .line 124
    .local v25, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-nez v25, :cond_0

    .line 126
    new-instance v25, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;

    .end local v25           #sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdSelector:I

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/resource/TextureFolder;-><init>(Landroid/content/Context;II)V

    .line 129
    .restart local v25       #sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;)V

    .line 132
    :cond_0
    move-object/from16 v0, v25

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 134
    const-string v4, "NAME_TEXTURE_BACKGROUND"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    .line 135
    const-string v4, "NAME_TEXTURE_SELECTED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSelectedTexture:Lcom/htc/sunnyCore/Texture;

    .line 142
    const/16 v23, 0x0

    .line 144
    .local v23, nItemHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->isItemFixedDimension()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemDimension()I

    move-result v20

    .line 147
    .local v20, nImageDimension:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move/from16 v0, v20

    iput v0, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemToTextGap()I

    move-result v5

    add-int v5, v5, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 157
    :cond_2
    move/from16 v23, v20

    .line 173
    .end local v20           #nImageDimension:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 178
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 184
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    move/from16 v24, v0

    .line 185
    .local v24, nItemWTotal:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    move/from16 v22, v0

    .line 187
    .local v22, nItemHTotal:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemBackgroundOffsetY()F

    move-result v7

    .line 190
    .local v7, itemBackgroundOffsetY:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    if-nez v4, :cond_8

    .line 192
    sub-int v4, v23, v22

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float v19, v4, v5

    .line 193
    .local v19, bgTextureY:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    new-array v4, v4, [Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    .line 194
    const/16 v21, 0x0

    .local v21, nIndex:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    move/from16 v0, v21

    if-ge v0, v4, :cond_8

    .line 196
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v26

    .line 197
    .local v26, sprite:Lcom/htc/sunnyCore/Sprite;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aput-object v26, v4, v21

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 200
    const/4 v4, 0x0

    move/from16 v0, v19

    neg-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->adjustRotation4FolderSprite(Lcom/htc/sunnyCore/Sprite;I)F

    .line 203
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    .line 204
    .local v3, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 205
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 207
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbW:I

    int-to-float v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    int-to-float v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 213
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 194
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 161
    .end local v3           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v7           #itemBackgroundOffsetY:F
    .end local v19           #bgTextureY:F
    .end local v21           #nIndex:I
    .end local v22           #nItemHTotal:I
    .end local v24           #nItemWTotal:I
    .end local v26           #sprite:Lcom/htc/sunnyCore/Sprite;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 164
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemToTextGap()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mTextViewH:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mDateViewH:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 167
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v23

    goto/16 :goto_0

    .line 218
    .restart local v7       #itemBackgroundOffsetY:F
    .restart local v22       #nItemHTotal:I
    .restart local v24       #nItemWTotal:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    if-nez v4, :cond_9

    .line 220
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 224
    :cond_9
    const/4 v11, 0x0

    .line 225
    .local v11, mImgOriginalX:F
    const/4 v3, 0x0

    .line 228
    .restart local v3       #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    sub-int v4, v23, v22

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float v12, v4, v5

    .line 229
    .local v12, selectedTextureY:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    .line 230
    move/from16 v0, v23

    int-to-float v9, v0

    move/from16 v0, v23

    int-to-float v10, v0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 231
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mSelectedTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 232
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v4, v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mThumbH:I

    sub-int v4, v4, v23

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float v19, v4, v5

    .line 236
    .restart local v19       #bgTextureY:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v4

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    int-to-float v15, v4

    add-float v17, v19, v7

    const/16 v18, 0x0

    move-object v13, v3

    move/from16 v16, v11

    invoke-virtual/range {v13 .. v18}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 238
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 239
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    .line 243
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 244
    return-void
.end method

.method public freeResource()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 249
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->stop()V

    .line 251
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 254
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextTextureContainer:Lcom/htc/sunnyCore/Texture;

    .line 257
    :cond_0
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/View;

    .line 258
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewName:Landroid/widget/TextView;

    .line 259
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewDateTime:Landroid/widget/TextView;

    .line 261
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    if-eqz v3, :cond_2

    .line 263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v1, v3, v0

    .line 266
    .local v1, s:Lcom/htc/sunnyCore/Sprite;
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 267
    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 268
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aput-object v4, v3, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v1           #s:Lcom/htc/sunnyCore/Sprite;
    :cond_1
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    .line 273
    .end local v0           #i:I
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v3, :cond_3

    .line 275
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 276
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 277
    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    .line 280
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    move-result-object v2

    .line 281
    .local v2, sharedTexture:Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    if-eqz v2, :cond_4

    .line 283
    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 284
    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->referenceCount:I

    if-nez v3, :cond_4

    .line 286
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;

    .line 287
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->release()V

    .line 291
    :cond_4
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->freeResource()V

    .line 292
    return-void
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 742
    const/16 v0, 0x65

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 754
    const/4 v0, -0x1

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 750
    const/4 v0, -0x1

    return v0
.end method

.method public getFolderItemCount()I
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    return v0
.end method

.method public getMediaData()Lcom/htc/sunnyCore/IMediaData;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    return-object v0
.end method

.method public getOriginalPosition()[Lcom/htc/sunnyCore/view/Vector3F;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getHeight()I

    move-result v3

    .line 530
    .local v3, nItemH:I
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v2

    .line 532
    .local v2, itemHeight:I
    sub-int v5, v2, v3

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float v0, v5, v6

    .line 533
    .local v0, bgTextureY:F
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    new-array v4, v5, [Lcom/htc/sunnyCore/view/Vector3F;

    .line 534
    .local v4, pos:[Lcom/htc/sunnyCore/view/Vector3F;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v1, v5, :cond_0

    .line 536
    new-instance v5, Lcom/htc/sunnyCore/view/Vector3F;

    neg-float v6, v0

    invoke-direct {v5, v7, v6, v7}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    aput-object v5, v4, v1

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_0
    return-object v4
.end method

.method public getOriginalRotation()[Lcom/htc/sunnyCore/view/Vector3F;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 544
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    new-array v1, v2, [Lcom/htc/sunnyCore/view/Vector3F;

    .line 545
    .local v1, rot:[Lcom/htc/sunnyCore/view/Vector3F;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v2, :cond_0

    .line 547
    new-instance v2, Lcom/htc/sunnyCore/view/Vector3F;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->adjustRotation4FolderSprite(Lcom/htc/sunnyCore/Sprite;I)F

    move-result v3

    invoke-direct {v2, v4, v4, v3}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    aput-object v2, v1, v0

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_0
    return-object v1
.end method

.method public getPrototypeId()I
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public getVCropPosition()F
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public getView(Lcom/htc/sunnyCore/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 12
    .parameter "mediaData"
    .parameter "viewContainer"

    .prologue
    .line 787
    instance-of v9, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-nez v9, :cond_0

    .line 789
    const-string v9, "GridItemFolder"

    const-string v10, "[getView] IMediaData is not instance of IMediaDataFolder"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const/4 v9, 0x0

    .line 848
    :goto_0
    return-object v9

    :cond_0
    move-object v3, p1

    .line 801
    check-cast v3, Lcom/htc/sunnyCore/IMediaDataFolder;

    .line 802
    .local v3, mediaFolder:Lcom/htc/sunnyCore/IMediaDataFolder;
    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 803
    .local v6, szName:Ljava/lang/String;
    invoke-interface {v3}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDateName()Ljava/lang/String;

    move-result-object v5

    .line 805
    .local v5, szDateTime:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_3

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_3

    .line 807
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 813
    :cond_3
    if-nez p2, :cond_4

    .line 815
    iget-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/View;

    .line 817
    :cond_4
    if-nez p2, :cond_5

    .line 819
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getViewResId(Lcom/htc/sunnyCore/IMediaData;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->inflateViewContainer(I)Landroid/view/View;

    move-result-object p2

    .line 820
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mTextViewContainer:Landroid/view/View;

    .line 823
    :cond_5
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextViewId:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 824
    .local v8, textViewName:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v9, v9, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdDateViewId:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 826
    .local v7, textViewDateTime:Landroid/widget/TextView;
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getWidth()I

    move-result v4

    .line 830
    .local v4, nItemW:I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getHeight()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 831
    :cond_6
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mPresetItemW:I

    .line 832
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 833
    iget-object v9, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v10, v10, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 834
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 835
    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mPresetItemW:I

    .line 839
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_7
    const/high16 v9, 0x4000

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 840
    .local v2, measureW:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 841
    .local v1, measureH:I
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->measure(II)V

    .line 842
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {p2, v9, v10, v4, v11}, Landroid/view/View;->layout(IIII)V

    move-object v9, p2

    .line 848
    goto/16 :goto_0
.end method

.method public getViewId(Lcom/htc/sunnyCore/IMediaData;)Ljava/lang/String;
    .locals 3
    .parameter "mediaData"

    .prologue
    .line 772
    instance-of v1, p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    if-eqz v1, :cond_1

    .line 773
    check-cast p1, Lcom/htc/sunnyCore/IMediaDataFolder;

    .end local p1
    invoke-interface {p1}, Lcom/htc/sunnyCore/IMediaDataFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, displayName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 775
    const-string v1, "GridItemFolder"

    const-string v2, "[getViewId] displayName is null"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    .end local v0           #displayName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 779
    .restart local p1
    :cond_1
    const-string v1, "GridItemFolder"

    const-string v2, "[getViewId] mediaData null or not IMediaDataFolder"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewResId(Lcom/htc/sunnyCore/IMediaData;)I
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    return v0
.end method

.method public inflateViewContainer(I)Landroid/view/View;
    .locals 4
    .parameter "viewResId"

    .prologue
    const/4 v1, 0x0

    .line 762
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mResIdTextLayout:I

    if-eq p1, v2, :cond_0

    .line 764
    const-string v2, "GridItemFolder"

    const-string v3, "[inflateViewContainer] Unsupported view res id"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :goto_0
    return-object v1

    .line 767
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 768
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v1, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 116
    .local v1, nItemW:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v0, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 117
    .local v0, nItemH:I
    invoke-virtual {p0, v1, v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setMeasuredDimension(II)V

    .line 118
    return-void
.end method

.method public setAlpha4FolderItem(IF)V
    .locals 3
    .parameter "nIndex"
    .parameter "fAlpha"

    .prologue
    .line 596
    const/4 v0, 0x0

    .local v0, nImageIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v0, v2, :cond_1

    .line 598
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v1, v2, v0

    .line 599
    .local v1, sprite:Lcom/htc/sunnyCore/Sprite;
    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_0

    .line 601
    invoke-virtual {v1, p2}, Lcom/htc/sunnyCore/Sprite;->setAlpha(F)V

    .line 596
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    .end local v1           #sprite:Lcom/htc/sunnyCore/Sprite;
    :cond_1
    return-void
.end method

.method public setBackground(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 441
    return-void
.end method

.method public setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V
    .locals 0
    .parameter "contentGetter"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    .line 517
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "isPressed"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemClickAnimation:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemAnimationGetter;

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 436
    return-void
.end method

.method public setTextThumbnail(Lcom/htc/sunnyCore/Texture;)V
    .locals 13
    .parameter "texture"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v10, 0x4000

    const/4 v5, 0x0

    .line 486
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBkSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v12}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 487
    .local v0, spriteText:Lcom/htc/sunnyCore/Sprite$Layer;
    invoke-virtual {v0, v5, p1}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 488
    if-nez p1, :cond_0

    .line 489
    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 512
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->getHeight()I

    move-result v7

    .line 494
    .local v7, nItemH:I
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v8

    .line 495
    .local v8, nTextNewHeight:I
    invoke-virtual {p1}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v9

    .line 497
    .local v9, nTextNewWidth:I
    const/4 v3, 0x0

    .line 498
    .local v3, fOrigXImage:F
    const/4 v4, 0x0

    .line 499
    .local v4, fOrigYTextview:F
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->layoutGetter()Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;->itemToTextGap()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v8

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    int-to-float v2, v7

    div-float/2addr v2, v10

    sub-float v4, v1, v2

    .line 501
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->getGeometry()[I

    move-result-object v6

    .line 502
    .local v6, geometry:[I
    aget v1, v6, v5

    if-ne v9, v1, :cond_1

    aget v1, v6, v11

    if-ne v8, v1, :cond_1

    float-to-int v1, v3

    aget v2, v6, v12

    if-ne v1, v2, :cond_1

    float-to-int v1, v4

    const/4 v2, 0x3

    aget v2, v6, v2

    if-eq v1, v2, :cond_2

    .line 508
    :cond_1
    int-to-float v1, v9

    int-to-float v2, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 511
    :cond_2
    invoke-virtual {v0, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setThumbTexture(IILcom/htc/sunnyCore/Texture;)V
    .locals 6
    .parameter "nIndexFolder"
    .parameter "nIndexImage"
    .parameter "texture"

    .prologue
    const/4 v4, 0x1

    .line 451
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-lt p2, v3, :cond_0

    .line 453
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v5, v5, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v2, v3, p2

    .line 459
    .local v2, sprite:Lcom/htc/sunnyCore/Sprite;
    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 460
    .local v1, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, isVisible:Z
    if-nez p2, :cond_3

    .line 465
    invoke-virtual {v2, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 466
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_2

    .line 467
    :cond_1
    const/4 v0, 0x0

    .line 471
    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 483
    :goto_1
    return-void

    .line 469
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 475
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v3

    if-nez v3, :cond_5

    .line 476
    :cond_4
    const/4 v0, 0x0

    .line 480
    :goto_2
    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 481
    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    goto :goto_1

    .line 478
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public setThumbTexture(Lcom/htc/sunnyCore/Texture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 445
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->setThumbTexture(IILcom/htc/sunnyCore/Texture;)V

    .line 446
    return-void
.end method

.method public setupSpriteAnimation(ILcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 4
    .parameter "folderIdx"
    .parameter "controller"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 585
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v0, v1, p1

    .line 586
    .local v0, s:Lcom/htc/sunnyCore/Sprite;
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v0, p2}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;-><init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->addUnit(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;)V

    .line 588
    .end local v0           #s:Lcom/htc/sunnyCore/Sprite;
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->start()V

    .line 593
    return-void
.end method

.method public unbindMediaData()V
    .locals 4

    .prologue
    .line 398
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mMediaData:Lcom/htc/sunnyCore/IMediaData;

    .line 399
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mDataIndex:I

    .line 400
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    if-eqz v3, :cond_0

    .line 401
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItemFolder;->mOverlapImages:I

    if-ge v1, v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderSprite:[Lcom/htc/sunnyCore/Sprite;

    aget-object v2, v3, v1

    .line 403
    .local v2, sprite:Lcom/htc/sunnyCore/Sprite;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 404
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v0           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v1           #nIndex:I
    .end local v2           #sprite:Lcom/htc/sunnyCore/Sprite;
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder;->mFolderAnimationManager:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;->stop()V

    .line 408
    return-void
.end method
