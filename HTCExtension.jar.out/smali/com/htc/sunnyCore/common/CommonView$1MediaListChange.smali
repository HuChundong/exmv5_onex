.class Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;
.super Lcom/htc/sunnyCore/RenderThreadInterruption;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/common/CommonView;->onMediaListChange(Lcom/htc/sunnyCore/IMediaList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaListChange"
.end annotation


# instance fields
.field flags:I

.field newMediaList:Lcom/htc/sunnyCore/IMediaList;

.field final synthetic this$0:Lcom/htc/sunnyCore/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/common/CommonView;Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 1
    .parameter
    .parameter "newMediaList"
    .parameter "flags"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    .line 435
    const-string v0, "onMediaListChange"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->flags:I

    .line 436
    iput-object p2, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 437
    iput p3, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->flags:I

    .line 438
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    .line 471
    invoke-static {}, Lcom/htc/sunnyCore/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunnyCore/common/CommonView;->access$500(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaListChange Cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_1

    .line 445
    invoke-static {}, Lcom/htc/sunnyCore/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunnyCore/common/CommonView;->access$300(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MediaListChange NG - null media list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-static {}, Lcom/htc/sunnyCore/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunnyCore/common/CommonView;->access$400(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MediaListChange call onBindMediaListIRT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunnyCore/IMediaList;

    iput-object v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 451
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, v1, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mListItemCount:I

    .line 452
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunnyCore/IMediaList;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/common/CommonView;->onBindMediaListIRT(Lcom/htc/sunnyCore/IMediaList;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 455
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mListItemCount:I

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v2, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->flags:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/common/CommonView;->onMediaListChangeIRT(Lcom/htc/sunnyCore/IMediaList;I)V

    .line 466
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunnyCore/IMediaList;

    iput-object v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 467
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, v1, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mListItemCount:I

    goto :goto_0
.end method
