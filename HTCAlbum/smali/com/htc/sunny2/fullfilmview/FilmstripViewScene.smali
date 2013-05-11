.class public Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
.super Ljava/lang/Object;
.source "FilmstripViewScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;,
        Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final DEFAULT_SPACING:I = 0x3

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private FLAG_GALLERY_BOUNCE:Z

.field protected INVALID_POSITION:I

.field protected mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mChildrenCount:I

.field private mCloseOverbound:Z

.field protected mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

.field protected mDefaultChildHeight:I

.field protected mDefaultChildWidth:I

.field private mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mDownTouchPosition:I

.field private mEnableChildShadow:Z

.field protected mEnv:I

.field protected mFirstPosition:I

.field protected mGalleryLeft:I

.field protected mGalleryRight:I

.field protected mGalleryY:I

.field private mIsBeginScale:Z

.field private mIsOnlineTagEditor:Z

.field protected mItemCount:I

.field private mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mLastPosition:I

.field private mMaxScrollOverhead:I

.field private mNewCreatedChildCount:I

.field protected mNextSelectedPosition:I

.field mOldSelectedPosition:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mParentNode:Lcom/htc/sunnyCore/SceneNode;

.field private mRecycler:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleBeginFactor:F

.field mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

.field protected mSceneNode:Lcom/htc/sunnyCore/SceneNode;

.field private mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mSelectedPosition:I

.field private mShouldCallbackOnUnselectedItemClick:Z

.field protected mShouldStopFling:Z

.field protected mSpacing:I

.field private mSpecialSpacing:I

.field private mSpecialSpacingPrev:I

.field private mStartAnimationChildIndex:I

.field private mTouchFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 4
    .parameter "env"
    .parameter "itemMaker"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    .line 36
    const/16 v0, 0x170

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDefaultChildWidth:I

    .line 37
    const/16 v0, 0x113

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDefaultChildHeight:I

    .line 38
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    .line 39
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    .line 40
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 41
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 42
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    .line 49
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingLeft:I

    .line 50
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingRight:I

    .line 51
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    .line 56
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    .line 57
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    .line 58
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    .line 60
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsOnlineTagEditor:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsBeginScale:Z

    .line 63
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mScaleBeginFactor:F

    .line 71
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldCallbackOnUnselectedItemClick:Z

    .line 73
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    .line 75
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    .line 720
    const/16 v0, 0x50

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    .line 721
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->FLAG_GALLERY_BOUNCE:Z

    .line 722
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mCloseOverbound:Z

    .line 812
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mOldSelectedPosition:I

    .line 111
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnv:I

    .line 112
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 113
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    .line 114
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 115
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 116
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    .line 117
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    .line 118
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    .line 119
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 120
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 121
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 122
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    .line 123
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    .line 124
    return-void
.end method

.method private addItemToArray(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V
    .locals 6
    .parameter "item"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 680
    if-gez p2, :cond_0

    .line 681
    iget p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 684
    .local v0, children:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 685
    .local v1, count:I
    array-length v2, v0

    .line 686
    .local v2, size:I
    if-ne p2, v1, :cond_2

    .line 688
    if-ne v2, v1, :cond_1

    .line 690
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 691
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 694
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 695
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->attachToScene(Lcom/htc/sunnyCore/SceneNode;)Z

    .line 718
    :goto_0
    return-void

    .line 697
    :cond_2
    if-ge p2, v1, :cond_4

    .line 699
    if-ne v2, v1, :cond_3

    .line 701
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 702
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 710
    :goto_1
    aput-object p1, v0, p2

    .line 711
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 712
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->attachToScene(Lcom/htc/sunnyCore/SceneNode;)Z

    goto :goto_0

    .line 708
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 716
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private detachItemsFromParent(II)V
    .locals 7
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    .line 1036
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 1037
    .local v0, children:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 1039
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1040
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1042
    .local v2, end:I
    if-ne p1, v2, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1047
    :cond_0
    if-ne v2, v1, :cond_1

    .line 1049
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1052
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    .line 1053
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    aput-object v6, v0, v3

    .line 1049
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1059
    .end local v3           #i:I
    :cond_1
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 1062
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    .line 1063
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1069
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1071
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 1073
    aput-object v6, v0, v3

    .line 1071
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1077
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    goto :goto_0
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 983
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 984
    .local v6, numChildren:I
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 985
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 986
    .local v7, start:I
    const/4 v1, 0x0

    .line 988
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 990
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingLeft:I

    add-int v3, v8, v9

    .line 991
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 993
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 994
    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 1022
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachItemsFromParent(II)V

    .line 1028
    if-eqz p1, :cond_1

    .line 1030
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 1032
    :cond_1
    return-void

    .line 1000
    .restart local v0       #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 991
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1006
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 1007
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 1009
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1010
    .restart local v0       #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 1016
    move v7, v5

    .line 1017
    add-int/lit8 v1, v1, 0x1

    .line 1007
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 576
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    .line 577
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    .line 580
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v4

    .line 584
    .local v4, prevIterationItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v4, :cond_3

    .line 586
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 587
    .local v0, curPosition:I
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    if-eq v5, v3, :cond_2

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    if-ne v0, v5, :cond_2

    .line 590
    :cond_0
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    sub-int v1, v5, v6

    .line 605
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 607
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v4

    .line 608
    if-nez v4, :cond_4

    .line 619
    :cond_1
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 628
    return-void

    .line 594
    .end local v1           #curRightEdge:I
    :cond_2
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .restart local v1       #curRightEdge:I
    goto :goto_0

    .line 600
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_3
    const/4 v0, 0x0

    .line 601
    .restart local v0       #curPosition:I
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingRight:I

    neg-int v1, v5

    .line 602
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldStopFling:Z

    goto :goto_0

    .line 612
    :cond_4
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 615
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 616
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 521
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    .line 522
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    .line 523
    .local v2, galleryRight:I
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 524
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    .line 527
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v6

    .line 531
    .local v6, prevIterationItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v6, :cond_3

    .line 533
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int v1, v7, v4

    .line 534
    .local v1, curPosition:I
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    if-eq v7, v3, :cond_2

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    add-int/lit8 v7, v7, 0x1

    if-eq v1, v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    if-ne v1, v7, :cond_2

    .line 537
    :cond_0
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    add-int v0, v7, v8

    .line 552
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 554
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v6

    .line 555
    if-nez v6, :cond_4

    .line 572
    :cond_1
    return-void

    .line 541
    .end local v0           #curLeftEdge:I
    :cond_2
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .restart local v0       #curLeftEdge:I
    goto :goto_0

    .line 546
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_3
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 547
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingLeft:I

    .line 548
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldStopFling:Z

    .line 549
    sget-object v7, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[fillToGalleryRight] Should not be here, prevIterationView == null"

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_4
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 559
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method private makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 6
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 632
    if-gez p1, :cond_0

    .line 633
    const/4 v1, 0x0

    .line 657
    :goto_0
    return-object v1

    .line 635
    :cond_0
    const/4 v1, 0x0

    .line 639
    .local v1, childItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_1
    if-nez v1, :cond_1

    .line 648
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    .line 649
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeAndAddItem] Num of children created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->create()Lcom/htc/sunnyCore/ViewItem;

    move-result-object v1

    .end local v1           #childItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    check-cast v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 651
    .restart local v1       #childItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    iput-object v3, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    .line 652
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnv:I

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->create(I)V

    .line 655
    :cond_1
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setupChild(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;IIZ)V

    goto :goto_0

    .line 641
    :catch_0
    move-exception v2

    .line 643
    .local v2, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeAndAddItem] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 454
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 455
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 457
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 458
    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 459
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setRenderOrder(I)V

    .line 455
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 461
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_0
    return-void
.end method

.method private offsetSpecialChildrenLeftAndRight(IIII)V
    .locals 11
    .parameter "offset"
    .parameter "fixedPositon"
    .parameter "spacingOffset"
    .parameter "spacingOffsetPrev"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    .line 466
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 467
    .local v1, count:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v2, p2, v6

    .line 468
    .local v2, fixedChild:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 470
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 471
    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 472
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setRenderOrder(I)V

    .line 474
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemScale()F

    move-result v5

    .line 476
    .local v5, scale:F
    const v6, 0x3f8147ae

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_2

    .line 478
    invoke-virtual {v0, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    .line 493
    :cond_0
    :goto_1
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    if-ne p2, v6, :cond_3

    .line 468
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-float v7, v9, v5

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v8

    invoke-static {v6, v5, v7, v8}, Lcom/htc/sunny2/fullfilmview/Animator;->AcEaseOut(IFFI)F

    move-result v4

    .line 485
    .local v4, newScale:F
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    .line 487
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 489
    invoke-virtual {v0, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    goto :goto_1

    .line 496
    .end local v4           #newScale:F
    :cond_3
    if-eq v2, v3, :cond_1

    .line 499
    if-le v3, v2, :cond_4

    .line 501
    neg-int v6, p4

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 502
    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 506
    :cond_4
    invoke-virtual {v0, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 507
    neg-int v6, p3

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 517
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v5           #scale:F
    :cond_5
    return-void
.end method

.method private performItemSelected()V
    .locals 3

    .prologue
    .line 883
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mOldSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 885
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mOldSelectedPosition:I

    .line 887
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->onItemSelect(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V

    .line 891
    :cond_0
    return-void
.end method

.method private scrollToChild(IZZZ)Z
    .locals 6
    .parameter "childPosition"
    .parameter "haveDirection"
    .parameter "next"
    .parameter "needGoFullscreen"

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 347
    .local v1, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    const/4 v3, 0x0

    .line 348
    .local v3, deltaX:I
    const/4 v0, 0x0

    .line 350
    .local v0, bRet:Z
    if-eqz v1, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getCenterOfGallery()I

    move-result v4

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v5

    sub-int v3, v4, v5

    .line 353
    const/4 v0, 0x1

    .line 365
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    if-eqz v4, :cond_1

    .line 366
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    invoke-interface {v4, v3, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->scrollToPosition(IZ)V

    .line 368
    :cond_1
    return v0

    .line 355
    :cond_2
    if-eqz p2, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItemPosition()I

    move-result v2

    .line 358
    .local v2, current:I
    if-eqz p3, :cond_4

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_4

    .line 359
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    .line 362
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 360
    :cond_4
    if-eqz v2, :cond_3

    .line 361
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    goto :goto_1
.end method

.method private setSelectedPositionInt(I)V
    .locals 2
    .parameter "newPos"

    .prologue
    .line 977
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    .line 978
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 979
    return-void
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 923
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 924
    .local v7, selItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-nez v8, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    const/4 v3, 0x0

    .line 930
    .local v3, galleryCenter:I
    if-eqz v7, :cond_2

    .line 934
    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 941
    :cond_2
    const v2, 0x7fffffff

    .line 942
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 943
    .local v6, newSelectedChildIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 946
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 948
    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 951
    move v6, v4

    .line 964
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_3
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int v5, v8, v6

    .line 966
    .local v5, newPos:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 968
    invoke-direct {p0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectedPositionInt(I)V

    .line 970
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    goto :goto_0

    .line 955
    .end local v5           #newPos:I
    .restart local v0       #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_4
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 957
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 959
    move v2, v1

    .line 960
    move v6, v4

    .line 943
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setupChild(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;IIZ)V
    .locals 3
    .parameter "item"
    .parameter "position"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    const/4 v2, 0x0

    .line 662
    if-eqz p4, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->addItemToArray(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V

    .line 664
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->enableShadow(Z)V

    .line 667
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    .line 670
    .local v0, data:Lcom/htc/sunnyCore/IMediaData;
    invoke-virtual {p1, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    .line 671
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 674
    .end local v0           #data:Lcom/htc/sunnyCore/IMediaData;
    :cond_0
    invoke-virtual {p1, p3, v2, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setPosition(IIZ)V

    .line 675
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setRenderOrder(I)V

    .line 676
    return-void

    :cond_1
    move v1, v2

    .line 662
    goto :goto_0
.end method


# virtual methods
.method public attachToParent(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mParentNode:Lcom/htc/sunnyCore/SceneNode;

    .line 166
    invoke-static {}, Lcom/htc/sunnyCore/SceneNode;->obtain()Lcom/htc/sunnyCore/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 169
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mParentNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 170
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    .line 171
    return-void
.end method

.method public cacheSpecialSpecialSpacing()V
    .locals 1

    .prologue
    .line 1162
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    .line 1163
    return-void
.end method

.method public deCacheSpecialSpacing()V
    .locals 1

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    .line 1168
    return-void
.end method

.method protected detachAllItemsFromScene()V
    .locals 6

    .prologue
    .line 413
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 414
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 428
    :cond_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 420
    .local v0, children:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    .line 421
    .local v3, recycler:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;>;"
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 423
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 425
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->detachFromScene(Lcom/htc/sunnyCore/SceneNode;)V

    .line 426
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public detachFromParent()V
    .locals 7

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachAllItemsFromScene()V

    .line 176
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    .line 179
    .local v3, recycler:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;>;"
    const/4 v1, 0x0

    .line 183
    .local v1, childrenToDestroy:I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v0, :cond_0

    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :catch_0
    move-exception v2

    .line 192
    .local v2, ex:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[detachFromParent] Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[detachFromParent] mNewCreatedChildCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", childrenToDestroy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mParentNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 202
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/SceneNode;->release()V

    .line 203
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    .line 204
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    .line 205
    return-void
.end method

.method public enableChildShadow(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    .line 129
    return-void
.end method

.method public getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 2
    .parameter "index"

    .prologue
    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-object v1

    .line 436
    :catch_0
    move-exception v0

    .line 438
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClickedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    return-object v0
.end method

.method public getClickedItemPosition()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 1127
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    return v0
.end method

.method public getGalleryRight()I
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 1132
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 726
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->FLAG_GALLERY_BOUNCE:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mCloseOverbound:Z

    if-nez v6, :cond_6

    .line 728
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 729
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 731
    .local v1, extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v1, :cond_2

    move v5, p2

    .line 807
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 728
    goto :goto_0

    .line 737
    .restart local v1       #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    .line 740
    .local v2, extremeChildCenter:I
    const/4 v4, 0x0

    .line 741
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 743
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    .line 744
    .local v0, centerDifference:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    .line 749
    if-gt v2, v4, :cond_3

    .line 751
    div-int/lit8 p2, p2, 0x2

    .line 753
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 757
    .end local v0           #centerDifference:I
    :cond_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    .line 758
    .restart local v0       #centerDifference:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    .line 763
    if-lt v2, v4, :cond_5

    .line 765
    div-int/lit8 p2, p2, 0x2

    .line 767
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 772
    .end local v0           #centerDifference:I
    .end local v1           #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v2           #extremeChildCenter:I
    .end local v3           #extremeItemPosition:I
    .end local v4           #galleryCenter:I
    :cond_6
    if-eqz p1, :cond_7

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 773
    .restart local v3       #extremeItemPosition:I
    :goto_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 775
    .restart local v1       #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v1, :cond_8

    move v5, p2

    .line 777
    goto :goto_1

    .end local v1           #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v3           #extremeItemPosition:I
    :cond_7
    move v3, v5

    .line 772
    goto :goto_2

    .line 781
    .restart local v1       #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .restart local v3       #extremeItemPosition:I
    :cond_8
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    .line 784
    .restart local v2       #extremeChildCenter:I
    const/4 v4, 0x0

    .line 786
    .restart local v4       #galleryCenter:I
    if-eqz p1, :cond_a

    .line 788
    if-le v2, v4, :cond_0

    .line 805
    :cond_9
    sub-int v0, v4, v2

    .line 807
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 797
    .end local v0           #centerDifference:I
    :cond_a
    if-lt v2, v4, :cond_9

    goto :goto_1

    .line 807
    .restart local v0       #centerDifference:I
    :cond_b
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getSceneNode()Lcom/htc/sunnyCore/SceneNode;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    return-object v0
.end method

.method public getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 2

    .prologue
    .line 1142
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    return v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    return v0
.end method

.method public getSpacing()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    return v0
.end method

.method public getStartAnimationChildIndex()I
    .locals 1

    .prologue
    .line 1177
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    return v0
.end method

.method public initSpecialSpacingLayout()V
    .locals 1

    .prologue
    .line 1258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->initSpecialSpacingLayout(Z)V

    .line 1259
    return-void
.end method

.method public initSpecialSpacingLayout(Z)V
    .locals 6
    .parameter "alignCeneter"

    .prologue
    .line 1263
    const/4 v2, 0x0

    .line 1264
    .local v2, xCenter:I
    if-nez p1, :cond_0

    .line 1265
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 1266
    .local v1, selectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v1, :cond_0

    .line 1267
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    .line 1270
    .end local v1           #selectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachAllItemsFromScene()V

    .line 1272
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    if-ltz v3, :cond_1

    .line 1274
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectedPositionInt(I)V

    .line 1277
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 1278
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 1280
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1282
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_2

    .line 1293
    :goto_0
    return-void

    .line 1285
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 1287
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    .line 1288
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    .line 1290
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    .line 1292
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    goto :goto_0
.end method

.method public notifyMediaDataChangeIRTLock(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 1182
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1183
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    const/4 v1, 0x0

    .line 1188
    .local v1, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v2, :cond_0

    .line 1192
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 1193
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 1194
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    .line 1195
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaTexture(I)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunnyCore/Texture;)V

    goto :goto_0
.end method

.method public onHitTestDown(II)V
    .locals 2
    .parameter "downX"
    .parameter "downY"

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    .line 245
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 247
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    goto :goto_0
.end method

.method public onHitTestUp()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->onHitTestUp(Z)V

    .line 274
    return-void
.end method

.method public onHitTestUp(Z)V
    .locals 3
    .parameter "needGoFullscreen"

    .prologue
    const/4 v2, 0x0

    .line 278
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 281
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v2, v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->scrollToChild(IZZZ)Z

    .line 284
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->performItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)Z

    .line 290
    :cond_1
    return-void
.end method

.method public declared-synchronized onLayout(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachAllItemsFromScene()V

    .line 212
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    if-ltz v1, :cond_0

    .line 214
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectedPositionInt(I)V

    .line 217
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryY:I

    .line 218
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    .line 219
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    neg-int v1, v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    .line 221
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 222
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 224
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 226
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_1

    .line 238
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 231
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    .line 232
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    .line 234
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    .line 235
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 237
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->performItemSelected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    .end local v0           #item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onMediaItemRefreshIRT(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1219
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 1224
    const/4 v1, 0x0

    .line 1225
    .local v1, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v2, :cond_0

    .line 1229
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 1230
    if-eqz v1, :cond_0

    .line 1234
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    goto :goto_0
.end method

.method public onMediaItemRefreshSizeIRT(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1240
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    const/4 v1, 0x0

    .line 1245
    .local v1, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v2, :cond_0

    .line 1249
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 1250
    if-eqz v1, :cond_0

    .line 1254
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    .line 300
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[filmstrip]onScale+ mScaleFactor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mScaleBeginFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mScaleBeginFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mScaleBeginFactor:F

    .line 302
    const v0, 0x3dcccccd

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mScaleBeginFactor:F

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mScaleBeginFactor:F

    .line 304
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsBeginScale:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mScaleBeginFactor:F

    const v1, 0x3f866666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->overrideDownTouchPosition()V

    .line 307
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->onPinchOut()V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsBeginScale:Z

    .line 310
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 294
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsBeginScale:Z

    .line 295
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mScaleBeginFactor:F

    .line 296
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsBeginScale:Z

    .line 315
    return-void
.end method

.method public overrideDownTouchPosition()V
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    .line 320
    return-void
.end method

.method public performItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)Z
    .locals 1
    .parameter "item"
    .parameter "position"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->onItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V

    .line 337
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 389
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mTouchFrame:Landroid/graphics/Rect;

    .line 390
    .local v3, frame:Landroid/graphics/Rect;
    if-nez v3, :cond_0

    .line 392
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mTouchFrame:Landroid/graphics/Rect;

    .line 393
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mTouchFrame:Landroid/graphics/Rect;

    .line 396
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 397
    .local v2, count:I
    add-int/lit8 v4, v2, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_3

    .line 399
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 400
    .local v1, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getTop()I

    move-result v6

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 401
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    if-gt v5, p1, :cond_1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v5

    if-ge p1, v5, :cond_1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getBottom()I

    move-result v5

    if-gt v5, p2, :cond_1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getTop()I

    move-result v5

    if-ge p2, v5, :cond_1

    const/4 v0, 0x1

    .line 403
    .local v0, bHit:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 405
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int/2addr v5, v4

    .line 408
    .end local v0           #bHit:Z
    .end local v1           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :goto_2
    return v5

    .line 401
    .restart local v1       #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 397
    .restart local v0       #bHit:Z
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 408
    .end local v0           #bHit:Z
    .end local v1           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_3
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    goto :goto_2
.end method

.method public rebindVisibleItems()V
    .locals 4

    .prologue
    .line 1200
    const/4 v1, 0x0

    .line 1202
    .local v1, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    if-ge v0, v3, :cond_0

    .line 1204
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 1205
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 1206
    const/4 v2, 0x0

    .line 1207
    .local v2, mediaData:Lcom/htc/sunnyCore/IMediaData;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-nez v3, :cond_1

    .line 1214
    .end local v2           #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_0
    return-void

    .line 1211
    .restart local v2       #mediaData:Lcom/htc/sunnyCore/IMediaData;
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v3, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    .line 1212
    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunnyCore/IMediaData;)V

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public relayoutWithCenterSpacing(I)V
    .locals 6
    .parameter "deltaSpacing"

    .prologue
    .line 895
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 896
    .local v2, count:I
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v0, v4, v5

    .line 897
    .local v0, centerChild:I
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 899
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 901
    .local v1, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-ne v0, v3, :cond_0

    .line 897
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 904
    :cond_0
    if-ge v0, v3, :cond_1

    .line 906
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 910
    :cond_1
    neg-int v4, p1

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 914
    .end local v1           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_2
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldCallbackOnUnselectedItemClick:Z

    .line 269
    return-void
.end method

.method public setIsOnlineTagEditor(Z)V
    .locals 0
    .parameter "isOnlineTagEditor"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsOnlineTagEditor:Z

    .line 146
    return-void
.end method

.method public setItemTexture(ILcom/htc/sunnyCore/Texture;)V
    .locals 3
    .parameter "index"
    .parameter "texture"

    .prologue
    .line 1106
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1107
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 1110
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-nez v2, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1117
    .local v1, mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v1, :cond_0

    .line 1120
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->initSpecialSpacingLayout(Z)V

    goto :goto_0
.end method

.method public setMediaDataListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    .line 135
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaDataCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    .line 138
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    .line 139
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    .line 141
    :cond_0
    return-void

    .line 138
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    goto :goto_0
.end method

.method public setSceneListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    .line 151
    return-void
.end method

.method public declared-synchronized setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1095
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    monitor-exit p0

    return-void

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 155
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    .line 156
    return-void
.end method

.method public setSpecialSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 1157
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    .line 1158
    return-void
.end method

.method public setStartAnimationChildIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1172
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    .line 1173
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/SceneNode;->setVisibility(Z)V

    .line 1091
    :goto_0
    return-void

    .line 1089
    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FilmstripViewScene][setVisibility]"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public trackMotionScroll(IZ)V
    .locals 1
    .parameter "deltaX"
    .parameter "doSpecialSpacing"

    .prologue
    .line 816
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->trackMotionScroll(IZZ)V

    .line 817
    return-void
.end method

.method public trackMotionScroll(IZZ)V
    .locals 4
    .parameter "deltaX"
    .parameter "doSpecialSpacing"
    .parameter "isAnimationToFull"

    .prologue
    .line 821
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    if-nez v1, :cond_0

    .line 879
    :goto_0
    return-void

    .line 826
    :cond_0
    if-gez p1, :cond_2

    const/4 v0, 0x1

    .line 839
    .local v0, toLeft:Z
    :goto_1
    if-eqz p2, :cond_3

    .line 841
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->offsetSpecialChildrenLeftAndRight(IIII)V

    .line 848
    :goto_2
    invoke-direct {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachOffScreenChildren(Z)V

    .line 850
    if-nez p1, :cond_4

    .line 852
    if-nez p3, :cond_1

    .line 854
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    .line 855
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    .line 875
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectionToCenterChild()V

    .line 877
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->performItemSelected()V

    goto :goto_0

    .line 826
    .end local v0           #toLeft:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 845
    .restart local v0       #toLeft:Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->offsetChildrenLeftAndRight(I)V

    goto :goto_2

    .line 860
    :cond_4
    if-eqz v0, :cond_5

    .line 863
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    goto :goto_3

    .line 868
    :cond_5
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    goto :goto_3
.end method
