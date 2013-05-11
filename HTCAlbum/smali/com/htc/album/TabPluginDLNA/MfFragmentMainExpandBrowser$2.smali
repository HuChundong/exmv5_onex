.class Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;
.super Ljava/lang/Object;
.source "MfFragmentMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 5
    .parameter "groupPosition"

    .prologue
    .line 430
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v2

    if-nez v2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 434
    .local v1, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-eqz v1, :cond_0

    .line 437
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onGroupCollapseListener]:item containerName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->removeChildrenDirectoryInfo(Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->getCurrentPageInfo()V

    .line 442
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$200(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 444
    .local v0, expandItem:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->IsContainer()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->getCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->removeChildrenDirectoryInfo(Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #calls: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    invoke-static {v2, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$100(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    .line 451
    const-string v2, "MfFragmentMainExpandBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onGroupCollapseListener]:reBrowse: containerID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->showTitleProgression(Z)V

    goto/16 :goto_0
.end method
