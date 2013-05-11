.class public Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
.super Lcom/htc/sunnyCore/widget/gridview/GridView;
.source "ExpandableGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;,
        Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;,
        Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;,
        Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ABOVE_PARENT_ITEM_RENDER_ORDER:I = 0x0

.field private static final BELOW_PARENT_ITEM_RENDER_ORDER:I = 0x0

.field private static final CHILD_VIEW_BG_RENDER_ORDER:I = 0x1

.field private static final CHILD_VIEW_ITEM_RENDER_ORDER:I = 0x2

.field private static final COLLAPSE_CLICK_PARENT_ITEM:I = 0x0

.field private static final COLLAPSE_CLOSE_CHILD:I = 0x2

.field private static final COLLAPSE_DELETE_CHILD_ITEM:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FAST_SCROLLER_RENDER_ORDER:I = 0x3

.field private static final MAKE_ITEM_ROW_COLLAPSE_ANIM:I = 0x2

.field private static final MAKE_ITEM_ROW_EXPANDOUT_ANIM:I = 0x1

.field private static final MAKE_ITEM_ROW_GENERAL:I = 0x0

.field private static final MAX_CHILD_BG_SPRITE_LAYER_COUNT:I = 0x14

.field private static MAX_CHILD_VIEW_SIDE_LENGTH:I = 0x0

.field protected static final STORE_KEY_DO_BACKGROUND_ANIM:Ljava/lang/String; = "dobackgroundanimation"

.field protected static final STORE_KEY_OLDCHILDVIEWBGHEIGHT:Ljava/lang/String; = "oldChildViewBGHeight"

.field protected static final STORE_KEY_OLDCHILDVIEWBGPOSITIONY:Ljava/lang/String; = "oldChildViewBGPositionY"

.field protected static final STORE_KEY_OLDFIRSTCHILDIDX:Ljava/lang/String; = "oldFirstChildIdx"

.field protected static final STORE_KEY_OLDFIRSTIDXAFTERCHILD:Ljava/lang/String; = "oldFirstIdxAfterChild"

.field protected static final STORE_KEY_OLDFIRSTITEMAFTERCHILDPOSITIONY:Ljava/lang/String; = "oldFirstItemAfterChildPositionY"

.field protected static final STORE_KEY_OLDLASTCHILDIDX:Ljava/lang/String; = "oldLastChildIdx"

.field protected static final STORE_KEY_OLDONSCREENFIRSTCHILDIDX:Ljava/lang/String; = "oldOnScreenFirstChildIdx"

.field protected static final STORE_KEY_OLDONSCREENFIRSTCHILDITEMPOSITIONY:Ljava/lang/String; = "oldOnScreenFirstChildItemPositionY"

.field protected static final STORE_KEY_OLDONSCREENLASTCHILDIDX:Ljava/lang/String; = "oldOnScreenLastChildIdx"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdjustedDeleteAllParentIdx:I

.field private mAnimationRunning:Z

.field private mBelowParentsCollapseDistance:I

.field private mBigChildBG:Z

.field private mCellHeight:I

.field private mCellWidth:I

.field private mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

.field private mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

.field private mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

.field private mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

.field private mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

.field private mChildBGTexture:Lcom/htc/sunnyCore/Texture;

.field private mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

.field private mChildBgHeadLen:I

.field private mChildBgMidLen:I

.field private mChildBgTailLen:I

.field private mChildCellHeight:I

.field protected mChildCellRecycler:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChildCellWidth:I

.field private mChildExtraPaddingLeft:I

.field private mChildExtraPaddingTop:I

.field private mChildHorizontalSpacing:I

.field private mChildIndicatorHeight:I

.field private mChildIndicatorOffsetX:I

.field private mChildIndicatorOffsetY:I

.field private mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

.field private mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

.field private mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

.field private mChildIndicatorWidth:I

.field private mChildMarginBottom:I

.field private mChildMarginLeft:I

.field private mChildMarginRight:I

.field private mChildMarginTop:I

.field private mChildNumColumn:I

.field private mChildNumRow:I

.field private mChildPaddingBottom:I

.field private mChildPaddingLeft:I

.field private mChildPaddingRight:I

.field private mChildPaddingTop:I

.field private mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

.field private mChildTitleHeight:I

.field private mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

.field private mChildTitleSprite:Lcom/htc/sunnyCore/Sprite;

.field private mChildTitleText:Landroid/widget/TextView;

.field private mChildTitleTexture:Lcom/htc/sunnyCore/Texture;

.field private mChildVerticalSpacing:I

.field private mChildViewBGBoundaryBufLength:I

.field mChildViewBackgroundResId:I

.field private mChildViewCollapsed:Z

.field private mChildViewOffsetX:I

.field private mChildViewOffsetY:I

.field private mChildViewTitle:Ljava/lang/String;

.field private mChildsCount:I

.field private mClickParentLevelStartIdx:I

.field private mClickedParentIdx:I

.field private mCollapseChildType:I

.field mEnlargeAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

.field private mExpBGHeight:I

.field private mExpBGWidth:I

.field mExpandOutAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

.field private mFirstChildIdx:I

.field mHeadChildViewBgResId:I

.field private mIgnoreChildViewItem:Z

.field mIndicatorResId:I

.field private mIsAnimationOn:Z

.field private mIsChildBGReady:Z

.field private mLastChildIdx:I

.field mMidChildViewBgResId:I

.field private mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field private mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

.field private mOriginalChildRootSViewGroupPos:Lcom/htc/sunnyCore/view/Vector3F;

.field private mOriginalDeleteAllParentIdx:I

.field mParentExpandOutMoveAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

.field private mParentExpandOutMoveDistance:I

.field mShrinkAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

.field mTailChildViewBgResId:I

.field private mTempCurrentClickedIndex:I

.field private mTitleContainer:Landroid/view/ViewGroup;

.field private mTitleLayoutResId:I

.field private mTitleTextViewResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    .line 48
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    .line 94
    const/16 v0, 0x1000

    sput v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 4
    .parameter "context"
    .parameter "sContext"
    .parameter "itemPrototype"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/widget/gridview/GridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    .line 69
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    .line 81
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 93
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBigChildBG:Z

    .line 95
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    .line 111
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    .line 112
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    .line 113
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    .line 114
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    .line 116
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    .line 117
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

    .line 118
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunnyCore/Sprite;

    .line 120
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    .line 121
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    .line 122
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    .line 123
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    .line 124
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    .line 126
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunnyCore/Texture;

    .line 127
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    .line 128
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    .line 129
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    .line 130
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    .line 131
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    .line 132
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunnyCore/Texture;

    .line 134
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    .line 135
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleText:Landroid/widget/TextView;

    .line 137
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    .line 138
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    .line 140
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    .line 141
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginRight:I

    .line 143
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    .line 144
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginBottom:I

    .line 146
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    .line 147
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    .line 148
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    .line 149
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    .line 151
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    .line 152
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    .line 153
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgMidLen:I

    .line 157
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    .line 158
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    .line 159
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    .line 160
    iput v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    .line 162
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 163
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 165
    iput-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsAnimationOn:Z

    .line 167
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsChildBGReady:Z

    .line 176
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    .line 181
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I

    .line 182
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    .line 1913
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I

    .line 1914
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    .line 2009
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    .line 2010
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    .line 2011
    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    .line 2163
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    .line 2164
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 2208
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIndicatorResId:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    .line 2209
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mHeadChildViewBgResId:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTailChildViewBgResId:I

    .line 2400
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    .line 2401
    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    .line 2681
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$3;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$3;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpandOutAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    .line 2699
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$4;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$4;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mEnlargeAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    .line 2727
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$5;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    .line 2826
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$6;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mShrinkAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    .line 205
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->init()V

    .line 206
    return-void
.end method

.method static synthetic access$002(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    return v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    return v0
.end method

.method static synthetic access$2220(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fitBottomSpace(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->doScrollExpandedParentItemToUpper()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->doScrollClickedItemToUpper(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->doFakeOnLayout(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsAnimationOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method private addChildViewBgInMakeItemColumn(I)V
    .locals 17
    .parameter "height"

    .prologue
    .line 3888
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBigChildBG:Z

    if-eqz v2, :cond_1

    .line 3889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    move/from16 v0, p1

    invoke-static {v2, v3, v4, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunnyCore/Texture;

    .line 3890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v3, v3

    move/from16 v0, p1

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 3891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 4022
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/view/SView;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 4023
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsChildBGReady:Z

    .line 4024
    return-void

    .line 3894
    :cond_1
    const/4 v14, 0x1

    .line 3896
    .local v14, reGenTexture:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_2

    .line 3897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v15

    .line 3898
    .local v15, textureHeight:I
    move/from16 v0, p1

    if-ne v15, v0, :cond_2

    .line 3899
    const/4 v14, 0x0

    .line 3900
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "addChildViewBgInMakeItemColumn, the same texture, no need to re-gen."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    .end local v15           #textureHeight:I
    :cond_2
    if-eqz v14, :cond_3

    .line 3905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mHeadChildViewBgResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3906
    .local v8, d:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    .line 3907
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    .line 3913
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTailChildViewBgResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3914
    if-eqz v8, :cond_a

    .line 3915
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    .line 3922
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3923
    if-eqz v8, :cond_c

    .line 3924
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 3925
    .local v16, width:I
    if-lez p1, :cond_b

    .line 3926
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    div-int/lit8 v2, v2, 0x2

    div-int v2, v2, v16

    mul-int v2, v2, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgMidLen:I

    .line 3934
    .end local v16           #width:I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->releaseChildViewBgTextures()V

    .line 3936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mHeadChildViewBgResId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    move/from16 v0, p1

    invoke-static {v2, v3, v4, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    .line 3937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgMidLen:I

    move/from16 v0, p1

    invoke-static {v2, v3, v4, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    .line 3938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTailChildViewBgResId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    move/from16 v0, p1

    invoke-static {v2, v3, v4, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    .line 3941
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgMidLen:I

    .line 3943
    .local v7, cutWidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    sub-int v12, v2, v3

    .line 3944
    .local v12, midBgTotalLen:I
    rem-int v11, v12, v7

    .line 3945
    .local v11, midBgRemainingLen:I
    div-int v3, v12, v7

    if-lez v11, :cond_d

    const/4 v2, 0x1

    :goto_3
    add-int/2addr v2, v3

    add-int/lit8 v10, v2, 0x2

    .line 3946
    .local v10, layerCount:I
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addChildViewBgInMakeItemRow, layer count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mExpBGWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cutWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", midBgRemainingLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    :cond_4
    const/4 v13, 0x0

    .line 3950
    .local v13, reGenMidRemainingTexture:Z
    if-lez v11, :cond_6

    .line 3951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    if-eq v2, v11, :cond_6

    .line 3952
    :cond_5
    const/4 v13, 0x1

    .line 3956
    :cond_6
    if-eqz v13, :cond_8

    .line 3957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_7

    .line 3958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3959
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    .line 3962
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    move/from16 v0, p1

    invoke-static {v2, v3, v11, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    .line 3965
    :cond_8
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    const/16 v2, 0x14

    if-ge v9, v2, :cond_0

    .line 3966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v2, v9}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v1

    .line 3968
    .local v1, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    if-nez v1, :cond_e

    .line 3969
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addChildViewBgInMakeItemColumn, layer is null, i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3910
    .end local v1           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v7           #cutWidth:I
    .end local v9           #i:I
    .end local v10           #layerCount:I
    .end local v11           #midBgRemainingLen:I
    .end local v12           #midBgTotalLen:I
    .end local v13           #reGenMidRemainingTexture:Z
    .restart local v8       #d:Landroid/graphics/drawable/Drawable;
    :cond_9
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "addChildViewBgInMakeItemColumn, head d is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3918
    :cond_a
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "addChildViewBgInMakeItemColumn, tail d is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3928
    .restart local v16       #width:I
    :cond_b
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addChildViewBgInMakeItemColumn, mid width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3931
    .end local v16           #width:I
    :cond_c
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "addChildViewBgInMakeItemColumn, mid d is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3945
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    .restart local v7       #cutWidth:I
    .restart local v11       #midBgRemainingLen:I
    .restart local v12       #midBgTotalLen:I
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 3973
    .restart local v1       #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .restart local v9       #i:I
    .restart local v10       #layerCount:I
    .restart local v13       #reGenMidRemainingTexture:Z
    :cond_e
    if-lt v9, v10, :cond_f

    .line 3974
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_5

    .line 3976
    :cond_f
    if-nez v9, :cond_11

    .line 3978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_10

    .line 3979
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 3980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 3981
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_5

    .line 3984
    :cond_10
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "addChildViewBg In MakeItemColumn, mChildBGHeadCornerTexture is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3987
    :cond_11
    add-int/lit8 v2, v10, -0x1

    if-ne v9, v2, :cond_13

    .line 3989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_12

    .line 3990
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 3991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 3992
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_5

    .line 3995
    :cond_12
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addChildViewBg In MakeItemColumn, mChildBGTailCornerTexture is null, i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3998
    :cond_13
    if-lez v11, :cond_15

    add-int/lit8 v2, v10, -0x2

    if-ne v9, v2, :cond_15

    .line 4000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_14

    .line 4001
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 4002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v11

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 4003
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_5

    .line 4006
    :cond_14
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addChildViewBg In MakeItemColumn, mChildBGMidRemainingTexture is null, i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 4010
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v2, :cond_16

    .line 4011
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 4012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, v7

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-int/lit8 v5, v9, -0x1

    mul-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 4013
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_5

    .line 4016
    :cond_16
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addChildViewBg In MakeItemColumn, mChildBGMidMainTexture is null, i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private addChildViewBgInMakeItemRow(I)V
    .locals 19
    .parameter "width"

    .prologue
    .line 3749
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBigChildBG:Z

    if-eqz v3, :cond_1

    .line 3750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    move/from16 v0, p1

    invoke-static {v3, v4, v0, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunnyCore/Texture;

    .line 3751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    move/from16 v0, p1

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 3752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 3883
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/view/SView;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 3884
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsChildBGReady:Z

    .line 3885
    return-void

    .line 3755
    :cond_1
    const/16 v16, 0x1

    .line 3757
    .local v16, reGenTexture:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_2

    .line 3758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v17

    .line 3759
    .local v17, textureWidth:I
    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 3760
    const/16 v16, 0x0

    .line 3761
    sget-boolean v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v4, "addChildViewBgInMakeItemRow, the same texture, no need to re-gen."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    .end local v17           #textureWidth:I
    :cond_2
    if-eqz v16, :cond_3

    .line 3766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mHeadChildViewBgResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3767
    .local v9, d:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_9

    .line 3768
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    .line 3774
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTailChildViewBgResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3775
    if-eqz v9, :cond_a

    .line 3776
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    .line 3783
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 3784
    if-eqz v9, :cond_c

    .line 3785
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 3786
    .local v10, height:I
    if-lez v10, :cond_b

    .line 3787
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    div-int/lit8 v3, v3, 0x2

    div-int/2addr v3, v10

    mul-int/2addr v3, v10

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgMidLen:I

    .line 3795
    .end local v10           #height:I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->releaseChildViewBgTextures()V

    .line 3797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mHeadChildViewBgResId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    move/from16 v0, p1

    invoke-static {v3, v4, v0, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    .line 3798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgMidLen:I

    move/from16 v0, p1

    invoke-static {v3, v4, v0, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    .line 3799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTailChildViewBgResId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    move/from16 v0, p1

    invoke-static {v3, v4, v0, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    .line 3802
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgMidLen:I

    .line 3804
    .local v8, cutHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    sub-int v14, v3, v4

    .line 3805
    .local v14, midBgTotalLen:I
    rem-int v13, v14, v8

    .line 3806
    .local v13, midBgRemainingLen:I
    div-int v4, v14, v8

    if-lez v13, :cond_d

    const/4 v3, 0x1

    :goto_3
    add-int/2addr v3, v4

    add-int/lit8 v12, v3, 0x2

    .line 3807
    .local v12, layerCount:I
    sget-boolean v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChildViewBgInMakeItemRow, layer count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mExpBGHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cutHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Head len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Tail len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Mid Remaining len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    :cond_4
    const/4 v15, 0x0

    .line 3811
    .local v15, reGenMidRemainingTexture:Z
    if-lez v13, :cond_6

    .line 3812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v3

    if-eq v3, v13, :cond_6

    .line 3813
    :cond_5
    const/4 v15, 0x1

    .line 3817
    :cond_6
    if-eqz v15, :cond_8

    .line 3818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_7

    .line 3819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 3820
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    .line 3823
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    move/from16 v0, p1

    invoke-static {v3, v4, v0, v13}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    .line 3826
    :cond_8
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    const/16 v3, 0x14

    if-ge v11, v3, :cond_0

    .line 3827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v3, v11}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v2

    .line 3829
    .local v2, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    if-nez v2, :cond_e

    .line 3830
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChildViewBgInMakeItemRow, layer is null, i: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 3771
    .end local v2           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v8           #cutHeight:I
    .end local v11           #i:I
    .end local v12           #layerCount:I
    .end local v13           #midBgRemainingLen:I
    .end local v14           #midBgTotalLen:I
    .end local v15           #reGenMidRemainingTexture:Z
    .restart local v9       #d:Landroid/graphics/drawable/Drawable;
    :cond_9
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v4, "addChildViewBgInMakeItemRow, head d is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3779
    :cond_a
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v4, "addChildViewBgInMakeItemRow, tail d is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3789
    .restart local v10       #height:I
    :cond_b
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChildViewBgInMakeItemRow, mid height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3792
    .end local v10           #height:I
    :cond_c
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v4, "addChildViewBgInMakeItemRow, mid d is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3806
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    .restart local v8       #cutHeight:I
    .restart local v13       #midBgRemainingLen:I
    .restart local v14       #midBgTotalLen:I
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 3834
    .restart local v2       #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .restart local v11       #i:I
    .restart local v12       #layerCount:I
    .restart local v15       #reGenMidRemainingTexture:Z
    :cond_e
    if-lt v11, v12, :cond_f

    .line 3835
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_5

    .line 3837
    :cond_f
    if-nez v11, :cond_11

    .line 3839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_10

    .line 3840
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 3841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v7, v7

    const/high16 v18, 0x4000

    div-float v7, v7, v18

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 3842
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto :goto_5

    .line 3845
    :cond_10
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v4, "addChildViewBg In MakeItemRow, mChildBGHeadCornerTexture is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3848
    :cond_11
    add-int/lit8 v3, v12, -0x1

    if-ne v11, v3, :cond_13

    .line 3850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_12

    .line 3851
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 3852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    int-to-float v7, v7

    const/high16 v18, 0x4000

    div-float v7, v7, v18

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 3853
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_5

    .line 3856
    :cond_12
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChildViewBg In MakeItemRow, mChildBGTailCornerTexture is null, i: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3859
    :cond_13
    if-lez v13, :cond_15

    add-int/lit8 v3, v12, -0x2

    if-ne v11, v3, :cond_15

    .line 3861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_14

    .line 3862
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 3863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    int-to-float v7, v13

    const/high16 v18, 0x4000

    div-float v7, v7, v18

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgTailLen:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 3864
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_5

    .line 3867
    :cond_14
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChildViewBg In MakeItemRow, mChildBGMidRemainingTexture is null, i: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3871
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v3, :cond_16

    .line 3872
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 3873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    int-to-float v6, v8

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v7, v7

    const/high16 v18, 0x4000

    div-float v7, v7, v18

    sub-float/2addr v6, v7

    add-int/lit8 v7, v11, -0x1

    mul-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBgHeadLen:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 3874
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_5

    .line 3877
    :cond_16
    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChildViewBg In MakeItemRow, mChildBGMidMainTexture is null, i: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private addChildViewIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2577
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_1

    .line 2578
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->createChildViewIndicator()I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    .line 2579
    sget-object v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChildViewIndicator, mChildIndicatorTexture is null, retry to create it. mChildIndicatorHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    if-nez v1, :cond_1

    .line 2592
    :cond_0
    :goto_0
    return-void

    .line 2585
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    .line 2586
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v0

    .line 2588
    .local v0, indicatorH:I
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/htc/sunnyCore/Sprite;->setupGeometry(FFFF)V

    .line 2589
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/Sprite;->setTexture(Lcom/htc/sunnyCore/Texture;)V

    .line 2591
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/view/SView;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    goto :goto_0
.end method

.method private addChildViewTitle(Ljava/lang/String;)V
    .locals 14
    .parameter "title"

    .prologue
    const/4 v13, 0x0

    .line 2507
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    if-nez v1, :cond_1

    .line 2508
    sget-object v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v2, "addChildViewTitle, mChildTitleHeight is 0, re-try to do prepareChildViewTitle."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareChildViewTitle()I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    .line 2510
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    if-nez v1, :cond_1

    .line 2511
    sget-object v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v2, "addChildViewTitle, mChildTitleHeight is 0, after re-try. still 0. return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    :cond_0
    :goto_0
    return-void

    .line 2517
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 2518
    sget-object v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v2, "addChildViewTitle, mTitleContainer is null! return."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2523
    :cond_2
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleText:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 2524
    sget-object v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v2, "addChildViewTitle, mChildTitleText is null! return."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2528
    :cond_3
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2530
    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    .line 2532
    .local v6, container:Landroid/view/ViewGroup;
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildWidth(I)I

    move-result v12

    .line 2534
    .local v12, width:I
    const/high16 v1, 0x4000

    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 2535
    .local v10, measureW:I
    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 2536
    .local v9, measureH:I
    invoke-virtual {v6, v10, v9}, Landroid/view/ViewGroup;->measure(II)V

    .line 2537
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v6, v13, v13, v12, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 2540
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    .line 2542
    .local v8, height:I
    const/4 v3, 0x0

    .line 2543
    .local v3, mImgOriginalX:F
    const/4 v4, 0x0

    .line 2545
    .local v4, mTextviewOriginalY:F
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v0

    .line 2546
    .local v0, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite$Layer;->getGeometry()[I

    move-result-object v7

    .line 2547
    .local v7, geometry:[I
    aget v1, v7, v13

    if-ne v12, v1, :cond_4

    const/4 v1, 0x1

    aget v1, v7, v1

    if-ne v8, v1, :cond_4

    float-to-int v1, v3

    const/4 v2, 0x2

    aget v2, v7, v2

    if-ne v1, v2, :cond_4

    float-to-int v1, v4

    const/4 v2, 0x3

    aget v2, v7, v2

    if-eq v1, v2, :cond_5

    .line 2549
    :cond_4
    int-to-float v1, v12

    int-to-float v2, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 2552
    :cond_5
    iget-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunnyCore/Texture;

    .line 2553
    .local v11, texture:Lcom/htc/sunnyCore/Texture;
    if-nez v11, :cond_6

    .line 2554
    invoke-static {v6}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v11

    .line 2555
    invoke-virtual {v0, v13, v11}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 2556
    iput-object v11, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunnyCore/Texture;

    .line 2562
    :goto_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_0

    .line 2563
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/view/SView;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    goto/16 :goto_0

    .line 2559
    :cond_6
    invoke-virtual {v11, v6}, Lcom/htc/sunnyCore/Texture;->setView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private childColumnBestFit()Z
    .locals 15

    .prologue
    .line 231
    const/4 v9, 0x0

    .line 233
    .local v9, isChange:Z
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lez v2, :cond_8

    .line 234
    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    add-int v4, v2, v3

    .line 235
    .local v4, startX:I
    const/4 v14, 0x0

    .line 236
    .local v14, totalItemWidth:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildWidth(I)I

    move-result v8

    .line 237
    .local v8, childLayoutWidth:I
    const/4 v13, -0x1

    .line 242
    .local v13, numColumn:I
    const/4 v1, 0x0

    .line 244
    .local v1, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 256
    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunnyCore/ViewItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;Z)V

    .line 258
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_1
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-interface {v3, v5}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 260
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v7

    .line 261
    .local v7, childCellWidth:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    .line 263
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 264
    iget-object v2, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const v3, 0x7f7fffff

    const v5, 0x7f7fffff

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 265
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 267
    const/4 v2, 0x1

    if-ge v7, v2, :cond_3

    .line 268
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "childColumnBestFit, mContext: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/sunnyCore/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Child Cell with illegal width="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 308
    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v4           #startX:I
    .end local v7           #childCellWidth:I
    .end local v8           #childLayoutWidth:I
    .end local v9           #isChange:Z
    .end local v13           #numColumn:I
    .end local v14           #totalItemWidth:I
    .local v10, isChange:I
    :goto_1
    return v10

    .line 248
    .end local v10           #isChange:I
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v4       #startX:I
    .restart local v8       #childLayoutWidth:I
    .restart local v9       #isChange:Z
    .restart local v13       #numColumn:I
    .restart local v14       #totalItemWidth:I
    :cond_2
    :try_start_1
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "childColumnBestFit, mChildCellRecycler is null or empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v12

    .line 252
    .local v12, nsee:Ljava/util/NoSuchElementException;
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "childColumnBestFit, NoSuchElementException, nsee: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 275
    .end local v12           #nsee:Ljava/util/NoSuchElementException;
    .restart local v7       #childCellWidth:I
    :cond_3
    const/4 v11, 0x0

    .line 276
    .local v11, j:I
    :goto_2
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int/2addr v2, v7

    add-int/2addr v4, v2

    .line 277
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int/2addr v2, v8

    shr-int/lit8 v3, v7, 0x2

    add-int/2addr v2, v3

    if-le v4, v2, :cond_9

    .line 278
    move v13, v11

    .line 285
    if-gez v13, :cond_4

    .line 286
    iget v13, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 289
    :cond_4
    const/4 v2, 0x1

    if-le v2, v13, :cond_5

    .line 290
    const/4 v13, 0x1

    .line 293
    :cond_5
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContext: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/sunnyCore/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mChildNumColumn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", numColumn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", totalItemWidth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", childLayoutWidth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_6
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    if-eq v13, v2, :cond_7

    .line 295
    iput v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    .line 296
    const/4 v9, 0x1

    .line 300
    :cond_7
    const/4 v2, 0x1

    if-lt v13, v2, :cond_8

    .line 301
    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    sub-int v2, v8, v2

    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v14

    add-int/lit8 v3, v13, -0x1

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    mul-int/2addr v3, v5

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    .line 302
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    if-gez v2, :cond_8

    .line 303
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v4           #startX:I
    .end local v7           #childCellWidth:I
    .end local v8           #childLayoutWidth:I
    .end local v11           #j:I
    .end local v13           #numColumn:I
    .end local v14           #totalItemWidth:I
    :cond_8
    move v10, v9

    .line 308
    .restart local v10       #isChange:I
    goto/16 :goto_1

    .line 282
    .end local v10           #isChange:I
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v4       #startX:I
    .restart local v7       #childCellWidth:I
    .restart local v8       #childLayoutWidth:I
    .restart local v11       #j:I
    .restart local v13       #numColumn:I
    .restart local v14       #totalItemWidth:I
    :cond_9
    add-int/2addr v14, v7

    .line 275
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2
.end method

.method private childRowBestFit()Z
    .locals 15

    .prologue
    .line 321
    const/4 v9, 0x0

    .line 323
    .local v9, isChange:Z
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lez v2, :cond_8

    .line 324
    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    add-int v5, v2, v3

    .line 325
    .local v5, startY:I
    const/4 v14, 0x0

    .line 326
    .local v14, totalItemHeight:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildHeight(I)I

    move-result v8

    .line 327
    .local v8, childLayoutHeight:I
    const/4 v13, -0x1

    .line 332
    .local v13, numRow:I
    const/4 v1, 0x0

    .line 334
    .local v1, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 335
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 346
    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunnyCore/ViewItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;Z)V

    .line 348
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_1
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-interface {v3, v4}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 350
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    .line 351
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v7

    .line 353
    .local v7, childCellHeight:I
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 354
    iget-object v2, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const v3, 0x7f7fffff

    const v4, 0x7f7fffff

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 355
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 357
    const/4 v2, 0x1

    if-ge v7, v2, :cond_3

    .line 358
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "childRowBestFit, mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Child Cell with illegal height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 399
    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v5           #startY:I
    .end local v7           #childCellHeight:I
    .end local v8           #childLayoutHeight:I
    .end local v9           #isChange:Z
    .end local v13           #numRow:I
    .end local v14           #totalItemHeight:I
    .local v10, isChange:I
    :goto_1
    return v10

    .line 338
    .end local v10           #isChange:I
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v5       #startY:I
    .restart local v8       #childLayoutHeight:I
    .restart local v9       #isChange:Z
    .restart local v13       #numRow:I
    .restart local v14       #totalItemHeight:I
    :cond_2
    :try_start_1
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "childRowBestFit, mChildCellRecycler is null! or empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v12

    .line 342
    .local v12, nsee:Ljava/util/NoSuchElementException;
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "childRowBestFit, NoSuchElementException, nsee: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 365
    .end local v12           #nsee:Ljava/util/NoSuchElementException;
    .restart local v7       #childCellHeight:I
    :cond_3
    const/4 v11, 0x0

    .line 366
    .local v11, j:I
    :goto_2
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v2, v7

    add-int/2addr v5, v2

    .line 367
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v2, v8

    shr-int/lit8 v3, v7, 0x2

    add-int/2addr v2, v3

    if-le v5, v2, :cond_9

    .line 368
    move v13, v11

    .line 375
    if-gez v13, :cond_4

    .line 376
    iget v13, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 379
    :cond_4
    const/4 v2, 0x1

    if-le v2, v13, :cond_5

    .line 380
    const/4 v13, 0x1

    .line 383
    :cond_5
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mChildNumRow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", numRow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalItemHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", childLayoutHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_6
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    if-eq v13, v2, :cond_7

    .line 386
    iput v13, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    .line 387
    const/4 v9, 0x1

    .line 391
    :cond_7
    if-lez v13, :cond_8

    .line 392
    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    sub-int v2, v8, v2

    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v14

    add-int/lit8 v3, v13, -0x1

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingTop:I

    .line 393
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingTop:I

    if-gez v2, :cond_8

    .line 394
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingTop:I

    .end local v1           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v5           #startY:I
    .end local v7           #childCellHeight:I
    .end local v8           #childLayoutHeight:I
    .end local v11           #j:I
    .end local v13           #numRow:I
    .end local v14           #totalItemHeight:I
    :cond_8
    move v10, v9

    .line 399
    .restart local v10       #isChange:I
    goto/16 :goto_1

    .line 372
    .end local v10           #isChange:I
    .restart local v1       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v5       #startY:I
    .restart local v7       #childCellHeight:I
    .restart local v8       #childLayoutHeight:I
    .restart local v11       #j:I
    .restart local v13       #numRow:I
    .restart local v14       #totalItemHeight:I
    :cond_9
    add-int/2addr v14, v7

    .line 365
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2
.end method

.method private clearChildBackground(Z)V
    .locals 6
    .parameter "full"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2238
    sget-boolean v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearChildBackground, full: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunnyCore/view/Vector3F;

    if-eqz v0, :cond_1

    .line 2242
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunnyCore/view/Vector3F;

    iget v1, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunnyCore/view/Vector3F;

    iget v3, v3, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    .line 2245
    :cond_1
    iput-boolean v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsChildBGReady:Z

    .line 2248
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_3

    .line 2249
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_2

    .line 2250
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 2253
    :cond_2
    if-eqz p1, :cond_3

    .line 2254
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 2255
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    .line 2259
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_5

    .line 2260
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_4

    .line 2261
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 2264
    :cond_4
    if-eqz p1, :cond_5

    .line 2265
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 2266
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

    .line 2270
    :cond_5
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_7

    .line 2271
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_6

    .line 2272
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 2275
    :cond_6
    if-eqz p1, :cond_7

    .line 2276
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 2277
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunnyCore/Sprite;

    .line 2282
    :cond_7
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBigChildBG:Z

    if-eqz v0, :cond_8

    .line 2283
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_8

    .line 2284
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2285
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTexture:Lcom/htc/sunnyCore/Texture;

    .line 2289
    :cond_8
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_9

    .line 2290
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2291
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleTexture:Lcom/htc/sunnyCore/Texture;

    .line 2294
    :cond_9
    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    .line 2296
    if-eqz p1, :cond_12

    .line 2297
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    .line 2299
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_a

    .line 2300
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 2301
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    .line 2305
    :cond_a
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_c

    .line 2306
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    if-eqz v0, :cond_b

    .line 2307
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SViewGroup;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 2308
    :cond_b
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 2309
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 2310
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->release()V

    .line 2311
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    .line 2314
    :cond_c
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_e

    .line 2315
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    if-eqz v0, :cond_d

    .line 2316
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SViewGroup;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 2317
    :cond_d
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 2318
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 2319
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->release()V

    .line 2320
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    .line 2323
    :cond_e
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_10

    .line 2324
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    if-eqz v0, :cond_f

    .line 2325
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SViewGroup;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 2326
    :cond_f
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 2327
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 2328
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->release()V

    .line 2329
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    .line 2332
    :cond_10
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    if-eqz v0, :cond_11

    .line 2333
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0, v5}, Lcom/htc/sunnyCore/view/SViewGroup;->dispatchResourceCreation(Z)V

    .line 2334
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0, v4}, Lcom/htc/sunnyCore/view/SViewGroup;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 2335
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SViewGroup;->release()V

    .line 2336
    iput-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    .line 2340
    :cond_11
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->releaseChildViewBgTextures()V

    .line 2343
    :cond_12
    return-void
.end method

.method private createChildViewIndicator()I
    .locals 2

    .prologue
    .line 2569
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIndicatorResId:I

    if-gez v0, :cond_0

    .line 2570
    const/4 v0, 0x0

    .line 2573
    :goto_0
    return v0

    .line 2572
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIndicatorResId:I

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    .line 2573
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private doFakeOnLayout(I)V
    .locals 29
    .parameter "makeItemRowType"

    .prologue
    .line 425
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    move/from16 v28, v0

    .line 429
    .local v28, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    move/from16 v22, v0

    .line 431
    .local v22, height:I
    const/4 v4, 0x1

    move/from16 v0, v28

    if-lt v0, v4, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resetGesture()V

    .line 439
    sget-boolean v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doFakeOnLayout, mContext: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunnyCore/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "layoutIRT width="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", height="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mInLayout:Z

    .line 443
    const v25, 0x7fffffff

    .line 444
    .local v25, oldFirstItemPositionX:I
    const v26, 0x7fffffff

    .line 445
    .local v26, oldFirstItemPositionY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v24, v0

    .line 446
    .local v24, oldFirstIdx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v27, v0

    .line 448
    .local v27, oldLastIdx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget v0, v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move/from16 v25, v0

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    iget v0, v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v26, v0

    .line 452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v23, v0

    .local v23, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v23

    if-gt v0, v4, :cond_4

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 454
    .local v18, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v18, :cond_3

    .line 455
    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->unlink()V

    .line 456
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const v6, 0x7f7fffff

    const v8, 0x7f7fffff

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v9}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPosition(FFF)V

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    .line 452
    :cond_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 460
    .end local v18           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 463
    .end local v23           #i:I
    :cond_5
    const/4 v15, 0x0

    .line 465
    .local v15, bSetNewList:Z
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->checkNewMediaListOnLayout(III)Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;

    move-result-object v19

    .line 467
    .local v19, container:Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->isEnd:Z

    if-nez v4, :cond_0

    .line 470
    move-object/from16 v0, v19

    iget-boolean v15, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->bSetNewList:Z

    .line 471
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionX:I

    move/from16 v25, v0

    .line 472
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$ParamContainer;->oldFirstItemPositionY:I

    move/from16 v26, v0

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    move/from16 v0, v28

    int-to-float v6, v0

    neg-float v6, v6

    const/high16 v8, 0x4000

    div-float/2addr v6, v8

    move/from16 v0, v22

    int-to-float v8, v0

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v9}, Lcom/htc/sunnyCore/SceneNode;->setPosition(FFF)V

    .line 477
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v4, :cond_11

    .line 478
    const/4 v7, 0x0

    .line 479
    .local v7, currentBase:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_12

    .line 480
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    rsub-int/lit8 v7, v4, 0x0

    .line 486
    :goto_2
    move v14, v7

    .line 488
    .local v14, alignToUpperDist:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_15

    .line 489
    const/4 v4, 0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_6

    .line 490
    move/from16 v7, v26

    .line 493
    :cond_6
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_13

    .line 503
    const/4 v5, 0x0

    .line 504
    .local v5, startIdx:I
    move/from16 v17, v7

    .line 506
    .local v17, belowParentStartY:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v4, v6, :cond_9

    .line 508
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v4, 0x1

    .line 509
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v7, v4, v6

    .line 510
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ge v5, v4, :cond_8

    .line 511
    move/from16 v17, v7

    .line 513
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v4, v6, :cond_9

    move/from16 v0, v22

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v6

    if-gt v7, v4, :cond_7

    .line 516
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-le v4, v6, :cond_a

    .line 520
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 521
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 525
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    .line 527
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-lez v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lt v4, v6, :cond_e

    .line 529
    if-lez v17, :cond_b

    .line 530
    const/16 v17, 0x0

    .line 533
    :cond_b
    sub-int v4, v17, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int v20, v4, v6

    .line 534
    .local v20, fakeChildViewHeight:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 537
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v11, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v7, v4, v6

    .line 538
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_d

    move/from16 v0, v22

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v6

    sub-int v4, v4, v20

    if-gt v7, v4, :cond_c

    .line 540
    :cond_d
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    .line 543
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_e

    move/from16 v0, v22

    neg-int v4, v0

    sub-int v4, v4, v20

    if-le v7, v4, :cond_e

    .line 544
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v11, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v7, v4, v6

    .line 635
    .end local v5           #startIdx:I
    .end local v17           #belowParentStartY:I
    .end local v20           #fakeChildViewHeight:I
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v0, v24

    if-ne v0, v4, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v0, v27

    if-ne v0, v4, :cond_f

    const/4 v4, 0x1

    if-ne v4, v15, :cond_10

    .line 636
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->invokeOnItemScrollListener()V

    .line 639
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyUpdatePreparator(Z)V

    .line 642
    .end local v7           #currentBase:I
    .end local v14           #alignToUpperDist:I
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mInLayout:Z

    .line 644
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_21

    .line 645
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_20

    .line 646
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startExpandOutAnimation()V

    goto/16 :goto_0

    .line 483
    .restart local v7       #currentBase:I
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    add-int/lit8 v7, v4, 0x0

    goto/16 :goto_2

    .line 552
    .restart local v14       #alignToUpperDist:I
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v11, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v6

    sub-int v7, v4, v6

    .line 553
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_14

    move/from16 v0, v22

    neg-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v6

    if-gt v7, v4, :cond_13

    .line 557
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fillUp()V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fillDown()V

    goto :goto_3

    .line 563
    :cond_15
    const/4 v4, 0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_16

    .line 564
    move/from16 v7, v25

    .line 567
    :cond_16
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_1e

    .line 577
    const/4 v5, 0x0

    .line 578
    .restart local v5       #startIdx:I
    move/from16 v16, v7

    .line 580
    .local v16, belowParentStartX:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v4, v6, :cond_19

    .line 582
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v5, v4, 0x1

    .line 583
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v9, v5

    move v10, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v6

    add-int v7, v4, v6

    .line 584
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ge v5, v4, :cond_18

    .line 585
    move/from16 v16, v7

    .line 587
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v4, v6, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    sub-int v4, v28, v4

    if-lt v7, v4, :cond_17

    .line 590
    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-le v4, v6, :cond_1a

    .line 594
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 595
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 599
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    .line 601
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-lez v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lt v4, v6, :cond_e

    .line 602
    if-gez v16, :cond_1b

    .line 603
    const/16 v16, 0x0

    .line 606
    :cond_1b
    sub-int v4, v16, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int v21, v4, v6

    .line 607
    .local v21, fakeChildViewWidth:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 609
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v10, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v6

    add-int v7, v4, v6

    .line 610
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    sub-int v4, v28, v4

    add-int v4, v4, v21

    if-lt v7, v4, :cond_1c

    .line 612
    :cond_1d
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    .line 615
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_e

    add-int v4, v28, v21

    if-ge v7, v4, :cond_e

    .line 616
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v10, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v6

    add-int v7, v4, v6

    goto/16 :goto_3

    .line 624
    .end local v5           #startIdx:I
    .end local v16           #belowParentStartX:I
    .end local v21           #fakeChildViewWidth:I
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v9, v4, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v10, v7

    move/from16 v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v6

    add-int v7, v4, v6

    .line 625
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge v4, v6, :cond_1f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    sub-int v4, v28, v4

    if-lt v7, v4, :cond_1e

    .line 629
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fillLeft()V

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fillRight()V

    goto/16 :goto_3

    .line 649
    .end local v7           #currentBase:I
    .end local v14           #alignToUpperDist:I
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 651
    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "doFakeOnLayout, MAKE_ITEM_ROW_EXPANDOUT_ANIM, End"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 654
    :cond_21
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_23

    .line 656
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_22

    .line 657
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startCollapseAnimation()V

    goto/16 :goto_0

    .line 660
    :cond_22
    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doFakeOnLayout, no child view, mCollapseChildType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 664
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->cancelAnimation()V

    .line 665
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 667
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fitBottomSpace(I)V

    goto/16 :goto_0
.end method

.method private doScrollClickedItemToUpper(I)V
    .locals 8
    .parameter "clickedIndex"

    .prologue
    .line 2998
    sget-boolean v5, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++ doScrollClickedItemToUpper, clickedIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    :cond_0
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3001
    .local v0, clickedCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_3

    .line 3002
    const/4 v4, 0x0

    .line 3003
    .local v4, nDistToAlign:I
    const/4 v1, 0x0

    .line 3005
    .local v1, forceBouncingBack:Z
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 3006
    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    neg-int v5, v5

    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    sub-int v4, v5, v6

    .line 3007
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3008
    .local v2, lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v5, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v6, v6

    iget v7, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 3009
    .local v3, leftSpace:I
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-eqz v5, :cond_1

    if-lez v3, :cond_1

    .line 3010
    const/4 v1, 0x1

    .line 3023
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    new-instance v6, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerItemAlign;

    invoke-direct {v6}, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerItemAlign;-><init>()V

    const/16 v7, 0xfa

    invoke-virtual {v5, v4, v6, v7, v1}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->scrollExpGridViewByDistance(ILcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;IZ)V

    .line 3024
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v6, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;

    const-string v7, "ExpGridItemAlignAction"

    invoke-direct {v6, p0, p0, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 3029
    .end local v1           #forceBouncingBack:Z
    .end local v2           #lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #leftSpace:I
    .end local v4           #nDistToAlign:I
    :goto_1
    return-void

    .line 3014
    .restart local v1       #forceBouncingBack:Z
    .restart local v4       #nDistToAlign:I
    :cond_2
    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    sub-int v4, v5, v6

    .line 3015
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3017
    .restart local v2       #lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 3018
    .restart local v3       #leftSpace:I
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-eqz v5, :cond_1

    if-lez v3, :cond_1

    .line 3019
    const/4 v1, 0x1

    goto :goto_0

    .line 3027
    .end local v1           #forceBouncingBack:Z
    .end local v2           #lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #leftSpace:I
    .end local v4           #nDistToAlign:I
    :cond_3
    sget-object v5, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "doScrollClickedItemToUpper, clickedCell is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doScrollExpandedParentItemToUpper()V
    .locals 8

    .prologue
    .line 3032
    sget-boolean v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "+++ doScrollExpandedParentItemToUpper"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->resetGesture()V

    .line 3036
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 3037
    const/4 v3, 0x0

    .line 3038
    .local v3, nDistToAlign:I
    const/4 v0, 0x0

    .line 3040
    .local v0, forceBouncingBack:Z
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 3041
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getDistFromExpandedParentItemToUpper()I

    move-result v3

    .line 3043
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3044
    .local v1, lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v4, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v5, v5

    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 3045
    .local v2, leftSpace:I
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-eqz v4, :cond_1

    if-lez v2, :cond_1

    .line 3046
    const/4 v0, 0x1

    .line 3059
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    new-instance v5, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerItemAlign;

    invoke-direct {v5}, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerItemAlign;-><init>()V

    const/16 v6, 0xfa

    invoke-virtual {v4, v3, v5, v6, v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->scrollExpGridViewByDistance(ILcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;IZ)V

    .line 3060
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v5, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;

    const-string v6, "ExpGridItemAlignAction"

    const/4 v7, 0x3

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 3065
    .end local v0           #forceBouncingBack:Z
    .end local v1           #lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v2           #leftSpace:I
    .end local v3           #nDistToAlign:I
    :goto_1
    return-void

    .line 3050
    .restart local v0       #forceBouncingBack:Z
    .restart local v3       #nDistToAlign:I
    :cond_2
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getDistFromExpandedParentItemToUpper()I

    move-result v3

    .line 3052
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3053
    .restart local v1       #lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v5, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    sub-int/2addr v4, v5

    iget v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v2, v4, v5

    .line 3054
    .restart local v2       #leftSpace:I
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-eqz v4, :cond_1

    if-lez v2, :cond_1

    .line 3055
    const/4 v0, 0x1

    goto :goto_0

    .line 3063
    .end local v0           #forceBouncingBack:Z
    .end local v1           #lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v2           #leftSpace:I
    .end local v3           #nDistToAlign:I
    :cond_3
    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doScrollExpandedParentItemToUpper, mClickedParentIdx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private fillLeftStartIndex(I)I
    .locals 4
    .parameter "currentStartIndex"

    .prologue
    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, startIdx:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ne p1, v1, :cond_0

    .line 885
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 915
    :goto_0
    return v0

    .line 887
    :cond_0
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_1

    .line 894
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    rem-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    .line 896
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 903
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    sub-int v0, p1, v1

    goto :goto_0

    .line 912
    :cond_2
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    sub-int v0, p1, v1

    goto :goto_0
.end method

.method private fillUpStartIndex(I)I
    .locals 4
    .parameter "currentStartIndex"

    .prologue
    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, startIdx:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ne p1, v1, :cond_0

    .line 788
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 818
    :goto_0
    return v0

    .line 790
    :cond_0
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_1

    .line 797
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    rem-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    .line 799
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 806
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    sub-int v0, p1, v1

    goto :goto_0

    .line 815
    :cond_2
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    sub-int v0, p1, v1

    goto :goto_0
.end method

.method private fitBottomSpace(I)V
    .locals 10
    .parameter "alignMode"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 673
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 674
    .local v1, lastCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    const/4 v2, 0x0

    .line 676
    .local v2, leftSpace:I
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v5, v9, :cond_1

    .line 677
    iget v5, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v6, v6

    iget v7, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 683
    :goto_0
    if-lez v2, :cond_3

    .line 684
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 685
    .local v0, firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getLevelNumberByItem(I)I

    move-result v3

    .line 686
    .local v3, levelNo:I
    const/4 v4, 0x0

    .line 688
    .local v4, offset:I
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v5, v9, :cond_2

    .line 689
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v3

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 695
    :goto_1
    sget-object v5, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fitBottomSpace, leftSpace: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    neg-int v6, v4

    new-instance v7, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerItemAlign;

    invoke-direct {v7}, Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerItemAlign;-><init>()V

    const/16 v8, 0x190

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->scrollExpGridViewByDistance(ILcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;IZ)V

    .line 698
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v6, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;

    const-string v7, "ExpGridItemAlignAction"

    invoke-direct {v6, p0, p0, v7, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpGridItemAlignAction;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/htc/sunnyCore/RenderThread;->pushActionIRT(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    .line 709
    .end local v0           #firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #levelNo:I
    .end local v4           #offset:I
    :cond_0
    :goto_2
    return-void

    .line 680
    :cond_1
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    goto :goto_0

    .line 692
    .restart local v0       #firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v3       #levelNo:I
    .restart local v4       #offset:I
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v3

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    .line 701
    .end local v0           #firstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #levelNo:I
    .end local v4           #offset:I
    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 702
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 703
    iput-boolean v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    .line 704
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    if-eqz v5, :cond_0

    .line 705
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    invoke-interface {v5, v6, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onDeleteAllChildsReadyIRT(II)V

    goto :goto_2
.end method

.method private getChildHeight(I)I
    .locals 5
    .parameter "childCount"

    .prologue
    .line 2094
    const/4 v1, 0x0

    .line 2096
    .local v1, height:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2097
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    if-nez v2, :cond_0

    .line 2098
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "getChildViewHeight, mChildTitleHeight is 0, re-try to do prepareChildViewTitle."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareChildViewTitle()I

    move-result v2

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    .line 2100
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    if-nez v2, :cond_0

    .line 2101
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "getChildViewHeight, mChildTitleHeight is 0, after re-try. still 0???."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v0

    .line 2108
    .local v0, childLevelCount:I
    if-lez v0, :cond_1

    .line 2109
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    mul-int/2addr v2, v0

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2111
    :cond_1
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChildViewHeight, child title height(before adjusted): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_2
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_3

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int v1, v2, v3

    .line 2113
    :cond_3
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChildViewHeight, child title height(after adjusted): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    .end local v0           #childLevelCount:I
    :cond_4
    :goto_0
    sget v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    if-le v1, v2, :cond_5

    sget v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    .line 2121
    :cond_5
    return v1

    .line 2116
    :cond_6
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginBottom:I

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method private getChildItemStartX(II)I
    .locals 4
    .parameter "index"
    .parameter "base"

    .prologue
    .line 2144
    move v1, p2

    .line 2145
    .local v1, startX:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    div-int v0, v2, v3

    .line 2146
    .local v0, column:I
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildViewOneLevelLength()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 2150
    return v1
.end method

.method private getChildItemStartY(II)I
    .locals 4
    .parameter "index"
    .parameter "base"

    .prologue
    .line 2154
    move v1, p2

    .line 2155
    .local v1, startY:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    div-int v0, v2, v3

    .line 2156
    .local v0, row:I
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildViewOneLevelLength()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    .line 2160
    return v1
.end method

.method private getChildViewIndicatorPos(Z)Lcom/htc/sunnyCore/view/Vector3F;
    .locals 6
    .parameter "bRelativeToGridView"

    .prologue
    .line 2655
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2656
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SViewGroup;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float v3, v4, v5

    .line 2658
    .local v3, yOffset:F
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 2659
    .local v0, indicatorPos:Lcom/htc/sunnyCore/view/Vector3F;
    if-eqz p1, :cond_0

    .line 2660
    iget v4, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    add-float/2addr v4, v3

    iput v4, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    :cond_0
    move-object v1, v0

    .line 2673
    .end local v0           #indicatorPos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v3           #yOffset:F
    .local v1, indicatorPos:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2667
    .end local v1           #indicatorPos:Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SViewGroup;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunnyCore/view/Vector3F;

    iget v5, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float v2, v4, v5

    .line 2669
    .local v2, xOffset:F
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 2670
    .restart local v0       #indicatorPos:Lcom/htc/sunnyCore/view/Vector3F;
    if-eqz p1, :cond_2

    .line 2671
    iget v4, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    add-float/2addr v4, v2

    iput v4, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    :cond_2
    move-object v1, v0

    .line 2673
    .restart local v1       #indicatorPos:Ljava/lang/Object;
    goto :goto_0
.end method

.method private getChildViewIndicatorPosX()I
    .locals 4

    .prologue
    .line 2595
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    rem-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getChildViewIndicatorPosY()I
    .locals 4

    .prologue
    .line 2599
    iget v0, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    rem-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method private getChildViewOneLevelLength()I
    .locals 3

    .prologue
    .line 2125
    const/4 v0, 0x0

    .line 2126
    .local v0, length:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v1, :cond_0

    .line 2127
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2128
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int v0, v1, v2

    .line 2136
    :cond_0
    :goto_0
    return v0

    .line 2131
    :cond_1
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private getChildWidth(I)I
    .locals 5
    .parameter "childCount"

    .prologue
    .line 2381
    const/4 v1, 0x0

    .line 2382
    .local v1, width:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2383
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginRight:I

    sub-int v1, v2, v3

    .line 2395
    :cond_0
    :goto_0
    sget v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    if-le v1, v2, :cond_1

    sget v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    .line 2397
    :cond_1
    return v1

    .line 2386
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v0

    .line 2387
    .local v0, childLevelCount:I
    if-lez v0, :cond_3

    .line 2388
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    mul-int/2addr v2, v0

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 2390
    :cond_3
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChildWidth, child width(before adjusted): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :cond_4
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_5

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int v1, v2, v3

    .line 2392
    :cond_5
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChildWidth, child width(after adjusted): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getChildsLevelCount(I)I
    .locals 5
    .parameter "childCount"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2077
    const/4 v0, 0x0

    .line 2079
    .local v0, count:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2080
    if-lez p1, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    if-lez v3, :cond_0

    .line 2081
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    div-int v3, p1, v3

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    rem-int v4, p1, v4

    if-lez v4, :cond_1

    :goto_0
    add-int v0, v3, v1

    .line 2090
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v2

    .line 2081
    goto :goto_0

    .line 2085
    :cond_2
    if-lez p1, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    if-lez v3, :cond_0

    .line 2086
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    div-int v3, p1, v3

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    rem-int v4, p1, v4

    if-lez v4, :cond_3

    :goto_2
    add-int v0, v3, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private getDistFromExpandedParentItemToUpper()I
    .locals 10

    .prologue
    .line 3068
    const/4 v3, 0x0

    .line 3070
    .local v3, distance:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 3071
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3073
    .local v4, onScreenFirstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 3085
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    if-gt v7, v8, :cond_1

    .line 3086
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int v6, v7, v8

    .line 3087
    .local v6, pRowDiff:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v6

    iget v8, v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    sub-int v3, v7, v8

    .line 3200
    .end local v4           #onScreenFirstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v6           #pRowDiff:I
    :cond_0
    :goto_0
    return v3

    .line 3100
    .restart local v4       #onScreenFirstCell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_1
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3102
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int v3, v7, v8

    .line 3105
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    div-int v1, v7, v8

    .line 3106
    .local v1, cRowDiff:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v1

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 3109
    iget v7, v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 3112
    neg-int v3, v3

    .line 3113
    goto :goto_0

    .line 3126
    .end local v1           #cRowDiff:I
    :cond_2
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ge v7, v8, :cond_0

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3128
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v2

    .line 3131
    .local v2, childLevelCount:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int/2addr v7, v8

    add-int/lit8 v6, v7, 0x1

    .line 3132
    .restart local v6       #pRowDiff:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    mul-int/2addr v7, v6

    add-int/lit8 v8, v6, 0x1

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    .line 3135
    if-lez v2, :cond_3

    .line 3136
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    mul-int/2addr v7, v2

    add-int/lit8 v8, v2, -0x1

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 3141
    :cond_3
    iget v7, v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 3144
    neg-int v3, v3

    .line 3145
    goto :goto_0

    .line 3151
    .end local v2           #childLevelCount:I
    .end local v6           #pRowDiff:I
    :cond_4
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    if-gt v7, v8, :cond_5

    .line 3152
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    div-int v5, v7, v8

    .line 3153
    .local v5, pColumnDiff:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    iget v8, v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    sub-int v3, v7, v8

    .line 3154
    goto/16 :goto_0

    .line 3158
    .end local v5           #pColumnDiff:I
    :cond_5
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3160
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int v3, v7, v8

    .line 3163
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    div-int v0, v7, v8

    .line 3164
    .local v0, cColumnDiff:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 3167
    iget v7, v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    neg-int v7, v7

    add-int/2addr v3, v7

    .line 3170
    neg-int v3, v3

    .line 3171
    goto/16 :goto_0

    .line 3177
    .end local v0           #cColumnDiff:I
    :cond_6
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ge v7, v8, :cond_0

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3179
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v7}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v2

    .line 3182
    .restart local v2       #childLevelCount:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    div-int/2addr v7, v8

    add-int/lit8 v5, v7, 0x1

    .line 3183
    .restart local v5       #pColumnDiff:I
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    mul-int/2addr v7, v5

    add-int/lit8 v8, v5, 0x1

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    .line 3186
    if-lez v2, :cond_7

    .line 3187
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    mul-int/2addr v7, v2

    add-int/lit8 v8, v2, -0x1

    iget v9, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 3192
    :cond_7
    iget v7, v4, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    neg-int v7, v7

    add-int/2addr v3, v7

    .line 3195
    neg-int v3, v3

    goto/16 :goto_0
.end method

.method private getItemRenderOrder(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1503
    const/4 v0, 0x0

    .line 1505
    .local v0, renderOrder:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v1, :cond_0

    .line 1506
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v1, p1, :cond_1

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt p1, v1, :cond_1

    .line 1507
    const/4 v0, 0x2

    .line 1514
    :cond_0
    :goto_0
    return v0

    .line 1509
    :cond_1
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le p1, v1, :cond_0

    .line 1510
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    .line 210
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    .line 211
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    .line 212
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    .line 213
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    .line 214
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    .line 215
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    .line 216
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 218
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    .line 219
    return-void
.end method

.method private isChildItem(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 2140
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareChildViewTitle()I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 2476
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    if-ne v5, v6, :cond_1

    .line 2477
    :cond_0
    sget-object v5, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareChildViewTitle return. mTitleLayoutResId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mTitleTextViewResId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :goto_0
    return v1

    .line 2481
    :cond_1
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    if-nez v5, :cond_2

    .line 2482
    iget-object v5, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 2483
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    .line 2484
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 2485
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleText:Landroid/widget/TextView;

    .line 2493
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    .line 2495
    .local v0, container:Landroid/view/ViewGroup;
    iget v5, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2496
    .local v4, measureW:I
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2497
    .local v3, measureH:I
    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 2498
    iget v5, p0, Lcom/htc/sunnyCore/view/SView;->mWidth:I

    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v1, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 2501
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 2503
    .local v1, height:I
    goto :goto_0

    .line 2488
    .end local v0           #container:Landroid/view/ViewGroup;
    .end local v1           #height:I
    .end local v3           #measureH:I
    .end local v4           #measureW:I
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    sget-object v5, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "prepareChildViewTitle, mTitleContainer is null! return 0"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private releaseChildViewBgTextures()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4027
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_0

    .line 4028
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 4029
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGHeadCornerTexture:Lcom/htc/sunnyCore/Texture;

    .line 4031
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_1

    .line 4032
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 4033
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidMainTexture:Lcom/htc/sunnyCore/Texture;

    .line 4035
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_2

    .line 4036
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 4037
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGMidRemainingTexture:Lcom/htc/sunnyCore/Texture;

    .line 4039
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_3

    .line 4040
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 4041
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGTailCornerTexture:Lcom/htc/sunnyCore/Texture;

    .line 4043
    :cond_3
    return-void
.end method

.method private setChildViewBGBoundaryBufLength(I)V
    .locals 6
    .parameter "itemLength"

    .prologue
    .line 1441
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1442
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    if-le v4, v5, :cond_1

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    .line 1443
    .local v0, horizontalSpacing:I
    :goto_0
    add-int v1, p1, v0

    .line 1444
    .local v1, itemHeight:I
    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    if-le v4, v5, :cond_0

    .line 1445
    mul-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    .line 1455
    .end local v0           #horizontalSpacing:I
    .end local v1           #itemHeight:I
    :cond_0
    :goto_1
    return-void

    .line 1442
    :cond_1
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    goto :goto_0

    .line 1449
    :cond_2
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    if-le v4, v5, :cond_3

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    .line 1450
    .local v3, verticalSpacing:I
    :goto_2
    add-int v2, p1, v3

    .line 1451
    .local v2, itemWidth:I
    mul-int/lit8 v4, v2, 0x2

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    if-le v4, v5, :cond_0

    .line 1452
    mul-int/lit8 v4, v2, 0x2

    iput v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    goto :goto_1

    .line 1449
    .end local v2           #itemWidth:I
    .end local v3           #verticalSpacing:I
    :cond_3
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    goto :goto_2
.end method

.method private startCollapseAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2800
    sget-boolean v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "+++ startCollapseAnimation +++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :cond_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2803
    sget-object v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v3, "mClickedParentIdx is INVALID_POSITION, could not do animation."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :goto_0
    return-void

    .line 2807
    :cond_1
    invoke-direct {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildViewIndicatorPos(Z)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    .line 2810
    .local v0, itemEndPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v2, v4, :cond_2

    .line 2811
    new-instance v1, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    int-to-float v2, v2

    invoke-direct {v1, p0, v0, v2, v4}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Lcom/htc/sunnyCore/view/Vector3F;FI)V

    .line 2812
    .local v1, shrinkAnimationController:Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mShrinkAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 2813
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    .line 2816
    .end local v1           #shrinkAnimationController:Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;
    :cond_2
    new-instance v1, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBelowParentsCollapseDistance:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Lcom/htc/sunnyCore/view/Vector3F;FI)V

    .line 2817
    .restart local v1       #shrinkAnimationController:Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mShrinkAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewShrinkAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 2818
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0
.end method

.method private startExpandOutAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2616
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 2617
    sget-object v5, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "mClickedParentIdx is INVALID_POSITION, could not do animation."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :goto_0
    return-void

    .line 2621
    :cond_0
    invoke-direct {p0, v8}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildViewIndicatorPos(Z)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    .line 2624
    .local v4, startPos:Lcom/htc/sunnyCore/view/Vector3F;
    new-instance v2, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewExpandOutAnimation;

    invoke-direct {v2, p0, v4}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewExpandOutAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 2625
    .local v2, expandOutController:Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewExpandOutAnimation;
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpandOutAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/view/animation/expgridview/MultiViewExpandOutAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 2626
    invoke-virtual {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 2629
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildViewIndicatorPos(Z)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v4

    .line 2630
    new-instance v1, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-direct {v1, v5, v4}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;-><init>(Lcom/htc/sunnyCore/view/SView;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 2631
    .local v1, enlargeAnimationController:Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mEnlargeAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v5}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewEnlargeAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 2632
    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 2635
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-direct {p0, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v0

    .line 2637
    .local v0, childLevelCount:I
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v5, v8, :cond_1

    .line 2638
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    .line 2639
    new-instance v3, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    int-to-float v5, v5

    invoke-direct {v3, p0, v5, v8}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;FI)V

    .line 2640
    .local v3, move:Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 2641
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0

    .line 2644
    .end local v3           #move:Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;
    :cond_1
    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    .line 2645
    new-instance v3, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveDistance:I

    int-to-float v5, v5

    const/4 v6, 0x2

    invoke-direct {v3, p0, v5, v6}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;FI)V

    .line 2646
    .restart local v3       #move:Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;
    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mParentExpandOutMoveAnimListenr:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v3, v5}, Lcom/htc/sunnyCore/view/animation/expgridview/ViewMoveAnimation;->setAnimationListener(Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 2647
    invoke-virtual {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_0
.end method

.method private updateChildMediaList(Lcom/htc/sunnyCore/IMediaList;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 1
    .parameter
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;",
            "Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    const/4 v0, 0x0

    .line 1907
    invoke-virtual {p0, p1, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;Z)V

    .line 1908
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 1909
    invoke-virtual {p0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 1910
    return-void
.end method


# virtual methods
.method protected addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V
    .locals 2
    .parameter "cell"

    .prologue
    .line 1861
    if-nez p1, :cond_1

    .line 1862
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v1, "addCellToRecycler, cell is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_0
    :goto_0
    return-void

    .line 1866
    :cond_1
    invoke-virtual {p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1867
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1872
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->addCellToRecycler(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)V

    goto :goto_0
.end method

.method protected calMaxDistanceToLeft(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1760
    iget v2, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    iget v3, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    sub-int v1, v2, v3

    .line 1762
    .local v1, maxDistanceToLeft:I
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 1764
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1765
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1766
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1769
    :cond_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1770
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1774
    :cond_1
    return v1
.end method

.method protected calMaxDistanceToTop(Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;)I
    .locals 4
    .parameter "screenItemFirst"

    .prologue
    .line 1737
    iget v2, p1, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    neg-int v2, v2

    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 1739
    .local v1, maxDistanceToTop:I
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 1741
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1742
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1743
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1746
    :cond_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1747
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1752
    :cond_1
    return v1
.end method

.method public collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3684
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    .line 3685
    return-void
.end method

.method public collapseChildView(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "scrollToParentItem"

    .prologue
    .line 3695
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnCollapseChildViewListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 3696
    const/4 v0, 0x0

    .line 3698
    .local v0, r:Ljava/lang/Runnable;
    if-eqz p2, :cond_1

    .line 3699
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$8;

    .end local v0           #r:Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$8;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 3740
    .restart local v0       #r:Ljava/lang/Runnable;
    :goto_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 3741
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3746
    :cond_0
    :goto_1
    return-void

    .line 3715
    :cond_1
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;

    .end local v0           #r:Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$9;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .restart local v0       #r:Ljava/lang/Runnable;
    goto :goto_0

    .line 3744
    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected columnBestFit()Z
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->childColumnBestFit()Z

    .line 227
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->columnBestFit()Z

    move-result v0

    return v0
.end method

.method protected cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I
    .locals 2
    .parameter "bundle"

    .prologue
    .line 3538
    const-string v1, "oldOnScreenLastChildIdx"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3539
    .local v0, oldOnScreenLastChildIdx:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3540
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->cooperateAnimationItemId_IRT(Landroid/os/Bundle;)I

    move-result v0

    .line 3543
    .end local v0           #oldOnScreenLastChildIdx:I
    :cond_0
    return v0
.end method

.method public createResource()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1657
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBigChildBG:Z

    if-eqz v0, :cond_2

    .line 1658
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1660
    const/16 v0, 0x1d

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1e

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    .line 1662
    const/16 v0, 0x800

    sput v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    .line 1668
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1669
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSprite:Lcom/htc/sunnyCore/Sprite;

    .line 1671
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->createChildViewIndicator()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    .line 1672
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->prepareChildViewTitle()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    .line 1674
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->createResource()V

    .line 1676
    new-instance v0, Lcom/htc/sunnyCore/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    .line 1677
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/view/SViewGroup;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 1678
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SViewGroup;->dispatchResourceCreation(Z)V

    .line 1679
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SViewGroup;->setRenderOrder(I)V

    .line 1680
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/view/SViewGroup;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(Lcom/htc/sunnyCore/view/Vector3F;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunnyCore/view/Vector3F;

    .line 1682
    new-instance v0, Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    .line 1683
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 1684
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 1685
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SView;->setRenderOrder(I)V

    .line 1687
    new-instance v0, Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    .line 1688
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 1689
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 1690
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SView;->setRenderOrder(I)V

    .line 1692
    new-instance v0, Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunnyCore/view/SView;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    .line 1693
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 1694
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 1695
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SView;->setRenderOrder(I)V

    .line 1697
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SViewGroup;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 1698
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SViewGroup;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 1699
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SViewGroup;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 1701
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRootNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 1703
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    if-eqz v0, :cond_1

    .line 1704
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrder(I)V

    .line 1708
    :cond_1
    return-void

    .line 1666
    :cond_2
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/htc/sunnyCore/Sprite;->obtain(I)Lcom/htc/sunnyCore/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBGSprite:Lcom/htc/sunnyCore/Sprite;

    goto/16 :goto_0
.end method

.method protected fillLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 826
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 827
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 828
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mOnScreenItems.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 831
    :cond_0
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fillLeftStartIndex(I)I

    move-result v3

    .line 833
    .local v3, startIdx:I
    iget-boolean v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 834
    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 835
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 839
    :cond_1
    :goto_0
    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    if-lez v4, :cond_6

    const/4 v4, -0x1

    if-le v3, v4, :cond_6

    .line 840
    if-gez v3, :cond_2

    .line 841
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 844
    :cond_2
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    .line 845
    .local v1, cellWidth:I
    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 846
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    .line 849
    :cond_3
    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v5

    sub-int v2, v4, v5

    .line 851
    .local v2, newLeft:I
    iget-boolean v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    if-nez v4, :cond_4

    .line 852
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    if-ne v3, v4, :cond_5

    .line 853
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    sub-int/2addr v2, v4

    .line 854
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    sub-int/2addr v2, v4

    .line 866
    :cond_4
    :goto_1
    invoke-virtual {p0, v3, v2, v6, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZ)I

    .line 868
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 869
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fillLeftStartIndex(I)I

    move-result v3

    .line 871
    goto :goto_0

    .line 856
    :cond_5
    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    add-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 858
    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    if-ge v4, v5, :cond_7

    .line 873
    .end local v1           #cellWidth:I
    .end local v2           #newLeft:I
    :cond_6
    return-void

    .line 862
    .restart local v1       #cellWidth:I
    .restart local v2       #newLeft:I
    :cond_7
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    sub-int/2addr v2, v4

    goto :goto_1
.end method

.method protected fillUp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 716
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 717
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-nez v0, :cond_0

    .line 718
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mOnScreenItems.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 721
    :cond_0
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fillUpStartIndex(I)I

    move-result v3

    .line 723
    .local v3, startIdx:I
    iget-boolean v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 724
    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 725
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 729
    :cond_1
    :goto_0
    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    if-gez v4, :cond_6

    const/4 v4, -0x1

    if-le v3, v4, :cond_6

    .line 730
    if-gez v3, :cond_2

    .line 731
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFirstIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 734
    :cond_2
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    .line 735
    .local v1, cellHeight:I
    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 736
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    .line 739
    :cond_3
    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {p0, v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v5

    add-int v2, v4, v5

    .line 741
    .local v2, newTop:I
    iget-boolean v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    if-nez v4, :cond_4

    .line 749
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    if-ne v3, v4, :cond_5

    .line 750
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    sub-int/2addr v2, v4

    .line 751
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v2, v4

    .line 771
    :cond_4
    :goto_1
    invoke-virtual {p0, v3, v6, v2, v6}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemRow(IIIZ)I

    .line 773
    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 774
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->fillUpStartIndex(I)I

    move-result v3

    .line 775
    goto :goto_0

    .line 761
    :cond_5
    invoke-direct {p0, v3}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    add-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 763
    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    neg-int v5, v5

    if-le v4, v5, :cond_7

    .line 776
    .end local v1           #cellHeight:I
    .end local v2           #newTop:I
    :cond_6
    return-void

    .line 767
    .restart local v1       #cellHeight:I
    .restart local v2       #newTop:I
    :cond_7
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int/2addr v2, v4

    goto :goto_1
.end method

.method public freeResource()V
    .locals 3

    .prologue
    .line 1715
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 1717
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    if-eqz v2, :cond_1

    .line 1718
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1719
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1720
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->recycle()V

    goto :goto_0

    .line 1722
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 1726
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeResource()V

    .line 1727
    return-void
.end method

.method public getBestChildInsertIndex(II)I
    .locals 6
    .parameter "parentIdx"
    .parameter "levelItemsCount"

    .prologue
    .line 2178
    const/4 v0, -0x1

    .line 2179
    .local v0, insertIndex:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2180
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 2186
    :goto_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    sub-int v1, v3, v4

    .line 2187
    .local v1, parentCount:I
    div-int v4, v1, p2

    rem-int v3, v1, p2

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    add-int v2, v4, v3

    .line 2189
    .local v2, rowNum:I
    if-ltz p1, :cond_0

    .line 2190
    div-int v3, p1, p2

    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_4

    .line 2192
    move v0, v1

    .line 2199
    :cond_0
    :goto_2
    sget-boolean v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBestChildInsertIndex, insertIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_1
    return v0

    .line 2183
    .end local v1           #parentCount:I
    .end local v2           #rowNum:I
    :cond_2
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    goto :goto_0

    .line 2187
    .restart local v1       #parentCount:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2195
    .restart local v2       #rowNum:I
    :cond_4
    add-int v3, p1, p2

    rem-int v4, p1, p2

    sub-int v0, v3, v4

    goto :goto_2
.end method

.method public getChildFirstVisiblePosition()I
    .locals 4

    .prologue
    .line 2038
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getFirstVisiblePosition()I

    move-result v1

    .line 2039
    .local v1, firstVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v2

    .line 2040
    .local v2, lastVisiblePos:I
    const/4 v0, -0x1

    .line 2042
    .local v0, childFirstVisiblePos:I
    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2043
    move v0, v1

    .line 2049
    :cond_0
    :goto_0
    return v0

    .line 2045
    :cond_1
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v1, v3, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v3, v2, :cond_0

    .line 2046
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    goto :goto_0
.end method

.method public getChildLastVisiblePosition()I
    .locals 4

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getFirstVisiblePosition()I

    move-result v1

    .line 2057
    .local v1, firstVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v2

    .line 2058
    .local v2, lastVisiblePos:I
    const/4 v0, -0x1

    .line 2060
    .local v0, childlastVisiblePos:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-lt v2, v3, :cond_0

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v1, v3, :cond_0

    .line 2061
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v3, v2, :cond_1

    .line 2062
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    .line 2069
    :cond_0
    :goto_0
    return v0

    .line 2065
    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public getChildRootSViewGroup()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    return-object v0
.end method

.method public getChildsFirstIdx()I
    .locals 1

    .prologue
    .line 2017
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    return v0
.end method

.method public getChildsItemCount()I
    .locals 1

    .prologue
    .line 2031
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    return v0
.end method

.method public getChildsLastIdx()I
    .locals 1

    .prologue
    .line 2024
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    return v0
.end method

.method public getClickedParentIdx()I
    .locals 1

    .prologue
    .line 2170
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    return v0
.end method

.method protected getExtraPaddingRear()I
    .locals 3

    .prologue
    .line 1782
    const/4 v0, 0x0

    .line 1783
    .local v0, paddingRear:I
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-direct {p0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1784
    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1785
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    .line 1795
    :goto_0
    return v0

    .line 1788
    :cond_0
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    goto :goto_0

    .line 1792
    :cond_1
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getExtraPaddingRear()I

    move-result v0

    goto :goto_0
.end method

.method protected getHorizontalSpacingToNextRow(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1471
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v0, :cond_2

    .line 1472
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le p1, v0, :cond_1

    .line 1473
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v0

    .line 1480
    :goto_0
    return v0

    .line 1476
    :cond_1
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    goto :goto_0

    .line 1480
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getHorizontalSpacingToNextRow(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getLevelNumberByItem(I)I
    .locals 5
    .parameter "onScreenIdx"

    .prologue
    .line 1803
    const/4 v1, 0x0

    .line 1804
    .local v1, levelNo:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .local v2, modBase:I
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    .line 1806
    .local v0, childModBase:I
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1807
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 1808
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    .line 1811
    :cond_0
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v3, :cond_3

    .line 1812
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ge p1, v3, :cond_1

    .line 1813
    div-int v1, p1, v2

    .line 1826
    :goto_0
    return v1

    .line 1815
    :cond_1
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt p1, v3, :cond_2

    .line 1816
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    div-int/2addr v3, v2

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v4, p1, v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 1819
    :cond_2
    iget v3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    div-int/2addr v3, v2

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    sub-int v4, p1, v4

    div-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 1823
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLevelNumberByItem(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPreviousRowInfomation(ILcom/htc/sunnyCore/widget/gridview/GridView$Cell;)Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
    .locals 6
    .parameter "currentRowStartIdx"
    .parameter "currentCell"

    .prologue
    .line 3600
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_5

    .line 3601
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-ge p1, v4, :cond_0

    .line 3602
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunnyCore/widget/gridview/GridView$Cell;)Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v1

    .line 3659
    :goto_0
    return-object v1

    .line 3614
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3615
    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;

    invoke-direct {v1, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    .line 3616
    .local v1, info:Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v0, p1, v4

    .line 3617
    .local v0, d:I
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    div-int v4, v0, v4

    if-nez v4, :cond_1

    .line 3619
    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "getPreviousRowStartIdx, mChildsCount>0, case1."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    sub-int v3, p1, v4

    .line 3621
    .local v3, previousRowStartIdx:I
    iput v3, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 3622
    iget v4, p2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    goto :goto_0

    .line 3625
    .end local v3           #previousRowStartIdx:I
    :cond_1
    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "getPreviousRowStartIdx, mChildsCount>0, case2."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    sub-int v3, p1, v4

    .line 3627
    .restart local v3       #previousRowStartIdx:I
    iput v3, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 3629
    iget v4, p2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    goto :goto_0

    .line 3635
    .end local v0           #d:I
    .end local v1           #info:Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
    .end local v3           #previousRowStartIdx:I
    :cond_2
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    sub-int v0, p1, v4

    .line 3637
    .restart local v0       #d:I
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    div-int v4, v0, v4

    if-nez v4, :cond_4

    .line 3638
    new-instance v1, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;

    invoke-direct {v1, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    .line 3640
    .restart local v1       #info:Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    rem-int v2, v4, v5

    .line 3641
    .local v2, previousRowCount:I
    if-nez v2, :cond_3

    .line 3642
    iget v4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    add-int/2addr v2, v4

    .line 3644
    :cond_3
    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "getPreviousRowStartIdx, mChildsCount>0, case3."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    sub-int v3, p1, v2

    .line 3646
    .restart local v3       #previousRowStartIdx:I
    iput v3, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->rowId:I

    .line 3647
    iget v4, p2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;->startY:I

    goto :goto_0

    .line 3652
    .end local v1           #info:Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;
    .end local v2           #previousRowCount:I
    .end local v3           #previousRowStartIdx:I
    :cond_4
    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "getPreviousRowStartIdx, mChildsCount>0, case4."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunnyCore/widget/gridview/GridView$Cell;)Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v1

    goto/16 :goto_0

    .line 3659
    .end local v0           #d:I
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPreviousRowInfomation(ILcom/htc/sunnyCore/widget/gridview/GridView$Cell;)Lcom/htc/sunnyCore/widget/gridview/GridView$DeleteAnimationRowInformation;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected getValidIndexDuringFastScroller(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 3668
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3669
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 3672
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getValidIndexDuringFastScroller(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getVerticalSpacingToNextColumn(I)I
    .locals 1
    .parameter "startIdx"

    .prologue
    .line 1489
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    if-ge p1, v0, :cond_2

    .line 1490
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le p1, v0, :cond_1

    .line 1491
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v0

    .line 1498
    :goto_0
    return v0

    .line 1494
    :cond_1
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    goto :goto_0

    .line 1498
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getVerticalSpacingToNextColumn(I)I

    move-result v0

    goto :goto_0
.end method

.method protected makeItemColumn(IIIZ)I
    .locals 6
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollRight"

    .prologue
    .line 1191
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemColumn(IIIZI)I

    move-result v0

    return v0
.end method

.method protected makeItemColumn(IIIZI)I
    .locals 24
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollRight"
    .parameter "prepareAnimation"

    .prologue
    .line 1199
    const/16 v19, 0x0

    .line 1201
    .local v19, makeChildColumn:Z
    invoke-direct/range {p0 .. p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1202
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    if-eqz v4, :cond_7

    .line 1206
    sget-boolean v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeItemColumn, startIdx: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", scrollRight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mClickParentLevelStartIdx: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mChildsCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_0
    if-eqz p4, :cond_6

    .line 1209
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    add-int p1, p1, v4

    .line 1219
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 1220
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    add-int p2, p2, v4

    .line 1233
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    move/from16 v21, v0

    .line 1234
    .local v21, total:I
    const/4 v12, 0x0

    .line 1236
    .local v12, W:I
    if-eqz v19, :cond_14

    .line 1238
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildWidth(I)I

    move-result v23

    .line 1239
    .local v23, width:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildHeight(I)I

    move-result v16

    .line 1241
    .local v16, height:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    if-gtz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mHeadChildViewBgResId:I

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTailChildViewBgResId:I

    if-lez v4, :cond_4

    :cond_2
    if-lez v23, :cond_4

    if-lez v16, :cond_4

    .line 1243
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsChildBGReady:Z

    if-nez v4, :cond_4

    .line 1244
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    .line 1246
    if-eqz p4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    .line 1250
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewBgInMakeItemColumn(I)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    move/from16 v0, p2

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    move/from16 v0, v16

    int-to-float v7, v0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    .line 1254
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_3

    .line 1255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/view/SViewGroup;->setVisibility(Z)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1262
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewIndicator()V

    .line 1263
    const/16 v17, 0x0

    .line 1264
    .local v17, indicatorX:F
    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    int-to-float v6, v6

    add-float v17, v4, v6

    .line 1265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildViewIndicatorPosY()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    .line 1297
    .end local v17           #indicatorX:F
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingTop:I

    add-int/2addr v4, v6

    sub-int p3, p3, v4

    .line 1299
    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 1300
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    add-int p2, p2, v4

    .line 1303
    :cond_5
    move/from16 v5, p2

    .line 1305
    .local v5, childViewItemStartX:I
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_c

    .line 1306
    if-eqz p4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_c

    .line 1307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1308
    .local v13, firstChildcell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v13, :cond_b

    .line 1309
    iget v4, v13, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildItemStartX(II)I

    move-result v5

    .line 1310
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    sub-int/2addr v4, v6

    if-lt v5, v4, :cond_c

    .line 1437
    .end local v5           #childViewItemStartX:I
    .end local v13           #firstChildcell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v16           #height:I
    .end local v23           #width:I
    :goto_3
    return v5

    .line 1212
    .end local v12           #W:I
    .end local v21           #total:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move/from16 p1, v0

    goto/16 :goto_0

    .line 1216
    :cond_7
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1228
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-lez v4, :cond_1

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    .line 1229
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int p2, p2, v4

    goto/16 :goto_1

    .line 1268
    .restart local v12       #W:I
    .restart local v16       #height:I
    .restart local v21       #total:I
    .restart local v23       #width:I
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    add-int v4, v4, p1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le v4, v6, :cond_4

    .line 1272
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewBgInMakeItemColumn(I)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    add-int v6, v6, p2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    move/from16 v0, v16

    int-to-float v7, v0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    .line 1275
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_a

    .line 1276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/view/SViewGroup;->setVisibility(Z)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1283
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewIndicator()V

    .line 1284
    const/16 v17, 0x0

    .line 1285
    .restart local v17       #indicatorX:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    add-int v4, v4, p2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    int-to-float v6, v6

    add-float v17, v4, v6

    .line 1286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildViewIndicatorPosY()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1315
    .end local v17           #indicatorX:F
    .restart local v5       #childViewItemStartX:I
    .restart local v13       #firstChildcell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_b
    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v6, "makeItemColumn, firstChildcell is null!!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    .end local v13           #firstChildcell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_c
    move/from16 v3, p1

    .local v3, idx:I
    const/16 v18, 0x0

    .local v18, j:I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    move/from16 v0, v18

    if-ge v0, v4, :cond_1e

    move/from16 v0, v21

    if-ge v3, v0, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v3, v4, :cond_1e

    .line 1322
    const/4 v2, 0x0

    .line 1324
    .local v2, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1331
    :cond_d
    :goto_5
    if-nez v2, :cond_e

    .line 1332
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunnyCore/ViewItem;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v2, v0, v4, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;Z)V

    .line 1334
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_e
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v4, :cond_f

    .line 1335
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->cancelAnimation()V

    .line 1336
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 1337
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 1340
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    const/4 v7, 0x0

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 1343
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 1345
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v22

    .line 1346
    .local v22, w:I
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v15

    .line 1351
    .local v15, h:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    add-int/2addr v4, v15

    sub-int p3, p3, v4

    .line 1353
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_13

    .line 1354
    invoke-virtual/range {p0 .. p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getVerticalSpacingToNextColumn(I)I

    move-result v4

    neg-int v12, v4

    .line 1355
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 1363
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1365
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ge v3, v4, :cond_11

    .line 1366
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 1367
    sget-boolean v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v4, :cond_11

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeItemColumn, child row, mFirstIdx: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-le v3, v4, :cond_12

    .line 1370
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 1320
    :cond_12
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 1358
    :cond_13
    move/from16 v0, v22

    if-ge v12, v0, :cond_10

    .line 1359
    move/from16 v12, v22

    goto :goto_6

    .line 1375
    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #idx:I
    .end local v5           #childViewItemStartX:I
    .end local v15           #h:I
    .end local v16           #height:I
    .end local v18           #j:I
    .end local v22           #w:I
    .end local v23           #width:I
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    neg-int v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingTop:I

    sub-int/2addr v4, v6

    add-int p3, p3, v4

    .line 1377
    move/from16 v14, p1

    .line 1379
    .local v14, firstIndexInColumn:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move/from16 v0, p1

    if-ge v0, v4, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    add-int v6, v6, p1

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_15

    .line 1380
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 1383
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getItemRenderOrder(I)I

    move-result v20

    .line 1385
    .local v20, renderOrder:I
    move v3, v14

    .restart local v3       #idx:I
    const/16 v18, 0x0

    .restart local v18       #j:I
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    move/from16 v0, v18

    if-ge v0, v4, :cond_1e

    move/from16 v0, v21

    if-ge v3, v0, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-eq v3, v4, :cond_1e

    .line 1387
    const/4 v2, 0x0

    .line 1389
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1395
    :goto_8
    if-nez v2, :cond_16

    .line 1396
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunnyCore/ViewItem;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v2, v0, v4, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;Z)V

    .line 1398
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_16
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v4, :cond_17

    .line 1399
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->cancelAnimation()V

    .line 1400
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 1401
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 1403
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v8

    const/4 v11, 0x0

    move-object v6, v2

    move v7, v3

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 1404
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 1406
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v22

    .line 1407
    .restart local v22       #w:I
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v15

    .line 1409
    .restart local v15       #h:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    if-nez v4, :cond_18

    .line 1410
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    .line 1413
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    if-nez v4, :cond_19

    .line 1414
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    .line 1417
    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewBGBoundaryBufLength(I)V

    .line 1419
    sget-boolean v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mContext: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunnyCore/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "makeItemColumn idx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v4, v15

    sub-int p3, p3, v4

    .line 1423
    move/from16 v0, v22

    if-ge v12, v0, :cond_1b

    .line 1424
    move/from16 v12, v22

    .line 1427
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1428
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ge v3, v4, :cond_1c

    .line 1429
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 1431
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-le v3, v4, :cond_1d

    .line 1432
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 1385
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 1437
    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v14           #firstIndexInColumn:I
    .end local v15           #h:I
    .end local v20           #renderOrder:I
    .end local v22           #w:I
    :cond_1e
    add-int v5, p2, v12

    goto/16 :goto_3

    .line 1391
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v14       #firstIndexInColumn:I
    .restart local v20       #renderOrder:I
    :catch_0
    move-exception v4

    goto/16 :goto_8

    .line 1327
    .end local v14           #firstIndexInColumn:I
    .end local v20           #renderOrder:I
    .restart local v5       #childViewItemStartX:I
    .restart local v16       #height:I
    .restart local v23       #width:I
    :catch_1
    move-exception v4

    goto/16 :goto_5
.end method

.method protected makeItemRow(IIIZ)I
    .locals 6
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollDown"

    .prologue
    .line 924
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->makeItemRow(IIIZI)I

    move-result v0

    return v0
.end method

.method protected makeItemRow(IIIZI)I
    .locals 25
    .parameter "startIdx"
    .parameter "startX"
    .parameter "startY"
    .parameter "scrollDown"
    .parameter "prepareAnimation"

    .prologue
    .line 933
    const/16 v20, 0x0

    .line 935
    .local v20, makeChildRow:Z
    invoke-direct/range {p0 .. p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 936
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIgnoreChildViewItem:Z

    if-eqz v4, :cond_7

    .line 940
    sget-boolean v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeItemRow, startIdx: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", scrollDown: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mClickParentLevelStartIdx: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mChildsCount: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    if-eqz p4, :cond_6

    .line 943
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    add-int p1, p1, v4

    .line 953
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 954
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    add-int p3, p3, v4

    .line 969
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    move/from16 v22, v0

    .line 970
    .local v22, total:I
    const/4 v13, 0x0

    .line 972
    .local v13, H:I
    if-eqz v20, :cond_14

    .line 974
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildWidth(I)I

    move-result v24

    .line 975
    .local v24, width:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildHeight(I)I

    move-result v17

    .line 977
    .local v17, height:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    if-gtz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mHeadChildViewBgResId:I

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTailChildViewBgResId:I

    if-lez v4, :cond_4

    :cond_2
    if-lez v24, :cond_4

    if-lez v17, :cond_4

    .line 979
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsChildBGReady:Z

    if-nez v4, :cond_4

    .line 980
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    .line 982
    if-eqz p4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    .line 986
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewBgInMakeItemRow(I)V

    .line 989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    move/from16 v0, v24

    int-to-float v5, v0

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int v7, v7, p3

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    .line 991
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_3

    .line 992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SViewGroup;->setVisibility(Z)V

    .line 993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 999
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewTitle(Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    move/from16 v0, v24

    int-to-float v5, v0

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move/from16 v0, p3

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewIndicator()V

    .line 1004
    const/16 v18, 0x0

    .line 1005
    .local v18, indicatorY:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int v4, v4, p3

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    int-to-float v5, v5

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    int-to-float v5, v5

    add-float v18, v4, v5

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildViewIndicatorPosX()I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0, v7}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    .line 1041
    .end local v18           #indicatorY:F
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    add-int/2addr v4, v5

    add-int p2, p2, v4

    .line 1043
    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 1044
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    sub-int p3, p3, v4

    .line 1047
    :cond_5
    move/from16 v6, p3

    .line 1048
    .local v6, childViewItemStartY:I
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_c

    .line 1049
    if-eqz p4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_c

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1051
    .local v14, firstChildcell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v14, :cond_b

    .line 1052
    iget v4, v14, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildItemStartY(II)I

    move-result v6

    .line 1053
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    neg-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-gt v6, v4, :cond_c

    .line 1182
    .end local v6           #childViewItemStartY:I
    .end local v14           #firstChildcell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v17           #height:I
    .end local v24           #width:I
    :goto_3
    return v6

    .line 946
    .end local v13           #H:I
    .end local v22           #total:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move/from16 p1, v0

    goto/16 :goto_0

    .line 950
    :cond_7
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 963
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-lez v4, :cond_1

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    rsub-int/lit8 v4, v4, 0x0

    move/from16 v0, p3

    if-eq v0, v4, :cond_1

    .line 964
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int p3, p3, v4

    goto/16 :goto_1

    .line 1009
    .restart local v13       #H:I
    .restart local v17       #height:I
    .restart local v22       #total:I
    .restart local v24       #width:I
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    add-int v4, v4, p1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le v4, v5, :cond_4

    .line 1013
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewBgInMakeItemRow(I)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    move/from16 v0, v24

    int-to-float v5, v0

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    sub-int v7, p3, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    .line 1018
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_a

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SViewGroup;->setVisibility(Z)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/view/SView;->setVisibility(Z)V

    .line 1026
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewTitle(Ljava/lang/String;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleSView:Lcom/htc/sunnyCore/view/SView;

    move/from16 v0, v24

    int-to-float v5, v0

    const/high16 v7, 0x4000

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    sub-int v7, p3, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    .line 1030
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->addChildViewIndicator()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorSView:Lcom/htc/sunnyCore/view/SView;

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildViewIndicatorPosX()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    sub-int v7, p3, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/htc/sunnyCore/view/SView;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1058
    .restart local v6       #childViewItemStartY:I
    .restart local v14       #firstChildcell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_b
    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v5, "makeItemRow, firstChildcell is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local v14           #firstChildcell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_c
    move/from16 v3, p1

    .local v3, idx:I
    const/16 v19, 0x0

    .local v19, j:I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_1e

    move/from16 v0, v22

    if-ge v3, v0, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-gt v3, v4, :cond_1e

    .line 1065
    const/4 v2, 0x0

    .line 1067
    .local v2, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1074
    :cond_d
    :goto_5
    if-nez v2, :cond_e

    .line 1075
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunnyCore/ViewItem;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v2, v0, v4, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;Z)V

    .line 1077
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_e
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v4, :cond_f

    .line 1078
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->cancelAnimation()V

    .line 1079
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 1080
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 1083
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    const/4 v7, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 1086
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 1088
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v23

    .line 1089
    .local v23, w:I
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v16

    .line 1095
    .local v16, h:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    add-int v4, v4, v23

    add-int p2, p2, v4

    .line 1097
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_13

    .line 1098
    invoke-virtual/range {p0 .. p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getHorizontalSpacingToNextRow(I)I

    move-result v4

    neg-int v13, v4

    .line 1099
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setVisibility(Z)V

    .line 1107
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1109
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ge v3, v4, :cond_11

    .line 1110
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 1111
    sget-boolean v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v4, :cond_11

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeItemRow, child row, mFirstIdx: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-le v3, v4, :cond_12

    .line 1114
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 1063
    :cond_12
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 1102
    :cond_13
    move/from16 v0, v16

    if-ge v13, v0, :cond_10

    .line 1103
    move/from16 v13, v16

    goto :goto_6

    .line 1119
    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #idx:I
    .end local v6           #childViewItemStartY:I
    .end local v16           #h:I
    .end local v17           #height:I
    .end local v19           #j:I
    .end local v23           #w:I
    .end local v24           #width:I
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingLeft:I

    add-int/2addr v4, v5

    add-int p2, p2, v4

    .line 1121
    move/from16 v15, p1

    .line 1123
    .local v15, firstIndexInRow:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move/from16 v0, p1

    if-ge v0, v4, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    add-int v5, v5, p1

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_15

    .line 1124
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 1127
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getItemRenderOrder(I)I

    move-result v21

    .line 1129
    .local v21, renderOrder:I
    move v3, v15

    .restart local v3       #idx:I
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_1e

    move/from16 v0, v22

    if-ge v3, v0, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-eq v3, v4, :cond_1e

    .line 1131
    const/4 v2, 0x0

    .line 1133
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mCellRecycler:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    move-object v2, v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1139
    :goto_8
    if-nez v2, :cond_16

    .line 1140
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->create(Z)Lcom/htc/sunnyCore/ViewItem;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v2, v0, v4, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/ViewItem;Z)V

    .line 1142
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_16
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v4, :cond_17

    .line 1143
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->cancelAnimation()V

    .line 1144
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 1145
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    .line 1147
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v4, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v9

    const/4 v12, 0x0

    move-object v7, v2

    move v8, v3

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->link(ILcom/htc/sunnyCore/IMediaData;III)V

    .line 1148
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setRenderOrder(I)V

    .line 1150
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v23

    .line 1151
    .restart local v23       #w:I
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v16

    .line 1153
    .restart local v16       #h:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    if-nez v4, :cond_18

    .line 1154
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    .line 1157
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    if-nez v4, :cond_19

    .line 1158
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    .line 1161
    :cond_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewBGBoundaryBufLength(I)V

    .line 1163
    sget-boolean v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mContext: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunnyCore/view/SView;->mHostContextName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "makeItemRow idx="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", x="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", y="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int v4, v4, v23

    add-int p2, p2, v4

    .line 1166
    move/from16 v0, v16

    if-ge v13, v0, :cond_1b

    .line 1167
    move/from16 v13, v16

    .line 1170
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1172
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ge v3, v4, :cond_1c

    .line 1173
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 1174
    sget-boolean v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->DEBUG:Z

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeItemRow, parent row, mFirstIdx: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-le v3, v4, :cond_1d

    .line 1177
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    .line 1129
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 1182
    .end local v2           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v15           #firstIndexInRow:I
    .end local v16           #h:I
    .end local v21           #renderOrder:I
    .end local v23           #w:I
    :cond_1e
    sub-int v6, p3, v13

    goto/16 :goto_3

    .line 1135
    .restart local v2       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v15       #firstIndexInRow:I
    .restart local v21       #renderOrder:I
    :catch_0
    move-exception v4

    goto/16 :goto_8

    .line 1070
    .end local v15           #firstIndexInRow:I
    .end local v21           #renderOrder:I
    .restart local v6       #childViewItemStartY:I
    .restart local v17       #height:I
    .restart local v24       #width:I
    :catch_1
    move-exception v4

    goto/16 :goto_5
.end method

.method protected onLayout(ZFFFII)V
    .locals 1
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->cancelAnimation()V

    .line 413
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    .line 414
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    .line 417
    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 419
    invoke-super/range {p0 .. p6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onLayout(ZFFFII)V

    .line 421
    return-void
.end method

.method protected onScrollMotionIRT(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v9, 0x4000

    .line 1525
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mItemPrototype:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-nez v7, :cond_1

    .line 1625
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    iget v6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 1528
    .local v6, totalCount:I
    if-eqz v6, :cond_0

    .line 1532
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-ltz v7, :cond_0

    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_0

    .line 1536
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1537
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsChildBGReady:Z

    if-eqz v7, :cond_2

    .line 1538
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/view/SViewGroup;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v5

    .line 1539
    .local v5, originalChildRootPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v1

    .line 1541
    .local v1, childBGPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewHeight:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int v2, v7, v8

    .line 1542
    .local v2, childHeightLimit:I
    sget v7, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    if-ge v2, v7, :cond_3

    .line 1544
    :goto_1
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    if-ge v7, v2, :cond_4

    .line 1545
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v9, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    int-to-float v10, p2

    add-float/2addr v9, v10

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    .line 1624
    .end local v1           #childBGPos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v2           #childHeightLimit:I
    .end local v5           #originalChildRootPos:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0

    .line 1542
    .restart local v1       #childBGPos:Lcom/htc/sunnyCore/view/Vector3F;
    .restart local v2       #childHeightLimit:I
    .restart local v5       #originalChildRootPos:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_3
    sget v2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    goto :goto_1

    .line 1548
    :cond_4
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v7, v8, :cond_6

    .line 1549
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1550
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_5

    .line 1551
    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float v3, v7, v8

    .line 1552
    .local v3, childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    int-to-float v9, p2

    add-float/2addr v9, v3

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    goto :goto_2

    .line 1555
    .end local v3           #childRootOffset:F
    :cond_5
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1556
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_2

    .line 1557
    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellHeight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildTitleHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float v3, v7, v8

    .line 1558
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    int-to-float v9, p2

    add-float/2addr v9, v3

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    goto :goto_2

    .line 1562
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #childRootOffset:F
    :cond_6
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v7, v8, :cond_2

    .line 1563
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1564
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_7

    .line 1565
    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellHeight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float v3, v7, v8

    .line 1566
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    int-to-float v9, p2

    add-float/2addr v9, v3

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1568
    .end local v3           #childRootOffset:F
    :cond_7
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1569
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1570
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_2

    .line 1571
    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    sub-float v3, v7, v8

    .line 1572
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    int-to-float v9, p2

    add-float/2addr v9, v3

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1580
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v1           #childBGPos:Lcom/htc/sunnyCore/view/Vector3F;
    .end local v2           #childHeightLimit:I
    .end local v3           #childRootOffset:F
    .end local v5           #originalChildRootPos:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_8
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsChildBGReady:Z

    if-eqz v7, :cond_2

    .line 1581
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/view/SViewGroup;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v5

    .line 1582
    .restart local v5       #originalChildRootPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v1

    .line 1584
    .restart local v1       #childBGPos:Lcom/htc/sunnyCore/view/Vector3F;
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBGBoundaryBufLength:I

    add-int v4, v7, v8

    .line 1585
    .local v4, childWidthLimit:I
    sget v7, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    if-ge v4, v7, :cond_9

    .line 1587
    :goto_3
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    if-ge v7, v4, :cond_a

    .line 1588
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    iget v8, v5, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    int-to-float v9, p1

    add-float/2addr v8, v9

    iget v9, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1585
    :cond_9
    sget v4, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->MAX_CHILD_VIEW_SIDE_LENGTH:I

    goto :goto_3

    .line 1591
    :cond_a
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    if-gt v7, v8, :cond_c

    .line 1592
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1593
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_b

    .line 1594
    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float v3, v7, v8

    .line 1595
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    int-to-float v8, p1

    add-float/2addr v8, v3

    iget v9, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1599
    .end local v3           #childRootOffset:F
    :cond_b
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1600
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_2

    .line 1601
    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCellWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float v3, v7, v8

    .line 1602
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    int-to-float v8, p1

    add-float/2addr v8, v3

    iget v9, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1606
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v3           #childRootOffset:F
    :cond_c
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v7, v8, :cond_2

    .line 1607
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1608
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_d

    .line 1609
    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildCellWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float v3, v7, v8

    .line 1610
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    int-to-float v8, p1

    add-float/2addr v8, v3

    iget v9, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2

    .line 1612
    .end local v3           #childRootOffset:F
    :cond_d
    iget v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1613
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 1614
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_2

    .line 1615
    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, v1, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    sub-float v3, v7, v8

    .line 1616
    .restart local v3       #childRootOffset:F
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    int-to-float v8, p1

    add-float/2addr v8, v3

    iget v9, v5, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v10, v5, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/sunnyCore/view/SViewGroup;->setPosition(FFF)V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 1
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    .line 1645
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 1646
    const/4 v0, 0x1

    .line 1649
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public prepareDeleteAllChildView(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 3310
    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsAnimationOn:Z

    if-eqz v1, :cond_2

    .line 3311
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    .line 3312
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalDeleteAllParentIdx:I

    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mAdjustedDeleteAllParentIdx:I

    .line 3313
    const/4 v0, 0x0

    .line 3315
    .local v0, r:Ljava/lang/Runnable;
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;

    .end local v0           #r:Ljava/lang/Runnable;
    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$7;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 3331
    .restart local v0       #r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 3332
    if-eqz v0, :cond_0

    .line 3333
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3343
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 3336
    .restart local v0       #r:Ljava/lang/Runnable;
    :cond_1
    if-eqz v0, :cond_0

    .line 3337
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3341
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0
.end method

.method public prepareUpdateChildView(I)V
    .locals 3
    .parameter "clickedIndex"

    .prologue
    const/4 v1, 0x0

    .line 1923
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mCollapseChildType:I

    .line 1925
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I

    .line 1926
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewCollapsed:Z

    .line 1927
    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIsAnimationOn:Z

    if-eqz v1, :cond_2

    .line 1928
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$1;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 1942
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1943
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1954
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 1946
    .restart local v0       #r:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1950
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    if-eqz v1, :cond_0

    .line 1951
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTempCurrentClickedIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;->onPrepareReadyIRT(I)V

    goto :goto_0
.end method

.method protected resetLastIdxInOnLayout(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x2

    .line 1834
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1835
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    .line 1836
    .local v0, modBase:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v2, v3, :cond_0

    .line 1837
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumRow:I

    .line 1840
    :cond_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    sub-int v2, p1, v2

    rem-int/2addr v2, v0

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    .line 1852
    .end local v0           #modBase:I
    :goto_0
    return v2

    .line 1842
    :cond_1
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    if-le p1, v2, :cond_3

    .line 1843
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v1, v2, 0x1

    .line 1844
    .local v1, startIdx:I
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 1845
    .restart local v0       #modBase:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v2, v3, :cond_2

    .line 1846
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 1849
    :cond_2
    sub-int v2, p1, v1

    rem-int/2addr v2, v0

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1852
    .end local v0           #modBase:I
    .end local v1           #startIdx:I
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resetLastIdxInOnLayout(I)I

    move-result v2

    goto :goto_0
.end method

.method protected restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/view/Vector3F;
    .locals 24
    .parameter "currentId"
    .parameter "oldIdx"
    .parameter "bundle"

    .prologue
    .line 3470
    const-string v20, "oldOnScreenFirstChildIdx"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3471
    .local v13, oldOnScreenFirstChildIdx:I
    const-string v20, "oldOnScreenFirstChildItemPositionY"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 3472
    .local v14, oldOnScreenFirstChildItemPositionY:I
    const-string v20, "oldOnScreenLastChildIdx"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 3474
    .local v15, oldOnScreenLastChildIdx:I
    const-string v20, "oldFirstIdxAfterChild"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 3475
    .local v10, oldFirstIndexAfterChild:I
    const-string v20, "oldFirstItemAfterChildPositionY"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 3477
    .local v11, oldFirstItemAfterChildPositionY:I
    const-string v20, "oldFirstChildIdx"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 3478
    .local v9, oldFirstChildIdx:I
    const-string v20, "oldLastChildIdx"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 3480
    .local v12, oldLastChildIdx:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_0

    .line 3482
    invoke-super/range {p0 .. p3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v20

    .line 3528
    :goto_0
    return-object v20

    .line 3486
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3487
    .local v2, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v17

    .line 3488
    .local v17, w:I
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->height()I

    move-result v8

    .line 3490
    .local v8, h:I
    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 3492
    move/from16 v0, p2

    if-gt v9, v0, :cond_1

    move/from16 v0, p2

    if-gt v0, v12, :cond_1

    .line 3493
    sub-int v7, p2, v9

    .line 3494
    .local v7, d:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v20, v0

    rem-int v3, v7, v20

    .line 3495
    .local v3, childColId:I
    add-int/lit8 v20, v13, -0x1

    sub-int v20, v20, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v21, v0

    div-int v20, v20, v21

    add-int/lit8 v4, v20, 0x1

    .line 3498
    .local v4, childRowDiff:I
    div-int/lit8 v20, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v17

    mul-int v21, v21, v3

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 3499
    .local v18, x:I
    div-int/lit8 v20, v8, 0x2

    rsub-int/lit8 v20, v20, 0x0

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v8

    mul-int v21, v21, v4

    add-int v19, v20, v21

    .line 3501
    .local v19, y:I
    new-instance v20, Lcom/htc/sunnyCore/view/Vector3F;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    goto/16 :goto_0

    .line 3504
    .end local v3           #childColId:I
    .end local v4           #childRowDiff:I
    .end local v7           #d:I
    .end local v18           #x:I
    .end local v19           #y:I
    :cond_1
    invoke-super/range {p0 .. p3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->restorePreviousState_IRT(IILandroid/os/Bundle;)Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v20

    goto/16 :goto_0

    .line 3507
    :cond_2
    move/from16 v0, p2

    if-gt v13, v0, :cond_3

    move/from16 v0, p2

    if-gt v0, v12, :cond_3

    .line 3509
    sub-int v7, p2, v13

    .line 3510
    .restart local v7       #d:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v20, v0

    rem-int v3, v7, v20

    .line 3511
    .restart local v3       #childColId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildNumColumn:I

    move/from16 v20, v0

    div-int v5, v7, v20

    .line 3513
    .local v5, childRowId:I
    div-int/lit8 v20, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildExtraPaddingLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v17

    mul-int v21, v21, v3

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 3514
    .restart local v18       #x:I
    div-int/lit8 v20, v8, 0x2

    rsub-int/lit8 v20, v20, 0x0

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v8

    mul-int v21, v21, v5

    sub-int v19, v20, v21

    .line 3516
    .restart local v19       #y:I
    new-instance v20, Lcom/htc/sunnyCore/view/Vector3F;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    goto/16 :goto_0

    .line 3521
    .end local v3           #childColId:I
    .end local v5           #childRowId:I
    .end local v7           #d:I
    .end local v18           #x:I
    .end local v19           #y:I
    :cond_3
    sub-int v7, p2, v10

    .line 3522
    .restart local v7       #d:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    move/from16 v20, v0

    rem-int v6, v7, v20

    .line 3523
    .local v6, colId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    move/from16 v20, v0

    div-int v16, v7, v20

    .line 3525
    .local v16, rowId:I
    div-int/lit8 v20, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mExtraPaddingLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v17

    mul-int v21, v21, v6

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 3526
    .restart local v18       #x:I
    div-int/lit8 v20, v8, 0x2

    rsub-int/lit8 v20, v20, 0x0

    add-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mHorizontalSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v8

    mul-int v21, v21, v16

    sub-int v19, v20, v21

    .line 3528
    .restart local v19       #y:I
    new-instance v20, Lcom/htc/sunnyCore/view/Vector3F;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    goto/16 :goto_0
.end method

.method protected rowBestFit()Z
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->childRowBestFit()Z

    .line 317
    invoke-super {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->rowBestFit()Z

    move-result v0

    return v0
.end method

.method public setChildHorizontalSpacing(I)V
    .locals 0
    .parameter "hspace"

    .prologue
    .line 2469
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildHorizontalSpacing:I

    .line 2470
    return-void
.end method

.method public setChildIndicatorOffset(II)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 2428
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    .line 2429
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    .line 2430
    return-void
.end method

.method public setChildIndicatorOffsetY(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 2436
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetX:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildIndicatorOffset(II)V

    .line 2437
    return-void
.end method

.method public setChildMargin(II)V
    .locals 2
    .parameter "pLeft"
    .parameter "pRight"

    .prologue
    .line 2349
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginBottom:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildMargin(IIII)V

    .line 2350
    return-void
.end method

.method public setChildMargin(IIII)V
    .locals 0
    .parameter "pTop"
    .parameter "pBottom"
    .parameter "pLeft"
    .parameter "pRight"

    .prologue
    .line 2360
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginTop:I

    .line 2361
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginBottom:I

    .line 2362
    iput p3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginLeft:I

    .line 2363
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildMarginRight:I

    .line 2364
    return-void
.end method

.method public setChildMediaList(Lcom/htc/sunnyCore/IMediaList;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 3
    .parameter
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;",
            "Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1981
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    iget v1, p2, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setSelection(IZ)V

    .line 1982
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->updateChildMediaList(Lcom/htc/sunnyCore/IMediaList;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 1984
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$2;-><init>(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;)V

    .line 2001
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2002
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2007
    :goto_0
    return-void

    .line 2005
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/view/SView;->mSViewHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v1, v0}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setChildPadding(IIII)V
    .locals 0
    .parameter "pTop"
    .parameter "pBottom"
    .parameter "pLeft"
    .parameter "pRight"

    .prologue
    .line 2374
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingTop:I

    .line 2375
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingBottom:I

    .line 2376
    iput p3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingLeft:I

    .line 2377
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildPaddingRight:I

    .line 2378
    return-void
.end method

.method public setChildVerticalSpacing(I)V
    .locals 0
    .parameter "vspace"

    .prologue
    .line 2462
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildVerticalSpacing:I

    .line 2463
    return-void
.end method

.method public setChildViewBackground(II)V
    .locals 1
    .parameter "indicator"
    .parameter "background"

    .prologue
    .line 2217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBigChildBG:Z

    .line 2219
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIndicatorResId:I

    .line 2220
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewBackgroundResId:I

    .line 2221
    return-void
.end method

.method public setChildViewBackground(IIII)V
    .locals 1
    .parameter "indicator"
    .parameter "headBgResId"
    .parameter "midBgResId"
    .parameter "tailBgResId"

    .prologue
    .line 2229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mBigChildBG:Z

    .line 2231
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mIndicatorResId:I

    .line 2232
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mHeadChildViewBgResId:I

    .line 2233
    iput p3, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mMidChildViewBgResId:I

    .line 2234
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTailChildViewBgResId:I

    .line 2235
    return-void
.end method

.method public setChildViewOffset(II)V
    .locals 0
    .parameter "Xoffset"
    .parameter "Yoffset"

    .prologue
    .line 2447
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetX:I

    .line 2448
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewOffsetY:I

    .line 2449
    return-void
.end method

.method public setChildViewOffsetY(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 2455
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->setChildViewOffset(II)V

    .line 2456
    return-void
.end method

.method public setChildViewTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 2416
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildViewTitle:Ljava/lang/String;

    .line 2418
    return-void
.end method

.method public setChildViewTitleLayot(II)V
    .locals 3
    .parameter "titleLayoutResId"
    .parameter "titleTextViewResId"

    .prologue
    .line 2407
    sget-object v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChildViewTitleLayot, mTitleLayoutResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTitleTextViewResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleLayoutResId:I

    .line 2409
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mTitleTextViewResId:I

    .line 2410
    return-void
.end method

.method public setMediaList(Lcom/htc/sunnyCore/IMediaList;Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 0
    .parameter
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<+",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;",
            "Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1964
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<+Lcom/htc/sunnyCore/IMediaData;>;"
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 1970
    invoke-virtual {p0, p2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 1971
    return-void
.end method

.method public setPrepareUpdateListener(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3277
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOnPrepareListener:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;

    .line 3278
    return-void
.end method

.method protected startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V
    .locals 16
    .parameter "cooperateItemId"
    .parameter "delayTime"
    .parameter "durition"
    .parameter "bundle"

    .prologue
    .line 3553
    const-string v11, "oldOnScreenLastChildIdx"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 3554
    .local v9, oldOnScreenLastChildIdx:I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_1

    .line 3555
    invoke-super/range {p0 .. p6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startCooperateAnimation_IRT(IJJLandroid/os/Bundle;)V

    .line 3590
    :cond_0
    :goto_0
    return-void

    .line 3558
    :cond_1
    const-string v11, "oldChildViewBGHeight"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 3559
    .local v6, oldChildViewBGHeight:I
    const-string v11, "oldChildViewBGPositionY"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 3560
    .local v8, oldChildViewBGPositionY:F
    int-to-float v11, v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 3562
    .local v10, scale:F
    new-instance v7, Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 3569
    .local v7, oldChildViewBGPos:Lcom/htc/sunnyCore/view/Vector3F;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildIndicatorOffsetY:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v5, v11

    .line 3570
    .local v5, oldBGTopPadding:F
    mul-float v4, v5, v10

    .line 3571
    .local v4, newBGTopPadding:F
    sub-float v11, v4, v5

    add-float/2addr v11, v8

    iput v11, v7, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    .line 3573
    sget-object v11, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startCooperateAnimation_IRT, cooperateItemId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", delayTime: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", durition: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    const-string v11, "dobackgroundanimation"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3577
    .local v3, doBackgroundAnimation:Z
    if-eqz v3, :cond_0

    .line 3580
    new-instance v2, Lcom/htc/sunnyCore/view/animation/SAnimationController;

    invoke-direct {v2}, Lcom/htc/sunnyCore/view/animation/SAnimationController;-><init>()V

    .line 3581
    .local v2, controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;
    new-instance v11, Lcom/htc/sunnyCore/view/Vector3F;

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-direct {v11, v12, v10, v13}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    new-instance v12, Lcom/htc/sunnyCore/view/Vector3F;

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    invoke-direct {v12, v13, v14, v15}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    invoke-virtual {v2, v11, v12}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 3582
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v11}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunnyCore/view/Vector3F;Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 3583
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setStartOffset(J)V

    .line 3584
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setDuration(J)V

    .line 3585
    sget-object v11, Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v2, v11}, Lcom/htc/sunnyCore/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunnyCore/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 3586
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v11, v2}, Lcom/htc/sunnyCore/view/SView;->startAnimation(Lcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto/16 :goto_0
.end method

.method protected storeCurrentState_IRT([I)Landroid/os/Bundle;
    .locals 22
    .parameter "deleteIndex"

    .prologue
    .line 3355
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    .line 3357
    if-nez p1, :cond_0

    .line 3358
    sget-object v19, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v20, "storeCurrentState_IRT, deleteIndex is null!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    invoke-super/range {p0 .. p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->storeCurrentState_IRT([I)Landroid/os/Bundle;

    move-result-object v2

    .line 3461
    :goto_0
    return-object v2

    .line 3362
    :cond_0
    move-object/from16 v0, p1

    array-length v4, v0

    .line 3363
    .local v4, delSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    move/from16 v19, v0

    add-int v9, v19, v4

    .line 3364
    .local v9, oldChildsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    move/from16 v19, v0

    add-int v14, v19, v4

    .line 3365
    .local v14, oldLastChildIdx:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mExpBGHeight:I

    .line 3366
    .local v7, oldChildViewBGHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildRootSViewGroup:Lcom/htc/sunnyCore/view/SViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunnyCore/view/SViewGroup;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mOriginalChildRootSViewGroupPos:Lcom/htc/sunnyCore/view/Vector3F;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v20, v0

    sub-float v18, v19, v20

    .line 3367
    .local v18, yOffset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildBackgroundSView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunnyCore/view/SView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    add-float v8, v19, v18

    .line 3369
    .local v8, oldChildViewBGPositionY:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 3370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v19, v0

    aget v20, p1, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    aget v19, p1, v6

    move/from16 v0, v19

    if-gt v0, v14, :cond_8

    .line 3374
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnorePinToBottmTopDuringDeleteAnimation:Z

    .line 3379
    :cond_1
    const/4 v5, 0x0

    .line 3381
    .local v5, doBackgroundAnimation:Z
    if-lez v7, :cond_5

    .line 3382
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getChildsLevelCount(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 3384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v0, v14, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v14, v0, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    .line 3385
    :cond_3
    sget-object v19, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    const-string v20, "storeCurrentState_IRT, call clearChildBackground."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->clearChildBackground(Z)V

    .line 3389
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v0, v14, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v14, v0, :cond_5

    .line 3390
    const/4 v5, 0x1

    .line 3395
    :cond_5
    const/4 v10, -0x1

    .line 3396
    .local v10, oldFirstIdx:I
    const/4 v13, 0x1

    .line 3398
    .local v13, oldFirstItemPositionY:I
    const/4 v15, -0x1

    .line 3399
    .local v15, oldOnScreenFirstChildIdx:I
    const/16 v16, 0x0

    .line 3400
    .local v16, oldOnScreenFirstChildItemPositionY:I
    const/16 v17, -0x1

    .line 3402
    .local v17, oldOnScreenLastChildIdx:I
    const/4 v11, -0x1

    .line 3403
    .local v11, oldFirstIndexAfterChild:I
    const/4 v12, 0x0

    .line 3405
    .local v12, oldFirstItemAfterChildPositionY:I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3407
    .local v2, b:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    if-eqz v19, :cond_c

    .line 3408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3409
    .local v3, c:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v3, :cond_9

    .line 3410
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 3411
    iget v13, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    .line 3417
    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v6, v0, :cond_c

    .line 3418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #c:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 3419
    .restart local v3       #c:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v3, :cond_b

    .line 3420
    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->isChild()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 3421
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_6

    .line 3422
    move v15, v6

    .line 3423
    iget v0, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    move/from16 v16, v0

    .line 3426
    :cond_6
    move/from16 v0, v17

    if-le v6, v0, :cond_7

    .line 3427
    move/from16 v17, v6

    .line 3417
    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3369
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #c:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .end local v5           #doBackgroundAnimation:Z
    .end local v10           #oldFirstIdx:I
    .end local v11           #oldFirstIndexAfterChild:I
    .end local v12           #oldFirstItemAfterChildPositionY:I
    .end local v13           #oldFirstItemPositionY:I
    .end local v15           #oldOnScreenFirstChildIdx:I
    .end local v16           #oldOnScreenFirstChildItemPositionY:I
    .end local v17           #oldOnScreenLastChildIdx:I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 3414
    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v3       #c:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    .restart local v5       #doBackgroundAnimation:Z
    .restart local v10       #oldFirstIdx:I
    .restart local v11       #oldFirstIndexAfterChild:I
    .restart local v12       #oldFirstItemAfterChildPositionY:I
    .restart local v13       #oldFirstItemPositionY:I
    .restart local v15       #oldOnScreenFirstChildIdx:I
    .restart local v16       #oldOnScreenFirstChildItemPositionY:I
    .restart local v17       #oldOnScreenLastChildIdx:I
    :cond_9
    sget-object v19, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "storeCurrentState_IRT mFirstIdx="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", cell=null"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3430
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 3431
    move v11, v6

    .line 3432
    iget v12, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->y:I

    goto :goto_4

    .line 3437
    :cond_b
    sget-object v19, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "storeCurrentState_IRT, store child item. cell is null. i: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3447
    .end local v3           #c:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_c
    const-string v19, "oldFirstChildIdx"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3448
    const-string v19, "oldLastChildIdx"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3449
    const-string v19, "oldFirstIdx"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3450
    const-string v19, "oldFirstItemPositionY"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3451
    const-string v19, "oldOnScreenFirstChildIdx"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3452
    const-string v19, "oldOnScreenFirstChildItemPositionY"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3453
    const-string v19, "oldOnScreenLastChildIdx"

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3454
    const-string v19, "oldFirstIdxAfterChild"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3455
    const-string v19, "oldFirstItemAfterChildPositionY"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3457
    const-string v19, "oldChildViewBGHeight"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3458
    const-string v19, "oldChildViewBGPositionY"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3459
    const-string v19, "dobackgroundanimation"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public updateChildViewParameters(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 1880
    if-eqz p1, :cond_2

    .line 1884
    iget v2, p1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mFirstChildIdx:I

    .line 1885
    iget v2, p1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    .line 1886
    iget v2, p1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mChildsCount:I

    .line 1887
    iget v2, p1, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    .line 1889
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    if-ltz v2, :cond_1

    .line 1890
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 1891
    .local v0, modBase:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1892
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 1894
    :cond_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    rem-int v1, v2, v0

    .line 1895
    .local v1, offset:I
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickedParentIdx:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    .line 1904
    .end local v0           #modBase:I
    .end local v1           #offset:I
    :goto_0
    return-void

    .line 1898
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mClickParentLevelStartIdx:I

    goto :goto_0

    .line 1902
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "updateMediaList, params could not be null!!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected updateFirstIdxInScrollMotionIRT(I)V
    .locals 1
    .parameter "removedIdx"

    .prologue
    .line 1632
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-gt v0, p1, :cond_0

    .line 1633
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 1634
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->isChildItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->getGridViewItem(I)Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1635
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->mLastChildIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 1638
    :cond_0
    return-void
.end method
