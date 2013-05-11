.class public Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;
.super Lcom/htc/sunnyCore/view/SViewGroup;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemContainer"
.end annotation


# instance fields
.field public mDataIndex:I

.field public mForceHidden:Z

.field public mID:I

.field public mImageSprite:Lcom/htc/sunnyCore/Sprite;

.field public mImageTexture:Lcom/htc/sunnyCore/Texture;

.field public mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

.field public mLayoutPos:I

.field public mReflectSprite:Lcom/htc/sunnyCore/Sprite;

.field public mSkipItem:Z

.field public mTouchSprite:Lcom/htc/sunnyCore/Sprite;

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 63
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunnyCore/Sprite;

    .line 64
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunnyCore/Sprite;

    .line 65
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunnyCore/Sprite;

    .line 66
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunnyCore/Texture;

    .line 68
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mID:I

    .line 69
    iput v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    .line 83
    new-instance v0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;

    .line 61
    return-void
.end method


# virtual methods
.method public setVisibility(Z)V
    .locals 2
    .parameter "bVisible"

    .prologue
    .line 76
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-ne v0, v1, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/htc/sunnyCore/view/SViewGroup;->setVisibility(Z)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SViewGroup;->setVisibility(Z)V

    goto :goto_0
.end method
