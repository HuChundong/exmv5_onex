.class Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;
.super Landroid/os/Handler;
.source "MfFragmentMainExpandBrowser.java"


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
    .line 1093
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1096
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mbDestroy:Z

    if-eqz v0, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$6;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #calls: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onMessageHandler2(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$800(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;Landroid/os/Message;)V

    goto :goto_0
.end method
