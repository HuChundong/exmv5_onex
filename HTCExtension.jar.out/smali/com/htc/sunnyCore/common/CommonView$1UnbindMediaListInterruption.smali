.class Lcom/htc/sunnyCore/common/CommonView$1UnbindMediaListInterruption;
.super Lcom/htc/sunnyCore/RenderThreadInterruption;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/common/CommonView;->unbindMediaListIHT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnbindMediaListInterruption"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/common/CommonView;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "host"

    .prologue
    .line 686
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView$1UnbindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    const-string v0, "UnbindMediaListInterruption"

    invoke-direct {p0, p2, v0}, Lcom/htc/sunnyCore/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 701
    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1UnbindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_0

    .line 692
    invoke-static {}, Lcom/htc/sunnyCore/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$1UnbindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunnyCore/common/CommonView;->access$1000(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unbindMediaList already unbind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1UnbindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/common/CommonView;->onUnBindMediaListIRT()V

    .line 697
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1UnbindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 698
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1UnbindMediaListInterruption;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunnyCore/common/CommonView;->mListItemCount:I

    goto :goto_0
.end method
