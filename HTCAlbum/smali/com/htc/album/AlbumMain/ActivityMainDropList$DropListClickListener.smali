.class Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;
.super Ljava/lang/Object;
.source "ActivityMainDropList.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/ActivityMainDropList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;


# direct methods
.method private constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/album/AlbumMain/ActivityMainDropList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;-><init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "nIndex"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-virtual {v4}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->isFinishing()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 88
    const-string v3, "ActivityMainDropList"

    const-string v4, "[HTCAlbum][ActivityMainDropList][onItemClick]: skip because activity has finished!"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v3, "ActivityMainDropList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ActivityMainDropList][onItemClick]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    iget v3, v3, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    if-ne v3, p3, :cond_2

    .line 96
    const-string v3, "ActivityMainDropList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ActivityMainDropList][onItemClick]: duplicate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    iget-object v3, v3, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->dismissDropList()V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v2, 0x0

    .line 103
    .local v2, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #getter for: Lcom/htc/album/AlbumMain/ActivityMainDropList;->mAdapter:Lcom/htc/album/AlbumMain/AdapterDropList;
    invoke-static {v3}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$000(Lcom/htc/album/AlbumMain/ActivityMainDropList;)Lcom/htc/album/AlbumMain/AdapterDropList;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/album/AlbumMain/AdapterDropList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_1
    if-eqz v2, :cond_0

    const-string v3, "HtcDummy"

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    const-string v3, "ActivityMainDropList"

    const-string v4, "[HTCAlbum][ActivityMainDropList][onItemClick]: found..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    iget-object v3, v3, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    iget-object v3, v3, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    iget-object v3, v3, Lcom/htc/album/AlbumMain/MfMainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->dismissDropList()V

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    iput p3, v3, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    .line 121
    const-string v3, "ActivityMainDropList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ActivityMainDropList][onItemClick]: focus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    iget v5, v5, Lcom/htc/album/AlbumMain/ActivityMainDropList;->mLastFocusedIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$DropListClickListener;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    #calls: Lcom/htc/album/AlbumMain/ActivityMainDropList;->openDropListItem(Lcom/htc/opensense/plugin/TabPlugin;)V
    invoke-static {v3, v2}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->access$100(Lcom/htc/album/AlbumMain/ActivityMainDropList;Lcom/htc/opensense/plugin/TabPlugin;)V

    goto/16 :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ActivityMainDropList"

    const-string v4, "[HTCAlbum][ActivityMainDropList][onItemClick]: no plugin..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
