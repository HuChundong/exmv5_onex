.class public Lcom/htc/sunny/SPresentation$AnimationInfo;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationInfo"
.end annotation


# instance fields
.field public interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

.field public mEndR:Lcom/htc/sunny/Vector3F;

.field public mEndT:Lcom/htc/sunny/Vector3F;

.field public mStartR:Lcom/htc/sunny/Vector3F;

.field public mStartT:Lcom/htc/sunny/Vector3F;

.field public nArgs:I

.field public nDelayFrames:I

.field public nElapseTimeSlot:I

.field nEndTime:J

.field public nInFrame:I

.field public nPreTimeSlot:I

.field nStartTime:J

.field public nTotalFrames:I

.field nTotalTime:J

.field public nTotalTimeSlot:I

.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny/SPresentation;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 403
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 413
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nDelayFrames:I

    .line 418
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 423
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 428
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nPreTimeSlot:I

    .line 433
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 438
    sget-object v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 443
    iput v3, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 448
    iput v3, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    .line 450
    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nStartTime:J

    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nEndTime:J

    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTime:J

    .line 456
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mStartT:Lcom/htc/sunny/Vector3F;

    .line 461
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mEndT:Lcom/htc/sunny/Vector3F;

    .line 467
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mStartR:Lcom/htc/sunny/Vector3F;

    .line 472
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mEndR:Lcom/htc/sunny/Vector3F;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 479
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 480
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nDelayFrames:I

    .line 481
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 482
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 483
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nPreTimeSlot:I

    .line 484
    iput v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 485
    sget-object v0, Lcom/htc/sunny/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 486
    iput v3, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 487
    iput v3, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    .line 489
    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nStartTime:J

    .line 490
    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nEndTime:J

    .line 491
    iput-wide v1, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTime:J

    .line 493
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mStartT:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    .line 494
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mEndT:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    .line 496
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mStartR:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    .line 497
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$AnimationInfo;->mEndR:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunny/Vector3F;->reset()V

    .line 498
    return-void
.end method
