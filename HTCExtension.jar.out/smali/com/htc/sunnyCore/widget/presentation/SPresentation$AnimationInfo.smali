.class public Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationInfo"
.end annotation


# instance fields
.field public interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

.field public mEndR:Lcom/htc/sunnyCore/view/Vector3F;

.field public mEndT:Lcom/htc/sunnyCore/view/Vector3F;

.field public mStartR:Lcom/htc/sunnyCore/view/Vector3F;

.field public mStartT:Lcom/htc/sunnyCore/view/Vector3F;

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

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 273
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    .line 275
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nDelayFrames:I

    .line 276
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 277
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 278
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nPreTimeSlot:I

    .line 279
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 280
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 281
    iput v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 282
    iput v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    .line 284
    iput-wide v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nStartTime:J

    iput-wide v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nEndTime:J

    iput-wide v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTime:J

    .line 286
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->mStartT:Lcom/htc/sunnyCore/view/Vector3F;

    .line 287
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->mEndT:Lcom/htc/sunnyCore/view/Vector3F;

    .line 289
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->mStartR:Lcom/htc/sunnyCore/view/Vector3F;

    .line 290
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->mEndR:Lcom/htc/sunnyCore/view/Vector3F;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    .line 294
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nDelayFrames:I

    .line 295
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 296
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 297
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nPreTimeSlot:I

    .line 298
    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 299
    sget-object v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;->LINEAR:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunnyCore/widget/presentation/SPresentation$INTERPOLATE;

    .line 300
    iput v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 301
    iput v3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    .line 303
    iput-wide v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nStartTime:J

    .line 304
    iput-wide v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nEndTime:J

    .line 305
    iput-wide v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->nTotalTime:J

    .line 307
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->mStartT:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/Vector3F;->reset()V

    .line 308
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->mEndT:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/Vector3F;->reset()V

    .line 310
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->mStartR:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/Vector3F;->reset()V

    .line 311
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$AnimationInfo;->mEndR:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/Vector3F;->reset()V

    .line 312
    return-void
.end method
