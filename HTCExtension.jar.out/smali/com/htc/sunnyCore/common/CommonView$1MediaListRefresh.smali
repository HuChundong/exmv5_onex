.class Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/common/CommonView;->onMediaListRefresh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaListRefresh"
.end annotation


# instance fields
.field flags:I

.field final synthetic this$0:Lcom/htc/sunnyCore/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/common/CommonView;I)V
    .locals 1
    .parameter
    .parameter "flags"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    .line 497
    const-string v0, "onMediaListRefresh"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;->flags:I

    .line 498
    iput p2, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;->flags:I

    .line 499
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    .line 506
    invoke-static {}, Lcom/htc/sunnyCore/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    #getter for: Lcom/htc/sunnyCore/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunnyCore/common/CommonView;->access$600(Lcom/htc/sunnyCore/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaListRefresh Cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;->this$0:Lcom/htc/sunnyCore/common/CommonView;

    iget v1, p0, Lcom/htc/sunnyCore/common/CommonView$1MediaListRefresh;->flags:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/common/CommonView;->onMediaListRefreshIRT(I)V

    .line 503
    return-void
.end method
