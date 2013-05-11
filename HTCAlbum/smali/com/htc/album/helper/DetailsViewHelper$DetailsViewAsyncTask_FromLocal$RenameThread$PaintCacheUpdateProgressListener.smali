.class Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$PaintCacheUpdateProgressListener;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"

# interfaces
.implements Lcom/htc/album/PaintManager/Interface/IPaintCacheUpdateProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaintCacheUpdateProgressListener"
.end annotation


# instance fields
.field private mUpdateEnd:Z

.field final synthetic this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;)V
    .locals 1
    .parameter

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$PaintCacheUpdateProgressListener;->this$2:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$PaintCacheUpdateProgressListener;->mUpdateEnd:Z

    return-void
.end method


# virtual methods
.method public isUpdateEnd()Z
    .locals 1

    .prologue
    .line 1362
    iget-boolean v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$PaintCacheUpdateProgressListener;->mUpdateEnd:Z

    return v0
.end method

.method public onUpdateBegin()V
    .locals 0

    .prologue
    .line 1353
    return-void
.end method

.method public onUpdateEnd()V
    .locals 1

    .prologue
    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread$PaintCacheUpdateProgressListener;->mUpdateEnd:Z

    .line 1358
    return-void
.end method
