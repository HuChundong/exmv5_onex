.class Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcePreparatorLoadVisibleItemsFromCache"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method private constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 0
    .parameter

    .prologue
    .line 3980
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/widget/gridview/GridView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3980
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 3984
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_0

    .line 3988
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$ForcePreparatorLoadVisibleItemsFromCache;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0xc8

    add-long/2addr v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;->loadRange(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3995
    :cond_0
    :goto_0
    return-void

    .line 3990
    :catch_0
    move-exception v6

    .line 3992
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "GridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GridView][ForcePreparatorLoadVisibleItemsFromCache]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
