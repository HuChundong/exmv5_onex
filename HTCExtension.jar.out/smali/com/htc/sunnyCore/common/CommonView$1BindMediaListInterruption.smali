.class Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;
.super Lcom/htc/sunnyCore/RenderThreadInterruption;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/common/CommonView;->bindMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindMediaListInterruption"
.end annotation


# instance fields
.field private list:Lcom/htc/sunnyCore/IMediaList;

.field public result:Z

.field private selectedIndex:I

.field final synthetic this$0:Lcom/htc/sunnyCore/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/common/CommonView;Ljava/lang/Object;Lcom/htc/sunnyCore/IMediaList;I)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "list"
    .parameter "selectedIndex"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    .line 602
    const-string v0, "BindMediaListInterruption"

    invoke-direct {p0, p2, v0}, Lcom/htc/sunnyCore/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunnyCore/IMediaList;

    .line 598
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->selectedIndex:I

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->result:Z

    .line 603
    iput-object p3, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunnyCore/IMediaList;

    .line 604
    iput p4, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->selectedIndex:I

    .line 605
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 647
    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 609
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_0

    .line 611
    invoke-static {}, Lcom/htc/sunnyCore/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunnyCore/common/CommonView;->access$700(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BindMediaList NG - null media list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iput-boolean v3, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->result:Z

    .line 645
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_1

    .line 617
    invoke-static {}, Lcom/htc/sunnyCore/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunnyCore/common/CommonView;->access$800(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BindMediaList call onUnBindMediaListIRT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/CommonView;->onUnBindMediaListIRT()V

    .line 619
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iput-object v5, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 620
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iput v3, v0, Lcom/htc/sunnyCore/common/CommonView;->mListItemCount:I

    .line 621
    iput-boolean v4, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->result:Z

    goto :goto_0

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v0, :cond_2

    .line 627
    invoke-static {}, Lcom/htc/sunnyCore/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunnyCore/common/CommonView;->access$900(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BindMediaList call onUnBindMediaListIRT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/CommonView;->onUnBindMediaListIRT()V

    .line 629
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iput-object v5, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 630
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iput v3, v0, Lcom/htc/sunnyCore/common/CommonView;->mListItemCount:I

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunnyCore/IMediaList;

    iput-object v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 634
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, v1, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mListItemCount:I

    .line 635
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->list:Lcom/htc/sunnyCore/IMediaList;

    iget v2, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->selectedIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/common/CommonView;->onBindMediaListIRT(Lcom/htc/sunnyCore/IMediaList;I)Z

    move-result v0

    if-ne v0, v4, :cond_3

    .line 637
    iput-boolean v4, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->result:Z

    goto/16 :goto_0

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iput-object v5, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 642
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iput v3, v0, Lcom/htc/sunnyCore/common/CommonView;->mListItemCount:I

    .line 643
    iput-boolean v3, p0, Lcom/htc/sunnyCore/common/CommonView$1BindMediaListInterruption;->result:Z

    goto/16 :goto_0
.end method
