.class Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase$1;
.super Landroid/os/Handler;
.source "MfFragmentMainExpandBrowserBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase$1;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase$1;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowserBase;->onMessageHandler(Landroid/os/Message;)V

    .line 74
    return-void
.end method
