.class Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;
.super Ljava/lang/Object;
.source "MfFragmentMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


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
    .line 939
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 973
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 4
    .parameter "arg0"
    .parameter "nScrollState"

    .prologue
    const/16 v3, 0x4ea5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 944
    packed-switch p2, :pswitch_data_0

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 947
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #setter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$402(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z

    .line 948
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$500(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #setter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsIdleUpdateList:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$502(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z

    .line 951
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mDelayUpdateList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$600(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$700(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 954
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$700(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 955
    const-string v0, "MfFragmentMainExpandBrowser"

    const-string v1, "[HTCAlbum][onScrollStateChange]SYNC_CONTENT_IN_IDLE"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #setter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$402(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z

    goto :goto_0

    .line 963
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$5;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #setter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mIsScrolling:Z
    invoke-static {v0, v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$402(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Z)Z

    goto :goto_0

    .line 944
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
