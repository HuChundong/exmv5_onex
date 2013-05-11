.class Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;
.super Landroid/os/Handler;
.source "AdapterDlnaMediumItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;->this$0:Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;->this$0:Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onMessage(Landroid/os/Message;)Z

    .line 683
    return-void
.end method
