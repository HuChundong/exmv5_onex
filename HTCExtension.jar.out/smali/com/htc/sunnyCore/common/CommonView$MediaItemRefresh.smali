.class Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/common/CommonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemRefresh"
.end annotation


# instance fields
.field flags:I

.field index:I

.field final synthetic this$0:Lcom/htc/sunnyCore/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/common/CommonView;II)V
    .locals 2
    .parameter
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 74
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    .line 75
    const-string v0, "onMediaItemRefresh"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput v1, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->index:I

    .line 72
    iput v1, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->flags:I

    .line 76
    iput p2, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->index:I

    .line 77
    iput p3, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->flags:I

    .line 78
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    .line 91
    invoke-static {}, Lcom/htc/sunnyCore/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunnyCore/common/CommonView;->access$100(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaItemRefresh Cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget v1, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->index:I

    iget v2, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->flags:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/common/CommonView;->onMediaItemRefreshIRT(II)V

    .line 88
    return-void
.end method

.method public onRemovedIRT()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #calls: Lcom/htc/sunnyCore/common/CommonView;->RecycleMediaItemRefresh(Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;)V
    invoke-static {v0, p0}, Lcom/htc/sunnyCore/common/CommonView;->access$200(Lcom/htc/sunnyCore/common/CommonView;Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;)V

    return-void
.end method

.method public reset(II)V
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    const-string v1, "onMediaItemRefresh"

    invoke-super {p0, v0, v1}, Lcom/htc/sunnyCore/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput p1, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->index:I

    .line 83
    iput p2, p0, Lcom/htc/sunnyCore/common/CommonView$MediaItemRefresh;->flags:I

    .line 84
    return-void
.end method
