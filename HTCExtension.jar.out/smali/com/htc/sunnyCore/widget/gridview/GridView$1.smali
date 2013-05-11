.class Lcom/htc/sunnyCore/widget/gridview/GridView$1;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;->freeInvisibleResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 0
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 634
    const-string v2, "GridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mHostContextName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$600(Lcom/htc/sunnyCore/widget/gridview/GridView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "freeInvisibleResource()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    if-ltz v2, :cond_1

    .line 636
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    if-gt v1, v2, :cond_0

    .line 638
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyThumbnailTextureReadyIRT(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[freeInvisibleResource] notify failed, index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 643
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v4, v4, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget-object v5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$1;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v5, v5, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->freeOutOfRange(III)V

    .line 645
    .end local v1           #i:I
    :cond_1
    return-void
.end method
