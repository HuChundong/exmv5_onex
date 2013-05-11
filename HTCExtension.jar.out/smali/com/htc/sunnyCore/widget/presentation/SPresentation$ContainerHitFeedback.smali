.class Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerHitFeedback"
.end annotation


# instance fields
.field private mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

.field private mIsAnimating:Z

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V
    .locals 1
    .parameter

    .prologue
    .line 3192
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    .line 3194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    return-void
.end method


# virtual methods
.method animate()V
    .locals 5

    .prologue
    .line 3217
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    if-ne v1, v2, :cond_0

    .line 3218
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->getViewScale()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    .line 3219
    .local v0, vScale:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->getNodeId()I

    move-result v1

    iget v2, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget v3, v3, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget v4, v4, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 3221
    .end local v0           #vScale:Lcom/htc/sunnyCore/view/Vector3F;
    :cond_0
    return-void
.end method

.method press(I)V
    .locals 1
    .parameter "nContainerId"

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-boolean v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-nez v0, :cond_1

    .line 3203
    :cond_0
    :goto_0
    return-void

    .line 3198
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    .line 3201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    .line 3202
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method reset()V
    .locals 5

    .prologue
    .line 3206
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-boolean v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    .line 3215
    :cond_0
    :goto_0
    return-void

    .line 3208
    :cond_1
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    if-ne v1, v2, :cond_0

    .line 3209
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->getViewScale()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v0

    .line 3210
    .local v0, vScale:Lcom/htc/sunnyCore/view/Vector3F;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    iget v2, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v4, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->setScale(FFF)V

    .line 3211
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->getNodeId()I

    move-result v1

    iget v2, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    iget v3, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    iget v4, v0, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 3212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    .line 3213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;

    goto :goto_0
.end method
