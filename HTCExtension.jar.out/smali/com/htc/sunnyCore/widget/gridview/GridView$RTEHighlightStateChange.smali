.class Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTEHighlightStateChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "name"

    .prologue
    .line 2966
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 2967
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2968
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 2990
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 5

    .prologue
    .line 2972
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$800(Lcom/htc/sunnyCore/widget/gridview/GridView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2974
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v3, 0x1

    #calls: Lcom/htc/sunnyCore/widget/gridview/GridView;->dispatchUnpress(Z)V
    invoke-static {v1, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$900(Lcom/htc/sunnyCore/widget/gridview/GridView;Z)V

    .line 2975
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mSelectedHighlightEnabled:Z
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1000(Lcom/htc/sunnyCore/widget/gridview/GridView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2977
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mCurrentHighlightIdx:I
    invoke-static {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1100(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 2978
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    if-eqz v0, :cond_1

    .line 2980
    iget-object v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->setPressed(Z)V

    .line 2987
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 2988
    return-void

    .line 2984
    .restart local v0       #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :cond_1
    const-string v1, "GridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mHostContextName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1200(Lcom/htc/sunnyCore/widget/gridview/GridView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Can\'t find highlighted item: mCurrentHighlightIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$RTEHighlightStateChange;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mCurrentHighlightIdx:I
    invoke-static {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1100(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2987
    .end local v0           #cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
