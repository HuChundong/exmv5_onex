.class public Lcom/htc/sunny/SGallery$AnimationInfo;
.super Ljava/lang/Object;
.source "SGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationInfo"
.end annotation


# instance fields
.field public interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

.field public mEnd:I

.field public mStart:I

.field public mTotal:I

.field public nArgs:I

.field public nInFrame:I

.field public nTotalFrames:I

.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny/SGallery;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 215
    iput-object p1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->this$0:Lcom/htc/sunny/SGallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 225
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 230
    sget-object v0, Lcom/htc/sunny/SGallery$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 235
    iput v2, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 240
    iput v2, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nArgs:I

    .line 246
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 251
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 256
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 263
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 264
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 266
    sget-object v0, Lcom/htc/sunny/SGallery$INTERPOLATE;->LINEAR:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v0, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 267
    iput v2, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 268
    iput v2, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nArgs:I

    .line 270
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 271
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 272
    iput v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    .line 273
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotalFrames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
