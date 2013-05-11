.class Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FakeAnimationControl"
.end annotation


# instance fields
.field private mDisable1:I

.field private mDisable2:I

.field private mDisableCount:I

.field private mFirstUpdateIndex:I

.field private mIndexOffset:I

.field private mIsFakeAnimation:Z

.field private mLastUpdateIndex:I

.field private mPosOffset:I

.field private mTartgetFocuIndex:I

.field private mTotalContainers:I

.field private mTotalItems:I

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3105
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3107
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 3108
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 3109
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mIndexOffset:I

    .line 3110
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTotalItems:I

    .line 3111
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTotalContainers:I

    .line 3112
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 3113
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 3115
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    .line 3116
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 3117
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    .line 3118
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    return-void
.end method


# virtual methods
.method public getFirstUpdateIndex()I
    .locals 1

    .prologue
    .line 3157
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    return v0
.end method

.method public getLastUpdateIndex()I
    .locals 1

    .prologue
    .line 3161
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    return v0
.end method

.method public getPosOffset()I
    .locals 1

    .prologue
    .line 3153
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    return v0
.end method

.method public getTargetFocusIndex()I
    .locals 1

    .prologue
    .line 3165
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    return v0
.end method

.method public init(IIII)V
    .locals 3
    .parameter "nStartIndex"
    .parameter "nIndexOffset"
    .parameter "nTotalItems"
    .parameter "nTotalContainers"

    .prologue
    const/4 v2, 0x1

    .line 3121
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->reset()V

    .line 3122
    iput p2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mIndexOffset:I

    .line 3123
    iput p3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTotalItems:I

    .line 3124
    iput p4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTotalContainers:I

    .line 3125
    add-int v0, p1, p2

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 3127
    add-int v0, p1, p2

    if-ge v0, p3, :cond_0

    add-int v0, p1, p2

    if-gez v0, :cond_1

    .line 3150
    :cond_0
    :goto_0
    return-void

    .line 3131
    :cond_1
    if-lez p2, :cond_2

    .line 3132
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_0

    .line 3133
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 3134
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    .line 3135
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 3136
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 3137
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 3138
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0

    .line 3140
    :cond_2
    if-gez p2, :cond_0

    .line 3141
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v1, p4

    if-lt v0, v1, :cond_0

    .line 3142
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 3143
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mPosOffset:I

    .line 3144
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 3145
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 3146
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 3147
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0
.end method

.method public isFakeAnimation()Z
    .locals 1

    .prologue
    .line 3185
    iget-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    return v0
.end method

.method public isForceHidden(I)Z
    .locals 2
    .parameter "nIndex"

    .prologue
    const/4 v0, 0x1

    .line 3176
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    if-ne v1, p1, :cond_1

    .line 3181
    :cond_0
    :goto_0
    return v0

    .line 3178
    :cond_1
    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    if-eq v1, p1, :cond_0

    .line 3181
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 3170
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 3171
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mDisable2:I

    .line 3172
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 3173
    return-void
.end method
