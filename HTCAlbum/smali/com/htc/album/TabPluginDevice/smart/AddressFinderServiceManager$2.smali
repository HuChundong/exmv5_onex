.class Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$2;
.super Landroid/os/Handler;
.source "AddressFinderServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$2;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 430
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 433
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$2;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const-string v0, "AddressFinderServiceManager"

    const-string v1, "[HTCAlbum][AddressFinderServiceManager][Message]...timeout : disconnect service"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$2;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #calls: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->disconnect()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$600(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V

    .line 436
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$2;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsbindService:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$702(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0xc364
        :pswitch_0
    .end packed-switch
.end method
