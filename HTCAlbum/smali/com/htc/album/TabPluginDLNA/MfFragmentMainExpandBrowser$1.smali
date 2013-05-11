.class Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;
.super Ljava/lang/Object;
.source "MfFragmentMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;


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
    .line 412
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v1

    if-nez v1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 421
    .local v0, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->addCurrentPageInfo()V

    .line 423
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$1;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #calls: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    invoke-static {v1, v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$100(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    goto :goto_0
.end method
